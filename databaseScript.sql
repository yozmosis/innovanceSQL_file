CREATE DATABASE  IF NOT EXISTS `bank_innovance`;
USE `bank_innovance`;

DROP TABLE IF EXISTS `account`;
DROP TABLE IF EXISTS `customer`;


CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tckn` bigint(11) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
);


INSERT INTO `customer` VALUES 
	(1,'Yavuz','Z','yavuzz@yavuzz.com', 123456),
	(2,'Oguz','Z','oguzz@oguzz.com', 123457),
	(3,'Kevser','Yildirim','kevserr@kevserr.com', 333333),
	(4,'Hasan','Cakar','hasan@hasan.com',777777);
	


CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `currency` varchar(3) NOT NULL,
  `balance` DECIMAL(10,4) NOT NULL,
  `customer_id` int(11) NOT NULL,
  FOREIGN KEY(`customer_id`) REFERENCES customer(`id`)
);

INSERT INTO `account` VALUES 
	(1,'TRY',50000,1),
	(2,'TRY', 43000, 2),
    (3,'USD',50000,1),
    (4,'USD',700,2),
	(5,'CNY', 43000, 2);
