#!/usr/bin/python
# -*- coding: utf-8 -*-
from __future__ import print_function

import os

import numpy as np

np.random.seed(123)

from keras.preprocessing.text import Tokenizer
from keras.preprocessing.sequence import pad_sequences
from keras.utils.np_utils import to_categorical
from keras.layers import Dense, Flatten
from keras.layers import Convolution1D, MaxPooling1D, Embedding
from keras.layers import Dropout
from keras.optimizers import SGD
from keras.models import Sequential

databaseConnectionServer = 'srn02.cs.cityu.edu.hk'
documentTable = 'document'

def readVectorData(fileName, GLOVE_DIR = 'glove/'):
    print('Level = Word')
    embeddings_index = {}
    f = open(os.path.join(GLOVE_DIR, fileName))
    for line in f:
        values = line.split()
        word = values[0]
        coefs = np.asarray(values[1:], dtype='float32')
        embeddings_index[word] = coefs
    f.close()
    
    print('File used: %s' % (fileName))
    print('Found %s word vectors.' % (len(embeddings_index)))
    return embeddings_index

def loadAuthData(authorList, doc_id, chunk_size = 1000, samples = 300):
    texts = []  # list of text samples
    labels_index = {}  # dictionary mapping label name to numeric id
    labels = []  # list of label ids
    import DatabaseQuery
    from sshtunnel import SSHTunnelForwarder
    PORT=5432
    with SSHTunnelForwarder((databaseConnectionServer, 22),
                            ssh_username='stylometry',
                            ssh_password='stylometry',
                            remote_bind_address=('localhost', 5432),
                            local_bind_address=('localhost', 5400)):
        textToUse = DatabaseQuery.getWordAuthData(5400, authorList, doc_id,
                                                  documentTable = documentTable, chunk_size = chunk_size)
    labels = []
    texts = []
    size = []
    authorList = textToUse.author_id.unique()
    for auth in authorList:
        current = textToUse.loc[textToUse['author_id'] == auth]
        size.append(current.shape[0])
        print("Author: %5s  Size: %5s" % (auth, current.shape[0]))
    print("Min: %s" % (min(size)))
    print("Max: %s" % (max(size)))

    authorList = authorList.tolist()
    
    for auth in authorList:
        current = textToUse.loc[textToUse['author_id'] == auth]
        if samples > min(size):
            samples = min(size)
        current = current.sample(n = samples)
        textlist = current.doc_content.tolist()
        texts = texts + textlist
        labels = labels + [authorList.index(author_id) for author_id in current.author_id.tolist()]
    labels_index = {}
    labels_index[0] = 0
    for i, auth in enumerate(authorList):
        labels_index[i] = auth

    del textToUse
    
    print('Authors %s.' % (str(authorList)))
    print('Found %s texts.' % len(texts))
    print('Found %s labels.' % len(labels))
    
    return (texts, labels, labels_index, samples)

def loadDocData(authorList, doc_id, chunk_size = 1000):
    texts = []  # list of text samples
    labels = []  # list of label ids
    import DatabaseQuery
    from sshtunnel import SSHTunnelForwarder
    PORT=5432
    with SSHTunnelForwarder((databaseConnectionServer, 22),
                            ssh_username='stylometry',
                            ssh_password='stylometry',
                            remote_bind_address=('localhost', 5432),
                            local_bind_address=('localhost', 5400)):
        textToUse = DatabaseQuery.getWordDocData(5400, doc_id, documentTable = documentTable, 
                                                 chunk_size = chunk_size)
    labels = []
    texts = []
    for index, row in textToUse.iterrows():
        labels.append(authorList.index(row.author_id))
        texts.append(row.doc_content)

    del textToUse
    
    print('Found %s texts.' % len(texts))
    return (texts, labels)

def preProcessTrainVal(texts, labels, chunk_size = 1000, MAX_NB_WORDS = 40000, VALIDATION_SPLIT = 0.1):
    global tokenizer, word_index
    # finally, vectorize the text samples into a 2D integer tensor
    tokenizer = Tokenizer(nb_words=MAX_NB_WORDS)
    tokenizer.fit_on_texts(texts)
    sequences = tokenizer.texts_to_sequences(texts)

    word_index = tokenizer.word_index
    print('Found %s unique tokens.' % len(word_index))

    data = pad_sequences(sequences, maxlen=chunk_size)

    labels = to_categorical(np.asarray(labels))
    print('Shape of data tensor:', data.shape)
    print('Shape of label tensor:', labels.shape)

    # split the data into a training set and a validation set
    from sklearn.model_selection import train_test_split
    trainX, valX, trainY, valY = train_test_split(data, labels, test_size=VALIDATION_SPLIT)
    
    del data, labels
    
    return (trainX, trainY, valX, valY)

def preProcessTest(texts, labels_index, labels = None, chunk_size = 1000, MAX_NB_WORDS = 40000):
    # finally, vectorize the text samples into a 2D integer tensor
    sequences = tokenizer.texts_to_sequences(texts)

    print('Found %s unique tokens.' % len(word_index))

    X = pad_sequences(sequences, maxlen = chunk_size)

    print('Shape of data tensor:', X.shape)

    testX = X[:]
    
    if labels is not None:
        testY = labels[:]
        return (testX, testY)
        
    return (testX)

def prepareEmbeddingMatrix(embeddings_index, MAX_NB_WORDS = 40000, EMBEDDING_DIM = 100):
    global nb_words, embedding_matrix
    nb_words = min(MAX_NB_WORDS, len(word_index))
    embedding_matrix = np.zeros((nb_words + 1, EMBEDDING_DIM))
    for word, i in word_index.items():
        if i > MAX_NB_WORDS:
            continue
        embedding_vector = embeddings_index.get(word)
        if embedding_vector is not None:
            # words not found in embedding index will be all-zeros.
            embedding_matrix[i] = embedding_vector
    return embedding_matrix

def compileModel(classes, embedding_matrix, EMBEDDING_DIM = 100, chunk_size = 1000, CONVOLUTION_FEATURE = 256, 
                 BORDER_MODE = 'valid', DENSE_FEATURE = 1024, DROP_OUT = 0.4, LEARNING_RATE=0.01, MOMENTUM=0.9):
    
    model = Sequential()

    model.add(Embedding(                                      # Layer 0, Start
        input_dim=nb_words + 1,                               # Size to dictionary, has to be input + 1
        output_dim=EMBEDDING_DIM,                             # Dimensions to generate
        weights=[embedding_matrix],                           # Initialize word weights
        input_length=chunk_size,                              # Define length to input sequences in the first layer
        trainable=False))                                     # Disable weight changes during training

    model.add(Convolution1D(                                  # Layer 1,   Features: 256, Kernel Size: 7
        nb_filter=CONVOLUTION_FEATURE,                        # Number of kernels or number of filters to generate
        filter_length=7,                                      # Size of kernels
        border_mode=BORDER_MODE,                              # Border = 'valid', cause kernel to reduce dimensions
        activation='relu'))                                   # Activation function to use

    model.add(MaxPooling1D(                                   # Layer 1a,  Max Pooling: 3
        pool_length=3))                                       # Size of kernels

    model.add(Convolution1D(                                  # Layer 2,   Features: 256, Kernel Size: 7
        nb_filter=CONVOLUTION_FEATURE,                        # Number of kernels or number of filters to generate
        filter_length=7,                                      # Size of kernels
        border_mode=BORDER_MODE,                              # Border = 'valid', cause kernel to reduce dimensions
        activation='relu'))                                   # Activation function to use

    model.add(MaxPooling1D(                                   # Layer 2a,  Max Pooling: 3
        pool_length=3))                                       # Size of kernels

    model.add(Convolution1D(                                  # Layer 3,   Features: 256, Kernel Size: 3
        nb_filter=CONVOLUTION_FEATURE,                        # Number of kernels or number of filters to generate
        filter_length=3,                                      # Size of kernels
        border_mode=BORDER_MODE,                              # Border = 'valid', cause kernel to reduce dimensions
        activation='relu'))                                   # Activation function to use

    model.add(Convolution1D(                                  # Layer 4,   Features: 256, Kernel Size: 3
        nb_filter=CONVOLUTION_FEATURE,                        # Number of kernels or number of filters to generate
        filter_length=3,                                      # Size of kernels
        border_mode=BORDER_MODE,                              # Border = 'valid', cause kernel to reduce dimensions
        activation='relu'))                                   # Activation function to use

    model.add(Convolution1D(                                  # Layer 5,   Features: 256, Kernel Size: 3
        nb_filter=CONVOLUTION_FEATURE,                        # Number of kernels or number of filters to generate
        filter_length=3,                                      # Size of kernels
        border_mode=BORDER_MODE,                              # Border = 'valid', cause kernel to reduce dimensions
        activation='relu'))                                   # Activation function to use

    model.add(Convolution1D(                                  # Layer 6,   Features: 256, Kernel Size: 3
        nb_filter=CONVOLUTION_FEATURE,                        # Number of kernels or number of filters to generate
        filter_length=5,                                      # Size of kernels
        border_mode=BORDER_MODE,                              # Border = 'valid', cause kernel to reduce dimensions
        activation='relu'))                                   # Activation function to use

    model.add(MaxPooling1D(                                   # Layer 6a,  Max Pooling: 3
        pool_length=3))                                       # Size of kernels

    model.add(Flatten())                                      # Layer 7

    model.add(Dense(                                          # Layer 7a,  Output Size: 1024
        output_dim=DENSE_FEATURE,                             # Output dimension
        activation='relu'))                                   # Activation function to use

    model.add(Dropout(DROP_OUT))

    model.add(Dense(                                          # Layer 8,   Output Size: 1024
        output_dim=DENSE_FEATURE,                             # Output dimension
        activation='relu'))                                   # Activation function to use

    model.add(Dropout(DROP_OUT))

    model.add(Dense(                                          # Layer 9,  Output Size: Size Unique Labels, Final
        output_dim=classes,                                   # Output dimension
        activation='softmax'))                                # Activation function to use

    # model = Model(start, end)

    sgd = SGD(lr=LEARNING_RATE, momentum=MOMENTUM, nesterov=True)

    model.compile(loss='categorical_crossentropy', optimizer='adam',
                  metrics=['accuracy'])

    print("Done compiling.")
    return model

def fitModel(model, trainX, trainY, valX, valY, nb_epoch=30, batch_size=100):
    # Function to take input of data and return fitted model
    history = model.fit(trainX, trainY, validation_data=(valX, valY),
                        nb_epoch=nb_epoch, batch_size=batch_size)
    
    return (model, history)
    
def predictModel(model, testX, batch_size=100):
    # Function to take input of data and return prediction model
    predY = np.array(model.predict(testX, batch_size=batch_size))
    predYList = predY[:]
    entro = []
    flag = False
    import math
    for row in predY:
        entroval = 0
        for i in row:
            if(i <= 0):
                flag = True
                pass
            else:
                entroval += (i * (math.log(i , 2)))
        entroval = -1 * entroval
        entro.append(entroval)
    if(flag == False): 
        yx = zip(entro, predY)
        yx = sorted(yx, key = lambda t: t[0])
        newPredY = [x for y, x in yx]
        predYEntroList = newPredY[:int(len(newPredY)*0.5)]
        predY = np.mean(predYEntroList, axis=0)
    else:
        predY = np.mean(predYList, axis=0)
    return (predYList, predY)
