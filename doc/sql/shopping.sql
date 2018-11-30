/*
Navicat MySQL Data Transfer

Source Server         : 1809
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xiangmu

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-11-30 15:00:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shopping
-- ----------------------------
DROP TABLE IF EXISTS `shopping`;
CREATE TABLE `shopping` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `mane` varchar(255) NOT NULL,
  `prile` decimal(10,0) NOT NULL,
  `dushu` varchar(255) NOT NULL,
  `shuliang` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping
-- ----------------------------
INSERT INTO `shopping` VALUES ('2', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜4片装', '128', '-1.00', '1');
SET FOREIGN_KEY_CHECKS=1;
