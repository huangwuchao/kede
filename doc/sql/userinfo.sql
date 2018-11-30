/*
Navicat MySQL Data Transfer

Source Server         : 1809
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xiangmu

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-11-26 16:41:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `mane` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '11', '11111', '2018-11-23 17:06:24');
INSERT INTO `userinfo` VALUES ('2', '13188888888', '123456', '2018-11-23 17:11:25');
INSERT INTO `userinfo` VALUES ('3', '13712345678', 'a123456', '2018-11-23 17:11:43');
INSERT INTO `userinfo` VALUES ('4', '13688888888', 'a123456', '2018-11-23 17:12:52');
INSERT INTO `userinfo` VALUES ('5', '13188888889', 'z123456', '2018-11-23 17:42:58');
INSERT INTO `userinfo` VALUES ('6', '17666031486', 'z123456', '2018-11-23 20:23:43');
INSERT INTO `userinfo` VALUES ('7', '13724769997', 'a123456', '2018-11-23 21:02:31');
INSERT INTO `userinfo` VALUES ('8', '13112345678', 'z123456', '2018-11-23 21:12:40');
SET FOREIGN_KEY_CHECKS=1;
