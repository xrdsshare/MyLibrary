/*
MySQL Data Transfer
Source Host: localhost
Source Database: librarydb
Target Host: localhost
Target Database: librarydb
Date: 2018/1/2 19:47:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for academe
-- ----------------------------
CREATE TABLE `academe` (
  `id` int(11) NOT NULL auto_increment,
  `academe` varchar(40) default NULL,
  `specialtyid` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bookcase
-- ----------------------------
CREATE TABLE `bookcase` (
  `id` int(11) NOT NULL auto_increment,
  `bookcase` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bookinfo
-- ----------------------------
CREATE TABLE `bookinfo` (
  `id` int(11) NOT NULL auto_increment,
  `bookcode` varchar(10) default NULL,
  `isbn` varchar(30) default NULL,
  `seekcode` varchar(20) default NULL,
  `bookname` varchar(40) default NULL,
  `auther` varchar(20) default NULL,
  `compyid` int(10) unsigned default NULL,
  `price` varchar(8) default NULL,
  `keywords` varchar(60) default NULL,
  `amount` int(10) unsigned default NULL,
  `caseid` int(10) unsigned default NULL,
  `booktime` date default NULL,
  `stateid` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bookorder
-- ----------------------------
CREATE TABLE `bookorder` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(10) unsigned default NULL,
  `bookid` int(10) unsigned default NULL,
  `ordertime` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
CREATE TABLE `borrow` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(10) unsigned default NULL,
  `bookid` int(10) unsigned default NULL,
  `borrowtime` date default NULL,
  `plantime` date default NULL,
  `backtime` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cardtype
-- ----------------------------
CREATE TABLE `cardtype` (
  `id` int(11) NOT NULL auto_increment,
  `cardtype` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for college
-- ----------------------------
CREATE TABLE `college` (
  `id` int(11) NOT NULL auto_increment,
  `college` varchar(40) default NULL,
  `academeid` int(10) unsigned default NULL,
  `specialtyid` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for company
-- ----------------------------
CREATE TABLE `company` (
  `id` int(11) NOT NULL auto_increment,
  `company` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
CREATE TABLE `grade` (
  `id` int(11) NOT NULL auto_increment,
  `grade` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for loselog
-- ----------------------------
CREATE TABLE `loselog` (
  `id` int(11) NOT NULL auto_increment,
  `logtime` date default NULL,
  `mngname` varchar(30) default NULL,
  `isbn` varchar(20) default NULL,
  `bookname` varchar(40) default NULL,
  `bookauther` varchar(20) default NULL,
  `bookcom` varchar(40) default NULL,
  `username` varchar(30) default NULL,
  `usercardcode` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for specialty
-- ----------------------------
CREATE TABLE `specialty` (
  `id` int(11) NOT NULL auto_increment,
  `specialty` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for state
-- ----------------------------
CREATE TABLE `state` (
  `id` int(11) NOT NULL auto_increment,
  `state` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `sex` varchar(10) default NULL,
  `cardtypeid` int(10) unsigned default NULL,
  `cardcode` varchar(30) default NULL,
  `gradeid` int(10) unsigned default NULL,
  `collegeid` int(10) unsigned default NULL,
  `academeid` int(10) unsigned default NULL,
  `specialtyid` int(10) unsigned default NULL,
  `email` varchar(20) default NULL,
  `tel` varchar(20) default NULL,
  `typeid` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for usertype
-- ----------------------------
CREATE TABLE `usertype` (
  `id` int(11) NOT NULL auto_increment,
  `usertype` varchar(20) default NULL,
  `userpower` varchar(20) NOT NULL,
  `days` int(10) default NULL,
  `number` int(10) unsigned default NULL,
  `backprice` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `academe` VALUES ('1', '学院0', '1');
INSERT INTO `bookcase` VALUES ('1', '测试分类0');
INSERT INTO `bookcase` VALUES ('2', '测试分类1');
INSERT INTO `bookcase` VALUES ('3', '测试分类2');
INSERT INTO `bookcase` VALUES ('4', '测试分类3');
INSERT INTO `bookcase` VALUES ('5', '测试分类4');
INSERT INTO `bookcase` VALUES ('6', '测试分类5');
INSERT INTO `bookcase` VALUES ('7', '测试分类6');
INSERT INTO `bookcase` VALUES ('8', '测试分类7');
INSERT INTO `bookcase` VALUES ('9', '测试分类8');
INSERT INTO `bookcase` VALUES ('10', '测试分类9');
INSERT INTO `bookinfo` VALUES ('1', '00000000', '000-0', 'AA000.00A00', '测试图书名0', '作者0', '1', '010', '测试、图书、0', '2', '1', '2017-12-01', '1');
INSERT INTO `bookinfo` VALUES ('2', '00000001', '000-0', 'AA000.00A00', '测试图书名0', '作者0', '1', '010', '测试、图书、0', '2', '1', '2017-12-01', '1');
INSERT INTO `bookinfo` VALUES ('3', '00000002', '000-1', 'AA000.01A01', '测试图书名1', '作者1', '1', '020', '测试、图书、1', '1', '8', '2017-12-03', '2');
INSERT INTO `bookinfo` VALUES ('4', '00000003', '000-2', 'AA000.02A02', '测试图书名2', '作者2', '10', '020', '测试、图书、2', '1', '5', '2017-12-04', '2');
INSERT INTO `bookinfo` VALUES ('5', '00000004', '000-3', 'AA000.03A03', '测试图书名3', '作者3', '2', '020', '测试、图书、3', '1', '2', '2017-12-05', '3');
INSERT INTO `bookinfo` VALUES ('6', '00000005', '000-4', 'AA000.04A04', '测试图书名4', '作者4', '5', '020', '测试、图书、4', '5', '3', '2017-12-06', '2');
INSERT INTO `bookinfo` VALUES ('7', '00000006', '000-4', 'AA000.04A04', '测试图书名4', '作者4', '1', '020', '测试、图书、4', '5', '6', '2017-12-06', '2');
INSERT INTO `bookinfo` VALUES ('8', '00000007', '000-4', 'AA000.04A04', '测试图书名4', '作者4', '7', '020', '测试、图书、4', '5', '7', '2017-12-06', '1');
INSERT INTO `bookinfo` VALUES ('9', '00000008', '000-4', 'AA000.04A04', '测试图书名4', '作者4', '1', '020', '测试、图书、4', '5', '10', '2017-12-06', '3');
INSERT INTO `bookinfo` VALUES ('10', '00000009', '000-4', 'AA000.04A04', '测试图书名4', '作者4', '7', '020', '测试、图书、4', '5', '2', '2017-12-06', '2');
INSERT INTO `bookinfo` VALUES ('11', '000000010', '000-5', 'AA000.05A05', '测试图书名5', '作者5', '7', '020', '测试、图书、5', '3', '10', '2017-12-02', '2');
INSERT INTO `bookinfo` VALUES ('12', '000000011', '000-5', 'AA000.05A05', '测试图书名5', '作者5', '4', '020', '测试、图书、5', '3', '6', '2017-12-02', '1');
INSERT INTO `bookinfo` VALUES ('13', '000000012', '000-5', 'AA000.05A05', '测试图书名5', '作者5', '5', '020', '测试、图书、5', '3', '7', '2017-12-02', '1');
INSERT INTO `bookinfo` VALUES ('14', '000000013', '000-6', 'AA000.06A06', '测试图书名6', '作者6', '3', '020', '测试、图书、6', '1', '5', '2017-12-07', '3');
INSERT INTO `bookinfo` VALUES ('15', '000000014', '000-7', 'AA000.07A07', '测试图书名7', '作者7', '4', '020', '测试、图书、7', '5', '7', '2017-12-16', '2');
INSERT INTO `bookinfo` VALUES ('16', '000000015', '000-7', 'AA000.07A07', '测试图书名7', '作者7', '8', '020', '测试、图书、7', '5', '3', '2017-12-16', '2');
INSERT INTO `bookinfo` VALUES ('17', '000000016', '000-7', 'AA000.07A07', '测试图书名7', '作者7', '3', '020', '测试、图书、7', '5', '10', '2017-12-16', '1');
INSERT INTO `bookinfo` VALUES ('18', '000000017', '000-7', 'AA000.07A07', '测试图书名7', '作者7', '5', '020', '测试、图书、7', '5', '2', '2017-12-16', '2');
INSERT INTO `bookinfo` VALUES ('19', '000000018', '000-7', 'AA000.07A07', '测试图书名7', '作者7', '6', '020', '测试、图书、7', '5', '3', '2017-12-16', '1');
INSERT INTO `borrow` VALUES ('1', '4', '1', '2017-10-29', '2018-01-29', null);
INSERT INTO `borrow` VALUES ('2', '2', '10', '2017-01-01', '2018-02-01', '2017-02-01');
INSERT INTO `borrow` VALUES ('3', '2', '7', '2017-01-01', '2018-02-01', '2017-03-01');
INSERT INTO `borrow` VALUES ('4', '1', '12', '2017-01-01', '2017-04-01', '2017-03-01');
INSERT INTO `borrow` VALUES ('5', '1', '10', '2017-06-01', '2017-09-01', '2017-08-01');
INSERT INTO `cardtype` VALUES ('1', '学生证');
INSERT INTO `cardtype` VALUES ('2', '工作证');
INSERT INTO `cardtype` VALUES ('3', '身份证');
INSERT INTO `college` VALUES ('1', '大学0', '1', '1');
INSERT INTO `company` VALUES ('1', '测试出版社0');
INSERT INTO `company` VALUES ('2', '测试出版社1');
INSERT INTO `company` VALUES ('3', '测试出版社2');
INSERT INTO `company` VALUES ('4', '测试出版社3');
INSERT INTO `company` VALUES ('5', '测试出版社4');
INSERT INTO `company` VALUES ('6', '测试出版社5');
INSERT INTO `company` VALUES ('7', '测试出版社6');
INSERT INTO `company` VALUES ('8', '测试出版社7');
INSERT INTO `company` VALUES ('9', '测试出版社8');
INSERT INTO `company` VALUES ('10', '测试出版社9');
INSERT INTO `grade` VALUES ('1', '14级');
INSERT INTO `grade` VALUES ('2', '15级');
INSERT INTO `grade` VALUES ('3', '16级');
INSERT INTO `grade` VALUES ('4', '17级');
INSERT INTO `loselog` VALUES ('1', '2017-12-28', 'admin', '000-0', '测试图书名0', '作者0', '测试出版社0', 'user', '1000000000');
INSERT INTO `specialty` VALUES ('1', '专业0');
INSERT INTO `state` VALUES ('1', '图书在架');
INSERT INTO `state` VALUES ('2', '仅供阅览');
INSERT INTO `state` VALUES ('3', '图书已借');
INSERT INTO `state` VALUES ('4', '已被预约');
INSERT INTO `users` VALUES ('1', 'admin', 'admin', '男', '1', '0000000000', '1', '1', '1', '1', '00000000@qq.com', '00000000000', '1');
INSERT INTO `users` VALUES ('2', 'user', 'user', '男', '2', '1000000000', '1', '1', '1', '1', '10000000@qq.com', '10000000000', '2');
INSERT INTO `users` VALUES ('3', 'other', 'other', '女', '3', '2000000000', '1', '1', '1', '1', '20000000@qq.com', '20000000000', '3');
INSERT INTO `users` VALUES ('4', 'user1', 'user1', '男', '2', '0000000001', '1', '1', '1', '1', '00000001@qq.com', '00000000000', '2');
INSERT INTO `usertype` VALUES ('1', '管理员', 'admin', '90', '40', '1');
INSERT INTO `usertype` VALUES ('2', '用户', 'user', '60', '30', '1');
INSERT INTO `usertype` VALUES ('3', '其他', 'other', '0', '0', '1');
