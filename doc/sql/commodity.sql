/*
Navicat MySQL Data Transfer

Source Server         : 1809
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xiangmu

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-11-27 10:27:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `mane` varchar(255) NOT NULL,
  `prile` varchar(255) NOT NULL,
  `jieshao` varchar(255) NOT NULL,
  `renqi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('2', 'images/topbanner2.jpg', '12', '13', '14', '15');
INSERT INTO `commodity` VALUES ('3', 'images/topbanner3.jpg', '13', '14', '15', '16');
INSERT INTO `commodity` VALUES ('4', 'images/topbanner4.jpg', '14', '15', '16', '17');
INSERT INTO `commodity` VALUES ('5', 'images/topbanner5.jpg', '15', '16', '17', '18');
INSERT INTO `commodity` VALUES ('6', 'images/topbanner6.jpg', '16', '17', '18', '19');
INSERT INTO `commodity` VALUES ('7', 'images/topbanner7.jpg', '17', '18', '19', '20');
INSERT INTO `commodity` VALUES ('8', 'images/topbanner8.jpg', '18', '19', '20', '21');
INSERT INTO `commodity` VALUES ('9', 'images/topbanner9.jpg', '19', '20', '21', '22');
INSERT INTO `commodity` VALUES ('10', 'images/0fa1.jpg', '11', '21', '22', '23');
INSERT INTO `commodity` VALUES ('11', 'images/0fa2.jpg', '12', '22', '23', '24');
INSERT INTO `commodity` VALUES ('12', 'images/0fa3.jpg', '13', '23', '24', '25');
INSERT INTO `commodity` VALUES ('13', 'images/zhi1.jpg', '诺思魅眸Max美妆日抛30片装', '￥89', '11', '23');
INSERT INTO `commodity` VALUES ('14', 'images/zhi2.jpg', '诺思魅眸Max美妆日抛31片装', '￥90', '12', '24');
INSERT INTO `commodity` VALUES ('15', 'images/zhi3.jpg', '诺思魅眸Max美妆日抛32片装', '￥91', '13', '25');
INSERT INTO `commodity` VALUES ('16', 'images/zhi4.jpg', '诺思魅眸Max美妆日抛33片装', '￥92', '14', '26');
INSERT INTO `commodity` VALUES ('17', 'images/zhi5.jpg', '诺思魅眸Max美妆日抛34片装', '￥93', '15', '27');
INSERT INTO `commodity` VALUES ('18', 'images/ms1.jpg', '诺思魅眸Max美妆日抛35片装', '￥94', '16', '28');
INSERT INTO `commodity` VALUES ('19', 'images/ms2.jpg', '诺思魅眸Max美妆日抛36片装', '￥95', '17', '29');
INSERT INTO `commodity` VALUES ('20', 'images/ms3.jpg', '诺思魅眸Max美妆日抛37片装', '￥96', '18', '30');
INSERT INTO `commodity` VALUES ('21', 'images/ms4.jpg', '诺思魅眸Max美妆日抛38片装', '￥97', '19', '31');
INSERT INTO `commodity` VALUES ('22', 'images/ms5.jpg', '诺思魅眸Max美妆日抛39片装', '￥98', '20', '32');
INSERT INTO `commodity` VALUES ('23', 'images/2f_left1.jpg', '11', '12', '13', '33');
INSERT INTO `commodity` VALUES ('24', 'images/2f_left2.jpg', '12', '13', '14', '34');
INSERT INTO `commodity` VALUES ('25', 'images/2f_left1.jpg', '13', '14', '15', '35');
INSERT INTO `commodity` VALUES ('26', 'images/2f_hot1.jpg', '强生define新美瞳炫闪日抛30片装', '￥188', '￥249', '36');
INSERT INTO `commodity` VALUES ('27', 'images/2f_hot1.jpg', '强生define新美瞳炫闪日抛31片装', '￥189', '￥250', '37');
INSERT INTO `commodity` VALUES ('28', 'images/2f_hot1.jpg', '强生define新美瞳炫闪日抛32片装', '￥190', '￥251', '38');
INSERT INTO `commodity` VALUES ('29', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(3色)', '￥166.00', '瞳孔黄金比例', '39');
INSERT INTO `commodity` VALUES ('30', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(4色)', '￥167.00', '瞳孔黄金比例', '40');
INSERT INTO `commodity` VALUES ('31', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(5色)', '￥168.00', '瞳孔黄金比例', '41');
INSERT INTO `commodity` VALUES ('32', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(6色)', '￥169.00', '瞳孔黄金比例', '42');
INSERT INTO `commodity` VALUES ('33', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(7色)', '￥170.00', '瞳孔黄金比例', '43');
INSERT INTO `commodity` VALUES ('34', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(8色)', '￥171.00', '瞳孔黄金比例', '44');
INSERT INTO `commodity` VALUES ('37', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(3色)', '￥166.00', '瞳孔黄金比例', '45');
INSERT INTO `commodity` VALUES ('38', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(4色)', '￥167.00', '瞳孔黄金比例', '46');
INSERT INTO `commodity` VALUES ('39', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(5色)', '￥168.00', '瞳孔黄金比例', '47');
INSERT INTO `commodity` VALUES ('40', 'images/2f_4.jpg', '博士伦蕾丝明眸日抛30片装(6色)', '￥169.00', '瞳孔黄金比例', '48');
INSERT INTO `commodity` VALUES ('41', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3070', '￥826.00', '11', '49');
INSERT INTO `commodity` VALUES ('42', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3071', '￥827.00', '12', '50');
INSERT INTO `commodity` VALUES ('43', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3072', '￥828.00', '13', '51');
INSERT INTO `commodity` VALUES ('44', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3073', '￥829.00', '14', '52');
INSERT INTO `commodity` VALUES ('45', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3074', '￥830.00', '15', '53');
INSERT INTO `commodity` VALUES ('46', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3075', '￥831.00', '16', '54');
INSERT INTO `commodity` VALUES ('47', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3076', '￥832.00', '17', '55');
INSERT INTO `commodity` VALUES ('48', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3077', '￥833.00', '18', '56');
INSERT INTO `commodity` VALUES ('49', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3078', '￥834.00', '19', '57');
INSERT INTO `commodity` VALUES ('50', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3079', '￥835.00', '20', '58');
INSERT INTO `commodity` VALUES ('51', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3080', '￥836.00', '21', '59');
INSERT INTO `commodity` VALUES ('52', 'images/4f_2.jpg', 'EMPORIO ARMANI阿玛尼眼镜架EA3081', '￥837.00', '22', '60');
INSERT INTO `commodity` VALUES ('53', 'images/5f_3.jpg', '珍视明真丝睡眠眼罩', '￥88.00', '直降40元', '61');
INSERT INTO `commodity` VALUES ('54', 'images/5f_3.jpg', '珍视明真丝睡眠眼罩', '￥89.00', '直降41元', '62');
INSERT INTO `commodity` VALUES ('55', 'images/5f_3.jpg', '珍视明真丝睡眠眼罩', '￥90.00', '直降42元', '63');
INSERT INTO `commodity` VALUES ('56', 'images/5f_3.jpg', '珍视明真丝睡眠眼罩', '￥91.00', '直降43元', '64');
INSERT INTO `commodity` VALUES ('57', 'images/5f_3.jpg', '珍视明真丝睡眠眼罩', '￥92.00', '直降44元', '65');
INSERT INTO `commodity` VALUES ('58', 'images/5f_3.jpg', '珍视明真丝睡眠眼罩', '￥93.00', '直降45元', '66');
INSERT INTO `commodity` VALUES ('59', 'images/5f_3.jpg', '珍视明真丝睡眠眼罩', '￥94.00', '直降46元', '67');
INSERT INTO `commodity` VALUES ('60', 'images/5f_3.jpg', '珍视明真丝睡眠眼罩', '￥95.00', '直降47元', '68');
INSERT INTO `commodity` VALUES ('61', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜3片装', '59', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5334');
INSERT INTO `commodity` VALUES ('62', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜4片装', '128', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1235');
INSERT INTO `commodity` VALUES ('63', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜5片装', '24', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1478');
INSERT INTO `commodity` VALUES ('64', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜6片装', '589', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5867');
INSERT INTO `commodity` VALUES ('65', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜7片装', '556', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4567');
INSERT INTO `commodity` VALUES ('66', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜8片装', '54', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '2357');
INSERT INTO `commodity` VALUES ('67', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜9片装', '52', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '564');
INSERT INTO `commodity` VALUES ('68', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜10片装', '68', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '498');
INSERT INTO `commodity` VALUES ('69', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜11片装', '548', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '7894');
INSERT INTO `commodity` VALUES ('70', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜12片装', '34', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4546');
INSERT INTO `commodity` VALUES ('71', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜13片装', '17', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '8965');
INSERT INTO `commodity` VALUES ('72', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜14片装', '78', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '452');
INSERT INTO `commodity` VALUES ('73', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜15片装', '56', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4756');
INSERT INTO `commodity` VALUES ('74', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜16片装', '659', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5235');
INSERT INTO `commodity` VALUES ('75', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜17片装', '54', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5424');
INSERT INTO `commodity` VALUES ('76', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜18片装', '55', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4542');
INSERT INTO `commodity` VALUES ('77', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜19片装', '642', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '6856');
INSERT INTO `commodity` VALUES ('78', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜20片装', '123', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '6558');
INSERT INTO `commodity` VALUES ('79', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜21片装', '654', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4657');
INSERT INTO `commodity` VALUES ('80', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜22片装', '65', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1554');
INSERT INTO `commodity` VALUES ('81', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜23片装', '65', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '5677');
INSERT INTO `commodity` VALUES ('82', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜24片装', '547', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4562');
INSERT INTO `commodity` VALUES ('83', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜25片装', '48', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '4231');
INSERT INTO `commodity` VALUES ('84', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜26片装', '22', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '563');
INSERT INTO `commodity` VALUES ('85', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜27片装', '65', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1542');
INSERT INTO `commodity` VALUES ('86', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜28片装', '69', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1543');
INSERT INTO `commodity` VALUES ('87', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜29片装', '57', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1544');
INSERT INTO `commodity` VALUES ('88', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜30片装', '55', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1545');
INSERT INTO `commodity` VALUES ('89', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜31片装', '475', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1546');
INSERT INTO `commodity` VALUES ('90', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜32片装', '46', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1547');
INSERT INTO `commodity` VALUES ('91', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜33片装', '566', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1548');
INSERT INTO `commodity` VALUES ('92', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜34片装', '222', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1549');
INSERT INTO `commodity` VALUES ('93', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜35片装', '111', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1550');
INSERT INTO `commodity` VALUES ('94', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜36片装', '333', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1551');
INSERT INTO `commodity` VALUES ('95', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜37片装', '444', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1552');
INSERT INTO `commodity` VALUES ('96', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜38片装', '31', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1553');
INSERT INTO `commodity` VALUES ('97', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜39片装', '61', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1554');
INSERT INTO `commodity` VALUES ('98', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜40片装', '94', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1555');
INSERT INTO `commodity` VALUES ('99', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜41片装', '75', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1556');
INSERT INTO `commodity` VALUES ('100', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜42片装', '16', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1557');
INSERT INTO `commodity` VALUES ('101', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜43片装', '68', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1558');
INSERT INTO `commodity` VALUES ('102', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜44片装', '68', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1559');
INSERT INTO `commodity` VALUES ('103', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜45片装', '45', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1560');
INSERT INTO `commodity` VALUES ('104', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜46片装', '75', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1561');
INSERT INTO `commodity` VALUES ('105', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜47片装', '795', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1562');
INSERT INTO `commodity` VALUES ('106', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜48片装', '122', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1563');
INSERT INTO `commodity` VALUES ('107', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜49片装', '55', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1564');
INSERT INTO `commodity` VALUES ('108', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜50片装', '477', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1565');
INSERT INTO `commodity` VALUES ('109', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜51片装', '478', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1566');
INSERT INTO `commodity` VALUES ('110', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜52片装', '479', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1567');
INSERT INTO `commodity` VALUES ('111', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜53片装', '480', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1568');
INSERT INTO `commodity` VALUES ('112', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜54片装', '481', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1569');
INSERT INTO `commodity` VALUES ('113', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜55片装', '482', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1570');
INSERT INTO `commodity` VALUES ('114', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜56片装', '483', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1571');
INSERT INTO `commodity` VALUES ('115', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜57片装', '484', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1572');
INSERT INTO `commodity` VALUES ('116', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜58片装', '485', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1573');
INSERT INTO `commodity` VALUES ('117', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜59片装', '486', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1574');
INSERT INTO `commodity` VALUES ('118', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜60片装', '487', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1575');
INSERT INTO `commodity` VALUES ('119', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜61片装', '488', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1576');
INSERT INTO `commodity` VALUES ('120', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜62片装', '489', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1577');
INSERT INTO `commodity` VALUES ('121', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜63片装', '490', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1578');
INSERT INTO `commodity` VALUES ('122', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜64片装', '491', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1579');
INSERT INTO `commodity` VALUES ('123', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜65片装', '492', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1580');
INSERT INTO `commodity` VALUES ('124', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜66片装', '493', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1581');
INSERT INTO `commodity` VALUES ('125', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜67片装', '494', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1582');
INSERT INTO `commodity` VALUES ('126', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜68片装', '495', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1583');
INSERT INTO `commodity` VALUES ('127', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜69片装', '496', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1584');
INSERT INTO `commodity` VALUES ('128', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜70片装', '497', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1585');
INSERT INTO `commodity` VALUES ('129', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜71片装', '498', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1586');
INSERT INTO `commodity` VALUES ('130', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜72片装', '499', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1587');
INSERT INTO `commodity` VALUES ('131', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜73片装', '500', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1588');
INSERT INTO `commodity` VALUES ('132', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜74片装', '501', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1589');
INSERT INTO `commodity` VALUES ('133', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜75片装', '502', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1590');
INSERT INTO `commodity` VALUES ('134', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜76片装', '503', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1591');
INSERT INTO `commodity` VALUES ('135', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜77片装', '504', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1592');
INSERT INTO `commodity` VALUES ('136', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜78片装', '505', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1593');
INSERT INTO `commodity` VALUES ('137', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜79片装', '506', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1594');
INSERT INTO `commodity` VALUES ('138', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜80片装', '507', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1595');
INSERT INTO `commodity` VALUES ('139', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜81片装', '508', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1596');
INSERT INTO `commodity` VALUES ('140', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜82片装', '509', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1597');
INSERT INTO `commodity` VALUES ('141', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜83片装', '510', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1598');
INSERT INTO `commodity` VALUES ('142', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜84片装', '511', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1599');
INSERT INTO `commodity` VALUES ('143', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜85片装', '512', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1600');
INSERT INTO `commodity` VALUES ('144', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜86片装', '513', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1601');
INSERT INTO `commodity` VALUES ('145', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜87片装', '514', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1602');
INSERT INTO `commodity` VALUES ('146', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜88片装', '515', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1603');
INSERT INTO `commodity` VALUES ('147', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜89片装', '516', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1604');
INSERT INTO `commodity` VALUES ('148', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜90片装', '517', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1605');
INSERT INTO `commodity` VALUES ('149', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜91片装', '518', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1606');
INSERT INTO `commodity` VALUES ('150', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜92片装', '519', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1607');
INSERT INTO `commodity` VALUES ('151', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜93片装', '520', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1608');
INSERT INTO `commodity` VALUES ('152', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜94片装', '521', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1609');
INSERT INTO `commodity` VALUES ('153', '../images/liebiao1.jpg', '博士伦清朗舒适月抛隐形眼镜95片装', '522', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1610');
INSERT INTO `commodity` VALUES ('154', '../images/liebiao2.jpg', '博士伦清朗舒适月抛隐形眼镜96片装', '523', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1611');
INSERT INTO `commodity` VALUES ('155', '../images/liebiao3.jpg', '博士伦清朗舒适月抛隐形眼镜97片装', '524', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1612');
INSERT INTO `commodity` VALUES ('156', '../images/liebiao4.jpg', '博士伦清朗舒适月抛隐形眼镜98片装', '525', '先进的专利Unifit舒适科技，保障健康的非离子材料，自在舒适又健康。', '1613');
SET FOREIGN_KEY_CHECKS=1;
