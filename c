/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.1.13-MariaDB : Database - shengxian2015
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shengxian2015` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `shengxian2015`;

/*Table structure for table `ty_user` */


DROP TABLE IF EXISTS `ty_user`;

CREATE TABLE `ty_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'home key',
  `uname` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'user name',
  `upwd` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'password',
  `ustate` int(11) DEFAULT '0' COMMENT 'state 0 not pass',
  `utel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'phone',
  `utime` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'enrollment time',
  `ugjc` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT 'keyword',
  `uage` int(11) DEFAULT NULL COMMENT 'age',
  `material` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'material',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `ty_user` */

insert  into `ty_user`(`uid`,`uname`,`upwd`,`ustate`,`utel`,`utime`,`ugjc`,`uage`,`material`) values (1,'user1','111111',1,'33333','1458390526','Ohio',20,'1001 5.0，1002 4.5，1003 2.5，1004 3.0，1005 3.5，1007 4.0'),(2,'user2','111111',1,'33333','1458390526','washington',24,'1001 3.0, 1002 2.5, 1003 3.0, 1004 4.5, 1005 3.0, 1006 3.5, 1007 6.0, 1008 3.0'),(3,'user3','111111',0,'33333','1458390526','IL',23,'1001 4.0, 1002 4.5, 1003 3.0, 1004 2.5, 1005 5.5'),(4,'user4','111111',0,'33333','1478610879','disney world',23,'1001 5.5, 1002 4.5, 1003 3.0, 1004 3.5, 1005 1.0, 1006 2.5'),(5,'user5','111111',0,'33333','1479348868','OK',22,'1001 5.0, 1002 1.5, 1003 3.5, 1005 3.0, 1006 3.5, 1008 1.0'),(6,'test','test',1,'33333','1458390526','denisy world',24,'1001 3.0, 1004 3.0, 1005 3.5, 1007 4.0');



/*Table structure for table `ty_member` */

DROP TABLE IF EXISTS `ty_member`;

CREATE TABLE `ty_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键(自增)',
  `username` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `telephone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `grades` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '班级',
  `state` int(11) DEFAULT '0' COMMENT '用户状态 0未通过1通过',
  `regdate` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '添加日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `ty_member` */

insert  into `ty_member`(`id`,`username`,`password`,`telephone`,`grades`,`state`,`regdate`) values (1,'admin','123456','13309890456','管理员',1,'1456736451'),(2,'tcp','123456','15039203406','管理员',0,'1456736451'),(3,'app1','1234561','15509203952','管理员',1,'1456736451'),(4,'abc','123','1312334',NULL,0,'1457179415'),(6,'43','234','34',NULL,0,'1457180004'),(7,'3','2','4',NULL,0,'1457180130');

/*Table structure for table `ty_wz` */

DROP TABLE IF EXISTS `ty_wz`;

CREATE TABLE `ty_wz` (
  `wz_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'home key',
  `wz_title` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT 'headline',
  `wz_photo` varchar(130) COLLATE utf8_bin DEFAULT NULL COMMENT 'photo',
  `wz_content` text COLLATE utf8_bin COMMENT 'content',
  `wz_gjc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'key word',
  `wz_time` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'time',
  `wz_userid` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'user ID',
  PRIMARY KEY (`wz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `ty_wz` */

insert  into `ty_wz`(`wz_id`,`wz_title`,`wz_photo`,`wz_content`,`wz_gjc`,`wz_time`,`wz_userid`) values (1,'user17','user17.jpg','rank:1.714','disney world','1478571059','user17'),(2,'user13','user13.jpg','rank1.703','disney world ','1478571133','user13'),(3,'user3','user3.jpg','rank:1.495','disney world','1478571133','user3'),(4,'Califorina','feeling.jpg','rank:1.833','place','1478571133','Califorina'),(5,'user5','others.jpg','good','disney world','1478571133','user5'),(6,'user6','others.jpg','good','disney world','1478571059','user6'),(7,'user7','others.jpg','good','disney world','1478571059','user7'),(8,'user10','others.jpg','good','disney world','1478571133','user10'),(9,'user12','others.jpg','good','disney world','1478571133','user12'),(15,'Yellow Stone','927325_061219saintseya07.jpg','The mountain was covered by trees and the most interesting thing is that it has a lot of monkeys. The monkeys are not at all afraid of human, and  they may even come over and take whatever thing they are interested on you. Any food, or toys or even umbrella are targets of the monkeys.','','1478610927','test');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


