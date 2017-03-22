-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tests
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `readingsCNN`
--

DROP TABLE IF EXISTS `readingsCNN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readingsCNN` (
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `candidates` int(11) NOT NULL DEFAULT '0',
  `dimensions` int(11) NOT NULL DEFAULT '0',
  `samples` int(11) NOT NULL DEFAULT '0',
  `iterations` int(11) NOT NULL DEFAULT '0',
  `dropout` decimal(1,1) NOT NULL DEFAULT '0.0',
  `train_acc` decimal(11,10) DEFAULT NULL,
  `val_acc` decimal(11,10) DEFAULT NULL,
  `test_acc` decimal(11,10) DEFAULT NULL,
  `test_bin` decimal(2,1) DEFAULT NULL,
  `test` varchar(45) NOT NULL DEFAULT 'error',
  PRIMARY KEY (`doc_id`,`candidates`,`dimensions`,`samples`,`iterations`,`dropout`,`test`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readingsCNN`
--

LOCK TABLES `readingsCNN` WRITE;
/*!40000 ALTER TABLE `readingsCNN` DISABLE KEYS */;
INSERT INTO `readingsCNN` VALUES (85,3,200,1726,30,0.5,1.0000000000,0.9806949807,0.0000000000,0.0,'lstm'),(85,3,200,1726,30,0.5,1.0000000000,0.9623552126,0.0000007145,0.0,'ngram'),(85,3,200,1726,30,0.5,0.9893771125,0.9633204633,0.0024664400,0.0,'ngram-lstm'),(160,2,200,3099,30,0.5,0.9995966115,0.9870967742,0.0000000002,0.0,'lstm'),(160,2,200,3099,30,0.5,0.9993949173,0.9709677427,0.0000107809,0.0,'ngram'),(160,2,200,3099,30,0.5,0.9899152884,0.9749999996,0.0006437340,0.0,'ngram-lstm'),(168,3,200,867,30,0.5,1.0000000000,0.9846449136,1.0000000000,1.0,'lstm'),(168,3,200,867,30,0.5,1.0000000000,0.9309021113,1.0000000000,1.0,'ngram'),(168,3,200,867,30,0.5,0.9951923077,0.9385796545,0.9964440000,1.0,'ngram-lstm'),(213,2,200,2536,30,0.5,0.9987675621,0.9793103451,0.9714290000,1.0,'lstm'),(213,2,200,2536,30,0.5,1.0000000000,0.9310344830,0.7424440000,1.0,'ngram'),(213,2,200,2536,30,0.5,0.9810204583,0.9330049266,0.9893130000,1.0,'ngram-lstm'),(227,3,200,3200,30,0.5,0.9908854167,0.9640625000,0.9998220000,1.0,'lstm'),(227,3,200,3200,30,0.5,0.9989583333,0.8958333333,0.9973920000,1.0,'ngram'),(227,3,200,3200,30,0.5,0.9680989583,0.9270833333,0.9989400000,1.0,'ngram-lstm'),(297,2,200,2536,30,0.5,1.0000000000,0.9901477833,1.0000000000,1.0,'lstm'),(297,2,200,2536,30,0.5,1.0000000000,0.9655172416,0.8453840000,1.0,'ngram'),(297,2,200,2536,30,0.5,0.9576041409,0.9310344830,0.8740460000,1.0,'ngram-lstm'),(479,2,200,2780,30,0.5,1.0000000000,0.9937050360,1.0000000000,1.0,'lstm'),(479,2,200,2780,30,0.5,1.0000000000,0.9757194245,0.9999940000,1.0,'ngram'),(479,2,200,2780,30,0.5,0.9986510791,0.9748201435,0.9899010000,1.0,'ngram-lstm'),(495,2,200,3200,30,0.5,0.9998046875,0.9992187500,1.0000000000,1.0,'lstm'),(495,2,200,3200,30,0.5,1.0000000000,0.9968750000,1.0000000000,1.0,'ngram'),(495,2,200,3200,30,0.5,0.9994140625,0.9960937500,0.9999490000,1.0,'ngram-lstm'),(496,2,200,3200,30,0.5,0.9994140625,0.9898437500,1.0000000000,1.0,'lstm'),(496,2,200,3200,30,0.5,1.0000000000,0.9625000000,0.9999960000,1.0,'ngram'),(496,2,200,3200,30,0.5,0.9923828125,0.9703125000,0.9583530000,1.0,'ngram-lstm'),(544,4,200,2153,30,0.5,0.9962258673,0.9535693558,0.0000000024,0.0,'lstm'),(544,4,200,2153,30,0.5,1.0000000000,0.9216482876,0.0000143149,0.0,'ngram'),(544,4,200,2153,30,0.5,0.9950645957,0.9535693555,0.0000005373,0.0,'ngram-lstm'),(759,3,200,2780,30,0.5,0.9989508393,0.9724220624,0.0263159000,0.0,'lstm'),(759,3,200,2780,30,0.5,0.9992505995,0.9388489209,0.0263860000,0.0,'ngram'),(759,3,200,2780,30,0.5,0.5527577938,0.5131894484,0.3458530000,1.0,'ngram-lstm'),(769,3,200,1601,30,0.5,0.9986985945,0.9635796046,0.0638299000,0.0,'lstm'),(769,3,200,1601,30,0.5,0.9997397189,0.9229968783,0.0437209000,0.0,'ngram'),(769,3,200,1601,30,0.5,0.8021863613,0.7596253902,0.5131210000,1.0,'ngram-lstm'),(970,2,200,1162,30,0.5,1.0000000000,0.9978494624,0.9130420000,1.0,'lstm'),(970,2,200,1162,30,0.5,0.9967724583,0.9784946237,0.9561060000,1.0,'ngram'),(970,2,200,1162,30,0.5,0.9827864444,0.9548387097,0.8976400000,1.0,'ngram-lstm'),(987,2,200,2001,30,0.5,0.9996875976,0.9950062422,1.0000000000,1.0,'lstm'),(987,2,200,2001,30,0.5,1.0000000000,0.9925093633,0.9999780000,1.0,'ngram'),(987,2,200,2001,30,0.5,0.9987503905,0.9862671660,0.9226600000,1.0,'ngram-lstm'),(1007,4,200,1601,30,0.5,0.9970720281,0.9445745511,0.9777560000,1.0,'lstm'),(1007,4,200,1601,30,0.5,0.9998048019,0.8719750195,0.8222100000,1.0,'ngram'),(1007,4,200,1601,30,0.5,0.9111848526,0.8782201405,0.0343217000,0.0,'ngram-lstm'),(1095,2,200,842,30,0.5,1.0000000000,0.9910979228,1.0000000000,1.0,'lstm'),(1095,2,200,842,30,0.5,1.0000000000,0.9139465879,0.8105040000,1.0,'ngram'),(1095,2,200,842,30,0.5,0.7854491463,0.7388724048,0.5891700000,1.0,'ngram-lstm'),(1121,2,200,3200,30,0.5,1.0000000000,1.0000000000,1.0000000000,1.0,'lstm'),(1121,2,200,3200,30,0.5,1.0000000000,0.9984375000,0.9976660000,1.0,'ngram'),(1121,2,200,3200,30,0.5,0.9160156250,0.9109375000,0.8128850000,1.0,'ngram-lstm'),(1223,4,200,458,30,0.5,0.9965870307,0.8555858314,0.2976990000,0.0,'lstm'),(1223,4,200,458,30,0.5,1.0000000000,0.7411444173,0.3403930000,0.0,'ngram'),(1223,4,200,458,30,0.5,0.3979522181,0.4441416895,0.2642130000,0.0,'ngram-lstm'),(1444,2,200,2536,30,0.5,0.9997535124,0.9763546798,1.0000000000,1.0,'lstm'),(1444,2,200,2536,30,0.5,1.0000000000,0.9261083749,0.8937480000,1.0,'ngram'),(1444,2,200,2536,30,0.5,0.9659847178,0.9448275867,0.9555620000,1.0,'ngram-lstm'),(1476,2,200,2633,30,0.5,0.9985754986,0.9933586338,1.0000000000,1.0,'lstm'),(1476,2,200,2633,30,0.5,0.9997625831,0.9810246679,1.0000000000,1.0,'ngram'),(1476,2,200,2633,30,0.5,0.9902659069,0.9829222011,0.9998550000,1.0,'ngram-lstm'),(1527,3,200,1639,30,0.5,0.9966946351,0.9695121951,0.4319870000,0.0,'lstm'),(1527,3,200,1639,30,0.5,0.9997457412,0.9308943089,0.1114810000,0.0,'ngram'),(1527,3,200,1639,30,0.5,0.8995677602,0.8749999995,0.2474680000,0.0,'ngram-lstm'),(1727,4,200,2016,30,0.5,0.9970547202,0.9621822691,0.0000000000,0.0,'lstm'),(1727,4,200,2016,30,0.5,1.0000000000,0.9119652826,0.0000031191,0.0,'ngram'),(1727,4,200,2016,30,0.5,0.4025732444,0.3899566027,0.1432740000,0.0,'ngram-lstm'),(1923,2,200,2536,30,0.5,0.9995070249,0.9743842367,1.0000000000,1.0,'lstm'),(1923,2,200,2536,30,0.5,1.0000000000,0.9172413798,0.8211000000,1.0,'ngram'),(1923,2,200,2536,30,0.5,0.9938378112,0.9467980300,0.8863110000,1.0,'ngram-lstm'),(1938,4,200,1726,30,0.5,0.9972840847,0.9543808834,0.0000002634,0.0,'lstm'),(1938,4,200,1726,30,0.5,1.0000000000,0.8993482984,0.0000000066,0.0,'ngram'),(1938,4,200,1726,30,0.5,0.9250407388,0.8769007965,0.1200760000,0.0,'ngram-lstm'),(2010,3,200,3166,30,0.5,0.9988154778,0.9710526316,0.7575680000,1.0,'lstm'),(2010,3,200,3166,30,0.5,1.0000000000,0.9431578949,0.7722810000,1.0,'ngram'),(2010,3,200,3166,30,0.5,0.9984206370,0.9615789475,0.6024370000,1.0,'ngram-lstm'),(2128,2,200,3200,30,0.5,1.0000000000,0.9906250000,0.0000000000,0.0,'lstm'),(2128,2,200,3200,30,0.5,1.0000000000,0.9765625000,0.0001421240,0.0,'ngram'),(2128,2,200,3200,30,0.5,0.9005859375,0.8812500000,0.0356385000,0.0,'ngram-lstm'),(2171,2,200,3200,30,0.5,0.9998046875,0.9898437500,1.0000000000,1.0,'lstm'),(2171,2,200,3200,30,0.5,0.9996093750,0.9546875000,0.9734200000,1.0,'ngram'),(2171,2,200,3200,30,0.5,0.9923828125,0.9570312500,0.8403030000,1.0,'ngram-lstm'),(2175,4,200,2536,30,0.5,0.9975354283,0.9413504189,0.9047550000,1.0,'lstm'),(2175,4,200,2536,30,0.5,0.9990141713,0.8309512080,0.5711830000,1.0,'ngram'),(2175,4,200,2536,30,0.5,0.9573629082,0.9053721045,0.9085670000,1.0,'ngram-lstm'),(2178,3,200,348,30,0.5,0.9988023952,0.8755980867,0.7187010000,1.0,'lstm'),(2178,3,200,348,30,0.5,1.0000000000,0.8612440191,0.0407490000,0.0,'ngram'),(2178,3,200,348,30,0.5,0.8850299401,0.7990430633,0.2168570000,0.0,'ngram-lstm'),(2183,3,200,3200,30,0.5,0.9959635417,0.9848958333,0.9998930000,1.0,'lstm'),(2183,3,200,3200,30,0.5,0.9994791667,0.9635416667,0.8998580000,1.0,'ngram'),(2183,3,200,3200,30,0.5,0.9856770833,0.9703125000,0.9029770000,1.0,'ngram-lstm'),(2259,4,200,2780,30,0.5,0.9976393885,0.9698741007,0.0000000623,0.0,'lstm'),(2259,4,200,2780,30,0.5,1.0000000000,0.9357014388,0.3019300000,0.0,'ngram'),(2259,4,200,2780,30,0.5,0.8574640288,0.8448741007,0.0330289000,0.0,'ngram-lstm'),(2318,2,200,1692,30,0.5,0.9992611747,0.9881831610,1.0000000000,1.0,'lstm'),(2318,2,200,1692,30,0.5,1.0000000000,0.9689807976,0.9999430000,1.0,'ngram'),(2318,2,200,1692,30,0.5,0.9674916882,0.9453471197,0.9847120000,1.0,'ngram-lstm');
/*!40000 ALTER TABLE `readingsCNN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readingsOldCNN`
--

DROP TABLE IF EXISTS `readingsOldCNN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readingsOldCNN` (
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `candidates` int(11) NOT NULL DEFAULT '0',
  `dimensions` int(11) NOT NULL DEFAULT '0',
  `samples` int(11) NOT NULL DEFAULT '0',
  `iterations` int(11) NOT NULL DEFAULT '0',
  `dropout` decimal(1,1) NOT NULL DEFAULT '0.0',
  `test_acc` decimal(11,10) DEFAULT NULL,
  `test_bin` decimal(2,1) DEFAULT NULL,
  `test` varchar(45) NOT NULL DEFAULT 'error',
  PRIMARY KEY (`doc_id`,`candidates`,`dimensions`,`samples`,`iterations`,`dropout`,`test`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readingsOldCNN`
--

LOCK TABLES `readingsOldCNN` WRITE;
/*!40000 ALTER TABLE `readingsOldCNN` DISABLE KEYS */;
INSERT INTO `readingsOldCNN` VALUES (85,3,200,1726,30,0.5,0.0000303699,0.0,'svc_256_entropy'),(85,3,200,1726,30,0.5,0.0068424484,0.0,'svc_512_entropy'),(85,3,200,1726,30,0.5,0.0265641090,0.0,'svc_768_entropy'),(160,2,200,3099,30,0.5,0.0012994290,0.0,'svc_256_entropy'),(160,2,200,3099,30,0.5,0.0027986747,0.0,'svc_512_entropy'),(160,2,200,3099,30,0.5,0.0318594215,0.0,'svc_768_entropy'),(168,3,200,867,30,0.5,0.9935074158,1.0,'svc_256_entropy'),(168,3,200,867,30,0.5,0.9960586219,1.0,'svc_512_entropy'),(168,3,200,867,30,0.5,0.9976602694,1.0,'svc_768_entropy'),(213,2,200,2536,30,0.5,0.7465102622,1.0,'svc_256_entropy'),(213,2,200,2536,30,0.5,0.7472998619,1.0,'svc_512_entropy'),(213,2,200,2536,30,0.5,0.7270072670,1.0,'svc_768_entropy'),(227,3,200,3200,30,0.5,0.7637880843,1.0,'svc_256_entropy'),(227,3,200,3200,30,0.5,0.8409941327,1.0,'svc_512_entropy'),(227,3,200,3200,30,0.5,0.7535998474,1.0,'svc_768_entropy'),(297,2,200,2536,30,0.5,0.7868526958,1.0,'svc_256_entropy'),(297,2,200,2536,30,0.5,0.7763898685,1.0,'svc_512_entropy'),(297,2,200,2536,30,0.5,0.9000817582,1.0,'svc_768_entropy'),(479,2,200,2780,30,0.5,0.9997609994,1.0,'svc_256_entropy'),(479,2,200,2780,30,0.5,0.9784245075,1.0,'svc_512_entropy'),(479,2,200,2780,30,0.5,0.9998049694,1.0,'svc_768_entropy'),(495,2,200,3200,30,0.5,0.9991625043,1.0,'svc_256_entropy'),(495,2,200,3200,30,0.5,0.9999225995,1.0,'svc_512_entropy'),(495,2,200,3200,30,0.5,0.9999574583,1.0,'svc_768_entropy'),(496,2,200,3200,30,0.5,0.9719425174,1.0,'svc_256_entropy'),(496,2,200,3200,30,0.5,0.9925695964,1.0,'svc_512_entropy'),(496,2,200,3200,30,0.5,0.9936944799,1.0,'svc_768_entropy'),(544,4,200,2153,30,0.5,0.0001208960,0.0,'svc_256_entropy'),(544,4,200,2153,30,0.5,0.0026682544,0.0,'svc_512_entropy'),(544,4,200,2153,30,0.5,0.0017494537,0.0,'svc_768_entropy'),(759,3,200,2780,30,0.5,0.0903170881,0.0,'svc_256_entropy'),(759,3,200,2780,30,0.5,0.0410757022,0.0,'svc_512_entropy'),(759,3,200,2780,30,0.5,0.0095237381,0.0,'svc_768_entropy'),(769,3,200,1601,30,0.5,0.1666222782,0.0,'svc_256_entropy'),(769,3,200,1601,30,0.5,0.0700717937,0.0,'svc_512_entropy'),(769,3,200,1601,30,0.5,0.0993744620,0.0,'svc_768_entropy'),(970,2,200,1162,30,0.5,0.8433907132,1.0,'svc_256_entropy'),(970,2,200,1162,30,0.5,0.8866388389,1.0,'svc_512_entropy'),(970,2,200,1162,30,0.5,0.9330169810,1.0,'svc_768_entropy'),(987,2,200,2001,30,0.5,0.9792735977,1.0,'svc_256_entropy'),(987,2,200,2001,30,0.5,0.9987149621,1.0,'svc_512_entropy'),(987,2,200,2001,30,0.5,0.9786170033,1.0,'svc_768_entropy'),(1007,4,200,1601,30,0.5,0.5236877166,1.0,'svc_256_entropy'),(1007,4,200,1601,30,0.5,0.5835748390,1.0,'svc_512_entropy'),(1007,4,200,1601,30,0.5,0.5688106225,1.0,'svc_768_entropy'),(1095,2,200,842,30,0.5,0.8958260680,1.0,'svc_256_entropy'),(1095,2,200,842,30,0.5,0.7425056067,1.0,'svc_512_entropy'),(1095,2,200,842,30,0.5,0.8332756020,1.0,'svc_768_entropy'),(1121,2,200,3200,30,0.5,0.9199672198,1.0,'svc_256_entropy'),(1121,2,200,3200,30,0.5,0.9101166971,1.0,'svc_512_entropy'),(1121,2,200,3200,30,0.5,0.9585468310,1.0,'svc_768_entropy'),(1223,4,200,458,30,0.5,0.1557785336,0.0,'svc_256_entropy'),(1223,4,200,458,30,0.5,0.2620913963,0.0,'svc_512_entropy'),(1223,4,200,458,30,0.5,0.3960542944,0.0,'svc_768_entropy'),(1444,2,200,2536,30,0.5,0.7819538661,1.0,'svc_256_entropy'),(1444,2,200,2536,30,0.5,0.7216365478,1.0,'svc_512_entropy'),(1444,2,200,2536,30,0.5,0.7872528468,1.0,'svc_768_entropy'),(1476,2,200,2633,30,0.5,0.9814305168,1.0,'svc_256_entropy'),(1476,2,200,2633,30,0.5,0.9997205676,1.0,'svc_512_entropy'),(1476,2,200,2633,30,0.5,0.9996132502,1.0,'svc_768_entropy'),(1527,3,200,1639,30,0.5,0.2795618437,0.0,'svc_256_entropy'),(1527,3,200,1639,30,0.5,0.2336061286,0.0,'svc_512_entropy'),(1527,3,200,1639,30,0.5,0.2447106633,0.0,'svc_768_entropy'),(1727,4,200,2016,30,0.5,0.0260821562,0.0,'svc_256_entropy'),(1727,4,200,2016,30,0.5,0.0052397904,0.0,'svc_512_entropy'),(1727,4,200,2016,30,0.5,0.0178635895,0.0,'svc_768_entropy'),(1923,2,200,2536,30,0.5,0.6374616413,1.0,'svc_256_entropy'),(1923,2,200,2536,30,0.5,0.5661529723,1.0,'svc_512_entropy'),(1923,2,200,2536,30,0.5,0.4359274344,0.0,'svc_768_entropy'),(1938,4,200,1726,30,0.5,0.0473244618,0.0,'svc_256_entropy'),(1938,4,200,1726,30,0.5,0.0293023875,0.0,'svc_512_entropy'),(1938,4,200,1726,30,0.5,0.0409410256,0.0,'svc_768_entropy'),(2010,3,200,3166,30,0.5,0.5059872598,1.0,'svc_256_entropy'),(2010,3,200,3166,30,0.5,0.4970540987,1.0,'svc_512_entropy'),(2010,3,200,3166,30,0.5,0.4374128612,1.0,'svc_768_entropy'),(2128,2,200,3200,30,0.5,0.0529454388,0.0,'svc_256_entropy'),(2128,2,200,3200,30,0.5,0.0153219354,0.0,'svc_512_entropy'),(2128,2,200,3200,30,0.5,0.0167237343,0.0,'svc_768_entropy'),(2171,2,200,3200,30,0.5,0.8969787469,1.0,'svc_256_entropy'),(2171,2,200,3200,30,0.5,0.9462471427,1.0,'svc_512_entropy'),(2171,2,200,3200,30,0.5,0.9571964548,1.0,'svc_768_entropy'),(2175,4,200,2536,30,0.5,0.2952628167,0.0,'svc_256_entropy'),(2175,4,200,2536,30,0.5,0.4775747137,1.0,'svc_512_entropy'),(2175,4,200,2536,30,0.5,0.4172542570,1.0,'svc_768_entropy'),(2178,3,200,348,30,0.5,0.1108763055,0.0,'svc_256_entropy'),(2178,3,200,348,30,0.5,0.0464293866,0.0,'svc_512_entropy'),(2178,3,200,348,30,0.5,0.1601065647,0.0,'svc_768_entropy'),(2183,3,200,3200,30,0.5,0.8813296630,1.0,'svc_256_entropy'),(2183,3,200,3200,30,0.5,0.8942494093,1.0,'svc_512_entropy'),(2183,3,200,3200,30,0.5,0.8138540146,1.0,'svc_768_entropy'),(2259,4,200,2780,30,0.5,0.3116168877,0.0,'svc_256_entropy'),(2259,4,200,2780,30,0.5,0.3424893339,0.0,'svc_512_entropy'),(2259,4,200,2780,30,0.5,0.2257466361,0.0,'svc_768_entropy'),(2318,2,200,1692,30,0.5,0.9913449017,1.0,'svc_256_entropy'),(2318,2,200,1692,30,0.5,0.9469481232,1.0,'svc_512_entropy'),(2318,2,200,1692,30,0.5,0.9665536233,1.0,'svc_768_entropy');
/*!40000 ALTER TABLE `readingsOldCNN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readingsOldCNNDiffBoth`
--

DROP TABLE IF EXISTS `readingsOldCNNDiffBoth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readingsOldCNNDiffBoth` (
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `candidates` int(11) NOT NULL DEFAULT '0',
  `dimensions` int(11) NOT NULL DEFAULT '0',
  `samples` int(11) NOT NULL DEFAULT '0',
  `iterations` int(11) NOT NULL DEFAULT '0',
  `dropout` decimal(1,1) NOT NULL DEFAULT '0.0',
  `train_acc_cnn` decimal(11,10) DEFAULT NULL,
  `val_acc_cnn` decimal(11,10) DEFAULT NULL,
  `test_acc_cnn` decimal(11,10) DEFAULT NULL,
  `test_bin_cnn` decimal(2,1) DEFAULT NULL,
  `train_acc_ml` decimal(11,10) DEFAULT NULL,
  `val_acc_ml` decimal(11,10) DEFAULT NULL,
  `test_acc_ml` decimal(11,10) DEFAULT NULL,
  `test_bin_ml` decimal(2,1) DEFAULT NULL,
  `test` varchar(45) NOT NULL DEFAULT 'error',
  PRIMARY KEY (`doc_id`,`candidates`,`dimensions`,`samples`,`iterations`,`dropout`,`test`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readingsOldCNNDiffBoth`
--

LOCK TABLES `readingsOldCNNDiffBoth` WRITE;
/*!40000 ALTER TABLE `readingsOldCNNDiffBoth` DISABLE KEYS */;
INSERT INTO `readingsOldCNNDiffBoth` VALUES (85,3,200,1726,30,0.5,1.0000000000,0.9613899614,0.0000188846,0.0,0.8112023177,0.7374517375,0.0361900933,0.0,'svc_256'),(85,3,200,1726,30,0.5,1.0000000000,0.9478764479,0.0327432000,0.0,0.9017382907,0.8436293436,0.2070652660,0.0,'svc_512'),(85,3,200,1726,30,0.5,1.0000000000,0.9449806950,0.0006458640,0.0,0.7532592950,0.5984555985,0.0903262284,0.0,'svc_768'),(160,2,200,3099,30,0.5,0.9997983058,0.9701612911,0.0000000847,0.0,0.8467123840,0.8250000000,0.8910731006,1.0,'svc_256'),(160,2,200,3099,30,0.5,0.9997983058,0.9758064520,0.0000168692,0.0,0.9392900363,0.9088709677,0.6285806422,1.0,'svc_512'),(160,2,200,3099,30,0.5,0.9997983058,0.9766129040,0.0000000030,0.0,0.8412666398,0.7911290323,0.0355954891,0.0,'svc_768'),(168,3,200,867,30,0.5,1.0000000000,0.9309021113,1.0000000000,1.0,0.8504807692,0.8406909789,0.7769458011,1.0,'svc_256'),(168,3,200,867,30,0.5,1.0000000000,0.9289827255,0.9999960000,1.0,0.9206730769,0.8675623800,0.9528173542,1.0,'svc_512'),(168,3,200,867,30,0.5,1.0000000000,0.9539347409,1.0000000000,1.0,0.8605769231,0.6794625720,0.8389127257,1.0,'svc_768'),(213,2,200,2536,30,0.5,1.0000000000,0.9359605916,0.7998740000,1.0,0.8535863939,0.8177339901,0.6091866312,1.0,'svc_256'),(213,2,200,2536,30,0.5,1.0000000000,0.9389162562,0.7520060000,1.0,0.8957357653,0.8581280788,0.6327254661,1.0,'svc_512'),(213,2,200,2536,30,0.5,1.0000000000,0.9201970446,0.8856550000,1.0,0.8439733793,0.7665024631,0.5602723954,1.0,'svc_768'),(227,3,200,3200,30,0.5,0.9996093750,0.8932291667,0.9955650000,1.0,0.7256510417,0.6739583333,0.2636387688,0.0,'svc_256'),(227,3,200,3200,30,0.5,0.9936197917,0.9088541667,0.8251380000,1.0,0.8184895833,0.7828125000,0.0674010634,0.0,'svc_512'),(227,3,200,3200,30,0.5,0.9997395833,0.9119791667,0.9965520000,1.0,0.7865885417,0.6781250000,0.8117144028,1.0,'svc_768'),(297,2,200,2536,30,0.5,1.0000000000,0.9694581283,0.9262540000,1.0,0.8999260537,0.8729064039,0.9586229049,1.0,'svc_256'),(297,2,200,2536,30,0.5,0.9997535124,0.9655172416,0.8197200000,1.0,0.9511954646,0.9172413793,0.7314527534,1.0,'svc_512'),(297,2,200,2536,30,0.5,1.0000000000,0.9674876850,0.8735510000,1.0,0.9245748090,0.8847290640,0.7917962488,1.0,'svc_768'),(479,2,200,2780,30,0.5,1.0000000000,0.9685251807,0.9999920000,1.0,0.8522931655,0.8111510791,0.9686027750,1.0,'svc_256'),(479,2,200,2780,30,0.5,1.0000000000,0.9649280584,0.9999210000,1.0,0.9114208633,0.8750000000,0.9558041041,1.0,'svc_512'),(479,2,200,2780,30,0.5,1.0000000000,0.9721223030,1.0000000000,1.0,0.8860161871,0.8309352518,0.9954559729,1.0,'svc_768'),(495,2,200,3200,30,0.5,1.0000000000,0.9992187500,0.9999980000,1.0,0.9371093750,0.9234375000,0.3841322034,0.0,'svc_256'),(495,2,200,3200,30,0.5,1.0000000000,0.9960937500,0.9999100000,1.0,0.9736328125,0.9632812500,0.8286452163,1.0,'svc_512'),(495,2,200,3200,30,0.5,1.0000000000,0.9992187500,1.0000000000,1.0,0.8763671875,0.8062500000,0.9756912789,1.0,'svc_768'),(496,2,200,3200,30,0.5,1.0000000000,0.9554687500,0.9996570000,1.0,0.8232421875,0.8062500000,0.0481353710,0.0,'svc_256'),(496,2,200,3200,30,0.5,0.9998046875,0.9664062500,0.9764000000,1.0,0.9154296875,0.8742187500,0.0228381273,0.0,'svc_512'),(496,2,200,3200,30,0.5,0.9998046875,0.9687500000,0.9999660000,1.0,0.8812500000,0.8156250000,0.9112622849,1.0,'svc_768'),(544,4,200,2153,30,0.5,0.9985484105,0.8961114337,0.0000744797,0.0,0.7497459718,0.7069065583,0.0069044190,0.0,'svc_256'),(544,4,200,2153,30,0.5,0.9998548411,0.9001741144,0.0190393000,0.0,0.8580345478,0.7817759721,0.0074026434,0.0,'svc_512'),(544,4,200,2153,30,0.5,0.9995645232,0.9152640743,0.0000090062,0.0,0.7738423574,0.5856065003,0.0502853392,0.0,'svc_768'),(759,3,200,2780,30,0.5,1.0000000000,0.9340527578,0.0001507470,0.0,0.7180755396,0.6696642686,0.3123867666,0.0,'svc_256'),(759,3,200,2780,30,0.5,0.9997002398,0.9454436451,0.0337135000,0.0,0.8607613909,0.8249400480,0.5933958123,1.0,'svc_512'),(759,3,200,2780,30,0.5,0.9998501199,0.9418465228,0.0000598811,0.0,0.7553956835,0.6480815348,0.0920320904,0.0,'svc_768'),(769,3,200,1601,30,0.5,1.0000000000,0.9188345473,0.0426578000,0.0,0.8107756377,0.7554630593,0.1877783708,0.0,'svc_256'),(769,3,200,1601,30,0.5,1.0000000000,0.9386056191,0.1654860000,0.0,0.8878188444,0.8147762747,0.3398868342,1.0,'svc_512'),(769,3,200,1601,30,0.5,1.0000000000,0.9334027055,0.0212794000,0.0,0.8511192087,0.6399583767,0.1223632469,0.0,'svc_768'),(970,2,200,1162,30,0.5,1.0000000000,0.9849462366,0.8694590000,1.0,0.9365250134,0.9333333333,0.7346738835,1.0,'svc_256'),(970,2,200,1162,30,0.5,1.0000000000,0.9677419355,0.9509390000,1.0,0.9639591178,0.9333333333,0.7536799920,1.0,'svc_512'),(970,2,200,1162,30,0.5,0.9994620764,0.9763440863,0.9997950000,1.0,0.7767616998,0.6838709677,0.7897932674,1.0,'svc_768'),(987,2,200,2001,30,0.5,1.0000000000,0.9925093633,0.9999800000,1.0,0.9562636676,0.9425717853,0.9538823584,1.0,'svc_256'),(987,2,200,2001,30,0.5,1.0000000000,0.9937578027,0.8912640000,1.0,0.9903155264,0.9762796504,0.8282784475,1.0,'svc_512'),(987,2,200,2001,30,0.5,1.0000000000,0.9850187266,1.0000000000,1.0,0.9190877851,0.8776529338,0.9944734162,1.0,'svc_768'),(1007,4,200,1601,30,0.5,1.0000000000,0.8829039813,0.7109640000,1.0,0.7040796408,0.6206088993,0.2064874733,0.0,'svc_256'),(1007,4,200,1601,30,0.5,0.9986336131,0.8750975800,0.6821580000,1.0,0.8569197736,0.7775175644,0.1314041531,0.0,'svc_512'),(1007,4,200,1601,30,0.5,1.0000000000,0.9024199844,0.6886610000,1.0,0.6902205739,0.4184231069,0.4297770529,1.0,'svc_768'),(1095,2,200,842,30,0.5,0.9933184855,0.9050445136,0.5368230000,1.0,0.8923533779,0.8516320475,0.9812296694,1.0,'svc_256'),(1095,2,200,842,30,0.5,1.0000000000,0.9228486679,0.8440040000,1.0,0.9495174462,0.8397626113,0.5863825512,1.0,'svc_512'),(1095,2,200,842,30,0.5,1.0000000000,0.8813056412,0.7566550000,1.0,0.9109131403,0.8100890208,0.5902448069,1.0,'svc_768'),(1121,2,200,3200,30,0.5,0.9998046875,0.9984375000,0.9992830000,1.0,0.9857421875,0.9851562500,0.3339503022,0.0,'svc_256'),(1121,2,200,3200,30,0.5,0.9994140625,1.0000000000,0.7610510000,1.0,0.9908203125,0.9890625000,0.6206170445,1.0,'svc_512'),(1121,2,200,3200,30,0.5,0.9998046875,0.9968750000,0.9241140000,1.0,0.8781250000,0.8484375000,0.6926522007,1.0,'svc_768'),(1223,4,200,458,30,0.5,1.0000000000,0.7193460500,0.3646910000,0.0,0.7167235495,0.5831062670,0.5128142683,1.0,'svc_256'),(1223,4,200,458,30,0.5,1.0000000000,0.7329700303,0.4046860000,0.0,0.7808873720,0.6021798365,0.4150230759,0.0,'svc_512'),(1223,4,200,458,30,0.5,1.0000000000,0.7384196213,0.4864350000,1.0,0.7781569966,0.4877384196,0.0536726269,0.0,'svc_768'),(1444,2,200,2536,30,0.5,1.0000000000,0.9192118234,0.8163130000,1.0,0.8402760661,0.7901477833,0.6735643470,1.0,'svc_256'),(1444,2,200,2536,30,0.5,1.0000000000,0.9310344830,0.7617360000,1.0,0.8974611782,0.8394088670,0.3671688281,0.0,'svc_512'),(1444,2,200,2536,30,0.5,1.0000000000,0.9349753697,0.8586660000,1.0,0.8185851614,0.7261083744,0.4668574897,0.0,'svc_768'),(1476,2,200,2633,30,0.5,1.0000000000,0.9857685019,1.0000000000,1.0,0.9318613485,0.9269449715,0.9936025971,1.0,'svc_256'),(1476,2,200,2633,30,0.5,0.9997625831,0.9886148008,0.9994370000,1.0,0.9650997151,0.9554079696,0.7331663345,1.0,'svc_512'),(1476,2,200,2633,30,0.5,1.0000000000,0.9819734345,1.0000000000,1.0,0.9038461538,0.8557874763,0.9943366662,1.0,'svc_768'),(1527,3,200,1639,30,0.5,0.9982201882,0.9268292693,0.1249170000,0.0,0.8148995678,0.7723577236,0.0100722342,0.0,'svc_256'),(1527,3,200,1639,30,0.5,1.0000000000,0.9258130081,0.2447580000,0.0,0.9041444190,0.8587398374,0.0823878439,0.0,'svc_512'),(1527,3,200,1639,30,0.5,1.0000000000,0.9065040660,0.2482740000,0.0,0.7559115179,0.6056910569,0.2675302267,0.0,'svc_768'),(1727,4,200,2016,30,0.5,0.9998449853,0.9082455053,0.0000133714,0.0,0.7174081538,0.6676999380,0.0253103702,0.0,'svc_256'),(1727,4,200,2016,30,0.5,0.9987598822,0.9094854315,0.0042515400,0.0,0.8220430941,0.7644141352,0.0060673684,0.0,'svc_512'),(1727,4,200,2016,30,0.5,1.0000000000,0.9212647241,0.0000107044,0.0,1.0000000000,0.9863608184,0.0012368448,0.0,'svc_768'),(1923,2,200,2536,30,0.5,1.0000000000,0.9330049263,0.6013200000,1.0,0.8444663544,0.8187192118,0.3902962746,0.0,'svc_256'),(1923,2,200,2536,30,0.5,1.0000000000,0.9162561576,0.6034120000,1.0,0.8183386739,0.7507389163,0.5060059435,1.0,'svc_512'),(1923,2,200,2536,30,0.5,1.0000000000,0.9467980303,0.6195060000,1.0,0.8533399063,0.7349753695,0.3537390817,0.0,'svc_768'),(1938,4,200,1726,30,0.5,0.9998189390,0.8884866039,0.0000052164,0.0,0.6780735108,0.6321506155,0.6112190084,1.0,'svc_256'),(1938,4,200,1726,30,0.5,0.9998189390,0.9007965243,0.0000085902,0.0,0.6503711751,0.4981897176,0.0846074804,0.0,'svc_512'),(1938,4,200,1726,30,0.5,1.0000000000,0.9174511224,0.0000017445,0.0,0.9998189390,0.9739319334,0.0003888995,0.0,'svc_768'),(2010,3,200,3166,30,0.5,1.0000000000,0.9447368421,0.6337080000,1.0,0.7773098184,0.7521052632,0.5677634206,1.0,'svc_256'),(2010,3,200,3166,30,0.5,1.0000000000,0.9305263158,0.5712480000,1.0,0.7129507765,0.6284210526,0.4283350339,1.0,'svc_512'),(2010,3,200,3166,30,0.5,0.9996051593,0.9468421054,0.4837070000,1.0,0.7461173993,0.6205263158,0.3900121715,1.0,'svc_768'),(2128,2,200,3200,30,0.5,1.0000000000,0.9835937500,0.0000280525,0.0,0.8585937500,0.8320312500,0.5476607762,1.0,'svc_256'),(2128,2,200,3200,30,0.5,1.0000000000,0.9796875000,0.0000005147,0.0,0.7828125000,0.7031250000,0.0576616497,0.0,'svc_512'),(2128,2,200,3200,30,0.5,1.0000000000,0.9773437500,0.0000242574,0.0,0.8142578125,0.7257812500,0.0470677861,0.0,'svc_768'),(2171,2,200,3200,30,0.5,0.9994140625,0.9562500000,0.9735490000,1.0,0.8779296875,0.8539062500,0.0137895514,0.0,'svc_256'),(2171,2,200,3200,30,0.5,1.0000000000,0.9585937500,0.9209620000,1.0,0.8150390625,0.7687500000,0.8464802780,1.0,'svc_512'),(2171,2,200,3200,30,0.5,0.9972656250,0.9562500000,0.9457290000,1.0,0.8042968750,0.7820312500,0.8283993559,1.0,'svc_768'),(2175,4,200,2536,30,0.5,0.9977818854,0.8196155747,0.5249160000,1.0,0.9812692545,0.9586002957,0.6563657442,1.0,'svc_256'),(2175,4,200,2536,30,0.5,0.9993838571,0.8432725482,0.4601290000,1.0,0.6018484288,0.4751108921,0.2792996452,0.0,'svc_512'),(2175,4,200,2536,30,0.5,0.9995070856,0.8344011833,0.6591480000,1.0,0.7360443623,0.5608674224,0.3602232908,0.0,'svc_768'),(2178,3,200,348,30,0.5,1.0000000000,0.8421052643,0.0407227000,0.0,0.6538922156,0.5406698565,0.0170117830,0.0,'svc_256'),(2178,3,200,348,30,0.5,1.0000000000,0.8468899533,0.1201330000,0.0,0.7532934132,0.4832535885,0.3150435117,0.0,'svc_512'),(2178,3,200,348,30,0.5,1.0000000000,0.8612440243,0.0802571000,0.0,0.8287425150,0.4641148325,0.0923276595,0.0,'svc_768'),(2183,3,200,3200,30,0.5,1.0000000000,0.9661458333,0.9933350000,1.0,0.9973958333,0.9864583333,0.9089769351,1.0,'svc_256'),(2183,3,200,3200,30,0.5,1.0000000000,0.9541666667,0.8978130000,1.0,0.8876302083,0.8177083333,0.8445756167,1.0,'svc_512'),(2183,3,200,3200,30,0.5,0.9998697917,0.9682291667,0.8263190000,1.0,0.9100260417,0.8255208333,0.9242617639,1.0,'svc_768'),(2259,4,200,2780,30,0.5,0.9984262590,0.9267086331,0.1414230000,0.0,0.7012140288,0.6564748201,0.3838100879,0.0,'svc_256'),(2259,4,200,2780,30,0.5,1.0000000000,0.9321043165,0.1396600000,0.0,0.7347122302,0.6312949640,0.4839917451,1.0,'svc_512'),(2259,4,200,2780,30,0.5,1.0000000000,0.9343525180,0.3061230000,0.0,0.7423561151,0.5899280576,0.5744459915,1.0,'svc_768'),(2318,2,200,1692,30,0.5,1.0000000000,0.9719350074,0.9999910000,1.0,0.8888067972,0.8729689808,0.9896728412,1.0,'svc_256'),(2318,2,200,1692,30,0.5,1.0000000000,0.9675036928,0.9998230000,1.0,0.8588843738,0.8020679468,0.8695769719,1.0,'svc_512'),(2318,2,200,1692,30,0.5,1.0000000000,0.9748892171,0.9999970000,1.0,0.9139268563,0.8581979321,0.9830289225,1.0,'svc_768');
/*!40000 ALTER TABLE `readingsOldCNNDiffBoth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readingsOldML`
--

DROP TABLE IF EXISTS `readingsOldML`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readingsOldML` (
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `candidates` int(11) NOT NULL DEFAULT '0',
  `samples` int(11) NOT NULL DEFAULT '0',
  `train_acc` decimal(11,10) DEFAULT NULL,
  `val_acc` decimal(11,10) DEFAULT NULL,
  `test_acc` decimal(11,10) DEFAULT NULL,
  `test_bin` decimal(2,1) DEFAULT NULL,
  `test` varchar(45) NOT NULL DEFAULT 'error',
  PRIMARY KEY (`doc_id`,`candidates`,`samples`,`test`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readingsOldML`
--

LOCK TABLES `readingsOldML` WRITE;
/*!40000 ALTER TABLE `readingsOldML` DISABLE KEYS */;
INSERT INTO `readingsOldML` VALUES (85,3,1726,0.9978271366,0.9942084942,0.0000000000,0.0,'ct_multi_nb'),(85,3,1726,1.0000000000,0.9932432432,0.0000475894,0.0,'ct_svc'),(85,3,1726,0.9961371318,0.9913127413,0.0012014057,0.0,'tfidf_multi_nb'),(85,3,1726,1.0000000000,0.9990347490,0.0001261176,0.0,'tfidf_svc'),(160,2,3099,0.9967728923,0.9943548387,0.0000000000,0.0,'ct_multi_nb'),(160,2,3099,1.0000000000,0.9927419355,0.0000464373,0.0,'ct_svc'),(160,2,3099,0.9975796692,0.9935483871,0.0027277919,0.0,'tfidf_multi_nb'),(160,2,3099,1.0000000000,0.9975806452,0.0000044605,0.0,'tfidf_svc'),(168,3,867,0.9961538462,0.9904030710,0.9807037088,1.0,'ct_multi_nb'),(168,3,867,1.0000000000,0.9961612284,0.9998196094,1.0,'ct_svc'),(168,3,867,0.9971153846,0.9865642994,0.9870591630,1.0,'tfidf_multi_nb'),(168,3,867,1.0000000000,0.9980806142,0.9996043660,1.0,'tfidf_svc'),(213,2,2536,0.9982745871,0.9980295567,1.0000000000,1.0,'ct_multi_nb'),(213,2,2536,1.0000000000,0.9980295567,0.9999806037,1.0,'ct_svc'),(213,2,2536,0.9985210747,0.9901477833,0.9661764673,1.0,'tfidf_multi_nb'),(213,2,2536,1.0000000000,0.9990147783,0.9999376842,1.0,'tfidf_svc'),(227,3,3200,0.9821614583,0.9692708333,1.0000000000,1.0,'ct_multi_nb'),(227,3,3200,1.0000000000,0.9838541667,0.9999686807,1.0,'ct_svc'),(227,3,3200,0.9726562500,0.9505208333,0.9561580401,1.0,'tfidf_multi_nb'),(227,3,3200,1.0000000000,0.9942708333,0.9999607805,1.0,'tfidf_svc'),(297,2,2536,0.9751047572,0.9665024631,0.7073170732,1.0,'ct_multi_nb'),(297,2,2536,1.0000000000,0.9960591133,0.9999225583,1.0,'ct_svc'),(297,2,2536,0.9812669460,0.9743842365,0.8122343987,1.0,'tfidf_multi_nb'),(297,2,2536,1.0000000000,0.9990147783,0.9997202411,1.0,'tfidf_svc'),(479,2,2780,0.9979766187,0.9955035971,1.0000000000,1.0,'ct_multi_nb'),(479,2,2780,1.0000000000,0.9982014388,0.9999945533,1.0,'ct_svc'),(479,2,2780,0.9970773381,0.9946043165,0.9929165838,1.0,'tfidf_multi_nb'),(479,2,2780,1.0000000000,1.0000000000,0.9999809780,1.0,'tfidf_svc'),(495,2,3200,0.9990234375,1.0000000000,1.0000000000,1.0,'ct_multi_nb'),(495,2,3200,1.0000000000,0.9992187500,0.9999941748,1.0,'ct_svc'),(495,2,3200,0.9992187500,1.0000000000,0.9995991148,1.0,'tfidf_multi_nb'),(495,2,3200,1.0000000000,1.0000000000,0.9997790839,1.0,'tfidf_svc'),(496,2,3200,0.9978515625,0.9953125000,1.0000000000,1.0,'ct_multi_nb'),(496,2,3200,1.0000000000,0.9968750000,0.9999833655,1.0,'ct_svc'),(496,2,3200,0.9955078125,0.9898437500,0.9897511622,1.0,'tfidf_multi_nb'),(496,2,3200,1.0000000000,0.9984375000,0.9999892067,1.0,'tfidf_svc'),(544,4,2153,0.9641457396,0.9454439930,0.0000000000,0.0,'ct_multi_nb'),(544,4,2153,1.0000000000,0.9941961695,0.0004672227,0.0,'ct_svc'),(544,4,2153,0.9670489186,0.9541497388,0.0155471825,0.0,'tfidf_multi_nb'),(544,4,2153,1.0000000000,0.9982588508,0.0001191986,0.0,'tfidf_svc'),(759,3,2780,0.9913069544,0.9868105516,0.0000000000,0.0,'ct_multi_nb'),(759,3,2780,1.0000000000,0.9952038369,0.0002549577,0.0,'ct_svc'),(759,3,2780,0.9901079137,0.9790167866,0.0093096341,0.0,'tfidf_multi_nb'),(759,3,2780,1.0000000000,1.0000000000,0.0000706619,0.0,'tfidf_svc'),(769,3,1601,0.9765747007,0.9594172737,0.0000000000,0.0,'ct_multi_nb'),(769,3,1601,1.0000000000,0.9875130073,0.0001247783,0.0,'ct_svc'),(769,3,1601,0.9708485164,0.9562955255,0.0571542381,0.0,'tfidf_multi_nb'),(769,3,1601,0.9994794378,0.9979188345,0.0001242509,0.0,'tfidf_svc'),(970,2,1162,0.9983862292,0.9892473118,1.0000000000,1.0,'ct_multi_nb'),(970,2,1162,1.0000000000,0.9892473118,0.9972218306,1.0,'ct_svc'),(970,2,1162,0.9967724583,0.9892473118,0.8845276074,1.0,'tfidf_multi_nb'),(970,2,1162,1.0000000000,1.0000000000,0.9996046722,1.0,'tfidf_svc'),(987,2,2001,0.9990627929,0.9962546816,1.0000000000,1.0,'ct_multi_nb'),(987,2,2001,1.0000000000,0.9950062422,0.9988928522,1.0,'ct_svc'),(987,2,2001,0.9984379881,0.9975031211,0.9923378609,1.0,'tfidf_multi_nb'),(987,2,2001,1.0000000000,1.0000000000,0.9993187278,1.0,'tfidf_svc'),(1007,4,1601,0.9726722623,0.9539422326,1.0000000000,1.0,'ct_multi_nb'),(1007,4,1601,1.0000000000,0.9765807963,0.9995629950,1.0,'ct_svc'),(1007,4,1601,0.9695490923,0.9523809524,0.8887479080,1.0,'tfidf_multi_nb'),(1007,4,1601,1.0000000000,0.9953161593,0.9998435734,1.0,'tfidf_svc'),(1095,2,842,0.9985152190,0.9940652819,1.0000000000,1.0,'ct_multi_nb'),(1095,2,842,1.0000000000,0.9851632047,0.9999233894,1.0,'ct_svc'),(1095,2,842,0.9977728285,0.9910979228,0.8802164393,1.0,'tfidf_multi_nb'),(1095,2,842,1.0000000000,0.9970326410,0.9995612481,1.0,'tfidf_svc'),(1121,2,3200,0.9984375000,0.9992187500,1.0000000000,1.0,'ct_multi_nb'),(1121,2,3200,1.0000000000,0.9976562500,0.9997633561,1.0,'ct_svc'),(1121,2,3200,0.9982421875,0.9992187500,0.9960579729,1.0,'tfidf_multi_nb'),(1121,2,3200,1.0000000000,1.0000000000,0.9991802525,1.0,'tfidf_svc'),(1223,4,458,1.0000000000,0.9891008174,1.0000000000,1.0,'ct_multi_nb'),(1223,4,458,1.0000000000,0.9727520436,0.9991031235,1.0,'ct_svc'),(1223,4,458,0.9972696246,0.9782016349,0.7518937208,1.0,'tfidf_multi_nb'),(1223,4,458,1.0000000000,1.0000000000,0.9991901255,1.0,'tfidf_svc'),(1444,2,2536,0.9980280996,0.9980295567,1.0000000000,1.0,'ct_multi_nb'),(1444,2,2536,1.0000000000,0.9842364532,0.9998838490,1.0,'ct_svc'),(1444,2,2536,0.9980280996,0.9960591133,0.9709544452,1.0,'tfidf_multi_nb'),(1444,2,2536,1.0000000000,0.9980295567,0.9999512924,1.0,'tfidf_svc'),(1476,2,2633,0.9978632479,0.9924098672,0.9642857143,1.0,'ct_multi_nb'),(1476,2,2633,1.0000000000,0.9962049336,0.9999938654,1.0,'ct_svc'),(1476,2,2633,0.9971509972,0.9990512334,0.9963677332,1.0,'tfidf_multi_nb'),(1476,2,2633,1.0000000000,1.0000000000,0.9999438239,1.0,'tfidf_svc'),(1527,3,1639,0.9954233410,0.9908536585,1.0000000000,1.0,'ct_multi_nb'),(1527,3,1639,1.0000000000,0.9959349594,0.9996478635,1.0,'ct_svc'),(1527,3,1639,0.9941520468,0.9847560976,0.8872354599,1.0,'tfidf_multi_nb'),(1527,3,1639,1.0000000000,0.9989837398,0.9978772542,1.0,'tfidf_svc'),(1727,4,2016,0.9931793520,0.9907005580,0.0000000000,0.0,'ct_multi_nb'),(1727,4,2016,1.0000000000,0.9969001860,0.0000435530,0.0,'ct_svc'),(1727,4,2016,0.9934893815,0.9882207068,0.0011345356,0.0,'tfidf_multi_nb'),(1727,4,2016,1.0000000000,0.9975201488,0.0000936837,0.0,'tfidf_svc'),(1923,2,2536,0.9970421494,0.9911330049,1.0000000000,1.0,'ct_multi_nb'),(1923,2,2536,1.0000000000,0.9911330049,0.9999381902,1.0,'ct_svc'),(1923,2,2536,0.9985210747,0.9940886700,0.9296559496,1.0,'tfidf_multi_nb'),(1923,2,2536,1.0000000000,1.0000000000,0.9998778042,1.0,'tfidf_svc'),(1938,4,1726,0.9942060474,0.9913106445,0.0000000000,0.0,'ct_multi_nb'),(1938,4,1726,1.0000000000,0.9920347574,0.0005935396,0.0,'ct_svc'),(1938,4,1726,0.9929386203,0.9862418537,0.0499512252,0.0,'tfidf_multi_nb'),(1938,4,1726,1.0000000000,0.9963794352,0.0001363550,0.0,'tfidf_svc'),(2010,3,3166,0.9924980258,0.9884210526,1.0000000000,1.0,'ct_multi_nb'),(2010,3,3166,1.0000000000,0.9857894737,0.9998402532,1.0,'ct_svc'),(2010,3,3166,0.9922347986,0.9863157895,0.9121469501,1.0,'tfidf_multi_nb'),(2010,3,3166,0.0000000000,0.0000000000,0.9988227899,1.0,'tfidf_svc'),(2128,2,3200,0.9929687500,0.9890625000,0.0000000000,0.0,'ct_multi_nb'),(2128,2,3200,1.0000000000,0.9984375000,0.0000320993,0.0,'ct_svc'),(2128,2,3200,0.9916015625,0.9921875000,0.0013261053,0.0,'tfidf_multi_nb'),(2128,2,3200,0.0000000000,0.0000000000,0.0000330655,0.0,'tfidf_svc'),(2171,2,3200,0.9925781250,0.9859375000,1.0000000000,1.0,'ct_multi_nb'),(2171,2,3200,1.0000000000,0.9960937500,0.9999998047,1.0,'ct_svc'),(2171,2,3200,0.9898437500,0.9843750000,0.9989614804,1.0,'tfidf_multi_nb'),(2171,2,3200,0.0000000000,0.0000000000,0.9999853554,1.0,'tfidf_svc'),(2175,4,2536,0.9907578558,0.9857072449,1.0000000000,1.0,'ct_multi_nb'),(2175,4,2536,1.0000000000,0.9931000493,0.9994642502,1.0,'ct_svc'),(2175,4,2536,0.9892791128,0.9802858551,0.7957745953,1.0,'tfidf_multi_nb'),(2175,4,2536,0.0000000000,0.0000000000,0.9996999457,1.0,'tfidf_svc'),(2178,3,348,0.9964071856,0.9665071770,0.5600000000,1.0,'ct_multi_nb'),(2178,3,348,1.0000000000,0.9712918660,0.9959849397,1.0,'ct_svc'),(2178,3,348,0.9916167665,0.9521531100,0.5037169193,1.0,'tfidf_multi_nb'),(2178,3,348,0.0000000000,0.0000000000,0.9881715860,1.0,'tfidf_svc'),(2183,3,3200,0.9759114583,0.9718750000,1.0000000000,1.0,'ct_multi_nb'),(2183,3,3200,1.0000000000,0.9953125000,0.9999583304,1.0,'ct_svc'),(2183,3,3200,0.9779947917,0.9750000000,0.9652598770,1.0,'tfidf_multi_nb'),(2183,3,3200,0.0000000000,0.0000000000,0.9998812174,1.0,'tfidf_svc'),(2259,4,2780,0.9886465827,0.9869604317,0.0277777778,0.0,'ct_multi_nb'),(2259,4,2780,1.0000000000,0.9928057554,0.0001555138,0.0,'ct_svc'),(2259,4,2780,0.9847122302,0.9793165468,0.0274499529,0.0,'tfidf_multi_nb'),(2259,4,2780,0.0000000000,0.0000000000,0.0003499184,0.0,'tfidf_svc'),(2318,2,1692,0.9815293683,0.9778434269,1.0000000000,1.0,'ct_multi_nb'),(2318,2,1692,1.0000000000,1.0000000000,0.9993229127,1.0,'ct_svc'),(2318,2,1692,0.9811599557,0.9615952733,0.9472903719,1.0,'tfidf_multi_nb'),(2318,2,1692,0.0000000000,0.0000000000,0.9999144247,1.0,'tfidf_svc');
/*!40000 ALTER TABLE `readingsOldML` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-18 17:42:05
