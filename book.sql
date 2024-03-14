/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - onlinebook
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinebook` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlinebook`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `mrp` int(200) DEFAULT NULL,
  `imagename` varchar(300) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `aname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `books` */

insert  into `books`(`pid`,`cid`,`pname`,`mrp`,`imagename`,`quantity`,`aname`) values (1,4,'Java',500,'java.jpg','10','asdd'),(2,4,'c',500,'c lang.jpg','5','aaa'),(3,2,'harryporter',600,'java1.jpg','20','amazon'),(4,1,'shadows',50,'download (2).jfif','10','DC'),(5,1,'AMAZING SPIDERMAN',70,'download (3).jfif','10','MARVELS'),(6,1,'WOLVERIENE',80,'download (5).jfif','20','MARVELS'),(7,1,'HULK',80,'download (4).jfif','15','MARVELS'),(8,1,'TINKLE',100,'download (6).jfif','25','UNCLE PAI/ ANANTH PAI'),(9,1,'SUPPANDI',100,'download (7).jfif','25','UN'),(10,1,'TINKLE Special Edition',100,'download (8).jfif','25','UNCLE PAI/ ANANTH PAI'),(11,2,'The Three Little Pigs',50,'download (9).jfif','10','James Halliwell-Phillipps.'),(12,2,'A THOUSAND SPLENDID SUNS',170,'download (12).jfif','10','KHALED HOSSEINI'),(13,1,'I TOO HAD A LOVE STORY',100,'images (2).jfif','5','RAVINDER SINGH'),(14,2,'I TOO HAD A LOVE STORY',100,'images (2).jfif','10','RAVINDER SINGH'),(15,2,'AMAZING SPIDERMAN',180,'download (13).jfif','10','Ben Franklin'),(16,3,'THE REPLACEMENT',200,'download (1).jfif','15','BERNA YOVANOFF'),(17,3,'ESCAPE FROM ASYLUM',200,'download.jfif','10','MADELEINE ROUX'),(18,3,'JACK AND THE BEANSTALK',100,'images (1).jfif','5','MADELEINE ROUX'),(19,4,'ISC PHYSICS',200,'download (15).jfif','20','P.VIVEKANANDAN'),(20,4,'COMPUTER SCIENCE',200,'download (19).jfif','20','MICROSOFT'),(21,4,'PARTICLE PHYSICS',100,'download (16).jfif','5','PALASH PAL.B'),(22,1,'ADVANCE LEVEL COMPUTER SCIENCE',200,'download (19).jfif','20','ZAFAR ALI KHAN'),(23,5,'SHERLOCK HOLMES',200,'download (28).jfif','20','CONAN DOYLE'),(24,5,'THE BOOK OF GOD',250,'download (24).jfif','10','WALTER WANGERIN');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `price` varchar(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`cid`,`cname`) values (1,'Comic'),(2,'Story'),(3,'Horror'),(4,'Education'),(5,'Novel'),(6,'GK');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`uid`,`username`,`password`,`email`,`dob`,`address`,`address1`,`address2`,`cno`) values (1,'ramu','ramu','ramu@gmail.com','2000-10-10','aaa Apats, Flat NO.100','tarnaka, ','Hyderabad','1234567890'),(2,'deepak','ganapati','deepakbelel3258@gmail.com','1995-12-19','Himayatnagar','09','500029','8297325128'),(3,'nikil','nikil','nikilp306@gmail.com','2017-12-31','Himayatnagar','09','500029','8297325128');

/*Table structure for table `salesreport` */

DROP TABLE IF EXISTS `salesreport`;

CREATE TABLE `salesreport` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `price` int(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `dateoforder` varchar(20) DEFAULT NULL,
  `total` varchar(30) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  KEY `pid` (`pid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `salesreport` */

insert  into `salesreport`(`pid`,`uid`,`pname`,`price`,`qty`,`dateoforder`,`total`,`address`,`address1`,`address2`) values (1,1,'Java',500,3,'2017-07-14','1500.0','aaa Apats, Flat NO.100','tarnaka, ','Hyderabad'),(1,1,'Java',500,2,'2017-07-14','1000.0','aaa Apats, Flat NO.100','tarnaka, ','Hyderabad'),(3,1,'harryporter',600,3,'2017-07-17','1800.0','aaa Apats, Flat NO.100','tarnaka, ','Hyderabad'),(16,2,'THE REPLACEMENT',200,4,'2017-07-19','800.0','Himayatnagar','09','500029'),(5,2,'AMAZING SPIDERMAN',70,5,'2017-07-19','350.0','Himayatnagar','09','500029'),(20,2,'COMPUTER SCIENCE',200,2,'2017-07-22','400.0','Himayatnagar','09','500029'),(4,2,'shadows',50,1,'2017-07-22','50.0','Himayatnagar','09','500029'),(4,2,'shadows',50,2,'2017-07-22','100.0','Himayatnagar','09','500029'),(4,3,'shadows',50,2,'2017-07-22','100.0','Himayatnagar','09','500029'),(4,3,'shadows',50,2,'2017-07-22','100.0','Himayatnagar','09','500029');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
