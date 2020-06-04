/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : springbootdb

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2020-06-04 23:00:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1001', '财务员');
INSERT INTO `tbl_dept` VALUES ('1002', '采购员');
INSERT INTO `tbl_dept` VALUES ('1003', '销售员');
INSERT INTO `tbl_dept` VALUES ('1004', '管理员');

-- ----------------------------
-- Table structure for tbl_goods
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods`;
CREATE TABLE `tbl_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `produce_area` varchar(50) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKio4v9cmgniqk36tou9mwhmq6f` (`supplier_id`),
  CONSTRAINT `FKio4v9cmgniqk36tou9mwhmq6f` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods
-- ----------------------------
INSERT INTO `tbl_goods` VALUES ('1', '双汇火腿肠汇福来', '27', '江苏南京', '50g*50支', '1');
INSERT INTO `tbl_goods` VALUES ('2', '百草味风琴鱿鱼片', '12.9', '上海', '80g*1包', '3');
INSERT INTO `tbl_goods` VALUES ('3', '柠檬酸辣无骨鸡爪', '14.9', '四川成都', '560g*1罐', '1');
INSERT INTO `tbl_goods` VALUES ('4', '花生牛奶早餐热饮', '29', '安徽宣城', '1kg*1包', '5');
INSERT INTO `tbl_goods` VALUES ('5', '智力紫薯黑芝麻早餐冲饮', '28.8', '广西桂林', '520g*1包', '2');
INSERT INTO `tbl_goods` VALUES ('6', '海头湾海苔夹心脆儿童即食', '13.5', '江苏连云港', '100g*1包', '4');
INSERT INTO `tbl_goods` VALUES ('7', '金冠爆浆果汁软糖橡皮QQ软糖夹心网红零食', '9.9', '福建泉州', '188g*1包', '3');
INSERT INTO `tbl_goods` VALUES ('8', '雪姬本格梅酒 日式酒女生酒', '34.2', '湖南长沙', '500ml*1瓶', '5');
INSERT INTO `tbl_goods` VALUES ('9', '天地一号苹果醋 饮品饮料 佐餐饮料', '26.9', '广东佛山', '330ml*6罐', '4');
INSERT INTO `tbl_goods` VALUES ('10', '统一冰红茶', '37.9', '广东广州', '1L*8瓶', '1');
INSERT INTO `tbl_goods` VALUES ('11', '坚果炒货特产 酒花生', '11.9', '江西萍乡', '285g*1包', '5');
INSERT INTO `tbl_goods` VALUES ('12', '乌江微辣榨菜', '2.5', '重庆', '80g*1包', '3');
INSERT INTO `tbl_goods` VALUES ('13', '白象红烧牛肉面', '24.9', '安徽合肥', '75g*24袋', '3');
INSERT INTO `tbl_goods` VALUES ('14', '韩太国产火鸡面 网红速食超辣干拌炸酱面', '7.9', '广西南宁', '113g*5包', '3');
INSERT INTO `tbl_goods` VALUES ('15', '多味花生 炒货零食', '5', '广东广州', '148g*1包', '1');
INSERT INTO `tbl_goods` VALUES ('16', '康师傅冰红茶柠檬味', '4', '广东广州', '1L*1瓶', '4');
INSERT INTO `tbl_goods` VALUES ('17', '猪肉脯 零食小吃麻辣肉干', '27.9', '广东广州', '200g*1袋', '2');
INSERT INTO `tbl_goods` VALUES ('18', '肉丝饼早餐面包网红小零食', '9.5', '福建厦门', '500g*1箱', '1');
INSERT INTO `tbl_goods` VALUES ('19', '岩烧乳酪吐司夹心面包', '9.9', '福建厦门', '400g*1箱', '3');
INSERT INTO `tbl_goods` VALUES ('20', '咸蛋黄酥雪媚娘早餐面包', '8.9', '福建厦门', '6枚*1箱', '1');
INSERT INTO `tbl_goods` VALUES ('21', '香辣铁板鱿鱼须片', '12.9', '江西上饶', '140g*20包', '2');
INSERT INTO `tbl_goods` VALUES ('22', '夏威夷果奶油坚果干果', '19.5', '广东惠州', '250g*1包', '2');
INSERT INTO `tbl_goods` VALUES ('23', '锐澳鸡尾酒白桃玫瑰白兰地风味', '8.9', '广东珠海', '330ml*1罐', '1');
INSERT INTO `tbl_goods` VALUES ('24', '白岛日式棉花糖烘焙雪花酥', '14.8', '上海', '500g*1袋', '3');
INSERT INTO `tbl_goods` VALUES ('25', '佛手果干 盐津佛手果干凉果', '16.8', '广东广州', '330g*1瓶', '5');
INSERT INTO `tbl_goods` VALUES ('26', 'Jeete麦饭石平底锅不粘锅牛排煎锅', '119', '浙江金华', '盘20cm', '1');
INSERT INTO `tbl_goods` VALUES ('27', '达维纸巾 家用实惠装', '15.9', '北京', '130抽*6包', '3');
INSERT INTO `tbl_goods` VALUES ('28', '达维蓝色经典卷纸 厕纸', '25.8', '福建福州', '200g*10卷4层', '1');
INSERT INTO `tbl_goods` VALUES ('29', '周义野生泡椒凤爪', '17.8', '湖北重庆', '500g*4包', '2');
INSERT INTO `tbl_goods` VALUES ('30', '贤哥笋尖泡椒脆笋丝嫩笋丝', '14.8', '广东广州', '70g*5包', '1');
INSERT INTO `tbl_goods` VALUES ('31', '盼盼法式小面包 早餐零食', '8.5', '福建厦门', '400g*1箱', '4');
INSERT INTO `tbl_goods` VALUES ('32', '山楂条片球糕果丹皮', '9.5', '广东广州', '250g*1袋', '1');

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsbda353gj0gvguus09lrgm45a` (`employee_id`),
  CONSTRAINT `FKsbda353gj0gvguus09lrgm45a` FOREIGN KEY (`employee_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('12', ' 2020-06-02 08:17:50 ', '2', '5');
INSERT INTO `tbl_order` VALUES ('13', ' 2020-06-02 08:19:00 ', '1', '5');
INSERT INTO `tbl_order` VALUES ('14', ' 2020-06-02 08:19:44 ', '2', '5');
INSERT INTO `tbl_order` VALUES ('15', ' 2020-06-02 08:35:47 ', '2', '5');
INSERT INTO `tbl_order` VALUES ('16', ' 2020-06-02 08:55:05 ', '0', '5');
INSERT INTO `tbl_order` VALUES ('17', ' 2020-06-04 21:46:17 ', '1', '5');

-- ----------------------------
-- Table structure for tbl_order_details
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_details`;
CREATE TABLE `tbl_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `num` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeuybuu45rqr9sxhc95km434dh` (`goods_id`),
  KEY `FK2aoi8s90m44sc6lv3mkw5s5xd` (`order_id`),
  CONSTRAINT `FK2aoi8s90m44sc6lv3mkw5s5xd` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`),
  CONSTRAINT `FKeuybuu45rqr9sxhc95km434dh` FOREIGN KEY (`goods_id`) REFERENCES `tbl_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order_details
-- ----------------------------
INSERT INTO `tbl_order_details` VALUES ('21', '2700', '100', '1', '12');
INSERT INTO `tbl_order_details` VALUES ('22', '3900', '100', '2', '12');
INSERT INTO `tbl_order_details` VALUES ('23', '6700', '200', '3', '12');
INSERT INTO `tbl_order_details` VALUES ('24', '8150', '50', '4', '12');
INSERT INTO `tbl_order_details` VALUES ('25', '9830', '60', '5', '12');
INSERT INTO `tbl_order_details` VALUES ('26', '16330', '500', '6', '12');
INSERT INTO `tbl_order_details` VALUES ('27', '21730', '600', '7', '12');
INSERT INTO `tbl_order_details` VALUES ('28', '31930', '300', '8', '12');
INSERT INTO `tbl_order_details` VALUES ('29', '33230', '50', '9', '12');
INSERT INTO `tbl_order_details` VALUES ('30', '36930', '100', '10', '12');
INSERT INTO `tbl_order_details` VALUES ('31', '1350', '50', '1', '13');
INSERT INTO `tbl_order_details` VALUES ('32', '2550', '100', '2', '13');
INSERT INTO `tbl_order_details` VALUES ('33', '900', '100', '7', '14');
INSERT INTO `tbl_order_details` VALUES ('34', '1420', '20', '9', '14');
INSERT INTO `tbl_order_details` VALUES ('35', '1100', '100', '11', '15');
INSERT INTO `tbl_order_details` VALUES ('36', '1400', '150', '12', '15');
INSERT INTO `tbl_order_details` VALUES ('37', '3800', '100', '13', '15');
INSERT INTO `tbl_order_details` VALUES ('38', '29', '1', '4', '16');
INSERT INTO `tbl_order_details` VALUES ('39', '57', '1', '5', '16');
INSERT INTO `tbl_order_details` VALUES ('40', '66', '1', '7', '16');
INSERT INTO `tbl_order_details` VALUES ('41', '92', '1', '9', '16');
INSERT INTO `tbl_order_details` VALUES ('42', '28', '1', '5', '17');
INSERT INTO `tbl_order_details` VALUES ('43', '41', '1', '6', '17');
INSERT INTO `tbl_order_details` VALUES ('44', '50', '1', '7', '17');

-- ----------------------------
-- Table structure for tbl_order_out
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_out`;
CREATE TABLE `tbl_order_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7c0ujmr3g4lpr15rhw2ixiv4t` (`goods_id`),
  CONSTRAINT `FK7c0ujmr3g4lpr15rhw2ixiv4t` FOREIGN KEY (`goods_id`) REFERENCES `tbl_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order_out
-- ----------------------------
INSERT INTO `tbl_order_out` VALUES ('1', '28', ' 2020-06-04 22:56:53 ', '1', '1', '5');
INSERT INTO `tbl_order_out` VALUES ('2', '41', ' 2020-06-04 22:56:53 ', '1', '1', '6');

-- ----------------------------
-- Table structure for tbl_sell
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sell`;
CREATE TABLE `tbl_sell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mbe6fis2ubi94h9whga0d2l1` (`employee_id`),
  KEY `FKk8ty47rby49skvj2l71yrnh4i` (`goods_id`),
  CONSTRAINT `FK1mbe6fis2ubi94h9whga0d2l1` FOREIGN KEY (`employee_id`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `FKk8ty47rby49skvj2l71yrnh4i` FOREIGN KEY (`goods_id`) REFERENCES `tbl_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_sell
-- ----------------------------
INSERT INTO `tbl_sell` VALUES ('1', '14', ' 2020-04-04 21:48:20 ', '1', '1', '2', '3');
INSERT INTO `tbl_sell` VALUES ('2', '43', ' 2020-04-04 21:48:20 ', '1', '1', '2', '4');
INSERT INTO `tbl_sell` VALUES ('3', '56', ' 2020-05-24 21:48:20 ', '1', '1', '2', '6');
INSERT INTO `tbl_sell` VALUES ('4', '27', ' 2020-05-04 22:50:46 ', '3', '1', '2', '7');
INSERT INTO `tbl_sell` VALUES ('5', '61', ' 2020-05-27 22:50:46 ', '1', '1', '2', '8');
INSERT INTO `tbl_sell` VALUES ('6', '113', ' 2020-06-03 22:50:46 ', '2', '1', '2', '9');
INSERT INTO `tbl_sell` VALUES ('7', '27', ' 2020-06-03 22:51:27 ', '3', '1', '2', '7');
INSERT INTO `tbl_sell` VALUES ('8', '101', ' 2020-06-04 22:51:27 ', '2', '1', '2', '10');

-- ----------------------------
-- Table structure for tbl_sell_back
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sell_back`;
CREATE TABLE `tbl_sell_back` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKejk9wg0lynci950qvw2w4dqud` (`employee_id`),
  KEY `FKfjuw3kcvy0cunnkumhelasbif` (`goods_id`),
  CONSTRAINT `FKejk9wg0lynci950qvw2w4dqud` FOREIGN KEY (`employee_id`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `FKfjuw3kcvy0cunnkumhelasbif` FOREIGN KEY (`goods_id`) REFERENCES `tbl_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_sell_back
-- ----------------------------
INSERT INTO `tbl_sell_back` VALUES ('1', '14', ' 2020-04-05 15:50:37 ', '1', '1', '2', '3');
INSERT INTO `tbl_sell_back` VALUES ('2', '34', ' 2020-05-05 20:51:01 ', '1', '1', '2', '8');
INSERT INTO `tbl_sell_back` VALUES ('3', '60', ' 2020-06-04 22:51:01 ', '1', '1', '2', '9');
INSERT INTO `tbl_sell_back` VALUES ('4', '26', ' 2020-06-04 22:51:41 ', '1', '1', '2', '9');

-- ----------------------------
-- Table structure for tbl_stock
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stock`;
CREATE TABLE `tbl_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6jrj9m73wcmi7hltbp8rng00v` (`goods_id`),
  CONSTRAINT `FK6jrj9m73wcmi7hltbp8rng00v` FOREIGN KEY (`goods_id`) REFERENCES `tbl_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_stock
-- ----------------------------
INSERT INTO `tbl_stock` VALUES ('4', '694', '7');
INSERT INTO `tbl_stock` VALUES ('5', '70', '9');
INSERT INTO `tbl_stock` VALUES ('6', '100', '1');
INSERT INTO `tbl_stock` VALUES ('7', '100', '2');
INSERT INTO `tbl_stock` VALUES ('8', '200', '3');
INSERT INTO `tbl_stock` VALUES ('9', '49', '4');
INSERT INTO `tbl_stock` VALUES ('10', '59', '5');
INSERT INTO `tbl_stock` VALUES ('11', '300', '8');
INSERT INTO `tbl_stock` VALUES ('12', '98', '10');
INSERT INTO `tbl_stock` VALUES ('13', '100', '11');
INSERT INTO `tbl_stock` VALUES ('14', '150', '12');
INSERT INTO `tbl_stock` VALUES ('15', '100', '13');
INSERT INTO `tbl_stock` VALUES ('16', '498', '6');

-- ----------------------------
-- Table structure for tbl_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tbl_supplier`;
CREATE TABLE `tbl_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_supplier
-- ----------------------------
INSERT INTO `tbl_supplier` VALUES ('1', '广东广州', '林一凡', '1', '13525234612');
INSERT INTO `tbl_supplier` VALUES ('2', '安徽合肥', '王玉民', '1', '13207584667');
INSERT INTO `tbl_supplier` VALUES ('3', '广东深圳', '李庆红', '0', '13421571578');
INSERT INTO `tbl_supplier` VALUES ('4', '广东湛江', '王林', '1', '13041657335');
INSERT INTO `tbl_supplier` VALUES ('5', '湖南长沙', '罗琳琳', '0', '13107854612');
INSERT INTO `tbl_supplier` VALUES ('6', '湖南长沙', '陈志明', '1', '13542683887');
INSERT INTO `tbl_supplier` VALUES ('7', '湖北武汉', '李潇然', '0', '13421579843');
INSERT INTO `tbl_supplier` VALUES ('8', '广东汕尾', '李默然', '0', '13185567443');
INSERT INTO `tbl_supplier` VALUES ('9', '广东东莞', '周翔', '1', '17324568745');
INSERT INTO `tbl_supplier` VALUES ('10', '福建厦门', '苏冉冉', '0', '13927837446');
INSERT INTO `tbl_supplier` VALUES ('11', '广东揭阳', '程世成', '1', '13456873794');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` int(11) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `user_name` varchar(10) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9mgqvi538ktq3yyw4ktr7l56y` (`department_id`),
  CONSTRAINT `FK9mgqvi538ktq3yyw4ktr7l56y` FOREIGN KEY (`department_id`) REFERENCES `tbl_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', '1', '李泗汇', 'LiSiHui', '13245678732', 'LiSiHui', '1004');
INSERT INTO `tbl_user` VALUES ('2', '1', '刘明', 'LiuMing', '13457878912', 'LiuMing', '1003');
INSERT INTO `tbl_user` VALUES ('3', '0', '王霞', 'WangXia', '13844678520', 'WangXia', '1002');
INSERT INTO `tbl_user` VALUES ('4', '1', '王五', 'WangWu', '13129508156', 'WangWu', '1001');
INSERT INTO `tbl_user` VALUES ('5', '1', '李江', 'LiJiang', '13046102362', 'LiJiang', '1002');
INSERT INTO `tbl_user` VALUES ('6', '1', '蔡明辉', 'CaiMingHui', '13429524615', 'CaiMingHui', '1003');
INSERT INTO `tbl_user` VALUES ('7', '1', '莫南然', 'MonRang', '17320546987', 'MonRang', '1003');
INSERT INTO `tbl_user` VALUES ('8', '0', '惠世玲', 'HuiShi03', '16620075468', 'HuiShi03', '1002');
INSERT INTO `tbl_user` VALUES ('9', '1', '李超', 'LiChao', '13648725463', 'LiChao', '1001');
INSERT INTO `tbl_user` VALUES ('10', '1', '毛祁先', 'MongQi', '13724568792', 'MongQi', '1003');
INSERT INTO `tbl_user` VALUES ('11', '1', '黄华茂', 'HuangHua', '13542678942', 'HuangHua', '1001');
