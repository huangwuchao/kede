/*
Navicat MySQL Data Transfer

Source Server         : 1809
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xiangmu

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-11-27 11:03:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for liebiao
-- ----------------------------
DROP TABLE IF EXISTS `liebiao`;
CREATE TABLE `liebiao` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `mane` varchar(255) NOT NULL,
  `prile` varchar(255) NOT NULL,
  `jieshao` varchar(255) NOT NULL,
  `renqi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liebiao
-- ----------------------------
INSERT INTO `liebiao` VALUES ('2', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜4片装', '128', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1235');
INSERT INTO `liebiao` VALUES ('3', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜5片装', '24', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1478');
INSERT INTO `liebiao` VALUES ('4', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜6片装', '589', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5867');
INSERT INTO `liebiao` VALUES ('5', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜7片装', '556', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4567');
INSERT INTO `liebiao` VALUES ('6', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜8片装', '54', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '2357');
INSERT INTO `liebiao` VALUES ('7', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜9片装', '52', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '564');
INSERT INTO `liebiao` VALUES ('8', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜10片装', '68', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '498');
INSERT INTO `liebiao` VALUES ('9', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜11片装', '548', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '7894');
INSERT INTO `liebiao` VALUES ('10', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜12片装', '34', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4546');
INSERT INTO `liebiao` VALUES ('11', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜13片装', '17', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '8965');
INSERT INTO `liebiao` VALUES ('12', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜14片装', '78', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '452');
INSERT INTO `liebiao` VALUES ('13', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜15片装', '56', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4756');
INSERT INTO `liebiao` VALUES ('14', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜16片装', '659', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5235');
INSERT INTO `liebiao` VALUES ('15', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜17片装', '54', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5424');
INSERT INTO `liebiao` VALUES ('16', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜18片装', '55', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4542');
INSERT INTO `liebiao` VALUES ('17', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜19片装', '642', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '6856');
INSERT INTO `liebiao` VALUES ('18', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜20片装', '123', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '6558');
INSERT INTO `liebiao` VALUES ('19', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜21片装', '654', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4657');
INSERT INTO `liebiao` VALUES ('20', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜22片装', '65', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1554');
INSERT INTO `liebiao` VALUES ('21', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜23片装', '65', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5677');
INSERT INTO `liebiao` VALUES ('22', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜24片装', '547', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4562');
INSERT INTO `liebiao` VALUES ('23', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜25片装', '48', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4231');
INSERT INTO `liebiao` VALUES ('24', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜26片装', '22', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '563');
INSERT INTO `liebiao` VALUES ('25', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜27片装', '65', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1542');
INSERT INTO `liebiao` VALUES ('26', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜28片装', '69', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1543');
INSERT INTO `liebiao` VALUES ('27', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜29片装', '57', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1544');
INSERT INTO `liebiao` VALUES ('28', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜30片装', '55', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1545');
INSERT INTO `liebiao` VALUES ('29', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜31片装', '475', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1546');
INSERT INTO `liebiao` VALUES ('30', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜32片装', '46', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1547');
INSERT INTO `liebiao` VALUES ('31', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜33片装', '566', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1548');
INSERT INTO `liebiao` VALUES ('32', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜34片装', '222', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1549');
INSERT INTO `liebiao` VALUES ('33', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜35片装', '111', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1550');
INSERT INTO `liebiao` VALUES ('34', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜36片装', '333', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1551');
INSERT INTO `liebiao` VALUES ('35', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜37片装', '444', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1552');
INSERT INTO `liebiao` VALUES ('36', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜38片装', '31', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1553');
INSERT INTO `liebiao` VALUES ('37', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜39片装', '61', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1554');
INSERT INTO `liebiao` VALUES ('38', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜40片装', '94', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1555');
INSERT INTO `liebiao` VALUES ('39', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜41片装', '75', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1556');
INSERT INTO `liebiao` VALUES ('40', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜42片装', '16', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1557');
INSERT INTO `liebiao` VALUES ('41', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜43片装', '68', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1558');
INSERT INTO `liebiao` VALUES ('42', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜44片装', '68', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1559');
INSERT INTO `liebiao` VALUES ('43', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜45片装', '45', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1560');
INSERT INTO `liebiao` VALUES ('44', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜46片装', '75', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1561');
INSERT INTO `liebiao` VALUES ('45', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜47片装', '795', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1562');
INSERT INTO `liebiao` VALUES ('46', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜48片装', '122', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1563');
INSERT INTO `liebiao` VALUES ('47', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜49片装', '55', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1564');
INSERT INTO `liebiao` VALUES ('48', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜50片装', '477', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1565');
INSERT INTO `liebiao` VALUES ('49', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜51片装', '478', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1566');
INSERT INTO `liebiao` VALUES ('50', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜52片装', '479', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1567');
INSERT INTO `liebiao` VALUES ('51', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜53片装', '480', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1568');
INSERT INTO `liebiao` VALUES ('52', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜54片装', '481', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1569');
INSERT INTO `liebiao` VALUES ('53', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜55片装', '482', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1570');
INSERT INTO `liebiao` VALUES ('54', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜56片装', '483', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1571');
INSERT INTO `liebiao` VALUES ('55', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜57片装', '484', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1572');
INSERT INTO `liebiao` VALUES ('56', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜58片装', '485', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1573');
INSERT INTO `liebiao` VALUES ('57', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜59片装', '486', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1574');
INSERT INTO `liebiao` VALUES ('58', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜60片装', '487', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1575');
INSERT INTO `liebiao` VALUES ('59', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜61片装', '488', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1576');
INSERT INTO `liebiao` VALUES ('60', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜62片装', '489', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1577');
INSERT INTO `liebiao` VALUES ('61', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜63片装', '490', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1578');
INSERT INTO `liebiao` VALUES ('62', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜64片装', '491', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1579');
INSERT INTO `liebiao` VALUES ('63', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜65片装', '492', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1580');
INSERT INTO `liebiao` VALUES ('64', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜66片装', '493', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1581');
INSERT INTO `liebiao` VALUES ('65', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜67片装', '494', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1582');
INSERT INTO `liebiao` VALUES ('66', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜68片装', '495', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1583');
INSERT INTO `liebiao` VALUES ('67', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜69片装', '496', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1584');
INSERT INTO `liebiao` VALUES ('68', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜70片装', '497', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1585');
INSERT INTO `liebiao` VALUES ('69', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜71片装', '498', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1586');
INSERT INTO `liebiao` VALUES ('70', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜72片装', '499', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1587');
INSERT INTO `liebiao` VALUES ('71', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜73片装', '500', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1588');
INSERT INTO `liebiao` VALUES ('72', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜74片装', '501', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1589');
INSERT INTO `liebiao` VALUES ('73', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜75片装', '502', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1590');
INSERT INTO `liebiao` VALUES ('74', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜76片装', '503', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1591');
INSERT INTO `liebiao` VALUES ('75', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜77片装', '504', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1592');
INSERT INTO `liebiao` VALUES ('76', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜78片装', '505', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1593');
INSERT INTO `liebiao` VALUES ('77', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜79片装', '506', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1594');
INSERT INTO `liebiao` VALUES ('78', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜80片装', '507', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1595');
INSERT INTO `liebiao` VALUES ('79', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜81片装', '508', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1596');
INSERT INTO `liebiao` VALUES ('80', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜82片装', '509', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1597');
INSERT INTO `liebiao` VALUES ('81', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜83片装', '510', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1598');
INSERT INTO `liebiao` VALUES ('82', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜84片装', '511', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1599');
INSERT INTO `liebiao` VALUES ('83', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜85片装', '512', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1600');
INSERT INTO `liebiao` VALUES ('84', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜86片装', '513', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1601');
INSERT INTO `liebiao` VALUES ('85', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜87片装', '514', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1602');
INSERT INTO `liebiao` VALUES ('86', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜88片装', '515', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1603');
INSERT INTO `liebiao` VALUES ('87', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜89片装', '516', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1604');
INSERT INTO `liebiao` VALUES ('88', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜90片装', '517', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1605');
INSERT INTO `liebiao` VALUES ('89', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜91片装', '518', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1606');
INSERT INTO `liebiao` VALUES ('90', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜92片装', '519', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1607');
INSERT INTO `liebiao` VALUES ('91', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜93片装', '520', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1608');
INSERT INTO `liebiao` VALUES ('92', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜94片装', '521', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1609');
INSERT INTO `liebiao` VALUES ('93', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜95片装', '522', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1610');
INSERT INTO `liebiao` VALUES ('94', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜96片装', '523', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1611');
INSERT INTO `liebiao` VALUES ('95', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜97片装', '524', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1612');
INSERT INTO `liebiao` VALUES ('96', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜98片装', '525', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1613');
INSERT INTO `liebiao` VALUES ('97', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜99片装', '526', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1614');
INSERT INTO `liebiao` VALUES ('98', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜100片装', '527', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1615');
INSERT INTO `liebiao` VALUES ('99', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜101片装', '528', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1616');
INSERT INTO `liebiao` VALUES ('100', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜102片装', '529', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1617');
SET FOREIGN_KEY_CHECKS=1;
