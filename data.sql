/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : xiaoba

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-07-17 22:26:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesstoken
-- ----------------------------
DROP TABLE IF EXISTS `accesstoken`;
CREATE TABLE `accesstoken` (
  `merid` int(10) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `expiretime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`merid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accesstoken
-- ----------------------------
INSERT INTO `accesstoken` VALUES ('1014', 'c78086143948aae7f98f8048dbdf6537', '2018-12-11 14:24:45', '2018-07-19 13:34:36', '2018-12-10 14:24:45');

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `prizewallet` decimal(10,2) DEFAULT '0.00' COMMENT '奖励钱包',
  `shopwallet` decimal(10,2) DEFAULT '0.00' COMMENT '购物钱包',
  `medal` int(11) DEFAULT '0' COMMENT '奖章',
  `badge` int(11) DEFAULT '0' COMMENT '凡人勋章',
  `integral` decimal(11,2) DEFAULT '0.00' COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '180.00', '103.90', '0', '0', '3.00');
INSERT INTO `account` VALUES ('2', '0.00', '0.00', '0', '0', '1.00');
INSERT INTO `account` VALUES ('6', '0.00', '0.00', '0', '0', '2.00');
INSERT INTO `account` VALUES ('7', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('8', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('9', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('10', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('11', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('12', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('13', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('14', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('15', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('16', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('17', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('18', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('19', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('20', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('21', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('22', '0.00', '0.00', '0', '0', '0.00');
INSERT INTO `account` VALUES ('23', '0.00', '0.00', '0', '0', '0.00');

-- ----------------------------
-- Table structure for accountflow
-- ----------------------------
DROP TABLE IF EXISTS `accountflow`;
CREATE TABLE `accountflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountid` int(11) DEFAULT NULL COMMENT '账户id,等同于memid',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '流水金额',
  `remark` varchar(255) DEFAULT NULL COMMENT '流水信息',
  `flowtype` int(11) DEFAULT NULL COMMENT '流水类型,1.奖金钱包流水 2.购物钱包流水 3.奖章流水',
  `createtime` datetime DEFAULT NULL,
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单编码',
  `isexpense` tinyint(4) DEFAULT NULL COMMENT '支出1  收入0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountflow
-- ----------------------------
INSERT INTO `accountflow` VALUES ('1', '1', '76.10', '购物钱包购物', '2', '2018-09-14 21:19:02', '201809142119021001151117634', '1');
INSERT INTO `accountflow` VALUES ('2', '9', '0.00', '购物钱包购物', '2', '2018-11-05 17:24:09', '201811051724091000463146545', '1');
INSERT INTO `accountflow` VALUES ('3', '9', '0.00', '购物钱包购物', '2', '2018-11-05 17:26:10', '201811051726101000809819802', '1');

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) DEFAULT NULL,
  `isauth` tinyint(3) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `merid` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('2', '13971141337', '1', '2018-08-08 18:42:37', '2018-12-10 14:24:45', '1014', 'c78086143948aae7f98f8048dbdf6537');
INSERT INTO `administrator` VALUES ('3', '18668212050', '1', '2018-08-09 15:21:29', '2018-12-10 14:24:45', '1014', 'c78086143948aae7f98f8048dbdf6537');
INSERT INTO `administrator` VALUES ('4', '18879705120', '1', '2018-08-13 19:04:08', '2018-12-10 14:24:45', '1014', 'c78086143948aae7f98f8048dbdf6537');
INSERT INTO `administrator` VALUES ('5', '18868926846', '1', '2018-09-03 13:36:01', '2018-12-10 14:24:45', '1014', 'c78086143948aae7f98f8048dbdf6537');
INSERT INTO `administrator` VALUES ('6', '17706517690', '1', '2018-09-04 14:59:02', '2018-12-10 14:24:45', '1014', 'c78086143948aae7f98f8048dbdf6537');
INSERT INTO `administrator` VALUES ('9', '18026130871', '1', '2018-09-05 11:20:58', '2018-12-10 14:24:45', '1014', 'c78086143948aae7f98f8048dbdf6537');
INSERT INTO `administrator` VALUES ('10', '13055912971', '1', '2018-09-11 16:43:00', '2018-12-10 14:24:45', '1014', 'c78086143948aae7f98f8048dbdf6537');

-- ----------------------------
-- Table structure for applyshop
-- ----------------------------
DROP TABLE IF EXISTS `applyshop`;
CREATE TABLE `applyshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merid` int(11) DEFAULT NULL,
  `memid` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `state` tinyint(4) DEFAULT '0' COMMENT '0.未处理,1.已同意.2.拒绝',
  `school` varchar(255) DEFAULT NULL COMMENT '加盟学校',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `county` varchar(255) DEFAULT NULL COMMENT '区',
  `refusereason` varchar(255) DEFAULT NULL COMMENT '拒绝理由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of applyshop
-- ----------------------------
INSERT INTO `applyshop` VALUES ('2', '1014', '21', '阿萨德', '13555555555', '', '2018-11-12 10:20:10', '2018-11-12 15:03:40', '0', '阿萨德', '河北', '张家口', '123123132');
INSERT INTO `applyshop` VALUES ('3', '1014', '22', 'sdf ', '13211111111', '阳泉', '2018-11-12 10:22:35', '2018-11-12 15:02:09', '0', '阿萨德', '山西', '南城', null);
INSERT INTO `applyshop` VALUES ('17', '1014', '20', '我去', '13222222222', '朝阳', '2018-11-12 18:33:19', '2018-11-12 18:37:53', '0', '请问', '北京', '西城', null);
INSERT INTO `applyshop` VALUES ('18', '1014', '23', '测试', '15822225555', '海淀', '2018-11-12 18:37:39', '2018-11-12 18:37:39', '0', '测试', '北京', '东城', null);
INSERT INTO `applyshop` VALUES ('19', '1014', '1', '很少', '13022212321', '宁德', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '0', '寿宁一中', '福建', '寿宁', '坏了');
INSERT INTO `applyshop` VALUES ('20', '1014', '2', '大声地', '13022212321', '买断', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '1', '寿宁一中', '福建', '福安', '坏了');
INSERT INTO `applyshop` VALUES ('21', '1014', '3', '狒狒', '13022212321', '品牌', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '0', '寿宁一中', '福建', '罗江', '坏了');
INSERT INTO `applyshop` VALUES ('22', '1014', '4', '味儿', '13022212321', '天天', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '1', '寿宁一中', '福建', '蛇口', '坏了');
INSERT INTO `applyshop` VALUES ('23', '1014', '5', '天天', '13022212321', '更好', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '2', '寿宁一中', '福建', '舞曲', '坏了');
INSERT INTO `applyshop` VALUES ('24', '1014', '6', '儿童', '13022212321', '很好', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '1', '寿宁一中', '福建', '很是', '坏了');
INSERT INTO `applyshop` VALUES ('25', '1014', '7', '嘤嘤嘤', '13022212321', '宁德', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '0', '寿宁一中', '福建', '按时', '坏了');
INSERT INTO `applyshop` VALUES ('26', '1014', '8', '一样', '13022212321', '宁德', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '0', '寿宁一中', '福建', '得到', '坏了');
INSERT INTO `applyshop` VALUES ('27', '1014', '9', 'uu', '13022212321', '宁德', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '1', '寿宁一中', '福建', '狒狒', '坏了');
INSERT INTO `applyshop` VALUES ('28', '1014', '10', '更改', '13022212321', '宁德', '2018-11-12 10:20:10', '2018-11-12 10:20:10', '0', '寿宁一中', '福建', '非凡哥', '坏了');

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '预约id',
  `merid` int(10) NOT NULL,
  `memid` int(10) NOT NULL,
  `orderid` varchar(30) NOT NULL COMMENT '订单id',
  `realname` varchar(255) NOT NULL COMMENT '预约人姓名',
  `mobile` varchar(255) NOT NULL COMMENT '预约手机号',
  `servicetime` datetime NOT NULL COMMENT '预约时间',
  `artificerid` int(10) DEFAULT NULL COMMENT '技师id',
  `ismembershow` tinyint(3) NOT NULL DEFAULT '0' COMMENT '用户是否可见',
  `iscancel` tinyint(3) DEFAULT '0' COMMENT '是否删除',
  `isfinish` tinyint(3) DEFAULT '0' COMMENT '是否完成',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约表';

-- ----------------------------
-- Records of appointment
-- ----------------------------

-- ----------------------------
-- Table structure for areacode
-- ----------------------------
DROP TABLE IF EXISTS `areacode`;
CREATE TABLE `areacode` (
  `id` int(10) NOT NULL COMMENT '地址id',
  `parentid` int(6) NOT NULL,
  `areacode` varchar(6) NOT NULL,
  `areaname` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of areacode
-- ----------------------------
INSERT INTO `areacode` VALUES ('0', '-1', '100000', '全国');
INSERT INTO `areacode` VALUES ('1', '0', '110000', '北京');
INSERT INTO `areacode` VALUES ('2', '1', '110100', '北京市');
INSERT INTO `areacode` VALUES ('3', '2', '110101', '东城区');
INSERT INTO `areacode` VALUES ('4', '2', '110102', '西城区');
INSERT INTO `areacode` VALUES ('5', '2', '110105', '朝阳区');
INSERT INTO `areacode` VALUES ('6', '2', '110106', '丰台区');
INSERT INTO `areacode` VALUES ('7', '2', '110107', '石景山区');
INSERT INTO `areacode` VALUES ('8', '2', '110108', '海淀区');
INSERT INTO `areacode` VALUES ('9', '2', '110109', '门头沟区');
INSERT INTO `areacode` VALUES ('10', '2', '110111', '房山区');
INSERT INTO `areacode` VALUES ('11', '2', '110112', '通州区');
INSERT INTO `areacode` VALUES ('12', '2', '110113', '顺义区');
INSERT INTO `areacode` VALUES ('13', '2', '110114', '昌平区');
INSERT INTO `areacode` VALUES ('14', '2', '110115', '大兴区');
INSERT INTO `areacode` VALUES ('15', '2', '110116', '怀柔区');
INSERT INTO `areacode` VALUES ('16', '2', '110117', '平谷区');
INSERT INTO `areacode` VALUES ('17', '2', '110118', '密云区');
INSERT INTO `areacode` VALUES ('18', '2', '110119', '延庆区');
INSERT INTO `areacode` VALUES ('19', '0', '120000', '天津');
INSERT INTO `areacode` VALUES ('20', '19', '120100', '天津市');
INSERT INTO `areacode` VALUES ('21', '20', '120101', '和平区');
INSERT INTO `areacode` VALUES ('22', '20', '120102', '河东区');
INSERT INTO `areacode` VALUES ('23', '20', '120103', '河西区');
INSERT INTO `areacode` VALUES ('24', '20', '120104', '南开区');
INSERT INTO `areacode` VALUES ('25', '20', '120105', '河北区');
INSERT INTO `areacode` VALUES ('26', '20', '120106', '红桥区');
INSERT INTO `areacode` VALUES ('27', '20', '120110', '东丽区');
INSERT INTO `areacode` VALUES ('28', '20', '120111', '西青区');
INSERT INTO `areacode` VALUES ('29', '20', '120112', '津南区');
INSERT INTO `areacode` VALUES ('30', '20', '120113', '北辰区');
INSERT INTO `areacode` VALUES ('31', '20', '120114', '武清区');
INSERT INTO `areacode` VALUES ('32', '20', '120115', '宝坻区');
INSERT INTO `areacode` VALUES ('33', '20', '120116', '滨海新区');
INSERT INTO `areacode` VALUES ('34', '20', '120117', '宁河区');
INSERT INTO `areacode` VALUES ('35', '20', '120118', '静海区');
INSERT INTO `areacode` VALUES ('36', '20', '120119', '蓟州区');
INSERT INTO `areacode` VALUES ('37', '0', '130000', '河北省');
INSERT INTO `areacode` VALUES ('38', '37', '130100', '石家庄市');
INSERT INTO `areacode` VALUES ('39', '38', '130102', '长安区');
INSERT INTO `areacode` VALUES ('40', '38', '130104', '桥西区');
INSERT INTO `areacode` VALUES ('41', '38', '130105', '新华区');
INSERT INTO `areacode` VALUES ('42', '38', '130107', '井陉矿区');
INSERT INTO `areacode` VALUES ('43', '38', '130108', '裕华区');
INSERT INTO `areacode` VALUES ('44', '38', '130109', '藁城区');
INSERT INTO `areacode` VALUES ('45', '38', '130110', '鹿泉区');
INSERT INTO `areacode` VALUES ('46', '38', '130111', '栾城区');
INSERT INTO `areacode` VALUES ('47', '38', '130121', '井陉县');
INSERT INTO `areacode` VALUES ('48', '38', '130123', '正定县');
INSERT INTO `areacode` VALUES ('49', '38', '130125', '行唐县');
INSERT INTO `areacode` VALUES ('50', '38', '130126', '灵寿县');
INSERT INTO `areacode` VALUES ('51', '38', '130127', '高邑县');
INSERT INTO `areacode` VALUES ('52', '38', '130128', '深泽县');
INSERT INTO `areacode` VALUES ('53', '38', '130129', '赞皇县');
INSERT INTO `areacode` VALUES ('54', '38', '130130', '无极县');
INSERT INTO `areacode` VALUES ('55', '38', '130131', '平山县');
INSERT INTO `areacode` VALUES ('56', '38', '130132', '元氏县');
INSERT INTO `areacode` VALUES ('57', '38', '130133', '赵县');
INSERT INTO `areacode` VALUES ('58', '38', '130181', '辛集市');
INSERT INTO `areacode` VALUES ('59', '38', '130183', '晋州市');
INSERT INTO `areacode` VALUES ('60', '38', '130184', '新乐市');
INSERT INTO `areacode` VALUES ('61', '37', '130200', '唐山市');
INSERT INTO `areacode` VALUES ('62', '61', '130202', '路南区');
INSERT INTO `areacode` VALUES ('63', '61', '130203', '路北区');
INSERT INTO `areacode` VALUES ('64', '61', '130204', '古冶区');
INSERT INTO `areacode` VALUES ('65', '61', '130205', '开平区');
INSERT INTO `areacode` VALUES ('66', '61', '130207', '丰南区');
INSERT INTO `areacode` VALUES ('67', '61', '130208', '丰润区');
INSERT INTO `areacode` VALUES ('68', '61', '130209', '曹妃甸区');
INSERT INTO `areacode` VALUES ('69', '61', '130223', '滦县');
INSERT INTO `areacode` VALUES ('70', '61', '130224', '滦南县');
INSERT INTO `areacode` VALUES ('71', '61', '130225', '乐亭县');
INSERT INTO `areacode` VALUES ('72', '61', '130227', '迁西县');
INSERT INTO `areacode` VALUES ('73', '61', '130229', '玉田县');
INSERT INTO `areacode` VALUES ('74', '61', '130281', '遵化市');
INSERT INTO `areacode` VALUES ('75', '61', '130283', '迁安市');
INSERT INTO `areacode` VALUES ('76', '37', '130300', '秦皇岛市');
INSERT INTO `areacode` VALUES ('77', '76', '130302', '海港区');
INSERT INTO `areacode` VALUES ('78', '76', '130303', '山海关区');
INSERT INTO `areacode` VALUES ('79', '76', '130304', '北戴河区');
INSERT INTO `areacode` VALUES ('80', '76', '130306', '抚宁区');
INSERT INTO `areacode` VALUES ('81', '76', '130321', '青龙满族自治县');
INSERT INTO `areacode` VALUES ('82', '76', '130322', '昌黎县');
INSERT INTO `areacode` VALUES ('83', '76', '130324', '卢龙县');
INSERT INTO `areacode` VALUES ('84', '37', '130400', '邯郸市');
INSERT INTO `areacode` VALUES ('85', '84', '130402', '邯山区');
INSERT INTO `areacode` VALUES ('86', '84', '130403', '丛台区');
INSERT INTO `areacode` VALUES ('87', '84', '130404', '复兴区');
INSERT INTO `areacode` VALUES ('88', '84', '130406', '峰峰矿区');
INSERT INTO `areacode` VALUES ('89', '84', '130407', '肥乡区');
INSERT INTO `areacode` VALUES ('90', '84', '130408', '永年区');
INSERT INTO `areacode` VALUES ('91', '84', '130423', '临漳县');
INSERT INTO `areacode` VALUES ('92', '84', '130424', '成安县');
INSERT INTO `areacode` VALUES ('93', '84', '130425', '大名县');
INSERT INTO `areacode` VALUES ('94', '84', '130426', '涉县');
INSERT INTO `areacode` VALUES ('95', '84', '130427', '磁县');
INSERT INTO `areacode` VALUES ('96', '84', '130430', '邱县');
INSERT INTO `areacode` VALUES ('97', '84', '130431', '鸡泽县');
INSERT INTO `areacode` VALUES ('98', '84', '130432', '广平县');
INSERT INTO `areacode` VALUES ('99', '84', '130433', '馆陶县');
INSERT INTO `areacode` VALUES ('100', '84', '130434', '魏县');
INSERT INTO `areacode` VALUES ('101', '84', '130435', '曲周县');
INSERT INTO `areacode` VALUES ('102', '84', '130481', '武安市');
INSERT INTO `areacode` VALUES ('103', '37', '130500', '邢台市');
INSERT INTO `areacode` VALUES ('104', '103', '130502', '桥东区');
INSERT INTO `areacode` VALUES ('105', '103', '130503', '桥西区');
INSERT INTO `areacode` VALUES ('106', '103', '130521', '邢台县');
INSERT INTO `areacode` VALUES ('107', '103', '130522', '临城县');
INSERT INTO `areacode` VALUES ('108', '103', '130523', '内丘县');
INSERT INTO `areacode` VALUES ('109', '103', '130524', '柏乡县');
INSERT INTO `areacode` VALUES ('110', '103', '130525', '隆尧县');
INSERT INTO `areacode` VALUES ('111', '103', '130526', '任县');
INSERT INTO `areacode` VALUES ('112', '103', '130527', '南和县');
INSERT INTO `areacode` VALUES ('113', '103', '130528', '宁晋县');
INSERT INTO `areacode` VALUES ('114', '103', '130529', '巨鹿县');
INSERT INTO `areacode` VALUES ('115', '103', '130530', '新河县');
INSERT INTO `areacode` VALUES ('116', '103', '130531', '广宗县');
INSERT INTO `areacode` VALUES ('117', '103', '130532', '平乡县');
INSERT INTO `areacode` VALUES ('118', '103', '130533', '威县');
INSERT INTO `areacode` VALUES ('119', '103', '130534', '清河县');
INSERT INTO `areacode` VALUES ('120', '103', '130535', '临西县');
INSERT INTO `areacode` VALUES ('121', '103', '130581', '南宫市');
INSERT INTO `areacode` VALUES ('122', '103', '130582', '沙河市');
INSERT INTO `areacode` VALUES ('123', '37', '130600', '保定市');
INSERT INTO `areacode` VALUES ('124', '123', '130602', '竞秀区');
INSERT INTO `areacode` VALUES ('125', '123', '130606', '莲池区');
INSERT INTO `areacode` VALUES ('126', '123', '130607', '满城区');
INSERT INTO `areacode` VALUES ('127', '123', '130608', '清苑区');
INSERT INTO `areacode` VALUES ('128', '123', '130609', '徐水区');
INSERT INTO `areacode` VALUES ('129', '123', '130623', '涞水县');
INSERT INTO `areacode` VALUES ('130', '123', '130624', '阜平县');
INSERT INTO `areacode` VALUES ('131', '123', '130626', '定兴县');
INSERT INTO `areacode` VALUES ('132', '123', '130627', '唐县');
INSERT INTO `areacode` VALUES ('133', '123', '130628', '高阳县');
INSERT INTO `areacode` VALUES ('134', '123', '130629', '容城县');
INSERT INTO `areacode` VALUES ('135', '123', '130630', '涞源县');
INSERT INTO `areacode` VALUES ('136', '123', '130631', '望都县');
INSERT INTO `areacode` VALUES ('137', '123', '130632', '安新县');
INSERT INTO `areacode` VALUES ('138', '123', '130633', '易县');
INSERT INTO `areacode` VALUES ('139', '123', '130634', '曲阳县');
INSERT INTO `areacode` VALUES ('140', '123', '130635', '蠡县');
INSERT INTO `areacode` VALUES ('141', '123', '130636', '顺平县');
INSERT INTO `areacode` VALUES ('142', '123', '130637', '博野县');
INSERT INTO `areacode` VALUES ('143', '123', '130638', '雄县');
INSERT INTO `areacode` VALUES ('144', '123', '130681', '涿州市');
INSERT INTO `areacode` VALUES ('145', '123', '130682', '定州市');
INSERT INTO `areacode` VALUES ('146', '123', '130683', '安国市');
INSERT INTO `areacode` VALUES ('147', '123', '130684', '高碑店市');
INSERT INTO `areacode` VALUES ('148', '37', '130700', '张家口市');
INSERT INTO `areacode` VALUES ('149', '148', '130702', '桥东区');
INSERT INTO `areacode` VALUES ('150', '148', '130703', '桥西区');
INSERT INTO `areacode` VALUES ('151', '148', '130705', '宣化区');
INSERT INTO `areacode` VALUES ('152', '148', '130706', '下花园区');
INSERT INTO `areacode` VALUES ('153', '148', '130708', '万全区');
INSERT INTO `areacode` VALUES ('154', '148', '130709', '崇礼区');
INSERT INTO `areacode` VALUES ('155', '148', '130722', '张北县');
INSERT INTO `areacode` VALUES ('156', '148', '130723', '康保县');
INSERT INTO `areacode` VALUES ('157', '148', '130724', '沽源县');
INSERT INTO `areacode` VALUES ('158', '148', '130725', '尚义县');
INSERT INTO `areacode` VALUES ('159', '148', '130726', '蔚县');
INSERT INTO `areacode` VALUES ('160', '148', '130727', '阳原县');
INSERT INTO `areacode` VALUES ('161', '148', '130728', '怀安县');
INSERT INTO `areacode` VALUES ('162', '148', '130730', '怀来县');
INSERT INTO `areacode` VALUES ('163', '148', '130731', '涿鹿县');
INSERT INTO `areacode` VALUES ('164', '148', '130732', '赤城县');
INSERT INTO `areacode` VALUES ('165', '37', '130800', '承德市');
INSERT INTO `areacode` VALUES ('166', '165', '130802', '双桥区');
INSERT INTO `areacode` VALUES ('167', '165', '130803', '双滦区');
INSERT INTO `areacode` VALUES ('168', '165', '130804', '鹰手营子矿区');
INSERT INTO `areacode` VALUES ('169', '165', '130821', '承德县');
INSERT INTO `areacode` VALUES ('170', '165', '130822', '兴隆县');
INSERT INTO `areacode` VALUES ('171', '165', '130824', '滦平县');
INSERT INTO `areacode` VALUES ('172', '165', '130825', '隆化县');
INSERT INTO `areacode` VALUES ('173', '165', '130826', '丰宁满族自治县');
INSERT INTO `areacode` VALUES ('174', '165', '130827', '宽城满族自治县');
INSERT INTO `areacode` VALUES ('175', '165', '130828', '围场满族蒙古族自治县');
INSERT INTO `areacode` VALUES ('176', '165', '130881', '平泉市');
INSERT INTO `areacode` VALUES ('177', '37', '130900', '沧州市');
INSERT INTO `areacode` VALUES ('178', '177', '130902', '新华区');
INSERT INTO `areacode` VALUES ('179', '177', '130903', '运河区');
INSERT INTO `areacode` VALUES ('180', '177', '130921', '沧县');
INSERT INTO `areacode` VALUES ('181', '177', '130922', '青县');
INSERT INTO `areacode` VALUES ('182', '177', '130923', '东光县');
INSERT INTO `areacode` VALUES ('183', '177', '130924', '海兴县');
INSERT INTO `areacode` VALUES ('184', '177', '130925', '盐山县');
INSERT INTO `areacode` VALUES ('185', '177', '130926', '肃宁县');
INSERT INTO `areacode` VALUES ('186', '177', '130927', '南皮县');
INSERT INTO `areacode` VALUES ('187', '177', '130928', '吴桥县');
INSERT INTO `areacode` VALUES ('188', '177', '130929', '献县');
INSERT INTO `areacode` VALUES ('189', '177', '130930', '孟村回族自治县');
INSERT INTO `areacode` VALUES ('190', '177', '130981', '泊头市');
INSERT INTO `areacode` VALUES ('191', '177', '130982', '任丘市');
INSERT INTO `areacode` VALUES ('192', '177', '130983', '黄骅市');
INSERT INTO `areacode` VALUES ('193', '177', '130984', '河间市');
INSERT INTO `areacode` VALUES ('194', '37', '131000', '廊坊市');
INSERT INTO `areacode` VALUES ('195', '194', '131002', '安次区');
INSERT INTO `areacode` VALUES ('196', '194', '131003', '广阳区');
INSERT INTO `areacode` VALUES ('197', '194', '131022', '固安县');
INSERT INTO `areacode` VALUES ('198', '194', '131023', '永清县');
INSERT INTO `areacode` VALUES ('199', '194', '131024', '香河县');
INSERT INTO `areacode` VALUES ('200', '194', '131025', '大城县');
INSERT INTO `areacode` VALUES ('201', '194', '131026', '文安县');
INSERT INTO `areacode` VALUES ('202', '194', '131028', '大厂回族自治县');
INSERT INTO `areacode` VALUES ('203', '194', '131081', '霸州市');
INSERT INTO `areacode` VALUES ('204', '194', '131082', '三河市');
INSERT INTO `areacode` VALUES ('205', '37', '131100', '衡水市');
INSERT INTO `areacode` VALUES ('206', '205', '131102', '桃城区');
INSERT INTO `areacode` VALUES ('207', '205', '131103', '冀州区');
INSERT INTO `areacode` VALUES ('208', '205', '131121', '枣强县');
INSERT INTO `areacode` VALUES ('209', '205', '131122', '武邑县');
INSERT INTO `areacode` VALUES ('210', '205', '131123', '武强县');
INSERT INTO `areacode` VALUES ('211', '205', '131124', '饶阳县');
INSERT INTO `areacode` VALUES ('212', '205', '131125', '安平县');
INSERT INTO `areacode` VALUES ('213', '205', '131126', '故城县');
INSERT INTO `areacode` VALUES ('214', '205', '131127', '景县');
INSERT INTO `areacode` VALUES ('215', '205', '131128', '阜城县');
INSERT INTO `areacode` VALUES ('216', '205', '131182', '深州市');
INSERT INTO `areacode` VALUES ('217', '0', '140000', '山西省');
INSERT INTO `areacode` VALUES ('218', '217', '140100', '太原市');
INSERT INTO `areacode` VALUES ('219', '218', '140105', '小店区');
INSERT INTO `areacode` VALUES ('220', '218', '140106', '迎泽区');
INSERT INTO `areacode` VALUES ('221', '218', '140107', '杏花岭区');
INSERT INTO `areacode` VALUES ('222', '218', '140108', '尖草坪区');
INSERT INTO `areacode` VALUES ('223', '218', '140109', '万柏林区');
INSERT INTO `areacode` VALUES ('224', '218', '140110', '晋源区');
INSERT INTO `areacode` VALUES ('225', '218', '140121', '清徐县');
INSERT INTO `areacode` VALUES ('226', '218', '140122', '阳曲县');
INSERT INTO `areacode` VALUES ('227', '218', '140123', '娄烦县');
INSERT INTO `areacode` VALUES ('228', '218', '140181', '古交市');
INSERT INTO `areacode` VALUES ('229', '217', '140200', '大同市');
INSERT INTO `areacode` VALUES ('230', '229', '140202', '城区');
INSERT INTO `areacode` VALUES ('231', '229', '140203', '矿区');
INSERT INTO `areacode` VALUES ('232', '229', '140211', '南郊区');
INSERT INTO `areacode` VALUES ('233', '229', '140212', '新荣区');
INSERT INTO `areacode` VALUES ('234', '229', '140221', '阳高县');
INSERT INTO `areacode` VALUES ('235', '229', '140222', '天镇县');
INSERT INTO `areacode` VALUES ('236', '229', '140223', '广灵县');
INSERT INTO `areacode` VALUES ('237', '229', '140224', '灵丘县');
INSERT INTO `areacode` VALUES ('238', '229', '140225', '浑源县');
INSERT INTO `areacode` VALUES ('239', '229', '140226', '左云县');
INSERT INTO `areacode` VALUES ('240', '229', '140227', '大同县');
INSERT INTO `areacode` VALUES ('241', '217', '140300', '阳泉市');
INSERT INTO `areacode` VALUES ('242', '241', '140302', '城区');
INSERT INTO `areacode` VALUES ('243', '241', '140303', '矿区');
INSERT INTO `areacode` VALUES ('244', '241', '140311', '郊区');
INSERT INTO `areacode` VALUES ('245', '241', '140321', '平定县');
INSERT INTO `areacode` VALUES ('246', '241', '140322', '盂县');
INSERT INTO `areacode` VALUES ('247', '217', '140400', '长治市');
INSERT INTO `areacode` VALUES ('248', '247', '140402', '城区');
INSERT INTO `areacode` VALUES ('249', '247', '140411', '郊区');
INSERT INTO `areacode` VALUES ('250', '247', '140421', '长治县');
INSERT INTO `areacode` VALUES ('251', '247', '140423', '襄垣县');
INSERT INTO `areacode` VALUES ('252', '247', '140424', '屯留县');
INSERT INTO `areacode` VALUES ('253', '247', '140425', '平顺县');
INSERT INTO `areacode` VALUES ('254', '247', '140426', '黎城县');
INSERT INTO `areacode` VALUES ('255', '247', '140427', '壶关县');
INSERT INTO `areacode` VALUES ('256', '247', '140428', '长子县');
INSERT INTO `areacode` VALUES ('257', '247', '140429', '武乡县');
INSERT INTO `areacode` VALUES ('258', '247', '140430', '沁县');
INSERT INTO `areacode` VALUES ('259', '247', '140431', '沁源县');
INSERT INTO `areacode` VALUES ('260', '247', '140481', '潞城市');
INSERT INTO `areacode` VALUES ('261', '217', '140500', '晋城市');
INSERT INTO `areacode` VALUES ('262', '261', '140502', '城区');
INSERT INTO `areacode` VALUES ('263', '261', '140521', '沁水县');
INSERT INTO `areacode` VALUES ('264', '261', '140522', '阳城县');
INSERT INTO `areacode` VALUES ('265', '261', '140524', '陵川县');
INSERT INTO `areacode` VALUES ('266', '261', '140525', '泽州县');
INSERT INTO `areacode` VALUES ('267', '261', '140581', '高平市');
INSERT INTO `areacode` VALUES ('268', '217', '140600', '朔州市');
INSERT INTO `areacode` VALUES ('269', '268', '140602', '朔城区');
INSERT INTO `areacode` VALUES ('270', '268', '140603', '平鲁区');
INSERT INTO `areacode` VALUES ('271', '268', '140621', '山阴县');
INSERT INTO `areacode` VALUES ('272', '268', '140622', '应县');
INSERT INTO `areacode` VALUES ('273', '268', '140623', '右玉县');
INSERT INTO `areacode` VALUES ('274', '268', '140624', '怀仁县');
INSERT INTO `areacode` VALUES ('275', '217', '140700', '晋中市');
INSERT INTO `areacode` VALUES ('276', '275', '140702', '榆次区');
INSERT INTO `areacode` VALUES ('277', '275', '140721', '榆社县');
INSERT INTO `areacode` VALUES ('278', '275', '140722', '左权县');
INSERT INTO `areacode` VALUES ('279', '275', '140723', '和顺县');
INSERT INTO `areacode` VALUES ('280', '275', '140724', '昔阳县');
INSERT INTO `areacode` VALUES ('281', '275', '140725', '寿阳县');
INSERT INTO `areacode` VALUES ('282', '275', '140726', '太谷县');
INSERT INTO `areacode` VALUES ('283', '275', '140727', '祁县');
INSERT INTO `areacode` VALUES ('284', '275', '140728', '平遥县');
INSERT INTO `areacode` VALUES ('285', '275', '140729', '灵石县');
INSERT INTO `areacode` VALUES ('286', '275', '140781', '介休市');
INSERT INTO `areacode` VALUES ('287', '217', '140800', '运城市');
INSERT INTO `areacode` VALUES ('288', '287', '140802', '盐湖区');
INSERT INTO `areacode` VALUES ('289', '287', '140821', '临猗县');
INSERT INTO `areacode` VALUES ('290', '287', '140822', '万荣县');
INSERT INTO `areacode` VALUES ('291', '287', '140823', '闻喜县');
INSERT INTO `areacode` VALUES ('292', '287', '140824', '稷山县');
INSERT INTO `areacode` VALUES ('293', '287', '140825', '新绛县');
INSERT INTO `areacode` VALUES ('294', '287', '140826', '绛县');
INSERT INTO `areacode` VALUES ('295', '287', '140827', '垣曲县');
INSERT INTO `areacode` VALUES ('296', '287', '140828', '夏县');
INSERT INTO `areacode` VALUES ('297', '287', '140829', '平陆县');
INSERT INTO `areacode` VALUES ('298', '287', '140830', '芮城县');
INSERT INTO `areacode` VALUES ('299', '287', '140881', '永济市');
INSERT INTO `areacode` VALUES ('300', '287', '140882', '河津市');
INSERT INTO `areacode` VALUES ('301', '217', '140900', '忻州市');
INSERT INTO `areacode` VALUES ('302', '301', '140902', '忻府区');
INSERT INTO `areacode` VALUES ('303', '301', '140921', '定襄县');
INSERT INTO `areacode` VALUES ('304', '301', '140922', '五台县');
INSERT INTO `areacode` VALUES ('305', '301', '140923', '代县');
INSERT INTO `areacode` VALUES ('306', '301', '140924', '繁峙县');
INSERT INTO `areacode` VALUES ('307', '301', '140925', '宁武县');
INSERT INTO `areacode` VALUES ('308', '301', '140926', '静乐县');
INSERT INTO `areacode` VALUES ('309', '301', '140927', '神池县');
INSERT INTO `areacode` VALUES ('310', '301', '140928', '五寨县');
INSERT INTO `areacode` VALUES ('311', '301', '140929', '岢岚县');
INSERT INTO `areacode` VALUES ('312', '301', '140930', '河曲县');
INSERT INTO `areacode` VALUES ('313', '301', '140931', '保德县');
INSERT INTO `areacode` VALUES ('314', '301', '140932', '偏关县');
INSERT INTO `areacode` VALUES ('315', '301', '140981', '原平市');
INSERT INTO `areacode` VALUES ('316', '217', '141000', '临汾市');
INSERT INTO `areacode` VALUES ('317', '316', '141002', '尧都区');
INSERT INTO `areacode` VALUES ('318', '316', '141021', '曲沃县');
INSERT INTO `areacode` VALUES ('319', '316', '141022', '翼城县');
INSERT INTO `areacode` VALUES ('320', '316', '141023', '襄汾县');
INSERT INTO `areacode` VALUES ('321', '316', '141024', '洪洞县');
INSERT INTO `areacode` VALUES ('322', '316', '141025', '古县');
INSERT INTO `areacode` VALUES ('323', '316', '141026', '安泽县');
INSERT INTO `areacode` VALUES ('324', '316', '141027', '浮山县');
INSERT INTO `areacode` VALUES ('325', '316', '141028', '吉县');
INSERT INTO `areacode` VALUES ('326', '316', '141029', '乡宁县');
INSERT INTO `areacode` VALUES ('327', '316', '141030', '大宁县');
INSERT INTO `areacode` VALUES ('328', '316', '141031', '隰县');
INSERT INTO `areacode` VALUES ('329', '316', '141032', '永和县');
INSERT INTO `areacode` VALUES ('330', '316', '141033', '蒲县');
INSERT INTO `areacode` VALUES ('331', '316', '141034', '汾西县');
INSERT INTO `areacode` VALUES ('332', '316', '141081', '侯马市');
INSERT INTO `areacode` VALUES ('333', '316', '141082', '霍州市');
INSERT INTO `areacode` VALUES ('334', '217', '141100', '吕梁市');
INSERT INTO `areacode` VALUES ('335', '334', '141102', '离石区');
INSERT INTO `areacode` VALUES ('336', '334', '141121', '文水县');
INSERT INTO `areacode` VALUES ('337', '334', '141122', '交城县');
INSERT INTO `areacode` VALUES ('338', '334', '141123', '兴县');
INSERT INTO `areacode` VALUES ('339', '334', '141124', '临县');
INSERT INTO `areacode` VALUES ('340', '334', '141125', '柳林县');
INSERT INTO `areacode` VALUES ('341', '334', '141126', '石楼县');
INSERT INTO `areacode` VALUES ('342', '334', '141127', '岚县');
INSERT INTO `areacode` VALUES ('343', '334', '141128', '方山县');
INSERT INTO `areacode` VALUES ('344', '334', '141129', '中阳县');
INSERT INTO `areacode` VALUES ('345', '334', '141130', '交口县');
INSERT INTO `areacode` VALUES ('346', '334', '141181', '孝义市');
INSERT INTO `areacode` VALUES ('347', '334', '141182', '汾阳市');
INSERT INTO `areacode` VALUES ('348', '0', '150000', '内蒙古自治区');
INSERT INTO `areacode` VALUES ('349', '348', '150100', '呼和浩特市');
INSERT INTO `areacode` VALUES ('350', '349', '150102', '新城区');
INSERT INTO `areacode` VALUES ('351', '349', '150103', '回民区');
INSERT INTO `areacode` VALUES ('352', '349', '150104', '玉泉区');
INSERT INTO `areacode` VALUES ('353', '349', '150105', '赛罕区');
INSERT INTO `areacode` VALUES ('354', '349', '150121', '土默特左旗');
INSERT INTO `areacode` VALUES ('355', '349', '150122', '托克托县');
INSERT INTO `areacode` VALUES ('356', '349', '150123', '和林格尔县');
INSERT INTO `areacode` VALUES ('357', '349', '150124', '清水河县');
INSERT INTO `areacode` VALUES ('358', '349', '150125', '武川县');
INSERT INTO `areacode` VALUES ('359', '348', '150200', '包头市');
INSERT INTO `areacode` VALUES ('360', '359', '150202', '东河区');
INSERT INTO `areacode` VALUES ('361', '359', '150203', '昆都仑区');
INSERT INTO `areacode` VALUES ('362', '359', '150204', '青山区');
INSERT INTO `areacode` VALUES ('363', '359', '150205', '石拐区');
INSERT INTO `areacode` VALUES ('364', '359', '150206', '白云鄂博矿区');
INSERT INTO `areacode` VALUES ('365', '359', '150207', '九原区');
INSERT INTO `areacode` VALUES ('366', '359', '150221', '土默特右旗');
INSERT INTO `areacode` VALUES ('367', '359', '150222', '固阳县');
INSERT INTO `areacode` VALUES ('368', '359', '150223', '达尔罕茂明安联合旗');
INSERT INTO `areacode` VALUES ('369', '348', '150300', '乌海市');
INSERT INTO `areacode` VALUES ('370', '369', '150302', '海勃湾区');
INSERT INTO `areacode` VALUES ('371', '369', '150303', '海南区');
INSERT INTO `areacode` VALUES ('372', '369', '150304', '乌达区');
INSERT INTO `areacode` VALUES ('373', '348', '150400', '赤峰市');
INSERT INTO `areacode` VALUES ('374', '373', '150402', '红山区');
INSERT INTO `areacode` VALUES ('375', '373', '150403', '元宝山区');
INSERT INTO `areacode` VALUES ('376', '373', '150404', '松山区');
INSERT INTO `areacode` VALUES ('377', '373', '150421', '阿鲁科尔沁旗');
INSERT INTO `areacode` VALUES ('378', '373', '150422', '巴林左旗');
INSERT INTO `areacode` VALUES ('379', '373', '150423', '巴林右旗');
INSERT INTO `areacode` VALUES ('380', '373', '150424', '林西县');
INSERT INTO `areacode` VALUES ('381', '373', '150425', '克什克腾旗');
INSERT INTO `areacode` VALUES ('382', '373', '150426', '翁牛特旗');
INSERT INTO `areacode` VALUES ('383', '373', '150428', '喀喇沁旗');
INSERT INTO `areacode` VALUES ('384', '373', '150429', '宁城县');
INSERT INTO `areacode` VALUES ('385', '373', '150430', '敖汉旗');
INSERT INTO `areacode` VALUES ('386', '348', '150500', '通辽市');
INSERT INTO `areacode` VALUES ('387', '386', '150502', '科尔沁区');
INSERT INTO `areacode` VALUES ('388', '386', '150521', '科尔沁左翼中旗');
INSERT INTO `areacode` VALUES ('389', '386', '150522', '科尔沁左翼后旗');
INSERT INTO `areacode` VALUES ('390', '386', '150523', '开鲁县');
INSERT INTO `areacode` VALUES ('391', '386', '150524', '库伦旗');
INSERT INTO `areacode` VALUES ('392', '386', '150525', '奈曼旗');
INSERT INTO `areacode` VALUES ('393', '386', '150526', '扎鲁特旗');
INSERT INTO `areacode` VALUES ('394', '386', '150581', '霍林郭勒市');
INSERT INTO `areacode` VALUES ('395', '348', '150600', '鄂尔多斯市');
INSERT INTO `areacode` VALUES ('396', '395', '150602', '东胜区');
INSERT INTO `areacode` VALUES ('397', '395', '150603', '康巴什区');
INSERT INTO `areacode` VALUES ('398', '395', '150621', '达拉特旗');
INSERT INTO `areacode` VALUES ('399', '395', '150622', '准格尔旗');
INSERT INTO `areacode` VALUES ('400', '395', '150623', '鄂托克前旗');
INSERT INTO `areacode` VALUES ('401', '395', '150624', '鄂托克旗');
INSERT INTO `areacode` VALUES ('402', '395', '150625', '杭锦旗');
INSERT INTO `areacode` VALUES ('403', '395', '150626', '乌审旗');
INSERT INTO `areacode` VALUES ('404', '395', '150627', '伊金霍洛旗');
INSERT INTO `areacode` VALUES ('405', '348', '150700', '呼伦贝尔市');
INSERT INTO `areacode` VALUES ('406', '405', '150702', '海拉尔区');
INSERT INTO `areacode` VALUES ('407', '405', '150703', '扎赉诺尔区');
INSERT INTO `areacode` VALUES ('408', '405', '150721', '阿荣旗');
INSERT INTO `areacode` VALUES ('409', '405', '150722', '莫力达瓦达斡尔族自治旗');
INSERT INTO `areacode` VALUES ('410', '405', '150723', '鄂伦春自治旗');
INSERT INTO `areacode` VALUES ('411', '405', '150724', '鄂温克族自治旗');
INSERT INTO `areacode` VALUES ('412', '405', '150725', '陈巴尔虎旗');
INSERT INTO `areacode` VALUES ('413', '405', '150726', '新巴尔虎左旗');
INSERT INTO `areacode` VALUES ('414', '405', '150727', '新巴尔虎右旗');
INSERT INTO `areacode` VALUES ('415', '405', '150781', '满洲里市');
INSERT INTO `areacode` VALUES ('416', '405', '150782', '牙克石市');
INSERT INTO `areacode` VALUES ('417', '405', '150783', '扎兰屯市');
INSERT INTO `areacode` VALUES ('418', '405', '150784', '额尔古纳市');
INSERT INTO `areacode` VALUES ('419', '405', '150785', '根河市');
INSERT INTO `areacode` VALUES ('420', '348', '150800', '巴彦淖尔市');
INSERT INTO `areacode` VALUES ('421', '420', '150802', '临河区');
INSERT INTO `areacode` VALUES ('422', '420', '150821', '五原县');
INSERT INTO `areacode` VALUES ('423', '420', '150822', '磴口县');
INSERT INTO `areacode` VALUES ('424', '420', '150823', '乌拉特前旗');
INSERT INTO `areacode` VALUES ('425', '420', '150824', '乌拉特中旗');
INSERT INTO `areacode` VALUES ('426', '420', '150825', '乌拉特后旗');
INSERT INTO `areacode` VALUES ('427', '420', '150826', '杭锦后旗');
INSERT INTO `areacode` VALUES ('428', '348', '150900', '乌兰察布市');
INSERT INTO `areacode` VALUES ('429', '428', '150902', '集宁区');
INSERT INTO `areacode` VALUES ('430', '428', '150921', '卓资县');
INSERT INTO `areacode` VALUES ('431', '428', '150922', '化德县');
INSERT INTO `areacode` VALUES ('432', '428', '150923', '商都县');
INSERT INTO `areacode` VALUES ('433', '428', '150924', '兴和县');
INSERT INTO `areacode` VALUES ('434', '428', '150925', '凉城县');
INSERT INTO `areacode` VALUES ('435', '428', '150926', '察哈尔右翼前旗');
INSERT INTO `areacode` VALUES ('436', '428', '150927', '察哈尔右翼中旗');
INSERT INTO `areacode` VALUES ('437', '428', '150928', '察哈尔右翼后旗');
INSERT INTO `areacode` VALUES ('438', '428', '150929', '四子王旗');
INSERT INTO `areacode` VALUES ('439', '428', '150981', '丰镇市');
INSERT INTO `areacode` VALUES ('440', '428', '152200', '兴安盟');
INSERT INTO `areacode` VALUES ('441', '428', '152201', '乌兰浩特市');
INSERT INTO `areacode` VALUES ('442', '428', '152202', '阿尔山市');
INSERT INTO `areacode` VALUES ('443', '428', '152221', '科尔沁右翼前旗');
INSERT INTO `areacode` VALUES ('444', '428', '152222', '科尔沁右翼中旗');
INSERT INTO `areacode` VALUES ('445', '428', '152223', '扎赉特旗');
INSERT INTO `areacode` VALUES ('446', '428', '152224', '突泉县');
INSERT INTO `areacode` VALUES ('447', '428', '152500', '锡林郭勒盟');
INSERT INTO `areacode` VALUES ('448', '428', '152501', '二连浩特市');
INSERT INTO `areacode` VALUES ('449', '428', '152502', '锡林浩特市');
INSERT INTO `areacode` VALUES ('450', '428', '152522', '阿巴嘎旗');
INSERT INTO `areacode` VALUES ('451', '428', '152523', '苏尼特左旗');
INSERT INTO `areacode` VALUES ('452', '428', '152524', '苏尼特右旗');
INSERT INTO `areacode` VALUES ('453', '428', '152525', '东乌珠穆沁旗');
INSERT INTO `areacode` VALUES ('454', '428', '152526', '西乌珠穆沁旗');
INSERT INTO `areacode` VALUES ('455', '428', '152527', '太仆寺旗');
INSERT INTO `areacode` VALUES ('456', '428', '152528', '镶黄旗');
INSERT INTO `areacode` VALUES ('457', '428', '152529', '正镶白旗');
INSERT INTO `areacode` VALUES ('458', '428', '152530', '正蓝旗');
INSERT INTO `areacode` VALUES ('459', '428', '152531', '多伦县');
INSERT INTO `areacode` VALUES ('460', '428', '152900', '阿拉善盟');
INSERT INTO `areacode` VALUES ('461', '428', '152921', '阿拉善左旗');
INSERT INTO `areacode` VALUES ('462', '428', '152922', '阿拉善右旗');
INSERT INTO `areacode` VALUES ('463', '428', '152923', '额济纳旗');
INSERT INTO `areacode` VALUES ('464', '0', '210000', '辽宁省');
INSERT INTO `areacode` VALUES ('465', '464', '210100', '沈阳市');
INSERT INTO `areacode` VALUES ('466', '465', '210102', '和平区');
INSERT INTO `areacode` VALUES ('467', '465', '210103', '沈河区');
INSERT INTO `areacode` VALUES ('468', '465', '210104', '大东区');
INSERT INTO `areacode` VALUES ('469', '465', '210105', '皇姑区');
INSERT INTO `areacode` VALUES ('470', '465', '210106', '铁西区');
INSERT INTO `areacode` VALUES ('471', '465', '210111', '苏家屯区');
INSERT INTO `areacode` VALUES ('472', '465', '210112', '浑南区');
INSERT INTO `areacode` VALUES ('473', '465', '210113', '沈北新区');
INSERT INTO `areacode` VALUES ('474', '465', '210114', '于洪区');
INSERT INTO `areacode` VALUES ('475', '465', '210115', '辽中区');
INSERT INTO `areacode` VALUES ('476', '465', '210123', '康平县');
INSERT INTO `areacode` VALUES ('477', '465', '210124', '法库县');
INSERT INTO `areacode` VALUES ('478', '465', '210181', '新民市');
INSERT INTO `areacode` VALUES ('479', '464', '210200', '大连市');
INSERT INTO `areacode` VALUES ('480', '479', '210202', '中山区');
INSERT INTO `areacode` VALUES ('481', '479', '210203', '西岗区');
INSERT INTO `areacode` VALUES ('482', '479', '210204', '沙河口区');
INSERT INTO `areacode` VALUES ('483', '479', '210211', '甘井子区');
INSERT INTO `areacode` VALUES ('484', '479', '210212', '旅顺口区');
INSERT INTO `areacode` VALUES ('485', '479', '210213', '金州区');
INSERT INTO `areacode` VALUES ('486', '479', '210214', '普兰店区');
INSERT INTO `areacode` VALUES ('487', '479', '210224', '长海县');
INSERT INTO `areacode` VALUES ('488', '479', '210281', '瓦房店市');
INSERT INTO `areacode` VALUES ('489', '479', '210283', '庄河市');
INSERT INTO `areacode` VALUES ('490', '464', '210300', '鞍山市');
INSERT INTO `areacode` VALUES ('491', '490', '210302', '铁东区');
INSERT INTO `areacode` VALUES ('492', '490', '210303', '铁西区');
INSERT INTO `areacode` VALUES ('493', '490', '210304', '立山区');
INSERT INTO `areacode` VALUES ('494', '490', '210311', '千山区');
INSERT INTO `areacode` VALUES ('495', '490', '210321', '台安县');
INSERT INTO `areacode` VALUES ('496', '490', '210323', '岫岩满族自治县');
INSERT INTO `areacode` VALUES ('497', '490', '210381', '海城市');
INSERT INTO `areacode` VALUES ('498', '464', '210400', '抚顺市');
INSERT INTO `areacode` VALUES ('499', '498', '210402', '新抚区');
INSERT INTO `areacode` VALUES ('500', '498', '210403', '东洲区');
INSERT INTO `areacode` VALUES ('501', '498', '210404', '望花区');
INSERT INTO `areacode` VALUES ('502', '498', '210411', '顺城区');
INSERT INTO `areacode` VALUES ('503', '498', '210421', '抚顺县');
INSERT INTO `areacode` VALUES ('504', '498', '210422', '新宾满族自治县');
INSERT INTO `areacode` VALUES ('505', '498', '210423', '清原满族自治县');
INSERT INTO `areacode` VALUES ('506', '464', '210500', '本溪市');
INSERT INTO `areacode` VALUES ('507', '506', '210502', '平山区');
INSERT INTO `areacode` VALUES ('508', '506', '210503', '溪湖区');
INSERT INTO `areacode` VALUES ('509', '506', '210504', '明山区');
INSERT INTO `areacode` VALUES ('510', '506', '210505', '南芬区');
INSERT INTO `areacode` VALUES ('511', '506', '210521', '本溪满族自治县');
INSERT INTO `areacode` VALUES ('512', '506', '210522', '桓仁满族自治县');
INSERT INTO `areacode` VALUES ('513', '464', '210600', '丹东市');
INSERT INTO `areacode` VALUES ('514', '513', '210602', '元宝区');
INSERT INTO `areacode` VALUES ('515', '513', '210603', '振兴区');
INSERT INTO `areacode` VALUES ('516', '513', '210604', '振安区');
INSERT INTO `areacode` VALUES ('517', '513', '210624', '宽甸满族自治县');
INSERT INTO `areacode` VALUES ('518', '513', '210681', '东港市');
INSERT INTO `areacode` VALUES ('519', '513', '210682', '凤城市');
INSERT INTO `areacode` VALUES ('520', '464', '210700', '锦州市');
INSERT INTO `areacode` VALUES ('521', '520', '210702', '古塔区');
INSERT INTO `areacode` VALUES ('522', '520', '210703', '凌河区');
INSERT INTO `areacode` VALUES ('523', '520', '210711', '太和区');
INSERT INTO `areacode` VALUES ('524', '520', '210726', '黑山县');
INSERT INTO `areacode` VALUES ('525', '520', '210727', '义县');
INSERT INTO `areacode` VALUES ('526', '520', '210781', '凌海市');
INSERT INTO `areacode` VALUES ('527', '520', '210782', '北镇市');
INSERT INTO `areacode` VALUES ('528', '464', '210800', '营口市');
INSERT INTO `areacode` VALUES ('529', '528', '210802', '站前区');
INSERT INTO `areacode` VALUES ('530', '528', '210803', '西市区');
INSERT INTO `areacode` VALUES ('531', '528', '210804', '鲅鱼圈区');
INSERT INTO `areacode` VALUES ('532', '528', '210811', '老边区');
INSERT INTO `areacode` VALUES ('533', '528', '210881', '盖州市');
INSERT INTO `areacode` VALUES ('534', '528', '210882', '大石桥市');
INSERT INTO `areacode` VALUES ('535', '464', '210900', '阜新市');
INSERT INTO `areacode` VALUES ('536', '535', '210902', '海州区');
INSERT INTO `areacode` VALUES ('537', '535', '210903', '新邱区');
INSERT INTO `areacode` VALUES ('538', '535', '210904', '太平区');
INSERT INTO `areacode` VALUES ('539', '535', '210905', '清河门区');
INSERT INTO `areacode` VALUES ('540', '535', '210911', '细河区');
INSERT INTO `areacode` VALUES ('541', '535', '210921', '阜新蒙古族自治县');
INSERT INTO `areacode` VALUES ('542', '535', '210922', '彰武县');
INSERT INTO `areacode` VALUES ('543', '464', '211000', '辽阳市');
INSERT INTO `areacode` VALUES ('544', '543', '211002', '白塔区');
INSERT INTO `areacode` VALUES ('545', '543', '211003', '文圣区');
INSERT INTO `areacode` VALUES ('546', '543', '211004', '宏伟区');
INSERT INTO `areacode` VALUES ('547', '543', '211005', '弓长岭区');
INSERT INTO `areacode` VALUES ('548', '543', '211011', '太子河区');
INSERT INTO `areacode` VALUES ('549', '543', '211021', '辽阳县');
INSERT INTO `areacode` VALUES ('550', '543', '211081', '灯塔市');
INSERT INTO `areacode` VALUES ('551', '464', '211100', '盘锦市');
INSERT INTO `areacode` VALUES ('552', '551', '211102', '双台子区');
INSERT INTO `areacode` VALUES ('553', '551', '211103', '兴隆台区');
INSERT INTO `areacode` VALUES ('554', '551', '211104', '大洼区');
INSERT INTO `areacode` VALUES ('555', '551', '211122', '盘山县');
INSERT INTO `areacode` VALUES ('556', '464', '211200', '铁岭市');
INSERT INTO `areacode` VALUES ('557', '556', '211202', '银州区');
INSERT INTO `areacode` VALUES ('558', '556', '211204', '清河区');
INSERT INTO `areacode` VALUES ('559', '556', '211221', '铁岭县');
INSERT INTO `areacode` VALUES ('560', '556', '211223', '西丰县');
INSERT INTO `areacode` VALUES ('561', '556', '211224', '昌图县');
INSERT INTO `areacode` VALUES ('562', '556', '211281', '调兵山市');
INSERT INTO `areacode` VALUES ('563', '556', '211282', '开原市');
INSERT INTO `areacode` VALUES ('564', '464', '211300', '朝阳市');
INSERT INTO `areacode` VALUES ('565', '564', '211302', '双塔区');
INSERT INTO `areacode` VALUES ('566', '564', '211303', '龙城区');
INSERT INTO `areacode` VALUES ('567', '564', '211321', '朝阳县');
INSERT INTO `areacode` VALUES ('568', '564', '211322', '建平县');
INSERT INTO `areacode` VALUES ('569', '564', '211324', '喀喇沁左翼蒙古族自治县');
INSERT INTO `areacode` VALUES ('570', '564', '211381', '北票市');
INSERT INTO `areacode` VALUES ('571', '564', '211382', '凌源市');
INSERT INTO `areacode` VALUES ('572', '464', '211400', '葫芦岛市');
INSERT INTO `areacode` VALUES ('573', '572', '211402', '连山区');
INSERT INTO `areacode` VALUES ('574', '572', '211403', '龙港区');
INSERT INTO `areacode` VALUES ('575', '572', '211404', '南票区');
INSERT INTO `areacode` VALUES ('576', '572', '211421', '绥中县');
INSERT INTO `areacode` VALUES ('577', '572', '211422', '建昌县');
INSERT INTO `areacode` VALUES ('578', '572', '211481', '兴城市');
INSERT INTO `areacode` VALUES ('579', '0', '220000', '吉林省');
INSERT INTO `areacode` VALUES ('580', '579', '220100', '长春市');
INSERT INTO `areacode` VALUES ('581', '580', '220102', '南关区');
INSERT INTO `areacode` VALUES ('582', '580', '220103', '宽城区');
INSERT INTO `areacode` VALUES ('583', '580', '220104', '朝阳区');
INSERT INTO `areacode` VALUES ('584', '580', '220105', '二道区');
INSERT INTO `areacode` VALUES ('585', '580', '220106', '绿园区');
INSERT INTO `areacode` VALUES ('586', '580', '220112', '双阳区');
INSERT INTO `areacode` VALUES ('587', '580', '220113', '九台区');
INSERT INTO `areacode` VALUES ('588', '580', '220122', '农安县');
INSERT INTO `areacode` VALUES ('589', '580', '220182', '榆树市');
INSERT INTO `areacode` VALUES ('590', '580', '220183', '德惠市');
INSERT INTO `areacode` VALUES ('591', '579', '220200', '吉林市');
INSERT INTO `areacode` VALUES ('592', '591', '220202', '昌邑区');
INSERT INTO `areacode` VALUES ('593', '591', '220203', '龙潭区');
INSERT INTO `areacode` VALUES ('594', '591', '220204', '船营区');
INSERT INTO `areacode` VALUES ('595', '591', '220211', '丰满区');
INSERT INTO `areacode` VALUES ('596', '591', '220221', '永吉县');
INSERT INTO `areacode` VALUES ('597', '591', '220281', '蛟河市');
INSERT INTO `areacode` VALUES ('598', '591', '220282', '桦甸市');
INSERT INTO `areacode` VALUES ('599', '591', '220283', '舒兰市');
INSERT INTO `areacode` VALUES ('600', '591', '220284', '磐石市');
INSERT INTO `areacode` VALUES ('601', '579', '220300', '四平市');
INSERT INTO `areacode` VALUES ('602', '601', '220302', '铁西区');
INSERT INTO `areacode` VALUES ('603', '601', '220303', '铁东区');
INSERT INTO `areacode` VALUES ('604', '601', '220322', '梨树县');
INSERT INTO `areacode` VALUES ('605', '601', '220323', '伊通满族自治县');
INSERT INTO `areacode` VALUES ('606', '601', '220381', '公主岭市');
INSERT INTO `areacode` VALUES ('607', '601', '220382', '双辽市');
INSERT INTO `areacode` VALUES ('608', '579', '220400', '辽源市');
INSERT INTO `areacode` VALUES ('609', '608', '220402', '龙山区');
INSERT INTO `areacode` VALUES ('610', '608', '220403', '西安区');
INSERT INTO `areacode` VALUES ('611', '608', '220421', '东丰县');
INSERT INTO `areacode` VALUES ('612', '608', '220422', '东辽县');
INSERT INTO `areacode` VALUES ('613', '579', '220500', '通化市');
INSERT INTO `areacode` VALUES ('614', '613', '220502', '东昌区');
INSERT INTO `areacode` VALUES ('615', '613', '220503', '二道江区');
INSERT INTO `areacode` VALUES ('616', '613', '220521', '通化县');
INSERT INTO `areacode` VALUES ('617', '613', '220523', '辉南县');
INSERT INTO `areacode` VALUES ('618', '613', '220524', '柳河县');
INSERT INTO `areacode` VALUES ('619', '613', '220581', '梅河口市');
INSERT INTO `areacode` VALUES ('620', '613', '220582', '集安市');
INSERT INTO `areacode` VALUES ('621', '579', '220600', '白山市');
INSERT INTO `areacode` VALUES ('622', '621', '220602', '浑江区');
INSERT INTO `areacode` VALUES ('623', '621', '220605', '江源区');
INSERT INTO `areacode` VALUES ('624', '621', '220621', '抚松县');
INSERT INTO `areacode` VALUES ('625', '621', '220622', '靖宇县');
INSERT INTO `areacode` VALUES ('626', '621', '220623', '长白朝鲜族自治县');
INSERT INTO `areacode` VALUES ('627', '621', '220681', '临江市');
INSERT INTO `areacode` VALUES ('628', '579', '220700', '松原市');
INSERT INTO `areacode` VALUES ('629', '628', '220702', '宁江区');
INSERT INTO `areacode` VALUES ('630', '628', '220721', '前郭尔罗斯蒙古族自治县');
INSERT INTO `areacode` VALUES ('631', '628', '220722', '长岭县');
INSERT INTO `areacode` VALUES ('632', '628', '220723', '乾安县');
INSERT INTO `areacode` VALUES ('633', '628', '220781', '扶余市');
INSERT INTO `areacode` VALUES ('634', '579', '220800', '白城市');
INSERT INTO `areacode` VALUES ('635', '634', '220802', '洮北区');
INSERT INTO `areacode` VALUES ('636', '634', '220821', '镇赉县');
INSERT INTO `areacode` VALUES ('637', '634', '220822', '通榆县');
INSERT INTO `areacode` VALUES ('638', '634', '220881', '洮南市');
INSERT INTO `areacode` VALUES ('639', '634', '220882', '大安市');
INSERT INTO `areacode` VALUES ('640', '634', '222400', '延边朝鲜族自治州');
INSERT INTO `areacode` VALUES ('641', '634', '222401', '延吉市');
INSERT INTO `areacode` VALUES ('642', '634', '222402', '图们市');
INSERT INTO `areacode` VALUES ('643', '634', '222403', '敦化市');
INSERT INTO `areacode` VALUES ('644', '634', '222404', '珲春市');
INSERT INTO `areacode` VALUES ('645', '634', '222405', '龙井市');
INSERT INTO `areacode` VALUES ('646', '634', '222406', '和龙市');
INSERT INTO `areacode` VALUES ('647', '634', '222424', '汪清县');
INSERT INTO `areacode` VALUES ('648', '634', '222426', '安图县');
INSERT INTO `areacode` VALUES ('649', '0', '230000', '黑龙江省');
INSERT INTO `areacode` VALUES ('650', '649', '230100', '哈尔滨市');
INSERT INTO `areacode` VALUES ('651', '650', '230102', '道里区');
INSERT INTO `areacode` VALUES ('652', '650', '230103', '南岗区');
INSERT INTO `areacode` VALUES ('653', '650', '230104', '道外区');
INSERT INTO `areacode` VALUES ('654', '650', '230108', '平房区');
INSERT INTO `areacode` VALUES ('655', '650', '230109', '松北区');
INSERT INTO `areacode` VALUES ('656', '650', '230110', '香坊区');
INSERT INTO `areacode` VALUES ('657', '650', '230111', '呼兰区');
INSERT INTO `areacode` VALUES ('658', '650', '230112', '阿城区');
INSERT INTO `areacode` VALUES ('659', '650', '230113', '双城区');
INSERT INTO `areacode` VALUES ('660', '650', '230123', '依兰县');
INSERT INTO `areacode` VALUES ('661', '650', '230124', '方正县');
INSERT INTO `areacode` VALUES ('662', '650', '230125', '宾县');
INSERT INTO `areacode` VALUES ('663', '650', '230126', '巴彦县');
INSERT INTO `areacode` VALUES ('664', '650', '230127', '木兰县');
INSERT INTO `areacode` VALUES ('665', '650', '230128', '通河县');
INSERT INTO `areacode` VALUES ('666', '650', '230129', '延寿县');
INSERT INTO `areacode` VALUES ('667', '650', '230183', '尚志市');
INSERT INTO `areacode` VALUES ('668', '650', '230184', '五常市');
INSERT INTO `areacode` VALUES ('669', '649', '230200', '齐齐哈尔市');
INSERT INTO `areacode` VALUES ('670', '669', '230202', '龙沙区');
INSERT INTO `areacode` VALUES ('671', '669', '230203', '建华区');
INSERT INTO `areacode` VALUES ('672', '669', '230204', '铁锋区');
INSERT INTO `areacode` VALUES ('673', '669', '230205', '昂昂溪区');
INSERT INTO `areacode` VALUES ('674', '669', '230206', '富拉尔基区');
INSERT INTO `areacode` VALUES ('675', '669', '230207', '碾子山区');
INSERT INTO `areacode` VALUES ('676', '669', '230208', '梅里斯达斡尔族区');
INSERT INTO `areacode` VALUES ('677', '669', '230221', '龙江县');
INSERT INTO `areacode` VALUES ('678', '669', '230223', '依安县');
INSERT INTO `areacode` VALUES ('679', '669', '230224', '泰来县');
INSERT INTO `areacode` VALUES ('680', '669', '230225', '甘南县');
INSERT INTO `areacode` VALUES ('681', '669', '230227', '富裕县');
INSERT INTO `areacode` VALUES ('682', '669', '230229', '克山县');
INSERT INTO `areacode` VALUES ('683', '669', '230230', '克东县');
INSERT INTO `areacode` VALUES ('684', '669', '230231', '拜泉县');
INSERT INTO `areacode` VALUES ('685', '669', '230281', '讷河市');
INSERT INTO `areacode` VALUES ('686', '649', '230300', '鸡西市');
INSERT INTO `areacode` VALUES ('687', '686', '230302', '鸡冠区');
INSERT INTO `areacode` VALUES ('688', '686', '230303', '恒山区');
INSERT INTO `areacode` VALUES ('689', '686', '230304', '滴道区');
INSERT INTO `areacode` VALUES ('690', '686', '230305', '梨树区');
INSERT INTO `areacode` VALUES ('691', '686', '230306', '城子河区');
INSERT INTO `areacode` VALUES ('692', '686', '230307', '麻山区');
INSERT INTO `areacode` VALUES ('693', '686', '230321', '鸡东县');
INSERT INTO `areacode` VALUES ('694', '686', '230381', '虎林市');
INSERT INTO `areacode` VALUES ('695', '686', '230382', '密山市');
INSERT INTO `areacode` VALUES ('696', '649', '230400', '鹤岗市');
INSERT INTO `areacode` VALUES ('697', '696', '230402', '向阳区');
INSERT INTO `areacode` VALUES ('698', '696', '230403', '工农区');
INSERT INTO `areacode` VALUES ('699', '696', '230404', '南山区');
INSERT INTO `areacode` VALUES ('700', '696', '230405', '兴安区');
INSERT INTO `areacode` VALUES ('701', '696', '230406', '东山区');
INSERT INTO `areacode` VALUES ('702', '696', '230407', '兴山区');
INSERT INTO `areacode` VALUES ('703', '696', '230421', '萝北县');
INSERT INTO `areacode` VALUES ('704', '696', '230422', '绥滨县');
INSERT INTO `areacode` VALUES ('705', '649', '230500', '双鸭山市');
INSERT INTO `areacode` VALUES ('706', '705', '230502', '尖山区');
INSERT INTO `areacode` VALUES ('707', '705', '230503', '岭东区');
INSERT INTO `areacode` VALUES ('708', '705', '230505', '四方台区');
INSERT INTO `areacode` VALUES ('709', '705', '230506', '宝山区');
INSERT INTO `areacode` VALUES ('710', '705', '230521', '集贤县');
INSERT INTO `areacode` VALUES ('711', '705', '230522', '友谊县');
INSERT INTO `areacode` VALUES ('712', '705', '230523', '宝清县');
INSERT INTO `areacode` VALUES ('713', '705', '230524', '饶河县');
INSERT INTO `areacode` VALUES ('714', '649', '230600', '大庆市');
INSERT INTO `areacode` VALUES ('715', '714', '230602', '萨尔图区');
INSERT INTO `areacode` VALUES ('716', '714', '230603', '龙凤区');
INSERT INTO `areacode` VALUES ('717', '714', '230604', '让胡路区');
INSERT INTO `areacode` VALUES ('718', '714', '230605', '红岗区');
INSERT INTO `areacode` VALUES ('719', '714', '230606', '大同区');
INSERT INTO `areacode` VALUES ('720', '714', '230621', '肇州县');
INSERT INTO `areacode` VALUES ('721', '714', '230622', '肇源县');
INSERT INTO `areacode` VALUES ('722', '714', '230623', '林甸县');
INSERT INTO `areacode` VALUES ('723', '714', '230624', '杜尔伯特蒙古族自治县');
INSERT INTO `areacode` VALUES ('724', '649', '230700', '伊春市');
INSERT INTO `areacode` VALUES ('725', '724', '230702', '伊春区');
INSERT INTO `areacode` VALUES ('726', '724', '230703', '南岔区');
INSERT INTO `areacode` VALUES ('727', '724', '230704', '友好区');
INSERT INTO `areacode` VALUES ('728', '724', '230705', '西林区');
INSERT INTO `areacode` VALUES ('729', '724', '230706', '翠峦区');
INSERT INTO `areacode` VALUES ('730', '724', '230707', '新青区');
INSERT INTO `areacode` VALUES ('731', '724', '230708', '美溪区');
INSERT INTO `areacode` VALUES ('732', '724', '230709', '金山屯区');
INSERT INTO `areacode` VALUES ('733', '724', '230710', '五营区');
INSERT INTO `areacode` VALUES ('734', '724', '230711', '乌马河区');
INSERT INTO `areacode` VALUES ('735', '724', '230712', '汤旺河区');
INSERT INTO `areacode` VALUES ('736', '724', '230713', '带岭区');
INSERT INTO `areacode` VALUES ('737', '724', '230714', '乌伊岭区');
INSERT INTO `areacode` VALUES ('738', '724', '230715', '红星区');
INSERT INTO `areacode` VALUES ('739', '724', '230716', '上甘岭区');
INSERT INTO `areacode` VALUES ('740', '724', '230722', '嘉荫县');
INSERT INTO `areacode` VALUES ('741', '724', '230781', '铁力市');
INSERT INTO `areacode` VALUES ('742', '649', '230800', '佳木斯市');
INSERT INTO `areacode` VALUES ('743', '742', '230803', '向阳区');
INSERT INTO `areacode` VALUES ('744', '742', '230804', '前进区');
INSERT INTO `areacode` VALUES ('745', '742', '230805', '东风区');
INSERT INTO `areacode` VALUES ('746', '742', '230811', '郊区');
INSERT INTO `areacode` VALUES ('747', '742', '230822', '桦南县');
INSERT INTO `areacode` VALUES ('748', '742', '230826', '桦川县');
INSERT INTO `areacode` VALUES ('749', '742', '230828', '汤原县');
INSERT INTO `areacode` VALUES ('750', '742', '230881', '同江市');
INSERT INTO `areacode` VALUES ('751', '742', '230882', '富锦市');
INSERT INTO `areacode` VALUES ('752', '742', '230883', '抚远市');
INSERT INTO `areacode` VALUES ('753', '649', '230900', '七台河市');
INSERT INTO `areacode` VALUES ('754', '753', '230902', '新兴区');
INSERT INTO `areacode` VALUES ('755', '753', '230903', '桃山区');
INSERT INTO `areacode` VALUES ('756', '753', '230904', '茄子河区');
INSERT INTO `areacode` VALUES ('757', '753', '230921', '勃利县');
INSERT INTO `areacode` VALUES ('758', '649', '231000', '牡丹江市');
INSERT INTO `areacode` VALUES ('759', '758', '231002', '东安区');
INSERT INTO `areacode` VALUES ('760', '758', '231003', '阳明区');
INSERT INTO `areacode` VALUES ('761', '758', '231004', '爱民区');
INSERT INTO `areacode` VALUES ('762', '758', '231005', '西安区');
INSERT INTO `areacode` VALUES ('763', '758', '231025', '林口县');
INSERT INTO `areacode` VALUES ('764', '758', '231081', '绥芬河市');
INSERT INTO `areacode` VALUES ('765', '758', '231083', '海林市');
INSERT INTO `areacode` VALUES ('766', '758', '231084', '宁安市');
INSERT INTO `areacode` VALUES ('767', '758', '231085', '穆棱市');
INSERT INTO `areacode` VALUES ('768', '758', '231086', '东宁市');
INSERT INTO `areacode` VALUES ('769', '649', '231100', '黑河市');
INSERT INTO `areacode` VALUES ('770', '769', '231102', '爱辉区');
INSERT INTO `areacode` VALUES ('771', '769', '231121', '嫩江县');
INSERT INTO `areacode` VALUES ('772', '769', '231123', '逊克县');
INSERT INTO `areacode` VALUES ('773', '769', '231124', '孙吴县');
INSERT INTO `areacode` VALUES ('774', '769', '231181', '北安市');
INSERT INTO `areacode` VALUES ('775', '769', '231182', '五大连池市');
INSERT INTO `areacode` VALUES ('776', '649', '231200', '绥化市');
INSERT INTO `areacode` VALUES ('777', '776', '231202', '北林区');
INSERT INTO `areacode` VALUES ('778', '776', '231221', '望奎县');
INSERT INTO `areacode` VALUES ('779', '776', '231222', '兰西县');
INSERT INTO `areacode` VALUES ('780', '776', '231223', '青冈县');
INSERT INTO `areacode` VALUES ('781', '776', '231224', '庆安县');
INSERT INTO `areacode` VALUES ('782', '776', '231225', '明水县');
INSERT INTO `areacode` VALUES ('783', '776', '231226', '绥棱县');
INSERT INTO `areacode` VALUES ('784', '776', '231281', '安达市');
INSERT INTO `areacode` VALUES ('785', '776', '231282', '肇东市');
INSERT INTO `areacode` VALUES ('786', '776', '231283', '海伦市');
INSERT INTO `areacode` VALUES ('787', '776', '232700', '大兴安岭地区');
INSERT INTO `areacode` VALUES ('788', '776', '232721', '呼玛县');
INSERT INTO `areacode` VALUES ('789', '776', '232722', '塔河县');
INSERT INTO `areacode` VALUES ('790', '776', '232723', '漠河县');
INSERT INTO `areacode` VALUES ('791', '0', '310000', '上海');
INSERT INTO `areacode` VALUES ('792', '791', '310100', '上海市');
INSERT INTO `areacode` VALUES ('793', '792', '310101', '黄浦区');
INSERT INTO `areacode` VALUES ('794', '792', '310104', '徐汇区');
INSERT INTO `areacode` VALUES ('795', '792', '310105', '长宁区');
INSERT INTO `areacode` VALUES ('796', '792', '310106', '静安区');
INSERT INTO `areacode` VALUES ('797', '792', '310107', '普陀区');
INSERT INTO `areacode` VALUES ('798', '792', '310109', '虹口区');
INSERT INTO `areacode` VALUES ('799', '792', '310110', '杨浦区');
INSERT INTO `areacode` VALUES ('800', '792', '310112', '闵行区');
INSERT INTO `areacode` VALUES ('801', '792', '310113', '宝山区');
INSERT INTO `areacode` VALUES ('802', '792', '310114', '嘉定区');
INSERT INTO `areacode` VALUES ('803', '792', '310115', '浦东新区');
INSERT INTO `areacode` VALUES ('804', '792', '310116', '金山区');
INSERT INTO `areacode` VALUES ('805', '792', '310117', '松江区');
INSERT INTO `areacode` VALUES ('806', '792', '310118', '青浦区');
INSERT INTO `areacode` VALUES ('807', '792', '310120', '奉贤区');
INSERT INTO `areacode` VALUES ('808', '792', '310151', '崇明区');
INSERT INTO `areacode` VALUES ('809', '0', '320000', '江苏省');
INSERT INTO `areacode` VALUES ('810', '809', '320100', '南京市');
INSERT INTO `areacode` VALUES ('811', '810', '320102', '玄武区');
INSERT INTO `areacode` VALUES ('812', '810', '320104', '秦淮区');
INSERT INTO `areacode` VALUES ('813', '810', '320105', '建邺区');
INSERT INTO `areacode` VALUES ('814', '810', '320106', '鼓楼区');
INSERT INTO `areacode` VALUES ('815', '810', '320111', '浦口区');
INSERT INTO `areacode` VALUES ('816', '810', '320113', '栖霞区');
INSERT INTO `areacode` VALUES ('817', '810', '320114', '雨花台区');
INSERT INTO `areacode` VALUES ('818', '810', '320115', '江宁区');
INSERT INTO `areacode` VALUES ('819', '810', '320116', '六合区');
INSERT INTO `areacode` VALUES ('820', '810', '320117', '溧水区');
INSERT INTO `areacode` VALUES ('821', '810', '320118', '高淳区');
INSERT INTO `areacode` VALUES ('822', '809', '320200', '无锡市');
INSERT INTO `areacode` VALUES ('823', '822', '320205', '锡山区');
INSERT INTO `areacode` VALUES ('824', '822', '320206', '惠山区');
INSERT INTO `areacode` VALUES ('825', '822', '320211', '滨湖区');
INSERT INTO `areacode` VALUES ('826', '822', '320213', '梁溪区');
INSERT INTO `areacode` VALUES ('827', '822', '320214', '新吴区');
INSERT INTO `areacode` VALUES ('828', '822', '320281', '江阴市');
INSERT INTO `areacode` VALUES ('829', '822', '320282', '宜兴市');
INSERT INTO `areacode` VALUES ('830', '809', '320300', '徐州市');
INSERT INTO `areacode` VALUES ('831', '830', '320302', '鼓楼区');
INSERT INTO `areacode` VALUES ('832', '830', '320303', '云龙区');
INSERT INTO `areacode` VALUES ('833', '830', '320305', '贾汪区');
INSERT INTO `areacode` VALUES ('834', '830', '320311', '泉山区');
INSERT INTO `areacode` VALUES ('835', '830', '320312', '铜山区');
INSERT INTO `areacode` VALUES ('836', '830', '320321', '丰县');
INSERT INTO `areacode` VALUES ('837', '830', '320322', '沛县');
INSERT INTO `areacode` VALUES ('838', '830', '320324', '睢宁县');
INSERT INTO `areacode` VALUES ('839', '830', '320381', '新沂市');
INSERT INTO `areacode` VALUES ('840', '830', '320382', '邳州市');
INSERT INTO `areacode` VALUES ('841', '809', '320400', '常州市');
INSERT INTO `areacode` VALUES ('842', '841', '320402', '天宁区');
INSERT INTO `areacode` VALUES ('843', '841', '320404', '钟楼区');
INSERT INTO `areacode` VALUES ('844', '841', '320411', '新北区');
INSERT INTO `areacode` VALUES ('845', '841', '320412', '武进区');
INSERT INTO `areacode` VALUES ('846', '841', '320413', '金坛区');
INSERT INTO `areacode` VALUES ('847', '841', '320481', '溧阳市');
INSERT INTO `areacode` VALUES ('848', '809', '320500', '苏州市');
INSERT INTO `areacode` VALUES ('849', '848', '320505', '虎丘区');
INSERT INTO `areacode` VALUES ('850', '848', '320506', '吴中区');
INSERT INTO `areacode` VALUES ('851', '848', '320507', '相城区');
INSERT INTO `areacode` VALUES ('852', '848', '320508', '姑苏区');
INSERT INTO `areacode` VALUES ('853', '848', '320509', '吴江区');
INSERT INTO `areacode` VALUES ('854', '848', '320581', '常熟市');
INSERT INTO `areacode` VALUES ('855', '848', '320582', '张家港市');
INSERT INTO `areacode` VALUES ('856', '848', '320583', '昆山市');
INSERT INTO `areacode` VALUES ('857', '848', '320585', '太仓市');
INSERT INTO `areacode` VALUES ('858', '809', '320600', '南通市');
INSERT INTO `areacode` VALUES ('859', '858', '320602', '崇川区');
INSERT INTO `areacode` VALUES ('860', '858', '320611', '港闸区');
INSERT INTO `areacode` VALUES ('861', '858', '320612', '通州区');
INSERT INTO `areacode` VALUES ('862', '858', '320621', '海安县');
INSERT INTO `areacode` VALUES ('863', '858', '320623', '如东县');
INSERT INTO `areacode` VALUES ('864', '858', '320681', '启东市');
INSERT INTO `areacode` VALUES ('865', '858', '320682', '如皋市');
INSERT INTO `areacode` VALUES ('866', '858', '320684', '海门市');
INSERT INTO `areacode` VALUES ('867', '809', '320700', '连云港市');
INSERT INTO `areacode` VALUES ('868', '867', '320703', '连云区');
INSERT INTO `areacode` VALUES ('869', '867', '320706', '海州区');
INSERT INTO `areacode` VALUES ('870', '867', '320707', '赣榆区');
INSERT INTO `areacode` VALUES ('871', '867', '320722', '东海县');
INSERT INTO `areacode` VALUES ('872', '867', '320723', '灌云县');
INSERT INTO `areacode` VALUES ('873', '867', '320724', '灌南县');
INSERT INTO `areacode` VALUES ('874', '809', '320800', '淮安市');
INSERT INTO `areacode` VALUES ('875', '874', '320803', '淮安区');
INSERT INTO `areacode` VALUES ('876', '874', '320804', '淮阴区');
INSERT INTO `areacode` VALUES ('877', '874', '320812', '清江浦区');
INSERT INTO `areacode` VALUES ('878', '874', '320813', '洪泽区');
INSERT INTO `areacode` VALUES ('879', '874', '320826', '涟水县');
INSERT INTO `areacode` VALUES ('880', '874', '320830', '盱眙县');
INSERT INTO `areacode` VALUES ('881', '874', '320831', '金湖县');
INSERT INTO `areacode` VALUES ('882', '809', '320900', '盐城市');
INSERT INTO `areacode` VALUES ('883', '882', '320902', '亭湖区');
INSERT INTO `areacode` VALUES ('884', '882', '320903', '盐都区');
INSERT INTO `areacode` VALUES ('885', '882', '320904', '大丰区');
INSERT INTO `areacode` VALUES ('886', '882', '320921', '响水县');
INSERT INTO `areacode` VALUES ('887', '882', '320922', '滨海县');
INSERT INTO `areacode` VALUES ('888', '882', '320923', '阜宁县');
INSERT INTO `areacode` VALUES ('889', '882', '320924', '射阳县');
INSERT INTO `areacode` VALUES ('890', '882', '320925', '建湖县');
INSERT INTO `areacode` VALUES ('891', '882', '320981', '东台市');
INSERT INTO `areacode` VALUES ('892', '809', '321000', '扬州市');
INSERT INTO `areacode` VALUES ('893', '892', '321002', '广陵区');
INSERT INTO `areacode` VALUES ('894', '892', '321003', '邗江区');
INSERT INTO `areacode` VALUES ('895', '892', '321012', '江都区');
INSERT INTO `areacode` VALUES ('896', '892', '321023', '宝应县');
INSERT INTO `areacode` VALUES ('897', '892', '321081', '仪征市');
INSERT INTO `areacode` VALUES ('898', '892', '321084', '高邮市');
INSERT INTO `areacode` VALUES ('899', '809', '321100', '镇江市');
INSERT INTO `areacode` VALUES ('900', '899', '321102', '京口区');
INSERT INTO `areacode` VALUES ('901', '899', '321111', '润州区');
INSERT INTO `areacode` VALUES ('902', '899', '321112', '丹徒区');
INSERT INTO `areacode` VALUES ('903', '899', '321181', '丹阳市');
INSERT INTO `areacode` VALUES ('904', '899', '321182', '扬中市');
INSERT INTO `areacode` VALUES ('905', '899', '321183', '句容市');
INSERT INTO `areacode` VALUES ('906', '809', '321200', '泰州市');
INSERT INTO `areacode` VALUES ('907', '906', '321202', '海陵区');
INSERT INTO `areacode` VALUES ('908', '906', '321203', '高港区');
INSERT INTO `areacode` VALUES ('909', '906', '321204', '姜堰区');
INSERT INTO `areacode` VALUES ('910', '906', '321281', '兴化市');
INSERT INTO `areacode` VALUES ('911', '906', '321282', '靖江市');
INSERT INTO `areacode` VALUES ('912', '906', '321283', '泰兴市');
INSERT INTO `areacode` VALUES ('913', '809', '321300', '宿迁市');
INSERT INTO `areacode` VALUES ('914', '913', '321302', '宿城区');
INSERT INTO `areacode` VALUES ('915', '913', '321311', '宿豫区');
INSERT INTO `areacode` VALUES ('916', '913', '321322', '沭阳县');
INSERT INTO `areacode` VALUES ('917', '913', '321323', '泗阳县');
INSERT INTO `areacode` VALUES ('918', '913', '321324', '泗洪县');
INSERT INTO `areacode` VALUES ('919', '0', '330000', '浙江省');
INSERT INTO `areacode` VALUES ('920', '919', '330100', '杭州市');
INSERT INTO `areacode` VALUES ('921', '920', '330102', '上城区');
INSERT INTO `areacode` VALUES ('922', '920', '330103', '下城区');
INSERT INTO `areacode` VALUES ('923', '920', '330104', '江干区');
INSERT INTO `areacode` VALUES ('924', '920', '330105', '拱墅区');
INSERT INTO `areacode` VALUES ('925', '920', '330106', '西湖区');
INSERT INTO `areacode` VALUES ('926', '920', '330108', '滨江区');
INSERT INTO `areacode` VALUES ('927', '920', '330109', '萧山区');
INSERT INTO `areacode` VALUES ('928', '920', '330110', '余杭区');
INSERT INTO `areacode` VALUES ('929', '920', '330111', '富阳区');
INSERT INTO `areacode` VALUES ('930', '920', '330112', '临安区');
INSERT INTO `areacode` VALUES ('931', '920', '330122', '桐庐县');
INSERT INTO `areacode` VALUES ('932', '920', '330127', '淳安县');
INSERT INTO `areacode` VALUES ('933', '920', '330182', '建德市');
INSERT INTO `areacode` VALUES ('934', '919', '330200', '宁波市');
INSERT INTO `areacode` VALUES ('935', '934', '330203', '海曙区');
INSERT INTO `areacode` VALUES ('936', '934', '330205', '江北区');
INSERT INTO `areacode` VALUES ('937', '934', '330206', '北仑区');
INSERT INTO `areacode` VALUES ('938', '934', '330211', '镇海区');
INSERT INTO `areacode` VALUES ('939', '934', '330212', '鄞州区');
INSERT INTO `areacode` VALUES ('940', '934', '330213', '奉化区');
INSERT INTO `areacode` VALUES ('941', '934', '330225', '象山县');
INSERT INTO `areacode` VALUES ('942', '934', '330226', '宁海县');
INSERT INTO `areacode` VALUES ('943', '934', '330281', '余姚市');
INSERT INTO `areacode` VALUES ('944', '934', '330282', '慈溪市');
INSERT INTO `areacode` VALUES ('945', '919', '330300', '温州市');
INSERT INTO `areacode` VALUES ('946', '945', '330302', '鹿城区');
INSERT INTO `areacode` VALUES ('947', '945', '330303', '龙湾区');
INSERT INTO `areacode` VALUES ('948', '945', '330304', '瓯海区');
INSERT INTO `areacode` VALUES ('949', '945', '330305', '洞头区');
INSERT INTO `areacode` VALUES ('950', '945', '330324', '永嘉县');
INSERT INTO `areacode` VALUES ('951', '945', '330326', '平阳县');
INSERT INTO `areacode` VALUES ('952', '945', '330327', '苍南县');
INSERT INTO `areacode` VALUES ('953', '945', '330328', '文成县');
INSERT INTO `areacode` VALUES ('954', '945', '330329', '泰顺县');
INSERT INTO `areacode` VALUES ('955', '945', '330381', '瑞安市');
INSERT INTO `areacode` VALUES ('956', '945', '330382', '乐清市');
INSERT INTO `areacode` VALUES ('957', '919', '330400', '嘉兴市');
INSERT INTO `areacode` VALUES ('958', '957', '330402', '南湖区');
INSERT INTO `areacode` VALUES ('959', '957', '330411', '秀洲区');
INSERT INTO `areacode` VALUES ('960', '957', '330421', '嘉善县');
INSERT INTO `areacode` VALUES ('961', '957', '330424', '海盐县');
INSERT INTO `areacode` VALUES ('962', '957', '330481', '海宁市');
INSERT INTO `areacode` VALUES ('963', '957', '330482', '平湖市');
INSERT INTO `areacode` VALUES ('964', '957', '330483', '桐乡市');
INSERT INTO `areacode` VALUES ('965', '919', '330500', '湖州市');
INSERT INTO `areacode` VALUES ('966', '965', '330502', '吴兴区');
INSERT INTO `areacode` VALUES ('967', '965', '330503', '南浔区');
INSERT INTO `areacode` VALUES ('968', '965', '330521', '德清县');
INSERT INTO `areacode` VALUES ('969', '965', '330522', '长兴县');
INSERT INTO `areacode` VALUES ('970', '965', '330523', '安吉县');
INSERT INTO `areacode` VALUES ('971', '919', '330600', '绍兴市');
INSERT INTO `areacode` VALUES ('972', '971', '330602', '越城区');
INSERT INTO `areacode` VALUES ('973', '971', '330603', '柯桥区');
INSERT INTO `areacode` VALUES ('974', '971', '330604', '上虞区');
INSERT INTO `areacode` VALUES ('975', '971', '330624', '新昌县');
INSERT INTO `areacode` VALUES ('976', '971', '330681', '诸暨市');
INSERT INTO `areacode` VALUES ('977', '971', '330683', '嵊州市');
INSERT INTO `areacode` VALUES ('978', '919', '330700', '金华市');
INSERT INTO `areacode` VALUES ('979', '978', '330702', '婺城区');
INSERT INTO `areacode` VALUES ('980', '978', '330703', '金东区');
INSERT INTO `areacode` VALUES ('981', '978', '330723', '武义县');
INSERT INTO `areacode` VALUES ('982', '978', '330726', '浦江县');
INSERT INTO `areacode` VALUES ('983', '978', '330727', '磐安县');
INSERT INTO `areacode` VALUES ('984', '978', '330781', '兰溪市');
INSERT INTO `areacode` VALUES ('985', '978', '330782', '义乌市');
INSERT INTO `areacode` VALUES ('986', '978', '330783', '东阳市');
INSERT INTO `areacode` VALUES ('987', '978', '330784', '永康市');
INSERT INTO `areacode` VALUES ('988', '919', '330800', '衢州市');
INSERT INTO `areacode` VALUES ('989', '988', '330802', '柯城区');
INSERT INTO `areacode` VALUES ('990', '988', '330803', '衢江区');
INSERT INTO `areacode` VALUES ('991', '988', '330822', '常山县');
INSERT INTO `areacode` VALUES ('992', '988', '330824', '开化县');
INSERT INTO `areacode` VALUES ('993', '988', '330825', '龙游县');
INSERT INTO `areacode` VALUES ('994', '988', '330881', '江山市');
INSERT INTO `areacode` VALUES ('995', '919', '330900', '舟山市');
INSERT INTO `areacode` VALUES ('996', '995', '330902', '定海区');
INSERT INTO `areacode` VALUES ('997', '995', '330903', '普陀区');
INSERT INTO `areacode` VALUES ('998', '995', '330921', '岱山县');
INSERT INTO `areacode` VALUES ('999', '995', '330922', '嵊泗县');
INSERT INTO `areacode` VALUES ('1000', '919', '331000', '台州市');
INSERT INTO `areacode` VALUES ('1001', '1000', '331002', '椒江区');
INSERT INTO `areacode` VALUES ('1002', '1000', '331003', '黄岩区');
INSERT INTO `areacode` VALUES ('1003', '1000', '331004', '路桥区');
INSERT INTO `areacode` VALUES ('1004', '1000', '331022', '三门县');
INSERT INTO `areacode` VALUES ('1005', '1000', '331023', '天台县');
INSERT INTO `areacode` VALUES ('1006', '1000', '331024', '仙居县');
INSERT INTO `areacode` VALUES ('1007', '1000', '331081', '温岭市');
INSERT INTO `areacode` VALUES ('1008', '1000', '331082', '临海市');
INSERT INTO `areacode` VALUES ('1009', '1000', '331083', '玉环市');
INSERT INTO `areacode` VALUES ('1010', '919', '331100', '丽水市');
INSERT INTO `areacode` VALUES ('1011', '1010', '331102', '莲都区');
INSERT INTO `areacode` VALUES ('1012', '1010', '331121', '青田县');
INSERT INTO `areacode` VALUES ('1013', '1010', '331122', '缙云县');
INSERT INTO `areacode` VALUES ('1014', '1010', '331123', '遂昌县');
INSERT INTO `areacode` VALUES ('1015', '1010', '331124', '松阳县');
INSERT INTO `areacode` VALUES ('1016', '1010', '331125', '云和县');
INSERT INTO `areacode` VALUES ('1017', '1010', '331126', '庆元县');
INSERT INTO `areacode` VALUES ('1018', '1010', '331127', '景宁畲族自治县');
INSERT INTO `areacode` VALUES ('1019', '1010', '331181', '龙泉市');
INSERT INTO `areacode` VALUES ('1020', '0', '340000', '安徽省');
INSERT INTO `areacode` VALUES ('1021', '1020', '340100', '合肥市');
INSERT INTO `areacode` VALUES ('1022', '1021', '340102', '瑶海区');
INSERT INTO `areacode` VALUES ('1023', '1021', '340103', '庐阳区');
INSERT INTO `areacode` VALUES ('1024', '1021', '340104', '蜀山区');
INSERT INTO `areacode` VALUES ('1025', '1021', '340111', '包河区');
INSERT INTO `areacode` VALUES ('1026', '1021', '340121', '长丰县');
INSERT INTO `areacode` VALUES ('1027', '1021', '340122', '肥东县');
INSERT INTO `areacode` VALUES ('1028', '1021', '340123', '肥西县');
INSERT INTO `areacode` VALUES ('1029', '1021', '340124', '庐江县');
INSERT INTO `areacode` VALUES ('1030', '1021', '340181', '巢湖市');
INSERT INTO `areacode` VALUES ('1031', '1020', '340200', '芜湖市');
INSERT INTO `areacode` VALUES ('1032', '1031', '340202', '镜湖区');
INSERT INTO `areacode` VALUES ('1033', '1031', '340203', '弋江区');
INSERT INTO `areacode` VALUES ('1034', '1031', '340207', '鸠江区');
INSERT INTO `areacode` VALUES ('1035', '1031', '340208', '三山区');
INSERT INTO `areacode` VALUES ('1036', '1031', '340221', '芜湖县');
INSERT INTO `areacode` VALUES ('1037', '1031', '340222', '繁昌县');
INSERT INTO `areacode` VALUES ('1038', '1031', '340223', '南陵县');
INSERT INTO `areacode` VALUES ('1039', '1031', '340225', '无为县');
INSERT INTO `areacode` VALUES ('1040', '1020', '340300', '蚌埠市');
INSERT INTO `areacode` VALUES ('1041', '1040', '340302', '龙子湖区');
INSERT INTO `areacode` VALUES ('1042', '1040', '340303', '蚌山区');
INSERT INTO `areacode` VALUES ('1043', '1040', '340304', '禹会区');
INSERT INTO `areacode` VALUES ('1044', '1040', '340311', '淮上区');
INSERT INTO `areacode` VALUES ('1045', '1040', '340321', '怀远县');
INSERT INTO `areacode` VALUES ('1046', '1040', '340322', '五河县');
INSERT INTO `areacode` VALUES ('1047', '1040', '340323', '固镇县');
INSERT INTO `areacode` VALUES ('1048', '1020', '340400', '淮南市');
INSERT INTO `areacode` VALUES ('1049', '1048', '340402', '大通区');
INSERT INTO `areacode` VALUES ('1050', '1048', '340403', '田家庵区');
INSERT INTO `areacode` VALUES ('1051', '1048', '340404', '谢家集区');
INSERT INTO `areacode` VALUES ('1052', '1048', '340405', '八公山区');
INSERT INTO `areacode` VALUES ('1053', '1048', '340406', '潘集区');
INSERT INTO `areacode` VALUES ('1054', '1048', '340421', '凤台县');
INSERT INTO `areacode` VALUES ('1055', '1048', '340422', '寿县');
INSERT INTO `areacode` VALUES ('1056', '1020', '340500', '马鞍山市');
INSERT INTO `areacode` VALUES ('1057', '1056', '340503', '花山区');
INSERT INTO `areacode` VALUES ('1058', '1056', '340504', '雨山区');
INSERT INTO `areacode` VALUES ('1059', '1056', '340506', '博望区');
INSERT INTO `areacode` VALUES ('1060', '1056', '340521', '当涂县');
INSERT INTO `areacode` VALUES ('1061', '1056', '340522', '含山县');
INSERT INTO `areacode` VALUES ('1062', '1056', '340523', '和县');
INSERT INTO `areacode` VALUES ('1063', '1020', '340600', '淮北市');
INSERT INTO `areacode` VALUES ('1064', '1063', '340602', '杜集区');
INSERT INTO `areacode` VALUES ('1065', '1063', '340603', '相山区');
INSERT INTO `areacode` VALUES ('1066', '1063', '340604', '烈山区');
INSERT INTO `areacode` VALUES ('1067', '1063', '340621', '濉溪县');
INSERT INTO `areacode` VALUES ('1068', '1020', '340700', '铜陵市');
INSERT INTO `areacode` VALUES ('1069', '1068', '340705', '铜官区');
INSERT INTO `areacode` VALUES ('1070', '1068', '340706', '义安区');
INSERT INTO `areacode` VALUES ('1071', '1068', '340711', '郊区');
INSERT INTO `areacode` VALUES ('1072', '1068', '340722', '枞阳县');
INSERT INTO `areacode` VALUES ('1073', '1020', '340800', '安庆市');
INSERT INTO `areacode` VALUES ('1074', '1073', '340802', '迎江区');
INSERT INTO `areacode` VALUES ('1075', '1073', '340803', '大观区');
INSERT INTO `areacode` VALUES ('1076', '1073', '340811', '宜秀区');
INSERT INTO `areacode` VALUES ('1077', '1073', '340822', '怀宁县');
INSERT INTO `areacode` VALUES ('1078', '1073', '340824', '潜山县');
INSERT INTO `areacode` VALUES ('1079', '1073', '340825', '太湖县');
INSERT INTO `areacode` VALUES ('1080', '1073', '340826', '宿松县');
INSERT INTO `areacode` VALUES ('1081', '1073', '340827', '望江县');
INSERT INTO `areacode` VALUES ('1082', '1073', '340828', '岳西县');
INSERT INTO `areacode` VALUES ('1083', '1073', '340881', '桐城市');
INSERT INTO `areacode` VALUES ('1084', '1020', '341000', '黄山市');
INSERT INTO `areacode` VALUES ('1085', '1084', '341002', '屯溪区');
INSERT INTO `areacode` VALUES ('1086', '1084', '341003', '黄山区');
INSERT INTO `areacode` VALUES ('1087', '1084', '341004', '徽州区');
INSERT INTO `areacode` VALUES ('1088', '1084', '341021', '歙县');
INSERT INTO `areacode` VALUES ('1089', '1084', '341022', '休宁县');
INSERT INTO `areacode` VALUES ('1090', '1084', '341023', '黟县');
INSERT INTO `areacode` VALUES ('1091', '1084', '341024', '祁门县');
INSERT INTO `areacode` VALUES ('1092', '1020', '341100', '滁州市');
INSERT INTO `areacode` VALUES ('1093', '1092', '341102', '琅琊区');
INSERT INTO `areacode` VALUES ('1094', '1092', '341103', '南谯区');
INSERT INTO `areacode` VALUES ('1095', '1092', '341122', '来安县');
INSERT INTO `areacode` VALUES ('1096', '1092', '341124', '全椒县');
INSERT INTO `areacode` VALUES ('1097', '1092', '341125', '定远县');
INSERT INTO `areacode` VALUES ('1098', '1092', '341126', '凤阳县');
INSERT INTO `areacode` VALUES ('1099', '1092', '341181', '天长市');
INSERT INTO `areacode` VALUES ('1100', '1092', '341182', '明光市');
INSERT INTO `areacode` VALUES ('1101', '1020', '341200', '阜阳市');
INSERT INTO `areacode` VALUES ('1102', '1101', '341202', '颍州区');
INSERT INTO `areacode` VALUES ('1103', '1101', '341203', '颍东区');
INSERT INTO `areacode` VALUES ('1104', '1101', '341204', '颍泉区');
INSERT INTO `areacode` VALUES ('1105', '1101', '341221', '临泉县');
INSERT INTO `areacode` VALUES ('1106', '1101', '341222', '太和县');
INSERT INTO `areacode` VALUES ('1107', '1101', '341225', '阜南县');
INSERT INTO `areacode` VALUES ('1108', '1101', '341226', '颍上县');
INSERT INTO `areacode` VALUES ('1109', '1101', '341282', '界首市');
INSERT INTO `areacode` VALUES ('1110', '1020', '341300', '宿州市');
INSERT INTO `areacode` VALUES ('1111', '1110', '341302', '埇桥区');
INSERT INTO `areacode` VALUES ('1112', '1110', '341321', '砀山县');
INSERT INTO `areacode` VALUES ('1113', '1110', '341322', '萧县');
INSERT INTO `areacode` VALUES ('1114', '1110', '341323', '灵璧县');
INSERT INTO `areacode` VALUES ('1115', '1110', '341324', '泗县');
INSERT INTO `areacode` VALUES ('1116', '1020', '341500', '六安市');
INSERT INTO `areacode` VALUES ('1117', '1116', '341502', '金安区');
INSERT INTO `areacode` VALUES ('1118', '1116', '341503', '裕安区');
INSERT INTO `areacode` VALUES ('1119', '1116', '341504', '叶集区');
INSERT INTO `areacode` VALUES ('1120', '1116', '341522', '霍邱县');
INSERT INTO `areacode` VALUES ('1121', '1116', '341523', '舒城县');
INSERT INTO `areacode` VALUES ('1122', '1116', '341524', '金寨县');
INSERT INTO `areacode` VALUES ('1123', '1116', '341525', '霍山县');
INSERT INTO `areacode` VALUES ('1124', '1020', '341600', '亳州市');
INSERT INTO `areacode` VALUES ('1125', '1124', '341602', '谯城区');
INSERT INTO `areacode` VALUES ('1126', '1124', '341621', '涡阳县');
INSERT INTO `areacode` VALUES ('1127', '1124', '341622', '蒙城县');
INSERT INTO `areacode` VALUES ('1128', '1124', '341623', '利辛县');
INSERT INTO `areacode` VALUES ('1129', '1020', '341700', '池州市');
INSERT INTO `areacode` VALUES ('1130', '1129', '341702', '贵池区');
INSERT INTO `areacode` VALUES ('1131', '1129', '341721', '东至县');
INSERT INTO `areacode` VALUES ('1132', '1129', '341722', '石台县');
INSERT INTO `areacode` VALUES ('1133', '1129', '341723', '青阳县');
INSERT INTO `areacode` VALUES ('1134', '1020', '341800', '宣城市');
INSERT INTO `areacode` VALUES ('1135', '1134', '341802', '宣州区');
INSERT INTO `areacode` VALUES ('1136', '1134', '341821', '郎溪县');
INSERT INTO `areacode` VALUES ('1137', '1134', '341822', '广德县');
INSERT INTO `areacode` VALUES ('1138', '1134', '341823', '泾县');
INSERT INTO `areacode` VALUES ('1139', '1134', '341824', '绩溪县');
INSERT INTO `areacode` VALUES ('1140', '1134', '341825', '旌德县');
INSERT INTO `areacode` VALUES ('1141', '1134', '341881', '宁国市');
INSERT INTO `areacode` VALUES ('1142', '0', '350000', '福建省');
INSERT INTO `areacode` VALUES ('1143', '1142', '350100', '福州市');
INSERT INTO `areacode` VALUES ('1144', '1143', '350102', '鼓楼区');
INSERT INTO `areacode` VALUES ('1145', '1143', '350103', '台江区');
INSERT INTO `areacode` VALUES ('1146', '1143', '350104', '仓山区');
INSERT INTO `areacode` VALUES ('1147', '1143', '350105', '马尾区');
INSERT INTO `areacode` VALUES ('1148', '1143', '350111', '晋安区');
INSERT INTO `areacode` VALUES ('1149', '1143', '350112', '长乐区');
INSERT INTO `areacode` VALUES ('1150', '1143', '350121', '闽侯县');
INSERT INTO `areacode` VALUES ('1151', '1143', '350122', '连江县');
INSERT INTO `areacode` VALUES ('1152', '1143', '350123', '罗源县');
INSERT INTO `areacode` VALUES ('1153', '1143', '350124', '闽清县');
INSERT INTO `areacode` VALUES ('1154', '1143', '350125', '永泰县');
INSERT INTO `areacode` VALUES ('1155', '1143', '350128', '平潭县');
INSERT INTO `areacode` VALUES ('1156', '1143', '350181', '福清市');
INSERT INTO `areacode` VALUES ('1157', '1142', '350200', '厦门市');
INSERT INTO `areacode` VALUES ('1158', '1157', '350203', '思明区');
INSERT INTO `areacode` VALUES ('1159', '1157', '350205', '海沧区');
INSERT INTO `areacode` VALUES ('1160', '1157', '350206', '湖里区');
INSERT INTO `areacode` VALUES ('1161', '1157', '350211', '集美区');
INSERT INTO `areacode` VALUES ('1162', '1157', '350212', '同安区');
INSERT INTO `areacode` VALUES ('1163', '1157', '350213', '翔安区');
INSERT INTO `areacode` VALUES ('1164', '1142', '350300', '莆田市');
INSERT INTO `areacode` VALUES ('1165', '1164', '350302', '城厢区');
INSERT INTO `areacode` VALUES ('1166', '1164', '350303', '涵江区');
INSERT INTO `areacode` VALUES ('1167', '1164', '350304', '荔城区');
INSERT INTO `areacode` VALUES ('1168', '1164', '350305', '秀屿区');
INSERT INTO `areacode` VALUES ('1169', '1164', '350322', '仙游县');
INSERT INTO `areacode` VALUES ('1170', '1142', '350400', '三明市');
INSERT INTO `areacode` VALUES ('1171', '1170', '350402', '梅列区');
INSERT INTO `areacode` VALUES ('1172', '1170', '350403', '三元区');
INSERT INTO `areacode` VALUES ('1173', '1170', '350421', '明溪县');
INSERT INTO `areacode` VALUES ('1174', '1170', '350423', '清流县');
INSERT INTO `areacode` VALUES ('1175', '1170', '350424', '宁化县');
INSERT INTO `areacode` VALUES ('1176', '1170', '350425', '大田县');
INSERT INTO `areacode` VALUES ('1177', '1170', '350426', '尤溪县');
INSERT INTO `areacode` VALUES ('1178', '1170', '350427', '沙县');
INSERT INTO `areacode` VALUES ('1179', '1170', '350428', '将乐县');
INSERT INTO `areacode` VALUES ('1180', '1170', '350429', '泰宁县');
INSERT INTO `areacode` VALUES ('1181', '1170', '350430', '建宁县');
INSERT INTO `areacode` VALUES ('1182', '1170', '350481', '永安市');
INSERT INTO `areacode` VALUES ('1183', '1142', '350500', '泉州市');
INSERT INTO `areacode` VALUES ('1184', '1183', '350502', '鲤城区');
INSERT INTO `areacode` VALUES ('1185', '1183', '350503', '丰泽区');
INSERT INTO `areacode` VALUES ('1186', '1183', '350504', '洛江区');
INSERT INTO `areacode` VALUES ('1187', '1183', '350505', '泉港区');
INSERT INTO `areacode` VALUES ('1188', '1183', '350521', '惠安县');
INSERT INTO `areacode` VALUES ('1189', '1183', '350524', '安溪县');
INSERT INTO `areacode` VALUES ('1190', '1183', '350525', '永春县');
INSERT INTO `areacode` VALUES ('1191', '1183', '350526', '德化县');
INSERT INTO `areacode` VALUES ('1192', '1183', '350527', '金门县');
INSERT INTO `areacode` VALUES ('1193', '1183', '350581', '石狮市');
INSERT INTO `areacode` VALUES ('1194', '1183', '350582', '晋江市');
INSERT INTO `areacode` VALUES ('1195', '1183', '350583', '南安市');
INSERT INTO `areacode` VALUES ('1196', '1142', '350600', '漳州市');
INSERT INTO `areacode` VALUES ('1197', '1196', '350602', '芗城区');
INSERT INTO `areacode` VALUES ('1198', '1196', '350603', '龙文区');
INSERT INTO `areacode` VALUES ('1199', '1196', '350622', '云霄县');
INSERT INTO `areacode` VALUES ('1200', '1196', '350623', '漳浦县');
INSERT INTO `areacode` VALUES ('1201', '1196', '350624', '诏安县');
INSERT INTO `areacode` VALUES ('1202', '1196', '350625', '长泰县');
INSERT INTO `areacode` VALUES ('1203', '1196', '350626', '东山县');
INSERT INTO `areacode` VALUES ('1204', '1196', '350627', '南靖县');
INSERT INTO `areacode` VALUES ('1205', '1196', '350628', '平和县');
INSERT INTO `areacode` VALUES ('1206', '1196', '350629', '华安县');
INSERT INTO `areacode` VALUES ('1207', '1196', '350681', '龙海市');
INSERT INTO `areacode` VALUES ('1208', '1142', '350700', '南平市');
INSERT INTO `areacode` VALUES ('1209', '1208', '350702', '延平区');
INSERT INTO `areacode` VALUES ('1210', '1208', '350703', '建阳区');
INSERT INTO `areacode` VALUES ('1211', '1208', '350721', '顺昌县');
INSERT INTO `areacode` VALUES ('1212', '1208', '350722', '浦城县');
INSERT INTO `areacode` VALUES ('1213', '1208', '350723', '光泽县');
INSERT INTO `areacode` VALUES ('1214', '1208', '350724', '松溪县');
INSERT INTO `areacode` VALUES ('1215', '1208', '350725', '政和县');
INSERT INTO `areacode` VALUES ('1216', '1208', '350781', '邵武市');
INSERT INTO `areacode` VALUES ('1217', '1208', '350782', '武夷山市');
INSERT INTO `areacode` VALUES ('1218', '1208', '350783', '建瓯市');
INSERT INTO `areacode` VALUES ('1219', '1142', '350800', '龙岩市');
INSERT INTO `areacode` VALUES ('1220', '1219', '350802', '新罗区');
INSERT INTO `areacode` VALUES ('1221', '1219', '350803', '永定区');
INSERT INTO `areacode` VALUES ('1222', '1219', '350821', '长汀县');
INSERT INTO `areacode` VALUES ('1223', '1219', '350823', '上杭县');
INSERT INTO `areacode` VALUES ('1224', '1219', '350824', '武平县');
INSERT INTO `areacode` VALUES ('1225', '1219', '350825', '连城县');
INSERT INTO `areacode` VALUES ('1226', '1219', '350881', '漳平市');
INSERT INTO `areacode` VALUES ('1227', '1142', '350900', '宁德市');
INSERT INTO `areacode` VALUES ('1228', '1227', '350902', '蕉城区');
INSERT INTO `areacode` VALUES ('1229', '1227', '350921', '霞浦县');
INSERT INTO `areacode` VALUES ('1230', '1227', '350922', '古田县');
INSERT INTO `areacode` VALUES ('1231', '1227', '350923', '屏南县');
INSERT INTO `areacode` VALUES ('1232', '1227', '350924', '寿宁县');
INSERT INTO `areacode` VALUES ('1233', '1227', '350925', '周宁县');
INSERT INTO `areacode` VALUES ('1234', '1227', '350926', '柘荣县');
INSERT INTO `areacode` VALUES ('1235', '1227', '350981', '福安市');
INSERT INTO `areacode` VALUES ('1236', '1227', '350982', '福鼎市');
INSERT INTO `areacode` VALUES ('1237', '0', '360000', '江西省');
INSERT INTO `areacode` VALUES ('1238', '1237', '360100', '南昌市');
INSERT INTO `areacode` VALUES ('1239', '1238', '360102', '东湖区');
INSERT INTO `areacode` VALUES ('1240', '1238', '360103', '西湖区');
INSERT INTO `areacode` VALUES ('1241', '1238', '360104', '青云谱区');
INSERT INTO `areacode` VALUES ('1242', '1238', '360105', '湾里区');
INSERT INTO `areacode` VALUES ('1243', '1238', '360111', '青山湖区');
INSERT INTO `areacode` VALUES ('1244', '1238', '360112', '新建区');
INSERT INTO `areacode` VALUES ('1245', '1238', '360121', '南昌县');
INSERT INTO `areacode` VALUES ('1246', '1238', '360123', '安义县');
INSERT INTO `areacode` VALUES ('1247', '1238', '360124', '进贤县');
INSERT INTO `areacode` VALUES ('1248', '1237', '360200', '景德镇市');
INSERT INTO `areacode` VALUES ('1249', '1248', '360202', '昌江区');
INSERT INTO `areacode` VALUES ('1250', '1248', '360203', '珠山区');
INSERT INTO `areacode` VALUES ('1251', '1248', '360222', '浮梁县');
INSERT INTO `areacode` VALUES ('1252', '1248', '360281', '乐平市');
INSERT INTO `areacode` VALUES ('1253', '1237', '360300', '萍乡市');
INSERT INTO `areacode` VALUES ('1254', '1253', '360302', '安源区');
INSERT INTO `areacode` VALUES ('1255', '1253', '360313', '湘东区');
INSERT INTO `areacode` VALUES ('1256', '1253', '360321', '莲花县');
INSERT INTO `areacode` VALUES ('1257', '1253', '360322', '上栗县');
INSERT INTO `areacode` VALUES ('1258', '1253', '360323', '芦溪县');
INSERT INTO `areacode` VALUES ('1259', '1237', '360400', '九江市');
INSERT INTO `areacode` VALUES ('1260', '1259', '360402', '濂溪区');
INSERT INTO `areacode` VALUES ('1261', '1259', '360403', '浔阳区');
INSERT INTO `areacode` VALUES ('1262', '1259', '360404', '柴桑区');
INSERT INTO `areacode` VALUES ('1263', '1259', '360423', '武宁县');
INSERT INTO `areacode` VALUES ('1264', '1259', '360424', '修水县');
INSERT INTO `areacode` VALUES ('1265', '1259', '360425', '永修县');
INSERT INTO `areacode` VALUES ('1266', '1259', '360426', '德安县');
INSERT INTO `areacode` VALUES ('1267', '1259', '360428', '都昌县');
INSERT INTO `areacode` VALUES ('1268', '1259', '360429', '湖口县');
INSERT INTO `areacode` VALUES ('1269', '1259', '360430', '彭泽县');
INSERT INTO `areacode` VALUES ('1270', '1259', '360481', '瑞昌市');
INSERT INTO `areacode` VALUES ('1271', '1259', '360482', '共青城市');
INSERT INTO `areacode` VALUES ('1272', '1259', '360483', '庐山市');
INSERT INTO `areacode` VALUES ('1273', '1237', '360500', '新余市');
INSERT INTO `areacode` VALUES ('1274', '1273', '360502', '渝水区');
INSERT INTO `areacode` VALUES ('1275', '1273', '360521', '分宜县');
INSERT INTO `areacode` VALUES ('1276', '1237', '360600', '鹰潭市');
INSERT INTO `areacode` VALUES ('1277', '1276', '360602', '月湖区');
INSERT INTO `areacode` VALUES ('1278', '1276', '360622', '余江县');
INSERT INTO `areacode` VALUES ('1279', '1276', '360681', '贵溪市');
INSERT INTO `areacode` VALUES ('1280', '1237', '360700', '赣州市');
INSERT INTO `areacode` VALUES ('1281', '1280', '360702', '章贡区');
INSERT INTO `areacode` VALUES ('1282', '1280', '360703', '南康区');
INSERT INTO `areacode` VALUES ('1283', '1280', '360704', '赣县区');
INSERT INTO `areacode` VALUES ('1284', '1280', '360722', '信丰县');
INSERT INTO `areacode` VALUES ('1285', '1280', '360723', '大余县');
INSERT INTO `areacode` VALUES ('1286', '1280', '360724', '上犹县');
INSERT INTO `areacode` VALUES ('1287', '1280', '360725', '崇义县');
INSERT INTO `areacode` VALUES ('1288', '1280', '360726', '安远县');
INSERT INTO `areacode` VALUES ('1289', '1280', '360727', '龙南县');
INSERT INTO `areacode` VALUES ('1290', '1280', '360728', '定南县');
INSERT INTO `areacode` VALUES ('1291', '1280', '360729', '全南县');
INSERT INTO `areacode` VALUES ('1292', '1280', '360730', '宁都县');
INSERT INTO `areacode` VALUES ('1293', '1280', '360731', '于都县');
INSERT INTO `areacode` VALUES ('1294', '1280', '360732', '兴国县');
INSERT INTO `areacode` VALUES ('1295', '1280', '360733', '会昌县');
INSERT INTO `areacode` VALUES ('1296', '1280', '360734', '寻乌县');
INSERT INTO `areacode` VALUES ('1297', '1280', '360735', '石城县');
INSERT INTO `areacode` VALUES ('1298', '1280', '360781', '瑞金市');
INSERT INTO `areacode` VALUES ('1299', '1237', '360800', '吉安市');
INSERT INTO `areacode` VALUES ('1300', '1299', '360802', '吉州区');
INSERT INTO `areacode` VALUES ('1301', '1299', '360803', '青原区');
INSERT INTO `areacode` VALUES ('1302', '1299', '360821', '吉安县');
INSERT INTO `areacode` VALUES ('1303', '1299', '360822', '吉水县');
INSERT INTO `areacode` VALUES ('1304', '1299', '360823', '峡江县');
INSERT INTO `areacode` VALUES ('1305', '1299', '360824', '新干县');
INSERT INTO `areacode` VALUES ('1306', '1299', '360825', '永丰县');
INSERT INTO `areacode` VALUES ('1307', '1299', '360826', '泰和县');
INSERT INTO `areacode` VALUES ('1308', '1299', '360827', '遂川县');
INSERT INTO `areacode` VALUES ('1309', '1299', '360828', '万安县');
INSERT INTO `areacode` VALUES ('1310', '1299', '360829', '安福县');
INSERT INTO `areacode` VALUES ('1311', '1299', '360830', '永新县');
INSERT INTO `areacode` VALUES ('1312', '1299', '360881', '井冈山市');
INSERT INTO `areacode` VALUES ('1313', '1237', '360900', '宜春市');
INSERT INTO `areacode` VALUES ('1314', '1313', '360902', '袁州区');
INSERT INTO `areacode` VALUES ('1315', '1313', '360921', '奉新县');
INSERT INTO `areacode` VALUES ('1316', '1313', '360922', '万载县');
INSERT INTO `areacode` VALUES ('1317', '1313', '360923', '上高县');
INSERT INTO `areacode` VALUES ('1318', '1313', '360924', '宜丰县');
INSERT INTO `areacode` VALUES ('1319', '1313', '360925', '靖安县');
INSERT INTO `areacode` VALUES ('1320', '1313', '360926', '铜鼓县');
INSERT INTO `areacode` VALUES ('1321', '1313', '360981', '丰城市');
INSERT INTO `areacode` VALUES ('1322', '1313', '360982', '樟树市');
INSERT INTO `areacode` VALUES ('1323', '1313', '360983', '高安市');
INSERT INTO `areacode` VALUES ('1324', '1237', '361000', '抚州市');
INSERT INTO `areacode` VALUES ('1325', '1324', '361002', '临川区');
INSERT INTO `areacode` VALUES ('1326', '1324', '361003', '东乡区');
INSERT INTO `areacode` VALUES ('1327', '1324', '361021', '南城县');
INSERT INTO `areacode` VALUES ('1328', '1324', '361022', '黎川县');
INSERT INTO `areacode` VALUES ('1329', '1324', '361023', '南丰县');
INSERT INTO `areacode` VALUES ('1330', '1324', '361024', '崇仁县');
INSERT INTO `areacode` VALUES ('1331', '1324', '361025', '乐安县');
INSERT INTO `areacode` VALUES ('1332', '1324', '361026', '宜黄县');
INSERT INTO `areacode` VALUES ('1333', '1324', '361027', '金溪县');
INSERT INTO `areacode` VALUES ('1334', '1324', '361028', '资溪县');
INSERT INTO `areacode` VALUES ('1335', '1324', '361030', '广昌县');
INSERT INTO `areacode` VALUES ('1336', '1237', '361100', '上饶市');
INSERT INTO `areacode` VALUES ('1337', '1336', '361102', '信州区');
INSERT INTO `areacode` VALUES ('1338', '1336', '361103', '广丰区');
INSERT INTO `areacode` VALUES ('1339', '1336', '361121', '上饶县');
INSERT INTO `areacode` VALUES ('1340', '1336', '361123', '玉山县');
INSERT INTO `areacode` VALUES ('1341', '1336', '361124', '铅山县');
INSERT INTO `areacode` VALUES ('1342', '1336', '361125', '横峰县');
INSERT INTO `areacode` VALUES ('1343', '1336', '361126', '弋阳县');
INSERT INTO `areacode` VALUES ('1344', '1336', '361127', '余干县');
INSERT INTO `areacode` VALUES ('1345', '1336', '361128', '鄱阳县');
INSERT INTO `areacode` VALUES ('1346', '1336', '361129', '万年县');
INSERT INTO `areacode` VALUES ('1347', '1336', '361130', '婺源县');
INSERT INTO `areacode` VALUES ('1348', '1336', '361181', '德兴市');
INSERT INTO `areacode` VALUES ('1349', '0', '370000', '山东省');
INSERT INTO `areacode` VALUES ('1350', '1349', '370100', '济南市');
INSERT INTO `areacode` VALUES ('1351', '1350', '370102', '历下区');
INSERT INTO `areacode` VALUES ('1352', '1350', '370103', '市中区');
INSERT INTO `areacode` VALUES ('1353', '1350', '370104', '槐荫区');
INSERT INTO `areacode` VALUES ('1354', '1350', '370105', '天桥区');
INSERT INTO `areacode` VALUES ('1355', '1350', '370112', '历城区');
INSERT INTO `areacode` VALUES ('1356', '1350', '370113', '长清区');
INSERT INTO `areacode` VALUES ('1357', '1350', '370114', '章丘区');
INSERT INTO `areacode` VALUES ('1358', '1350', '370124', '平阴县');
INSERT INTO `areacode` VALUES ('1359', '1350', '370125', '济阳县');
INSERT INTO `areacode` VALUES ('1360', '1350', '370126', '商河县');
INSERT INTO `areacode` VALUES ('1361', '1349', '370200', '青岛市');
INSERT INTO `areacode` VALUES ('1362', '1361', '370202', '市南区');
INSERT INTO `areacode` VALUES ('1363', '1361', '370203', '市北区');
INSERT INTO `areacode` VALUES ('1364', '1361', '370211', '黄岛区');
INSERT INTO `areacode` VALUES ('1365', '1361', '370212', '崂山区');
INSERT INTO `areacode` VALUES ('1366', '1361', '370213', '李沧区');
INSERT INTO `areacode` VALUES ('1367', '1361', '370214', '城阳区');
INSERT INTO `areacode` VALUES ('1368', '1361', '370215', '即墨区');
INSERT INTO `areacode` VALUES ('1369', '1361', '370281', '胶州市');
INSERT INTO `areacode` VALUES ('1370', '1361', '370283', '平度市');
INSERT INTO `areacode` VALUES ('1371', '1361', '370285', '莱西市');
INSERT INTO `areacode` VALUES ('1372', '1349', '370300', '淄博市');
INSERT INTO `areacode` VALUES ('1373', '1372', '370302', '淄川区');
INSERT INTO `areacode` VALUES ('1374', '1372', '370303', '张店区');
INSERT INTO `areacode` VALUES ('1375', '1372', '370304', '博山区');
INSERT INTO `areacode` VALUES ('1376', '1372', '370305', '临淄区');
INSERT INTO `areacode` VALUES ('1377', '1372', '370306', '周村区');
INSERT INTO `areacode` VALUES ('1378', '1372', '370321', '桓台县');
INSERT INTO `areacode` VALUES ('1379', '1372', '370322', '高青县');
INSERT INTO `areacode` VALUES ('1380', '1372', '370323', '沂源县');
INSERT INTO `areacode` VALUES ('1381', '1349', '370400', '枣庄市');
INSERT INTO `areacode` VALUES ('1382', '1381', '370402', '市中区');
INSERT INTO `areacode` VALUES ('1383', '1381', '370403', '薛城区');
INSERT INTO `areacode` VALUES ('1384', '1381', '370404', '峄城区');
INSERT INTO `areacode` VALUES ('1385', '1381', '370405', '台儿庄区');
INSERT INTO `areacode` VALUES ('1386', '1381', '370406', '山亭区');
INSERT INTO `areacode` VALUES ('1387', '1381', '370481', '滕州市');
INSERT INTO `areacode` VALUES ('1388', '1349', '370500', '东营市');
INSERT INTO `areacode` VALUES ('1389', '1388', '370502', '东营区');
INSERT INTO `areacode` VALUES ('1390', '1388', '370503', '河口区');
INSERT INTO `areacode` VALUES ('1391', '1388', '370505', '垦利区');
INSERT INTO `areacode` VALUES ('1392', '1388', '370522', '利津县');
INSERT INTO `areacode` VALUES ('1393', '1388', '370523', '广饶县');
INSERT INTO `areacode` VALUES ('1394', '1349', '370600', '烟台市');
INSERT INTO `areacode` VALUES ('1395', '1394', '370602', '芝罘区');
INSERT INTO `areacode` VALUES ('1396', '1394', '370611', '福山区');
INSERT INTO `areacode` VALUES ('1397', '1394', '370612', '牟平区');
INSERT INTO `areacode` VALUES ('1398', '1394', '370613', '莱山区');
INSERT INTO `areacode` VALUES ('1399', '1394', '370634', '长岛县');
INSERT INTO `areacode` VALUES ('1400', '1394', '370681', '龙口市');
INSERT INTO `areacode` VALUES ('1401', '1394', '370682', '莱阳市');
INSERT INTO `areacode` VALUES ('1402', '1394', '370683', '莱州市');
INSERT INTO `areacode` VALUES ('1403', '1394', '370684', '蓬莱市');
INSERT INTO `areacode` VALUES ('1404', '1394', '370685', '招远市');
INSERT INTO `areacode` VALUES ('1405', '1394', '370686', '栖霞市');
INSERT INTO `areacode` VALUES ('1406', '1394', '370687', '海阳市');
INSERT INTO `areacode` VALUES ('1407', '1349', '370700', '潍坊市');
INSERT INTO `areacode` VALUES ('1408', '1407', '370702', '潍城区');
INSERT INTO `areacode` VALUES ('1409', '1407', '370703', '寒亭区');
INSERT INTO `areacode` VALUES ('1410', '1407', '370704', '坊子区');
INSERT INTO `areacode` VALUES ('1411', '1407', '370705', '奎文区');
INSERT INTO `areacode` VALUES ('1412', '1407', '370724', '临朐县');
INSERT INTO `areacode` VALUES ('1413', '1407', '370725', '昌乐县');
INSERT INTO `areacode` VALUES ('1414', '1407', '370781', '青州市');
INSERT INTO `areacode` VALUES ('1415', '1407', '370782', '诸城市');
INSERT INTO `areacode` VALUES ('1416', '1407', '370783', '寿光市');
INSERT INTO `areacode` VALUES ('1417', '1407', '370784', '安丘市');
INSERT INTO `areacode` VALUES ('1418', '1407', '370785', '高密市');
INSERT INTO `areacode` VALUES ('1419', '1407', '370786', '昌邑市');
INSERT INTO `areacode` VALUES ('1420', '1349', '370800', '济宁市');
INSERT INTO `areacode` VALUES ('1421', '1420', '370811', '任城区');
INSERT INTO `areacode` VALUES ('1422', '1420', '370812', '兖州区');
INSERT INTO `areacode` VALUES ('1423', '1420', '370826', '微山县');
INSERT INTO `areacode` VALUES ('1424', '1420', '370827', '鱼台县');
INSERT INTO `areacode` VALUES ('1425', '1420', '370828', '金乡县');
INSERT INTO `areacode` VALUES ('1426', '1420', '370829', '嘉祥县');
INSERT INTO `areacode` VALUES ('1427', '1420', '370830', '汶上县');
INSERT INTO `areacode` VALUES ('1428', '1420', '370831', '泗水县');
INSERT INTO `areacode` VALUES ('1429', '1420', '370832', '梁山县');
INSERT INTO `areacode` VALUES ('1430', '1420', '370881', '曲阜市');
INSERT INTO `areacode` VALUES ('1431', '1420', '370883', '邹城市');
INSERT INTO `areacode` VALUES ('1432', '1349', '370900', '泰安市');
INSERT INTO `areacode` VALUES ('1433', '1432', '370902', '泰山区');
INSERT INTO `areacode` VALUES ('1434', '1432', '370911', '岱岳区');
INSERT INTO `areacode` VALUES ('1435', '1432', '370921', '宁阳县');
INSERT INTO `areacode` VALUES ('1436', '1432', '370923', '东平县');
INSERT INTO `areacode` VALUES ('1437', '1432', '370982', '新泰市');
INSERT INTO `areacode` VALUES ('1438', '1432', '370983', '肥城市');
INSERT INTO `areacode` VALUES ('1439', '1349', '371000', '威海市');
INSERT INTO `areacode` VALUES ('1440', '1439', '371002', '环翠区');
INSERT INTO `areacode` VALUES ('1441', '1439', '371003', '文登区');
INSERT INTO `areacode` VALUES ('1442', '1439', '371082', '荣成市');
INSERT INTO `areacode` VALUES ('1443', '1439', '371083', '乳山市');
INSERT INTO `areacode` VALUES ('1444', '1349', '371100', '日照市');
INSERT INTO `areacode` VALUES ('1445', '1444', '371102', '东港区');
INSERT INTO `areacode` VALUES ('1446', '1444', '371103', '岚山区');
INSERT INTO `areacode` VALUES ('1447', '1444', '371121', '五莲县');
INSERT INTO `areacode` VALUES ('1448', '1444', '371122', '莒县');
INSERT INTO `areacode` VALUES ('1449', '1349', '371200', '莱芜市');
INSERT INTO `areacode` VALUES ('1450', '1449', '371202', '莱城区');
INSERT INTO `areacode` VALUES ('1451', '1449', '371203', '钢城区');
INSERT INTO `areacode` VALUES ('1452', '1349', '371300', '临沂市');
INSERT INTO `areacode` VALUES ('1453', '1452', '371302', '兰山区');
INSERT INTO `areacode` VALUES ('1454', '1452', '371311', '罗庄区');
INSERT INTO `areacode` VALUES ('1455', '1452', '371312', '河东区');
INSERT INTO `areacode` VALUES ('1456', '1452', '371321', '沂南县');
INSERT INTO `areacode` VALUES ('1457', '1452', '371322', '郯城县');
INSERT INTO `areacode` VALUES ('1458', '1452', '371323', '沂水县');
INSERT INTO `areacode` VALUES ('1459', '1452', '371324', '兰陵县');
INSERT INTO `areacode` VALUES ('1460', '1452', '371325', '费县');
INSERT INTO `areacode` VALUES ('1461', '1452', '371326', '平邑县');
INSERT INTO `areacode` VALUES ('1462', '1452', '371327', '莒南县');
INSERT INTO `areacode` VALUES ('1463', '1452', '371328', '蒙阴县');
INSERT INTO `areacode` VALUES ('1464', '1452', '371329', '临沭县');
INSERT INTO `areacode` VALUES ('1465', '1349', '371400', '德州市');
INSERT INTO `areacode` VALUES ('1466', '1465', '371402', '德城区');
INSERT INTO `areacode` VALUES ('1467', '1465', '371403', '陵城区');
INSERT INTO `areacode` VALUES ('1468', '1465', '371422', '宁津县');
INSERT INTO `areacode` VALUES ('1469', '1465', '371423', '庆云县');
INSERT INTO `areacode` VALUES ('1470', '1465', '371424', '临邑县');
INSERT INTO `areacode` VALUES ('1471', '1465', '371425', '齐河县');
INSERT INTO `areacode` VALUES ('1472', '1465', '371426', '平原县');
INSERT INTO `areacode` VALUES ('1473', '1465', '371427', '夏津县');
INSERT INTO `areacode` VALUES ('1474', '1465', '371428', '武城县');
INSERT INTO `areacode` VALUES ('1475', '1465', '371481', '乐陵市');
INSERT INTO `areacode` VALUES ('1476', '1465', '371482', '禹城市');
INSERT INTO `areacode` VALUES ('1477', '1349', '371500', '聊城市');
INSERT INTO `areacode` VALUES ('1478', '1477', '371502', '东昌府区');
INSERT INTO `areacode` VALUES ('1479', '1477', '371521', '阳谷县');
INSERT INTO `areacode` VALUES ('1480', '1477', '371522', '莘县');
INSERT INTO `areacode` VALUES ('1481', '1477', '371523', '茌平县');
INSERT INTO `areacode` VALUES ('1482', '1477', '371524', '东阿县');
INSERT INTO `areacode` VALUES ('1483', '1477', '371525', '冠县');
INSERT INTO `areacode` VALUES ('1484', '1477', '371526', '高唐县');
INSERT INTO `areacode` VALUES ('1485', '1477', '371581', '临清市');
INSERT INTO `areacode` VALUES ('1486', '1349', '371600', '滨州市');
INSERT INTO `areacode` VALUES ('1487', '1486', '371602', '滨城区');
INSERT INTO `areacode` VALUES ('1488', '1486', '371603', '沾化区');
INSERT INTO `areacode` VALUES ('1489', '1486', '371621', '惠民县');
INSERT INTO `areacode` VALUES ('1490', '1486', '371622', '阳信县');
INSERT INTO `areacode` VALUES ('1491', '1486', '371623', '无棣县');
INSERT INTO `areacode` VALUES ('1492', '1486', '371625', '博兴县');
INSERT INTO `areacode` VALUES ('1493', '1486', '371626', '邹平县');
INSERT INTO `areacode` VALUES ('1494', '1349', '371700', '菏泽市');
INSERT INTO `areacode` VALUES ('1495', '1494', '371702', '牡丹区');
INSERT INTO `areacode` VALUES ('1496', '1494', '371703', '定陶区');
INSERT INTO `areacode` VALUES ('1497', '1494', '371721', '曹县');
INSERT INTO `areacode` VALUES ('1498', '1494', '371722', '单县');
INSERT INTO `areacode` VALUES ('1499', '1494', '371723', '成武县');
INSERT INTO `areacode` VALUES ('1500', '1494', '371724', '巨野县');
INSERT INTO `areacode` VALUES ('1501', '1494', '371725', '郓城县');
INSERT INTO `areacode` VALUES ('1502', '1494', '371726', '鄄城县');
INSERT INTO `areacode` VALUES ('1503', '1494', '371728', '东明县');
INSERT INTO `areacode` VALUES ('1504', '0', '410000', '河南省');
INSERT INTO `areacode` VALUES ('1505', '1504', '410100', '郑州市');
INSERT INTO `areacode` VALUES ('1506', '1505', '410102', '中原区');
INSERT INTO `areacode` VALUES ('1507', '1505', '410103', '二七区');
INSERT INTO `areacode` VALUES ('1508', '1505', '410104', '管城回族区');
INSERT INTO `areacode` VALUES ('1509', '1505', '410105', '金水区');
INSERT INTO `areacode` VALUES ('1510', '1505', '410106', '上街区');
INSERT INTO `areacode` VALUES ('1511', '1505', '410108', '惠济区');
INSERT INTO `areacode` VALUES ('1512', '1505', '410122', '中牟县');
INSERT INTO `areacode` VALUES ('1513', '1505', '410181', '巩义市');
INSERT INTO `areacode` VALUES ('1514', '1505', '410182', '荥阳市');
INSERT INTO `areacode` VALUES ('1515', '1505', '410183', '新密市');
INSERT INTO `areacode` VALUES ('1516', '1505', '410184', '新郑市');
INSERT INTO `areacode` VALUES ('1517', '1505', '410185', '登封市');
INSERT INTO `areacode` VALUES ('1518', '1504', '410200', '开封市');
INSERT INTO `areacode` VALUES ('1519', '1518', '410202', '龙亭区');
INSERT INTO `areacode` VALUES ('1520', '1518', '410203', '顺河回族区');
INSERT INTO `areacode` VALUES ('1521', '1518', '410204', '鼓楼区');
INSERT INTO `areacode` VALUES ('1522', '1518', '410205', '禹王台区');
INSERT INTO `areacode` VALUES ('1523', '1518', '410212', '祥符区');
INSERT INTO `areacode` VALUES ('1524', '1518', '410221', '杞县');
INSERT INTO `areacode` VALUES ('1525', '1518', '410222', '通许县');
INSERT INTO `areacode` VALUES ('1526', '1518', '410223', '尉氏县');
INSERT INTO `areacode` VALUES ('1527', '1518', '410225', '兰考县');
INSERT INTO `areacode` VALUES ('1528', '1504', '410300', '洛阳市');
INSERT INTO `areacode` VALUES ('1529', '1528', '410302', '老城区');
INSERT INTO `areacode` VALUES ('1530', '1528', '410303', '西工区');
INSERT INTO `areacode` VALUES ('1531', '1528', '410304', '瀍河回族区');
INSERT INTO `areacode` VALUES ('1532', '1528', '410305', '涧西区');
INSERT INTO `areacode` VALUES ('1533', '1528', '410306', '吉利区');
INSERT INTO `areacode` VALUES ('1534', '1528', '410311', '洛龙区');
INSERT INTO `areacode` VALUES ('1535', '1528', '410322', '孟津县');
INSERT INTO `areacode` VALUES ('1536', '1528', '410323', '新安县');
INSERT INTO `areacode` VALUES ('1537', '1528', '410324', '栾川县');
INSERT INTO `areacode` VALUES ('1538', '1528', '410325', '嵩县');
INSERT INTO `areacode` VALUES ('1539', '1528', '410326', '汝阳县');
INSERT INTO `areacode` VALUES ('1540', '1528', '410327', '宜阳县');
INSERT INTO `areacode` VALUES ('1541', '1528', '410328', '洛宁县');
INSERT INTO `areacode` VALUES ('1542', '1528', '410329', '伊川县');
INSERT INTO `areacode` VALUES ('1543', '1528', '410381', '偃师市');
INSERT INTO `areacode` VALUES ('1544', '1504', '410400', '平顶山市');
INSERT INTO `areacode` VALUES ('1545', '1544', '410402', '新华区');
INSERT INTO `areacode` VALUES ('1546', '1544', '410403', '卫东区');
INSERT INTO `areacode` VALUES ('1547', '1544', '410404', '石龙区');
INSERT INTO `areacode` VALUES ('1548', '1544', '410411', '湛河区');
INSERT INTO `areacode` VALUES ('1549', '1544', '410421', '宝丰县');
INSERT INTO `areacode` VALUES ('1550', '1544', '410422', '叶县');
INSERT INTO `areacode` VALUES ('1551', '1544', '410423', '鲁山县');
INSERT INTO `areacode` VALUES ('1552', '1544', '410425', '郏县');
INSERT INTO `areacode` VALUES ('1553', '1544', '410481', '舞钢市');
INSERT INTO `areacode` VALUES ('1554', '1544', '410482', '汝州市');
INSERT INTO `areacode` VALUES ('1555', '1504', '410500', '安阳市');
INSERT INTO `areacode` VALUES ('1556', '1555', '410502', '文峰区');
INSERT INTO `areacode` VALUES ('1557', '1555', '410503', '北关区');
INSERT INTO `areacode` VALUES ('1558', '1555', '410505', '殷都区');
INSERT INTO `areacode` VALUES ('1559', '1555', '410506', '龙安区');
INSERT INTO `areacode` VALUES ('1560', '1555', '410522', '安阳县');
INSERT INTO `areacode` VALUES ('1561', '1555', '410523', '汤阴县');
INSERT INTO `areacode` VALUES ('1562', '1555', '410526', '滑县');
INSERT INTO `areacode` VALUES ('1563', '1555', '410527', '内黄县');
INSERT INTO `areacode` VALUES ('1564', '1555', '410581', '林州市');
INSERT INTO `areacode` VALUES ('1565', '1504', '410600', '鹤壁市');
INSERT INTO `areacode` VALUES ('1566', '1565', '410602', '鹤山区');
INSERT INTO `areacode` VALUES ('1567', '1565', '410603', '山城区');
INSERT INTO `areacode` VALUES ('1568', '1565', '410611', '淇滨区');
INSERT INTO `areacode` VALUES ('1569', '1565', '410621', '浚县');
INSERT INTO `areacode` VALUES ('1570', '1565', '410622', '淇县');
INSERT INTO `areacode` VALUES ('1571', '1504', '410700', '新乡市');
INSERT INTO `areacode` VALUES ('1572', '1571', '410702', '红旗区');
INSERT INTO `areacode` VALUES ('1573', '1571', '410703', '卫滨区');
INSERT INTO `areacode` VALUES ('1574', '1571', '410704', '凤泉区');
INSERT INTO `areacode` VALUES ('1575', '1571', '410711', '牧野区');
INSERT INTO `areacode` VALUES ('1576', '1571', '410721', '新乡县');
INSERT INTO `areacode` VALUES ('1577', '1571', '410724', '获嘉县');
INSERT INTO `areacode` VALUES ('1578', '1571', '410725', '原阳县');
INSERT INTO `areacode` VALUES ('1579', '1571', '410726', '延津县');
INSERT INTO `areacode` VALUES ('1580', '1571', '410727', '封丘县');
INSERT INTO `areacode` VALUES ('1581', '1571', '410728', '长垣县');
INSERT INTO `areacode` VALUES ('1582', '1571', '410781', '卫辉市');
INSERT INTO `areacode` VALUES ('1583', '1571', '410782', '辉县市');
INSERT INTO `areacode` VALUES ('1584', '1504', '410800', '焦作市');
INSERT INTO `areacode` VALUES ('1585', '1584', '410802', '解放区');
INSERT INTO `areacode` VALUES ('1586', '1584', '410803', '中站区');
INSERT INTO `areacode` VALUES ('1587', '1584', '410804', '马村区');
INSERT INTO `areacode` VALUES ('1588', '1584', '410811', '山阳区');
INSERT INTO `areacode` VALUES ('1589', '1584', '410821', '修武县');
INSERT INTO `areacode` VALUES ('1590', '1584', '410822', '博爱县');
INSERT INTO `areacode` VALUES ('1591', '1584', '410823', '武陟县');
INSERT INTO `areacode` VALUES ('1592', '1584', '410825', '温县');
INSERT INTO `areacode` VALUES ('1593', '1584', '410882', '沁阳市');
INSERT INTO `areacode` VALUES ('1594', '1584', '410883', '孟州市');
INSERT INTO `areacode` VALUES ('1595', '1504', '410900', '濮阳市');
INSERT INTO `areacode` VALUES ('1596', '1595', '410902', '华龙区');
INSERT INTO `areacode` VALUES ('1597', '1595', '410922', '清丰县');
INSERT INTO `areacode` VALUES ('1598', '1595', '410923', '南乐县');
INSERT INTO `areacode` VALUES ('1599', '1595', '410926', '范县');
INSERT INTO `areacode` VALUES ('1600', '1595', '410927', '台前县');
INSERT INTO `areacode` VALUES ('1601', '1595', '410928', '濮阳县');
INSERT INTO `areacode` VALUES ('1602', '1504', '411000', '许昌市');
INSERT INTO `areacode` VALUES ('1603', '1602', '411002', '魏都区');
INSERT INTO `areacode` VALUES ('1604', '1602', '411003', '建安区');
INSERT INTO `areacode` VALUES ('1605', '1602', '411024', '鄢陵县');
INSERT INTO `areacode` VALUES ('1606', '1602', '411025', '襄城县');
INSERT INTO `areacode` VALUES ('1607', '1602', '411081', '禹州市');
INSERT INTO `areacode` VALUES ('1608', '1602', '411082', '长葛市');
INSERT INTO `areacode` VALUES ('1609', '1504', '411100', '漯河市');
INSERT INTO `areacode` VALUES ('1610', '1609', '411102', '源汇区');
INSERT INTO `areacode` VALUES ('1611', '1609', '411103', '郾城区');
INSERT INTO `areacode` VALUES ('1612', '1609', '411104', '召陵区');
INSERT INTO `areacode` VALUES ('1613', '1609', '411121', '舞阳县');
INSERT INTO `areacode` VALUES ('1614', '1609', '411122', '临颍县');
INSERT INTO `areacode` VALUES ('1615', '1504', '411200', '三门峡市');
INSERT INTO `areacode` VALUES ('1616', '1615', '411202', '湖滨区');
INSERT INTO `areacode` VALUES ('1617', '1615', '411203', '陕州区');
INSERT INTO `areacode` VALUES ('1618', '1615', '411221', '渑池县');
INSERT INTO `areacode` VALUES ('1619', '1615', '411224', '卢氏县');
INSERT INTO `areacode` VALUES ('1620', '1615', '411281', '义马市');
INSERT INTO `areacode` VALUES ('1621', '1615', '411282', '灵宝市');
INSERT INTO `areacode` VALUES ('1622', '1504', '411300', '南阳市');
INSERT INTO `areacode` VALUES ('1623', '1622', '411302', '宛城区');
INSERT INTO `areacode` VALUES ('1624', '1622', '411303', '卧龙区');
INSERT INTO `areacode` VALUES ('1625', '1622', '411321', '南召县');
INSERT INTO `areacode` VALUES ('1626', '1622', '411322', '方城县');
INSERT INTO `areacode` VALUES ('1627', '1622', '411323', '西峡县');
INSERT INTO `areacode` VALUES ('1628', '1622', '411324', '镇平县');
INSERT INTO `areacode` VALUES ('1629', '1622', '411325', '内乡县');
INSERT INTO `areacode` VALUES ('1630', '1622', '411326', '淅川县');
INSERT INTO `areacode` VALUES ('1631', '1622', '411327', '社旗县');
INSERT INTO `areacode` VALUES ('1632', '1622', '411328', '唐河县');
INSERT INTO `areacode` VALUES ('1633', '1622', '411329', '新野县');
INSERT INTO `areacode` VALUES ('1634', '1622', '411330', '桐柏县');
INSERT INTO `areacode` VALUES ('1635', '1622', '411381', '邓州市');
INSERT INTO `areacode` VALUES ('1636', '1504', '411400', '商丘市');
INSERT INTO `areacode` VALUES ('1637', '1636', '411402', '梁园区');
INSERT INTO `areacode` VALUES ('1638', '1636', '411403', '睢阳区');
INSERT INTO `areacode` VALUES ('1639', '1636', '411421', '民权县');
INSERT INTO `areacode` VALUES ('1640', '1636', '411422', '睢县');
INSERT INTO `areacode` VALUES ('1641', '1636', '411423', '宁陵县');
INSERT INTO `areacode` VALUES ('1642', '1636', '411424', '柘城县');
INSERT INTO `areacode` VALUES ('1643', '1636', '411425', '虞城县');
INSERT INTO `areacode` VALUES ('1644', '1636', '411426', '夏邑县');
INSERT INTO `areacode` VALUES ('1645', '1636', '411481', '永城市');
INSERT INTO `areacode` VALUES ('1646', '1504', '411500', '信阳市');
INSERT INTO `areacode` VALUES ('1647', '1646', '411502', '浉河区');
INSERT INTO `areacode` VALUES ('1648', '1646', '411503', '平桥区');
INSERT INTO `areacode` VALUES ('1649', '1646', '411521', '罗山县');
INSERT INTO `areacode` VALUES ('1650', '1646', '411522', '光山县');
INSERT INTO `areacode` VALUES ('1651', '1646', '411523', '新县');
INSERT INTO `areacode` VALUES ('1652', '1646', '411524', '商城县');
INSERT INTO `areacode` VALUES ('1653', '1646', '411525', '固始县');
INSERT INTO `areacode` VALUES ('1654', '1646', '411526', '潢川县');
INSERT INTO `areacode` VALUES ('1655', '1646', '411527', '淮滨县');
INSERT INTO `areacode` VALUES ('1656', '1646', '411528', '息县');
INSERT INTO `areacode` VALUES ('1657', '1504', '411600', '周口市');
INSERT INTO `areacode` VALUES ('1658', '1657', '411602', '川汇区');
INSERT INTO `areacode` VALUES ('1659', '1657', '411621', '扶沟县');
INSERT INTO `areacode` VALUES ('1660', '1657', '411622', '西华县');
INSERT INTO `areacode` VALUES ('1661', '1657', '411623', '商水县');
INSERT INTO `areacode` VALUES ('1662', '1657', '411624', '沈丘县');
INSERT INTO `areacode` VALUES ('1663', '1657', '411625', '郸城县');
INSERT INTO `areacode` VALUES ('1664', '1657', '411626', '淮阳县');
INSERT INTO `areacode` VALUES ('1665', '1657', '411627', '太康县');
INSERT INTO `areacode` VALUES ('1666', '1657', '411628', '鹿邑县');
INSERT INTO `areacode` VALUES ('1667', '1657', '411681', '项城市');
INSERT INTO `areacode` VALUES ('1668', '1504', '411700', '驻马店市');
INSERT INTO `areacode` VALUES ('1669', '1668', '411702', '驿城区');
INSERT INTO `areacode` VALUES ('1670', '1668', '411721', '西平县');
INSERT INTO `areacode` VALUES ('1671', '1668', '411722', '上蔡县');
INSERT INTO `areacode` VALUES ('1672', '1668', '411723', '平舆县');
INSERT INTO `areacode` VALUES ('1673', '1668', '411724', '正阳县');
INSERT INTO `areacode` VALUES ('1674', '1668', '411725', '确山县');
INSERT INTO `areacode` VALUES ('1675', '1668', '411726', '泌阳县');
INSERT INTO `areacode` VALUES ('1676', '1668', '411727', '汝南县');
INSERT INTO `areacode` VALUES ('1677', '1668', '411728', '遂平县');
INSERT INTO `areacode` VALUES ('1678', '1668', '411729', '新蔡县');
INSERT INTO `areacode` VALUES ('1679', '1504', '419001', '济源市');
INSERT INTO `areacode` VALUES ('1680', '0', '420000', '湖北省');
INSERT INTO `areacode` VALUES ('1681', '1680', '420100', '武汉市');
INSERT INTO `areacode` VALUES ('1682', '1681', '420102', '江岸区');
INSERT INTO `areacode` VALUES ('1683', '1681', '420103', '江汉区');
INSERT INTO `areacode` VALUES ('1684', '1681', '420104', '硚口区');
INSERT INTO `areacode` VALUES ('1685', '1681', '420105', '汉阳区');
INSERT INTO `areacode` VALUES ('1686', '1681', '420106', '武昌区');
INSERT INTO `areacode` VALUES ('1687', '1681', '420107', '青山区');
INSERT INTO `areacode` VALUES ('1688', '1681', '420111', '洪山区');
INSERT INTO `areacode` VALUES ('1689', '1681', '420112', '东西湖区');
INSERT INTO `areacode` VALUES ('1690', '1681', '420113', '汉南区');
INSERT INTO `areacode` VALUES ('1691', '1681', '420114', '蔡甸区');
INSERT INTO `areacode` VALUES ('1692', '1681', '420115', '江夏区');
INSERT INTO `areacode` VALUES ('1693', '1681', '420116', '黄陂区');
INSERT INTO `areacode` VALUES ('1694', '1681', '420117', '新洲区');
INSERT INTO `areacode` VALUES ('1695', '1680', '420200', '黄石市');
INSERT INTO `areacode` VALUES ('1696', '1695', '420202', '黄石港区');
INSERT INTO `areacode` VALUES ('1697', '1695', '420203', '西塞山区');
INSERT INTO `areacode` VALUES ('1698', '1695', '420204', '下陆区');
INSERT INTO `areacode` VALUES ('1699', '1695', '420205', '铁山区');
INSERT INTO `areacode` VALUES ('1700', '1695', '420222', '阳新县');
INSERT INTO `areacode` VALUES ('1701', '1695', '420281', '大冶市');
INSERT INTO `areacode` VALUES ('1702', '1680', '420300', '十堰市');
INSERT INTO `areacode` VALUES ('1703', '1702', '420302', '茅箭区');
INSERT INTO `areacode` VALUES ('1704', '1702', '420303', '张湾区');
INSERT INTO `areacode` VALUES ('1705', '1702', '420304', '郧阳区');
INSERT INTO `areacode` VALUES ('1706', '1702', '420322', '郧西县');
INSERT INTO `areacode` VALUES ('1707', '1702', '420323', '竹山县');
INSERT INTO `areacode` VALUES ('1708', '1702', '420324', '竹溪县');
INSERT INTO `areacode` VALUES ('1709', '1702', '420325', '房县');
INSERT INTO `areacode` VALUES ('1710', '1702', '420381', '丹江口市');
INSERT INTO `areacode` VALUES ('1711', '1680', '420500', '宜昌市');
INSERT INTO `areacode` VALUES ('1712', '1711', '420502', '西陵区');
INSERT INTO `areacode` VALUES ('1713', '1711', '420503', '伍家岗区');
INSERT INTO `areacode` VALUES ('1714', '1711', '420504', '点军区');
INSERT INTO `areacode` VALUES ('1715', '1711', '420505', '猇亭区');
INSERT INTO `areacode` VALUES ('1716', '1711', '420506', '夷陵区');
INSERT INTO `areacode` VALUES ('1717', '1711', '420525', '远安县');
INSERT INTO `areacode` VALUES ('1718', '1711', '420526', '兴山县');
INSERT INTO `areacode` VALUES ('1719', '1711', '420527', '秭归县');
INSERT INTO `areacode` VALUES ('1720', '1711', '420528', '长阳土家族自治县');
INSERT INTO `areacode` VALUES ('1721', '1711', '420529', '五峰土家族自治县');
INSERT INTO `areacode` VALUES ('1722', '1711', '420581', '宜都市');
INSERT INTO `areacode` VALUES ('1723', '1711', '420582', '当阳市');
INSERT INTO `areacode` VALUES ('1724', '1711', '420583', '枝江市');
INSERT INTO `areacode` VALUES ('1725', '1680', '420600', '襄阳市');
INSERT INTO `areacode` VALUES ('1726', '1725', '420602', '襄城区');
INSERT INTO `areacode` VALUES ('1727', '1725', '420606', '樊城区');
INSERT INTO `areacode` VALUES ('1728', '1725', '420607', '襄州区');
INSERT INTO `areacode` VALUES ('1729', '1725', '420624', '南漳县');
INSERT INTO `areacode` VALUES ('1730', '1725', '420625', '谷城县');
INSERT INTO `areacode` VALUES ('1731', '1725', '420626', '保康县');
INSERT INTO `areacode` VALUES ('1732', '1725', '420682', '老河口市');
INSERT INTO `areacode` VALUES ('1733', '1725', '420683', '枣阳市');
INSERT INTO `areacode` VALUES ('1734', '1725', '420684', '宜城市');
INSERT INTO `areacode` VALUES ('1735', '1680', '420700', '鄂州市');
INSERT INTO `areacode` VALUES ('1736', '1735', '420702', '梁子湖区');
INSERT INTO `areacode` VALUES ('1737', '1735', '420703', '华容区');
INSERT INTO `areacode` VALUES ('1738', '1735', '420704', '鄂城区');
INSERT INTO `areacode` VALUES ('1739', '1680', '420800', '荆门市');
INSERT INTO `areacode` VALUES ('1740', '1739', '420802', '东宝区');
INSERT INTO `areacode` VALUES ('1741', '1739', '420804', '掇刀区');
INSERT INTO `areacode` VALUES ('1742', '1739', '420821', '京山县');
INSERT INTO `areacode` VALUES ('1743', '1739', '420822', '沙洋县');
INSERT INTO `areacode` VALUES ('1744', '1739', '420881', '钟祥市');
INSERT INTO `areacode` VALUES ('1745', '1680', '420900', '孝感市');
INSERT INTO `areacode` VALUES ('1746', '1745', '420902', '孝南区');
INSERT INTO `areacode` VALUES ('1747', '1745', '420921', '孝昌县');
INSERT INTO `areacode` VALUES ('1748', '1745', '420922', '大悟县');
INSERT INTO `areacode` VALUES ('1749', '1745', '420923', '云梦县');
INSERT INTO `areacode` VALUES ('1750', '1745', '420981', '应城市');
INSERT INTO `areacode` VALUES ('1751', '1745', '420982', '安陆市');
INSERT INTO `areacode` VALUES ('1752', '1745', '420984', '汉川市');
INSERT INTO `areacode` VALUES ('1753', '1680', '421000', '荆州市');
INSERT INTO `areacode` VALUES ('1754', '1680', '421002', '沙市区');
INSERT INTO `areacode` VALUES ('1755', '1754', '421003', '荆州区');
INSERT INTO `areacode` VALUES ('1756', '1754', '421022', '公安县');
INSERT INTO `areacode` VALUES ('1757', '1754', '421023', '监利县');
INSERT INTO `areacode` VALUES ('1758', '1754', '421024', '江陵县');
INSERT INTO `areacode` VALUES ('1759', '1754', '421081', '石首市');
INSERT INTO `areacode` VALUES ('1760', '1754', '421083', '洪湖市');
INSERT INTO `areacode` VALUES ('1761', '1754', '421087', '松滋市');
INSERT INTO `areacode` VALUES ('1762', '1680', '421100', '黄冈市');
INSERT INTO `areacode` VALUES ('1763', '1762', '421102', '黄州区');
INSERT INTO `areacode` VALUES ('1764', '1762', '421121', '团风县');
INSERT INTO `areacode` VALUES ('1765', '1762', '421122', '红安县');
INSERT INTO `areacode` VALUES ('1766', '1762', '421123', '罗田县');
INSERT INTO `areacode` VALUES ('1767', '1762', '421124', '英山县');
INSERT INTO `areacode` VALUES ('1768', '1762', '421125', '浠水县');
INSERT INTO `areacode` VALUES ('1769', '1762', '421126', '蕲春县');
INSERT INTO `areacode` VALUES ('1770', '1762', '421127', '黄梅县');
INSERT INTO `areacode` VALUES ('1771', '1762', '421181', '麻城市');
INSERT INTO `areacode` VALUES ('1772', '1762', '421182', '武穴市');
INSERT INTO `areacode` VALUES ('1773', '1680', '421200', '咸宁市');
INSERT INTO `areacode` VALUES ('1774', '1773', '421202', '咸安区');
INSERT INTO `areacode` VALUES ('1775', '1773', '421221', '嘉鱼县');
INSERT INTO `areacode` VALUES ('1776', '1773', '421222', '通城县');
INSERT INTO `areacode` VALUES ('1777', '1773', '421223', '崇阳县');
INSERT INTO `areacode` VALUES ('1778', '1773', '421224', '通山县');
INSERT INTO `areacode` VALUES ('1779', '1773', '421281', '赤壁市');
INSERT INTO `areacode` VALUES ('1780', '1680', '421300', '随州市');
INSERT INTO `areacode` VALUES ('1781', '1780', '421303', '曾都区');
INSERT INTO `areacode` VALUES ('1782', '1780', '421321', '随县');
INSERT INTO `areacode` VALUES ('1783', '1780', '421381', '广水市');
INSERT INTO `areacode` VALUES ('1784', '1780', '422800', '恩施土家族苗族自治州');
INSERT INTO `areacode` VALUES ('1785', '1780', '422801', '恩施市');
INSERT INTO `areacode` VALUES ('1786', '1780', '422802', '利川市');
INSERT INTO `areacode` VALUES ('1787', '1780', '422822', '建始县');
INSERT INTO `areacode` VALUES ('1788', '1780', '422823', '巴东县');
INSERT INTO `areacode` VALUES ('1789', '1780', '422825', '宣恩县');
INSERT INTO `areacode` VALUES ('1790', '1780', '422826', '咸丰县');
INSERT INTO `areacode` VALUES ('1791', '1780', '422827', '来凤县');
INSERT INTO `areacode` VALUES ('1792', '1780', '422828', '鹤峰县');
INSERT INTO `areacode` VALUES ('1793', '1680', '429004', '仙桃市');
INSERT INTO `areacode` VALUES ('1794', '1680', '429005', '潜江市');
INSERT INTO `areacode` VALUES ('1795', '1680', '429006', '天门市');
INSERT INTO `areacode` VALUES ('1796', '1795', '429021', '神农架林区');
INSERT INTO `areacode` VALUES ('1797', '0', '430000', '湖南省');
INSERT INTO `areacode` VALUES ('1798', '1797', '430100', '长沙市');
INSERT INTO `areacode` VALUES ('1799', '1798', '430102', '芙蓉区');
INSERT INTO `areacode` VALUES ('1800', '1798', '430103', '天心区');
INSERT INTO `areacode` VALUES ('1801', '1798', '430104', '岳麓区');
INSERT INTO `areacode` VALUES ('1802', '1798', '430105', '开福区');
INSERT INTO `areacode` VALUES ('1803', '1798', '430111', '雨花区');
INSERT INTO `areacode` VALUES ('1804', '1798', '430112', '望城区');
INSERT INTO `areacode` VALUES ('1805', '1798', '430121', '长沙县');
INSERT INTO `areacode` VALUES ('1806', '1798', '430181', '浏阳市');
INSERT INTO `areacode` VALUES ('1807', '1798', '430182', '宁乡市');
INSERT INTO `areacode` VALUES ('1808', '1797', '430200', '株洲市');
INSERT INTO `areacode` VALUES ('1809', '1808', '430202', '荷塘区');
INSERT INTO `areacode` VALUES ('1810', '1808', '430203', '芦淞区');
INSERT INTO `areacode` VALUES ('1811', '1808', '430204', '石峰区');
INSERT INTO `areacode` VALUES ('1812', '1808', '430211', '天元区');
INSERT INTO `areacode` VALUES ('1813', '1808', '430221', '株洲县');
INSERT INTO `areacode` VALUES ('1814', '1808', '430223', '攸县');
INSERT INTO `areacode` VALUES ('1815', '1808', '430224', '茶陵县');
INSERT INTO `areacode` VALUES ('1816', '1808', '430225', '炎陵县');
INSERT INTO `areacode` VALUES ('1817', '1808', '430281', '醴陵市');
INSERT INTO `areacode` VALUES ('1818', '1797', '430300', '湘潭市');
INSERT INTO `areacode` VALUES ('1819', '1818', '430302', '雨湖区');
INSERT INTO `areacode` VALUES ('1820', '1818', '430304', '岳塘区');
INSERT INTO `areacode` VALUES ('1821', '1818', '430321', '湘潭县');
INSERT INTO `areacode` VALUES ('1822', '1818', '430381', '湘乡市');
INSERT INTO `areacode` VALUES ('1823', '1818', '430382', '韶山市');
INSERT INTO `areacode` VALUES ('1824', '1797', '430400', '衡阳市');
INSERT INTO `areacode` VALUES ('1825', '1824', '430405', '珠晖区');
INSERT INTO `areacode` VALUES ('1826', '1824', '430406', '雁峰区');
INSERT INTO `areacode` VALUES ('1827', '1824', '430407', '石鼓区');
INSERT INTO `areacode` VALUES ('1828', '1824', '430408', '蒸湘区');
INSERT INTO `areacode` VALUES ('1829', '1824', '430412', '南岳区');
INSERT INTO `areacode` VALUES ('1830', '1824', '430421', '衡阳县');
INSERT INTO `areacode` VALUES ('1831', '1824', '430422', '衡南县');
INSERT INTO `areacode` VALUES ('1832', '1824', '430423', '衡山县');
INSERT INTO `areacode` VALUES ('1833', '1824', '430424', '衡东县');
INSERT INTO `areacode` VALUES ('1834', '1824', '430426', '祁东县');
INSERT INTO `areacode` VALUES ('1835', '1824', '430481', '耒阳市');
INSERT INTO `areacode` VALUES ('1836', '1824', '430482', '常宁市');
INSERT INTO `areacode` VALUES ('1837', '1797', '430500', '邵阳市');
INSERT INTO `areacode` VALUES ('1838', '1837', '430502', '双清区');
INSERT INTO `areacode` VALUES ('1839', '1837', '430503', '大祥区');
INSERT INTO `areacode` VALUES ('1840', '1837', '430511', '北塔区');
INSERT INTO `areacode` VALUES ('1841', '1837', '430521', '邵东县');
INSERT INTO `areacode` VALUES ('1842', '1837', '430522', '新邵县');
INSERT INTO `areacode` VALUES ('1843', '1837', '430523', '邵阳县');
INSERT INTO `areacode` VALUES ('1844', '1837', '430524', '隆回县');
INSERT INTO `areacode` VALUES ('1845', '1837', '430525', '洞口县');
INSERT INTO `areacode` VALUES ('1846', '1837', '430527', '绥宁县');
INSERT INTO `areacode` VALUES ('1847', '1837', '430528', '新宁县');
INSERT INTO `areacode` VALUES ('1848', '1837', '430529', '城步苗族自治县');
INSERT INTO `areacode` VALUES ('1849', '1837', '430581', '武冈市');
INSERT INTO `areacode` VALUES ('1850', '1797', '430600', '岳阳市');
INSERT INTO `areacode` VALUES ('1851', '1850', '430602', '岳阳楼区');
INSERT INTO `areacode` VALUES ('1852', '1850', '430603', '云溪区');
INSERT INTO `areacode` VALUES ('1853', '1850', '430611', '君山区');
INSERT INTO `areacode` VALUES ('1854', '1850', '430621', '岳阳县');
INSERT INTO `areacode` VALUES ('1855', '1850', '430623', '华容县');
INSERT INTO `areacode` VALUES ('1856', '1850', '430624', '湘阴县');
INSERT INTO `areacode` VALUES ('1857', '1850', '430626', '平江县');
INSERT INTO `areacode` VALUES ('1858', '1850', '430681', '汨罗市');
INSERT INTO `areacode` VALUES ('1859', '1850', '430682', '临湘市');
INSERT INTO `areacode` VALUES ('1860', '1797', '430700', '常德市');
INSERT INTO `areacode` VALUES ('1861', '1860', '430702', '武陵区');
INSERT INTO `areacode` VALUES ('1862', '1860', '430703', '鼎城区');
INSERT INTO `areacode` VALUES ('1863', '1860', '430721', '安乡县');
INSERT INTO `areacode` VALUES ('1864', '1860', '430722', '汉寿县');
INSERT INTO `areacode` VALUES ('1865', '1860', '430723', '澧县');
INSERT INTO `areacode` VALUES ('1866', '1860', '430724', '临澧县');
INSERT INTO `areacode` VALUES ('1867', '1860', '430725', '桃源县');
INSERT INTO `areacode` VALUES ('1868', '1860', '430726', '石门县');
INSERT INTO `areacode` VALUES ('1869', '1860', '430781', '津市市');
INSERT INTO `areacode` VALUES ('1870', '1797', '430800', '张家界市');
INSERT INTO `areacode` VALUES ('1871', '1870', '430802', '永定区');
INSERT INTO `areacode` VALUES ('1872', '1870', '430811', '武陵源区');
INSERT INTO `areacode` VALUES ('1873', '1870', '430821', '慈利县');
INSERT INTO `areacode` VALUES ('1874', '1870', '430822', '桑植县');
INSERT INTO `areacode` VALUES ('1875', '1797', '430900', '益阳市');
INSERT INTO `areacode` VALUES ('1876', '1875', '430902', '资阳区');
INSERT INTO `areacode` VALUES ('1877', '1875', '430903', '赫山区');
INSERT INTO `areacode` VALUES ('1878', '1875', '430921', '南县');
INSERT INTO `areacode` VALUES ('1879', '1875', '430922', '桃江县');
INSERT INTO `areacode` VALUES ('1880', '1875', '430923', '安化县');
INSERT INTO `areacode` VALUES ('1881', '1875', '430981', '沅江市');
INSERT INTO `areacode` VALUES ('1882', '1797', '431000', '郴州市');
INSERT INTO `areacode` VALUES ('1883', '1882', '431002', '北湖区');
INSERT INTO `areacode` VALUES ('1884', '1882', '431003', '苏仙区');
INSERT INTO `areacode` VALUES ('1885', '1882', '431021', '桂阳县');
INSERT INTO `areacode` VALUES ('1886', '1882', '431022', '宜章县');
INSERT INTO `areacode` VALUES ('1887', '1882', '431023', '永兴县');
INSERT INTO `areacode` VALUES ('1888', '1882', '431024', '嘉禾县');
INSERT INTO `areacode` VALUES ('1889', '1882', '431025', '临武县');
INSERT INTO `areacode` VALUES ('1890', '1882', '431026', '汝城县');
INSERT INTO `areacode` VALUES ('1891', '1882', '431027', '桂东县');
INSERT INTO `areacode` VALUES ('1892', '1882', '431028', '安仁县');
INSERT INTO `areacode` VALUES ('1893', '1882', '431081', '资兴市');
INSERT INTO `areacode` VALUES ('1894', '1797', '431100', '永州市');
INSERT INTO `areacode` VALUES ('1895', '1894', '431102', '零陵区');
INSERT INTO `areacode` VALUES ('1896', '1894', '431103', '冷水滩区');
INSERT INTO `areacode` VALUES ('1897', '1894', '431121', '祁阳县');
INSERT INTO `areacode` VALUES ('1898', '1894', '431122', '东安县');
INSERT INTO `areacode` VALUES ('1899', '1894', '431123', '双牌县');
INSERT INTO `areacode` VALUES ('1900', '1894', '431124', '道县');
INSERT INTO `areacode` VALUES ('1901', '1894', '431125', '江永县');
INSERT INTO `areacode` VALUES ('1902', '1894', '431126', '宁远县');
INSERT INTO `areacode` VALUES ('1903', '1894', '431127', '蓝山县');
INSERT INTO `areacode` VALUES ('1904', '1894', '431128', '新田县');
INSERT INTO `areacode` VALUES ('1905', '1894', '431129', '江华瑶族自治县');
INSERT INTO `areacode` VALUES ('1906', '1797', '431200', '怀化市');
INSERT INTO `areacode` VALUES ('1907', '1906', '431202', '鹤城区');
INSERT INTO `areacode` VALUES ('1908', '1906', '431221', '中方县');
INSERT INTO `areacode` VALUES ('1909', '1906', '431222', '沅陵县');
INSERT INTO `areacode` VALUES ('1910', '1906', '431223', '辰溪县');
INSERT INTO `areacode` VALUES ('1911', '1906', '431224', '溆浦县');
INSERT INTO `areacode` VALUES ('1912', '1906', '431225', '会同县');
INSERT INTO `areacode` VALUES ('1913', '1906', '431226', '麻阳苗族自治县');
INSERT INTO `areacode` VALUES ('1914', '1906', '431227', '新晃侗族自治县');
INSERT INTO `areacode` VALUES ('1915', '1906', '431228', '芷江侗族自治县');
INSERT INTO `areacode` VALUES ('1916', '1906', '431229', '靖州苗族侗族自治县');
INSERT INTO `areacode` VALUES ('1917', '1906', '431230', '通道侗族自治县');
INSERT INTO `areacode` VALUES ('1918', '1906', '431281', '洪江市');
INSERT INTO `areacode` VALUES ('1919', '1797', '431300', '娄底市');
INSERT INTO `areacode` VALUES ('1920', '1919', '431302', '娄星区');
INSERT INTO `areacode` VALUES ('1921', '1919', '431321', '双峰县');
INSERT INTO `areacode` VALUES ('1922', '1919', '431322', '新化县');
INSERT INTO `areacode` VALUES ('1923', '1919', '431381', '冷水江市');
INSERT INTO `areacode` VALUES ('1924', '1919', '431382', '涟源市');
INSERT INTO `areacode` VALUES ('1925', '1919', '433100', '湘西土家族苗族自治州');
INSERT INTO `areacode` VALUES ('1926', '1919', '433101', '吉首市');
INSERT INTO `areacode` VALUES ('1927', '1919', '433122', '泸溪县');
INSERT INTO `areacode` VALUES ('1928', '1919', '433123', '凤凰县');
INSERT INTO `areacode` VALUES ('1929', '1919', '433124', '花垣县');
INSERT INTO `areacode` VALUES ('1930', '1919', '433125', '保靖县');
INSERT INTO `areacode` VALUES ('1931', '1919', '433126', '古丈县');
INSERT INTO `areacode` VALUES ('1932', '1919', '433127', '永顺县');
INSERT INTO `areacode` VALUES ('1933', '1919', '433130', '龙山县');
INSERT INTO `areacode` VALUES ('1934', '0', '440000', '广东省');
INSERT INTO `areacode` VALUES ('1935', '1934', '440100', '广州市');
INSERT INTO `areacode` VALUES ('1936', '1935', '440103', '荔湾区');
INSERT INTO `areacode` VALUES ('1937', '1935', '440104', '越秀区');
INSERT INTO `areacode` VALUES ('1938', '1935', '440105', '海珠区');
INSERT INTO `areacode` VALUES ('1939', '1935', '440106', '天河区');
INSERT INTO `areacode` VALUES ('1940', '1935', '440111', '白云区');
INSERT INTO `areacode` VALUES ('1941', '1935', '440112', '黄埔区');
INSERT INTO `areacode` VALUES ('1942', '1935', '440113', '番禺区');
INSERT INTO `areacode` VALUES ('1943', '1935', '440114', '花都区');
INSERT INTO `areacode` VALUES ('1944', '1935', '440115', '南沙区');
INSERT INTO `areacode` VALUES ('1945', '1935', '440117', '从化区');
INSERT INTO `areacode` VALUES ('1946', '1935', '440118', '增城区');
INSERT INTO `areacode` VALUES ('1947', '1934', '440200', '韶关市');
INSERT INTO `areacode` VALUES ('1948', '1947', '440203', '武江区');
INSERT INTO `areacode` VALUES ('1949', '1947', '440204', '浈江区');
INSERT INTO `areacode` VALUES ('1950', '1947', '440205', '曲江区');
INSERT INTO `areacode` VALUES ('1951', '1947', '440222', '始兴县');
INSERT INTO `areacode` VALUES ('1952', '1947', '440224', '仁化县');
INSERT INTO `areacode` VALUES ('1953', '1947', '440229', '翁源县');
INSERT INTO `areacode` VALUES ('1954', '1947', '440232', '乳源瑶族自治县');
INSERT INTO `areacode` VALUES ('1955', '1947', '440233', '新丰县');
INSERT INTO `areacode` VALUES ('1956', '1947', '440281', '乐昌市');
INSERT INTO `areacode` VALUES ('1957', '1947', '440282', '南雄市');
INSERT INTO `areacode` VALUES ('1958', '1934', '440300', '深圳市');
INSERT INTO `areacode` VALUES ('1959', '1958', '440303', '罗湖区');
INSERT INTO `areacode` VALUES ('1960', '1958', '440304', '福田区');
INSERT INTO `areacode` VALUES ('1961', '1958', '440305', '南山区');
INSERT INTO `areacode` VALUES ('1962', '1958', '440306', '宝安区');
INSERT INTO `areacode` VALUES ('1963', '1958', '440307', '龙岗区');
INSERT INTO `areacode` VALUES ('1964', '1958', '440308', '盐田区');
INSERT INTO `areacode` VALUES ('1965', '1958', '440309', '龙华区');
INSERT INTO `areacode` VALUES ('1966', '1958', '440310', '坪山区');
INSERT INTO `areacode` VALUES ('1967', '1934', '440400', '珠海市');
INSERT INTO `areacode` VALUES ('1968', '1967', '440402', '香洲区');
INSERT INTO `areacode` VALUES ('1969', '1967', '440403', '斗门区');
INSERT INTO `areacode` VALUES ('1970', '1967', '440404', '金湾区');
INSERT INTO `areacode` VALUES ('1971', '1934', '440500', '汕头市');
INSERT INTO `areacode` VALUES ('1972', '1971', '440507', '龙湖区');
INSERT INTO `areacode` VALUES ('1973', '1971', '440511', '金平区');
INSERT INTO `areacode` VALUES ('1974', '1971', '440512', '濠江区');
INSERT INTO `areacode` VALUES ('1975', '1971', '440513', '潮阳区');
INSERT INTO `areacode` VALUES ('1976', '1971', '440514', '潮南区');
INSERT INTO `areacode` VALUES ('1977', '1971', '440515', '澄海区');
INSERT INTO `areacode` VALUES ('1978', '1971', '440523', '南澳县');
INSERT INTO `areacode` VALUES ('1979', '1934', '440600', '佛山市');
INSERT INTO `areacode` VALUES ('1980', '1979', '440604', '禅城区');
INSERT INTO `areacode` VALUES ('1981', '1979', '440605', '南海区');
INSERT INTO `areacode` VALUES ('1982', '1979', '440606', '顺德区');
INSERT INTO `areacode` VALUES ('1983', '1979', '440607', '三水区');
INSERT INTO `areacode` VALUES ('1984', '1979', '440608', '高明区');
INSERT INTO `areacode` VALUES ('1985', '1934', '440700', '江门市');
INSERT INTO `areacode` VALUES ('1986', '1985', '440703', '蓬江区');
INSERT INTO `areacode` VALUES ('1987', '1985', '440704', '江海区');
INSERT INTO `areacode` VALUES ('1988', '1985', '440705', '新会区');
INSERT INTO `areacode` VALUES ('1989', '1985', '440781', '台山市');
INSERT INTO `areacode` VALUES ('1990', '1985', '440783', '开平市');
INSERT INTO `areacode` VALUES ('1991', '1985', '440784', '鹤山市');
INSERT INTO `areacode` VALUES ('1992', '1985', '440785', '恩平市');
INSERT INTO `areacode` VALUES ('1993', '1934', '440800', '湛江市');
INSERT INTO `areacode` VALUES ('1994', '1993', '440802', '赤坎区');
INSERT INTO `areacode` VALUES ('1995', '1993', '440803', '霞山区');
INSERT INTO `areacode` VALUES ('1996', '1993', '440804', '坡头区');
INSERT INTO `areacode` VALUES ('1997', '1993', '440811', '麻章区');
INSERT INTO `areacode` VALUES ('1998', '1993', '440823', '遂溪县');
INSERT INTO `areacode` VALUES ('1999', '1993', '440825', '徐闻县');
INSERT INTO `areacode` VALUES ('2000', '1993', '440881', '廉江市');
INSERT INTO `areacode` VALUES ('2001', '1993', '440882', '雷州市');
INSERT INTO `areacode` VALUES ('2002', '1993', '440883', '吴川市');
INSERT INTO `areacode` VALUES ('2003', '1934', '440900', '茂名市');
INSERT INTO `areacode` VALUES ('2004', '2003', '440902', '茂南区');
INSERT INTO `areacode` VALUES ('2005', '2003', '440904', '电白区');
INSERT INTO `areacode` VALUES ('2006', '2003', '440981', '高州市');
INSERT INTO `areacode` VALUES ('2007', '2003', '440982', '化州市');
INSERT INTO `areacode` VALUES ('2008', '2003', '440983', '信宜市');
INSERT INTO `areacode` VALUES ('2009', '1934', '441200', '肇庆市');
INSERT INTO `areacode` VALUES ('2010', '2009', '441202', '端州区');
INSERT INTO `areacode` VALUES ('2011', '2009', '441203', '鼎湖区');
INSERT INTO `areacode` VALUES ('2012', '2009', '441204', '高要区');
INSERT INTO `areacode` VALUES ('2013', '2009', '441223', '广宁县');
INSERT INTO `areacode` VALUES ('2014', '2009', '441224', '怀集县');
INSERT INTO `areacode` VALUES ('2015', '2009', '441225', '封开县');
INSERT INTO `areacode` VALUES ('2016', '2009', '441226', '德庆县');
INSERT INTO `areacode` VALUES ('2017', '2009', '441284', '四会市');
INSERT INTO `areacode` VALUES ('2018', '1934', '441300', '惠州市');
INSERT INTO `areacode` VALUES ('2019', '2018', '441302', '惠城区');
INSERT INTO `areacode` VALUES ('2020', '2018', '441303', '惠阳区');
INSERT INTO `areacode` VALUES ('2021', '2018', '441322', '博罗县');
INSERT INTO `areacode` VALUES ('2022', '2018', '441323', '惠东县');
INSERT INTO `areacode` VALUES ('2023', '2018', '441324', '龙门县');
INSERT INTO `areacode` VALUES ('2024', '1934', '441400', '梅州市');
INSERT INTO `areacode` VALUES ('2025', '2024', '441402', '梅江区');
INSERT INTO `areacode` VALUES ('2026', '2024', '441403', '梅县区');
INSERT INTO `areacode` VALUES ('2027', '2024', '441422', '大埔县');
INSERT INTO `areacode` VALUES ('2028', '2024', '441423', '丰顺县');
INSERT INTO `areacode` VALUES ('2029', '2024', '441424', '五华县');
INSERT INTO `areacode` VALUES ('2030', '2024', '441426', '平远县');
INSERT INTO `areacode` VALUES ('2031', '2024', '441427', '蕉岭县');
INSERT INTO `areacode` VALUES ('2032', '2024', '441481', '兴宁市');
INSERT INTO `areacode` VALUES ('2033', '1934', '441500', '汕尾市');
INSERT INTO `areacode` VALUES ('2034', '2033', '441502', '城区');
INSERT INTO `areacode` VALUES ('2035', '2033', '441521', '海丰县');
INSERT INTO `areacode` VALUES ('2036', '2033', '441523', '陆河县');
INSERT INTO `areacode` VALUES ('2037', '2033', '441581', '陆丰市');
INSERT INTO `areacode` VALUES ('2038', '1934', '441600', '河源市');
INSERT INTO `areacode` VALUES ('2039', '2038', '441602', '源城区');
INSERT INTO `areacode` VALUES ('2040', '2038', '441621', '紫金县');
INSERT INTO `areacode` VALUES ('2041', '2038', '441622', '龙川县');
INSERT INTO `areacode` VALUES ('2042', '2038', '441623', '连平县');
INSERT INTO `areacode` VALUES ('2043', '2038', '441624', '和平县');
INSERT INTO `areacode` VALUES ('2044', '2038', '441625', '东源县');
INSERT INTO `areacode` VALUES ('2045', '1934', '441700', '阳江市');
INSERT INTO `areacode` VALUES ('2046', '2045', '441702', '江城区');
INSERT INTO `areacode` VALUES ('2047', '2045', '441704', '阳东区');
INSERT INTO `areacode` VALUES ('2048', '2045', '441721', '阳西县');
INSERT INTO `areacode` VALUES ('2049', '2045', '441781', '阳春市');
INSERT INTO `areacode` VALUES ('2050', '1934', '441800', '清远市');
INSERT INTO `areacode` VALUES ('2051', '2050', '441802', '清城区');
INSERT INTO `areacode` VALUES ('2052', '2050', '441803', '清新区');
INSERT INTO `areacode` VALUES ('2053', '2050', '441821', '佛冈县');
INSERT INTO `areacode` VALUES ('2054', '2050', '441823', '阳山县');
INSERT INTO `areacode` VALUES ('2055', '2050', '441825', '连山壮族瑶族自治县');
INSERT INTO `areacode` VALUES ('2056', '2050', '441826', '连南瑶族自治县');
INSERT INTO `areacode` VALUES ('2057', '2050', '441881', '英德市');
INSERT INTO `areacode` VALUES ('2058', '2050', '441882', '连州市');
INSERT INTO `areacode` VALUES ('2059', '1934', '441900', '东莞市');
INSERT INTO `areacode` VALUES ('2060', '1934', '442000', '中山市');
INSERT INTO `areacode` VALUES ('2061', '1934', '445100', '潮州市');
INSERT INTO `areacode` VALUES ('2062', '2061', '445102', '湘桥区');
INSERT INTO `areacode` VALUES ('2063', '2061', '445103', '潮安区');
INSERT INTO `areacode` VALUES ('2064', '2061', '445122', '饶平县');
INSERT INTO `areacode` VALUES ('2065', '1934', '445200', '揭阳市');
INSERT INTO `areacode` VALUES ('2066', '2065', '445202', '榕城区');
INSERT INTO `areacode` VALUES ('2067', '2065', '445203', '揭东区');
INSERT INTO `areacode` VALUES ('2068', '2065', '445222', '揭西县');
INSERT INTO `areacode` VALUES ('2069', '2065', '445224', '惠来县');
INSERT INTO `areacode` VALUES ('2070', '2065', '445281', '普宁市');
INSERT INTO `areacode` VALUES ('2071', '1934', '445300', '云浮市');
INSERT INTO `areacode` VALUES ('2072', '2071', '445302', '云城区');
INSERT INTO `areacode` VALUES ('2073', '2071', '445303', '云安区');
INSERT INTO `areacode` VALUES ('2074', '2071', '445321', '新兴县');
INSERT INTO `areacode` VALUES ('2075', '2071', '445322', '郁南县');
INSERT INTO `areacode` VALUES ('2076', '2071', '445381', '罗定市');
INSERT INTO `areacode` VALUES ('2077', '0', '450000', '广西壮族自治区');
INSERT INTO `areacode` VALUES ('2078', '2077', '450100', '南宁市');
INSERT INTO `areacode` VALUES ('2079', '2078', '450102', '兴宁区');
INSERT INTO `areacode` VALUES ('2080', '2078', '450103', '青秀区');
INSERT INTO `areacode` VALUES ('2081', '2078', '450105', '江南区');
INSERT INTO `areacode` VALUES ('2082', '2078', '450107', '西乡塘区');
INSERT INTO `areacode` VALUES ('2083', '2078', '450108', '良庆区');
INSERT INTO `areacode` VALUES ('2084', '2078', '450109', '邕宁区');
INSERT INTO `areacode` VALUES ('2085', '2078', '450110', '武鸣区');
INSERT INTO `areacode` VALUES ('2086', '2078', '450123', '隆安县');
INSERT INTO `areacode` VALUES ('2087', '2078', '450124', '马山县');
INSERT INTO `areacode` VALUES ('2088', '2078', '450125', '上林县');
INSERT INTO `areacode` VALUES ('2089', '2078', '450126', '宾阳县');
INSERT INTO `areacode` VALUES ('2090', '2078', '450127', '横县');
INSERT INTO `areacode` VALUES ('2091', '2077', '450200', '柳州市');
INSERT INTO `areacode` VALUES ('2092', '2091', '450202', '城中区');
INSERT INTO `areacode` VALUES ('2093', '2091', '450203', '鱼峰区');
INSERT INTO `areacode` VALUES ('2094', '2091', '450204', '柳南区');
INSERT INTO `areacode` VALUES ('2095', '2091', '450205', '柳北区');
INSERT INTO `areacode` VALUES ('2096', '2091', '450206', '柳江区');
INSERT INTO `areacode` VALUES ('2097', '2091', '450222', '柳城县');
INSERT INTO `areacode` VALUES ('2098', '2091', '450223', '鹿寨县');
INSERT INTO `areacode` VALUES ('2099', '2091', '450224', '融安县');
INSERT INTO `areacode` VALUES ('2100', '2091', '450225', '融水苗族自治县');
INSERT INTO `areacode` VALUES ('2101', '2091', '450226', '三江侗族自治县');
INSERT INTO `areacode` VALUES ('2102', '2077', '450300', '桂林市');
INSERT INTO `areacode` VALUES ('2103', '2102', '450302', '秀峰区');
INSERT INTO `areacode` VALUES ('2104', '2102', '450303', '叠彩区');
INSERT INTO `areacode` VALUES ('2105', '2102', '450304', '象山区');
INSERT INTO `areacode` VALUES ('2106', '2102', '450305', '七星区');
INSERT INTO `areacode` VALUES ('2107', '2102', '450311', '雁山区');
INSERT INTO `areacode` VALUES ('2108', '2102', '450312', '临桂区');
INSERT INTO `areacode` VALUES ('2109', '2102', '450321', '阳朔县');
INSERT INTO `areacode` VALUES ('2110', '2102', '450323', '灵川县');
INSERT INTO `areacode` VALUES ('2111', '2102', '450324', '全州县');
INSERT INTO `areacode` VALUES ('2112', '2102', '450325', '兴安县');
INSERT INTO `areacode` VALUES ('2113', '2102', '450326', '永福县');
INSERT INTO `areacode` VALUES ('2114', '2102', '450327', '灌阳县');
INSERT INTO `areacode` VALUES ('2115', '2102', '450328', '龙胜各族自治县');
INSERT INTO `areacode` VALUES ('2116', '2102', '450329', '资源县');
INSERT INTO `areacode` VALUES ('2117', '2102', '450330', '平乐县');
INSERT INTO `areacode` VALUES ('2118', '2102', '450331', '荔浦县');
INSERT INTO `areacode` VALUES ('2119', '2102', '450332', '恭城瑶族自治县');
INSERT INTO `areacode` VALUES ('2120', '2077', '450400', '梧州市');
INSERT INTO `areacode` VALUES ('2121', '2120', '450403', '万秀区');
INSERT INTO `areacode` VALUES ('2122', '2120', '450405', '长洲区');
INSERT INTO `areacode` VALUES ('2123', '2120', '450406', '龙圩区');
INSERT INTO `areacode` VALUES ('2124', '2120', '450421', '苍梧县');
INSERT INTO `areacode` VALUES ('2125', '2120', '450422', '藤县');
INSERT INTO `areacode` VALUES ('2126', '2120', '450423', '蒙山县');
INSERT INTO `areacode` VALUES ('2127', '2120', '450481', '岑溪市');
INSERT INTO `areacode` VALUES ('2128', '2077', '450500', '北海市');
INSERT INTO `areacode` VALUES ('2129', '2128', '450502', '海城区');
INSERT INTO `areacode` VALUES ('2130', '2128', '450503', '银海区');
INSERT INTO `areacode` VALUES ('2131', '2128', '450512', '铁山港区');
INSERT INTO `areacode` VALUES ('2132', '2128', '450521', '合浦县');
INSERT INTO `areacode` VALUES ('2133', '2077', '450600', '防城港市');
INSERT INTO `areacode` VALUES ('2134', '2133', '450602', '港口区');
INSERT INTO `areacode` VALUES ('2135', '2133', '450603', '防城区');
INSERT INTO `areacode` VALUES ('2136', '2133', '450621', '上思县');
INSERT INTO `areacode` VALUES ('2137', '2133', '450681', '东兴市');
INSERT INTO `areacode` VALUES ('2138', '2077', '450700', '钦州市');
INSERT INTO `areacode` VALUES ('2139', '2138', '450702', '钦南区');
INSERT INTO `areacode` VALUES ('2140', '2138', '450703', '钦北区');
INSERT INTO `areacode` VALUES ('2141', '2138', '450721', '灵山县');
INSERT INTO `areacode` VALUES ('2142', '2138', '450722', '浦北县');
INSERT INTO `areacode` VALUES ('2143', '2077', '450800', '贵港市');
INSERT INTO `areacode` VALUES ('2144', '2143', '450802', '港北区');
INSERT INTO `areacode` VALUES ('2145', '2143', '450803', '港南区');
INSERT INTO `areacode` VALUES ('2146', '2143', '450804', '覃塘区');
INSERT INTO `areacode` VALUES ('2147', '2143', '450821', '平南县');
INSERT INTO `areacode` VALUES ('2148', '2143', '450881', '桂平市');
INSERT INTO `areacode` VALUES ('2149', '2077', '450900', '玉林市');
INSERT INTO `areacode` VALUES ('2150', '2149', '450902', '玉州区');
INSERT INTO `areacode` VALUES ('2151', '2149', '450903', '福绵区');
INSERT INTO `areacode` VALUES ('2152', '2149', '450921', '容县');
INSERT INTO `areacode` VALUES ('2153', '2149', '450922', '陆川县');
INSERT INTO `areacode` VALUES ('2154', '2149', '450923', '博白县');
INSERT INTO `areacode` VALUES ('2155', '2149', '450924', '兴业县');
INSERT INTO `areacode` VALUES ('2156', '2149', '450981', '北流市');
INSERT INTO `areacode` VALUES ('2157', '2077', '451000', '百色市');
INSERT INTO `areacode` VALUES ('2158', '2157', '451002', '右江区');
INSERT INTO `areacode` VALUES ('2159', '2157', '451021', '田阳县');
INSERT INTO `areacode` VALUES ('2160', '2157', '451022', '田东县');
INSERT INTO `areacode` VALUES ('2161', '2157', '451023', '平果县');
INSERT INTO `areacode` VALUES ('2162', '2157', '451024', '德保县');
INSERT INTO `areacode` VALUES ('2163', '2157', '451026', '那坡县');
INSERT INTO `areacode` VALUES ('2164', '2157', '451027', '凌云县');
INSERT INTO `areacode` VALUES ('2165', '2157', '451028', '乐业县');
INSERT INTO `areacode` VALUES ('2166', '2157', '451029', '田林县');
INSERT INTO `areacode` VALUES ('2167', '2157', '451030', '西林县');
INSERT INTO `areacode` VALUES ('2168', '2157', '451031', '隆林各族自治县');
INSERT INTO `areacode` VALUES ('2169', '2157', '451081', '靖西市');
INSERT INTO `areacode` VALUES ('2170', '2077', '451100', '贺州市');
INSERT INTO `areacode` VALUES ('2171', '2170', '451102', '八步区');
INSERT INTO `areacode` VALUES ('2172', '2170', '451103', '平桂区');
INSERT INTO `areacode` VALUES ('2173', '2170', '451121', '昭平县');
INSERT INTO `areacode` VALUES ('2174', '2170', '451122', '钟山县');
INSERT INTO `areacode` VALUES ('2175', '2170', '451123', '富川瑶族自治县');
INSERT INTO `areacode` VALUES ('2176', '2077', '451200', '河池市');
INSERT INTO `areacode` VALUES ('2177', '2176', '451202', '金城江区');
INSERT INTO `areacode` VALUES ('2178', '2176', '451203', '宜州区');
INSERT INTO `areacode` VALUES ('2179', '2176', '451221', '南丹县');
INSERT INTO `areacode` VALUES ('2180', '2176', '451222', '天峨县');
INSERT INTO `areacode` VALUES ('2181', '2176', '451223', '凤山县');
INSERT INTO `areacode` VALUES ('2182', '2176', '451224', '东兰县');
INSERT INTO `areacode` VALUES ('2183', '2176', '451225', '罗城仫佬族自治县');
INSERT INTO `areacode` VALUES ('2184', '2176', '451226', '环江毛南族自治县');
INSERT INTO `areacode` VALUES ('2185', '2176', '451227', '巴马瑶族自治县');
INSERT INTO `areacode` VALUES ('2186', '2176', '451228', '都安瑶族自治县');
INSERT INTO `areacode` VALUES ('2187', '2176', '451229', '大化瑶族自治县');
INSERT INTO `areacode` VALUES ('2188', '2077', '451300', '来宾市');
INSERT INTO `areacode` VALUES ('2189', '2188', '451302', '兴宾区');
INSERT INTO `areacode` VALUES ('2190', '2188', '451321', '忻城县');
INSERT INTO `areacode` VALUES ('2191', '2188', '451322', '象州县');
INSERT INTO `areacode` VALUES ('2192', '2188', '451323', '武宣县');
INSERT INTO `areacode` VALUES ('2193', '2188', '451324', '金秀瑶族自治县');
INSERT INTO `areacode` VALUES ('2194', '2188', '451381', '合山市');
INSERT INTO `areacode` VALUES ('2195', '2077', '451400', '崇左市');
INSERT INTO `areacode` VALUES ('2196', '2195', '451402', '江州区');
INSERT INTO `areacode` VALUES ('2197', '2195', '451421', '扶绥县');
INSERT INTO `areacode` VALUES ('2198', '2195', '451422', '宁明县');
INSERT INTO `areacode` VALUES ('2199', '2195', '451423', '龙州县');
INSERT INTO `areacode` VALUES ('2200', '2195', '451424', '大新县');
INSERT INTO `areacode` VALUES ('2201', '2195', '451425', '天等县');
INSERT INTO `areacode` VALUES ('2202', '2195', '451481', '凭祥市');
INSERT INTO `areacode` VALUES ('2203', '0', '460000', '海南省');
INSERT INTO `areacode` VALUES ('2204', '2203', '460100', '海口市');
INSERT INTO `areacode` VALUES ('2205', '2204', '460105', '秀英区');
INSERT INTO `areacode` VALUES ('2206', '2204', '460106', '龙华区');
INSERT INTO `areacode` VALUES ('2207', '2204', '460107', '琼山区');
INSERT INTO `areacode` VALUES ('2208', '2204', '460108', '美兰区');
INSERT INTO `areacode` VALUES ('2209', '2203', '460200', '三亚市');
INSERT INTO `areacode` VALUES ('2210', '2209', '460202', '海棠区');
INSERT INTO `areacode` VALUES ('2211', '2209', '460203', '吉阳区');
INSERT INTO `areacode` VALUES ('2212', '2209', '460204', '天涯区');
INSERT INTO `areacode` VALUES ('2213', '2209', '460205', '崖州区');
INSERT INTO `areacode` VALUES ('2214', '2203', '460300', '三沙市');
INSERT INTO `areacode` VALUES ('2215', '2203', '460400', '儋州市');
INSERT INTO `areacode` VALUES ('2216', '2203', '469001', '五指山市');
INSERT INTO `areacode` VALUES ('2217', '2203', '469002', '琼海市');
INSERT INTO `areacode` VALUES ('2218', '2203', '469005', '文昌市');
INSERT INTO `areacode` VALUES ('2219', '2203', '469006', '万宁市');
INSERT INTO `areacode` VALUES ('2220', '2203', '469007', '东方市');
INSERT INTO `areacode` VALUES ('2221', '2220', '469021', '定安县');
INSERT INTO `areacode` VALUES ('2222', '2220', '469022', '屯昌县');
INSERT INTO `areacode` VALUES ('2223', '2220', '469023', '澄迈县');
INSERT INTO `areacode` VALUES ('2224', '2220', '469024', '临高县');
INSERT INTO `areacode` VALUES ('2225', '2220', '469025', '白沙黎族自治县');
INSERT INTO `areacode` VALUES ('2226', '2220', '469026', '昌江黎族自治县');
INSERT INTO `areacode` VALUES ('2227', '2220', '469027', '乐东黎族自治县');
INSERT INTO `areacode` VALUES ('2228', '2220', '469028', '陵水黎族自治县');
INSERT INTO `areacode` VALUES ('2229', '2220', '469029', '保亭黎族苗族自治县');
INSERT INTO `areacode` VALUES ('2230', '2220', '469030', '琼中黎族苗族自治县');
INSERT INTO `areacode` VALUES ('2231', '0', '500000', '重庆');
INSERT INTO `areacode` VALUES ('2232', '2231', '500100', '重庆市');
INSERT INTO `areacode` VALUES ('2233', '2232', '500101', '万州区');
INSERT INTO `areacode` VALUES ('2234', '2232', '500102', '涪陵区');
INSERT INTO `areacode` VALUES ('2235', '2232', '500103', '渝中区');
INSERT INTO `areacode` VALUES ('2236', '2232', '500104', '大渡口区');
INSERT INTO `areacode` VALUES ('2237', '2232', '500105', '江北区');
INSERT INTO `areacode` VALUES ('2238', '2232', '500106', '沙坪坝区');
INSERT INTO `areacode` VALUES ('2239', '2232', '500107', '九龙坡区');
INSERT INTO `areacode` VALUES ('2240', '2232', '500108', '南岸区');
INSERT INTO `areacode` VALUES ('2241', '2232', '500109', '北碚区');
INSERT INTO `areacode` VALUES ('2242', '2232', '500110', '綦江区');
INSERT INTO `areacode` VALUES ('2243', '2232', '500111', '大足区');
INSERT INTO `areacode` VALUES ('2244', '2232', '500112', '渝北区');
INSERT INTO `areacode` VALUES ('2245', '2232', '500113', '巴南区');
INSERT INTO `areacode` VALUES ('2246', '2232', '500114', '黔江区');
INSERT INTO `areacode` VALUES ('2247', '2232', '500115', '长寿区');
INSERT INTO `areacode` VALUES ('2248', '2232', '500116', '江津区');
INSERT INTO `areacode` VALUES ('2249', '2232', '500117', '合川区');
INSERT INTO `areacode` VALUES ('2250', '2232', '500118', '永川区');
INSERT INTO `areacode` VALUES ('2251', '2232', '500119', '南川区');
INSERT INTO `areacode` VALUES ('2252', '2232', '500120', '璧山区');
INSERT INTO `areacode` VALUES ('2253', '2232', '500151', '铜梁区');
INSERT INTO `areacode` VALUES ('2254', '2232', '500152', '潼南区');
INSERT INTO `areacode` VALUES ('2255', '2232', '500153', '荣昌区');
INSERT INTO `areacode` VALUES ('2256', '2232', '500154', '开州区');
INSERT INTO `areacode` VALUES ('2257', '2232', '500155', '梁平区');
INSERT INTO `areacode` VALUES ('2258', '2232', '500156', '武隆区');
INSERT INTO `areacode` VALUES ('2259', '2232', '500229', '城口县');
INSERT INTO `areacode` VALUES ('2260', '2232', '500230', '丰都县');
INSERT INTO `areacode` VALUES ('2261', '2232', '500231', '垫江县');
INSERT INTO `areacode` VALUES ('2262', '2232', '500233', '忠县');
INSERT INTO `areacode` VALUES ('2263', '2232', '500235', '云阳县');
INSERT INTO `areacode` VALUES ('2264', '2232', '500236', '奉节县');
INSERT INTO `areacode` VALUES ('2265', '2232', '500237', '巫山县');
INSERT INTO `areacode` VALUES ('2266', '2232', '500238', '巫溪县');
INSERT INTO `areacode` VALUES ('2267', '2232', '500240', '石柱土家族自治县');
INSERT INTO `areacode` VALUES ('2268', '2232', '500241', '秀山土家族苗族自治县');
INSERT INTO `areacode` VALUES ('2269', '2232', '500242', '酉阳土家族苗族自治县');
INSERT INTO `areacode` VALUES ('2270', '2232', '500243', '彭水苗族土家族自治县');
INSERT INTO `areacode` VALUES ('2271', '0', '510000', '四川省');
INSERT INTO `areacode` VALUES ('2272', '2271', '510100', '成都市');
INSERT INTO `areacode` VALUES ('2273', '2272', '510104', '锦江区');
INSERT INTO `areacode` VALUES ('2274', '2272', '510105', '青羊区');
INSERT INTO `areacode` VALUES ('2275', '2272', '510106', '金牛区');
INSERT INTO `areacode` VALUES ('2276', '2272', '510107', '武侯区');
INSERT INTO `areacode` VALUES ('2277', '2272', '510108', '成华区');
INSERT INTO `areacode` VALUES ('2278', '2272', '510112', '龙泉驿区');
INSERT INTO `areacode` VALUES ('2279', '2272', '510113', '青白江区');
INSERT INTO `areacode` VALUES ('2280', '2272', '510114', '新都区');
INSERT INTO `areacode` VALUES ('2281', '2272', '510115', '温江区');
INSERT INTO `areacode` VALUES ('2282', '2272', '510116', '双流区');
INSERT INTO `areacode` VALUES ('2283', '2272', '510117', '郫都区');
INSERT INTO `areacode` VALUES ('2284', '2272', '510121', '金堂县');
INSERT INTO `areacode` VALUES ('2285', '2272', '510129', '大邑县');
INSERT INTO `areacode` VALUES ('2286', '2272', '510131', '蒲江县');
INSERT INTO `areacode` VALUES ('2287', '2272', '510132', '新津县');
INSERT INTO `areacode` VALUES ('2288', '2272', '510181', '都江堰市');
INSERT INTO `areacode` VALUES ('2289', '2272', '510182', '彭州市');
INSERT INTO `areacode` VALUES ('2290', '2272', '510183', '邛崃市');
INSERT INTO `areacode` VALUES ('2291', '2272', '510184', '崇州市');
INSERT INTO `areacode` VALUES ('2292', '2272', '510185', '简阳市');
INSERT INTO `areacode` VALUES ('2293', '2271', '510300', '自贡市');
INSERT INTO `areacode` VALUES ('2294', '2293', '510302', '自流井区');
INSERT INTO `areacode` VALUES ('2295', '2293', '510303', '贡井区');
INSERT INTO `areacode` VALUES ('2296', '2293', '510304', '大安区');
INSERT INTO `areacode` VALUES ('2297', '2293', '510311', '沿滩区');
INSERT INTO `areacode` VALUES ('2298', '2293', '510321', '荣县');
INSERT INTO `areacode` VALUES ('2299', '2293', '510322', '富顺县');
INSERT INTO `areacode` VALUES ('2300', '2271', '510400', '攀枝花市');
INSERT INTO `areacode` VALUES ('2301', '2300', '510402', '东区');
INSERT INTO `areacode` VALUES ('2302', '2300', '510403', '西区');
INSERT INTO `areacode` VALUES ('2303', '2300', '510411', '仁和区');
INSERT INTO `areacode` VALUES ('2304', '2300', '510421', '米易县');
INSERT INTO `areacode` VALUES ('2305', '2300', '510422', '盐边县');
INSERT INTO `areacode` VALUES ('2306', '2271', '510500', '泸州市');
INSERT INTO `areacode` VALUES ('2307', '2306', '510502', '江阳区');
INSERT INTO `areacode` VALUES ('2308', '2306', '510503', '纳溪区');
INSERT INTO `areacode` VALUES ('2309', '2306', '510504', '龙马潭区');
INSERT INTO `areacode` VALUES ('2310', '2306', '510521', '泸县');
INSERT INTO `areacode` VALUES ('2311', '2306', '510522', '合江县');
INSERT INTO `areacode` VALUES ('2312', '2306', '510524', '叙永县');
INSERT INTO `areacode` VALUES ('2313', '2306', '510525', '古蔺县');
INSERT INTO `areacode` VALUES ('2314', '2271', '510600', '德阳市');
INSERT INTO `areacode` VALUES ('2315', '2314', '510603', '旌阳区');
INSERT INTO `areacode` VALUES ('2316', '2314', '510604', '罗江区');
INSERT INTO `areacode` VALUES ('2317', '2314', '510623', '中江县');
INSERT INTO `areacode` VALUES ('2318', '2314', '510681', '广汉市');
INSERT INTO `areacode` VALUES ('2319', '2314', '510682', '什邡市');
INSERT INTO `areacode` VALUES ('2320', '2314', '510683', '绵竹市');
INSERT INTO `areacode` VALUES ('2321', '2271', '510700', '绵阳市');
INSERT INTO `areacode` VALUES ('2322', '2321', '510703', '涪城区');
INSERT INTO `areacode` VALUES ('2323', '2321', '510704', '游仙区');
INSERT INTO `areacode` VALUES ('2324', '2321', '510705', '安州区');
INSERT INTO `areacode` VALUES ('2325', '2321', '510722', '三台县');
INSERT INTO `areacode` VALUES ('2326', '2321', '510723', '盐亭县');
INSERT INTO `areacode` VALUES ('2327', '2321', '510725', '梓潼县');
INSERT INTO `areacode` VALUES ('2328', '2321', '510726', '北川羌族自治县');
INSERT INTO `areacode` VALUES ('2329', '2321', '510727', '平武县');
INSERT INTO `areacode` VALUES ('2330', '2321', '510781', '江油市');
INSERT INTO `areacode` VALUES ('2331', '2271', '510800', '广元市');
INSERT INTO `areacode` VALUES ('2332', '2331', '510802', '利州区');
INSERT INTO `areacode` VALUES ('2333', '2331', '510811', '昭化区');
INSERT INTO `areacode` VALUES ('2334', '2331', '510812', '朝天区');
INSERT INTO `areacode` VALUES ('2335', '2331', '510821', '旺苍县');
INSERT INTO `areacode` VALUES ('2336', '2331', '510822', '青川县');
INSERT INTO `areacode` VALUES ('2337', '2331', '510823', '剑阁县');
INSERT INTO `areacode` VALUES ('2338', '2331', '510824', '苍溪县');
INSERT INTO `areacode` VALUES ('2339', '2271', '510900', '遂宁市');
INSERT INTO `areacode` VALUES ('2340', '2339', '510903', '船山区');
INSERT INTO `areacode` VALUES ('2341', '2339', '510904', '安居区');
INSERT INTO `areacode` VALUES ('2342', '2339', '510921', '蓬溪县');
INSERT INTO `areacode` VALUES ('2343', '2339', '510922', '射洪县');
INSERT INTO `areacode` VALUES ('2344', '2339', '510923', '大英县');
INSERT INTO `areacode` VALUES ('2345', '2271', '511000', '内江市');
INSERT INTO `areacode` VALUES ('2346', '2271', '511002', '市中区');
INSERT INTO `areacode` VALUES ('2347', '2346', '511011', '东兴区');
INSERT INTO `areacode` VALUES ('2348', '2346', '511024', '威远县');
INSERT INTO `areacode` VALUES ('2349', '2346', '511025', '资中县');
INSERT INTO `areacode` VALUES ('2350', '2346', '511083', '隆昌市');
INSERT INTO `areacode` VALUES ('2351', '2271', '511100', '乐山市');
INSERT INTO `areacode` VALUES ('2352', '2351', '511102', '市中区');
INSERT INTO `areacode` VALUES ('2353', '2351', '511111', '沙湾区');
INSERT INTO `areacode` VALUES ('2354', '2351', '511112', '五通桥区');
INSERT INTO `areacode` VALUES ('2355', '2351', '511113', '金口河区');
INSERT INTO `areacode` VALUES ('2356', '2351', '511123', '犍为县');
INSERT INTO `areacode` VALUES ('2357', '2351', '511124', '井研县');
INSERT INTO `areacode` VALUES ('2358', '2351', '511126', '夹江县');
INSERT INTO `areacode` VALUES ('2359', '2351', '511129', '沐川县');
INSERT INTO `areacode` VALUES ('2360', '2351', '511132', '峨边彝族自治县');
INSERT INTO `areacode` VALUES ('2361', '2351', '511133', '马边彝族自治县');
INSERT INTO `areacode` VALUES ('2362', '2351', '511181', '峨眉山市');
INSERT INTO `areacode` VALUES ('2363', '2271', '511300', '南充市');
INSERT INTO `areacode` VALUES ('2364', '2363', '511302', '顺庆区');
INSERT INTO `areacode` VALUES ('2365', '2363', '511303', '高坪区');
INSERT INTO `areacode` VALUES ('2366', '2363', '511304', '嘉陵区');
INSERT INTO `areacode` VALUES ('2367', '2363', '511321', '南部县');
INSERT INTO `areacode` VALUES ('2368', '2363', '511322', '营山县');
INSERT INTO `areacode` VALUES ('2369', '2363', '511323', '蓬安县');
INSERT INTO `areacode` VALUES ('2370', '2363', '511324', '仪陇县');
INSERT INTO `areacode` VALUES ('2371', '2363', '511325', '西充县');
INSERT INTO `areacode` VALUES ('2372', '2363', '511381', '阆中市');
INSERT INTO `areacode` VALUES ('2373', '2271', '511400', '眉山市');
INSERT INTO `areacode` VALUES ('2374', '2373', '511402', '东坡区');
INSERT INTO `areacode` VALUES ('2375', '2373', '511403', '彭山区');
INSERT INTO `areacode` VALUES ('2376', '2373', '511421', '仁寿县');
INSERT INTO `areacode` VALUES ('2377', '2373', '511423', '洪雅县');
INSERT INTO `areacode` VALUES ('2378', '2373', '511424', '丹棱县');
INSERT INTO `areacode` VALUES ('2379', '2373', '511425', '青神县');
INSERT INTO `areacode` VALUES ('2380', '2271', '511500', '宜宾市');
INSERT INTO `areacode` VALUES ('2381', '2380', '511502', '翠屏区');
INSERT INTO `areacode` VALUES ('2382', '2380', '511503', '南溪区');
INSERT INTO `areacode` VALUES ('2383', '2380', '511521', '宜宾县');
INSERT INTO `areacode` VALUES ('2384', '2380', '511523', '江安县');
INSERT INTO `areacode` VALUES ('2385', '2380', '511524', '长宁县');
INSERT INTO `areacode` VALUES ('2386', '2380', '511525', '高县');
INSERT INTO `areacode` VALUES ('2387', '2380', '511526', '珙县');
INSERT INTO `areacode` VALUES ('2388', '2380', '511527', '筠连县');
INSERT INTO `areacode` VALUES ('2389', '2380', '511528', '兴文县');
INSERT INTO `areacode` VALUES ('2390', '2380', '511529', '屏山县');
INSERT INTO `areacode` VALUES ('2391', '2271', '511600', '广安市');
INSERT INTO `areacode` VALUES ('2392', '2391', '511602', '广安区');
INSERT INTO `areacode` VALUES ('2393', '2391', '511603', '前锋区');
INSERT INTO `areacode` VALUES ('2394', '2391', '511621', '岳池县');
INSERT INTO `areacode` VALUES ('2395', '2391', '511622', '武胜县');
INSERT INTO `areacode` VALUES ('2396', '2391', '511623', '邻水县');
INSERT INTO `areacode` VALUES ('2397', '2391', '511681', '华蓥市');
INSERT INTO `areacode` VALUES ('2398', '2271', '511700', '达州市');
INSERT INTO `areacode` VALUES ('2399', '2398', '511702', '通川区');
INSERT INTO `areacode` VALUES ('2400', '2398', '511703', '达川区');
INSERT INTO `areacode` VALUES ('2401', '2398', '511722', '宣汉县');
INSERT INTO `areacode` VALUES ('2402', '2398', '511723', '开江县');
INSERT INTO `areacode` VALUES ('2403', '2398', '511724', '大竹县');
INSERT INTO `areacode` VALUES ('2404', '2398', '511725', '渠县');
INSERT INTO `areacode` VALUES ('2405', '2398', '511781', '万源市');
INSERT INTO `areacode` VALUES ('2406', '2271', '511800', '雅安市');
INSERT INTO `areacode` VALUES ('2407', '2406', '511802', '雨城区');
INSERT INTO `areacode` VALUES ('2408', '2406', '511803', '名山区');
INSERT INTO `areacode` VALUES ('2409', '2406', '511822', '荥经县');
INSERT INTO `areacode` VALUES ('2410', '2406', '511823', '汉源县');
INSERT INTO `areacode` VALUES ('2411', '2406', '511824', '石棉县');
INSERT INTO `areacode` VALUES ('2412', '2406', '511825', '天全县');
INSERT INTO `areacode` VALUES ('2413', '2406', '511826', '芦山县');
INSERT INTO `areacode` VALUES ('2414', '2406', '511827', '宝兴县');
INSERT INTO `areacode` VALUES ('2415', '2271', '511900', '巴中市');
INSERT INTO `areacode` VALUES ('2416', '2415', '511902', '巴州区');
INSERT INTO `areacode` VALUES ('2417', '2415', '511903', '恩阳区');
INSERT INTO `areacode` VALUES ('2418', '2415', '511921', '通江县');
INSERT INTO `areacode` VALUES ('2419', '2415', '511922', '南江县');
INSERT INTO `areacode` VALUES ('2420', '2415', '511923', '平昌县');
INSERT INTO `areacode` VALUES ('2421', '2271', '512000', '资阳市');
INSERT INTO `areacode` VALUES ('2422', '2421', '512002', '雁江区');
INSERT INTO `areacode` VALUES ('2423', '2421', '512021', '安岳县');
INSERT INTO `areacode` VALUES ('2424', '2421', '512022', '乐至县');
INSERT INTO `areacode` VALUES ('2425', '2421', '513200', '阿坝藏族羌族自治州');
INSERT INTO `areacode` VALUES ('2426', '2421', '513201', '马尔康市');
INSERT INTO `areacode` VALUES ('2427', '2421', '513221', '汶川县');
INSERT INTO `areacode` VALUES ('2428', '2421', '513222', '理县');
INSERT INTO `areacode` VALUES ('2429', '2421', '513223', '茂县');
INSERT INTO `areacode` VALUES ('2430', '2421', '513224', '松潘县');
INSERT INTO `areacode` VALUES ('2431', '2421', '513225', '九寨沟县');
INSERT INTO `areacode` VALUES ('2432', '2421', '513226', '金川县');
INSERT INTO `areacode` VALUES ('2433', '2421', '513227', '小金县');
INSERT INTO `areacode` VALUES ('2434', '2421', '513228', '黑水县');
INSERT INTO `areacode` VALUES ('2435', '2421', '513230', '壤塘县');
INSERT INTO `areacode` VALUES ('2436', '2421', '513231', '阿坝县');
INSERT INTO `areacode` VALUES ('2437', '2421', '513232', '若尔盖县');
INSERT INTO `areacode` VALUES ('2438', '2421', '513233', '红原县');
INSERT INTO `areacode` VALUES ('2439', '2421', '513300', '甘孜藏族自治州');
INSERT INTO `areacode` VALUES ('2440', '2421', '513301', '康定市');
INSERT INTO `areacode` VALUES ('2441', '2421', '513322', '泸定县');
INSERT INTO `areacode` VALUES ('2442', '2421', '513323', '丹巴县');
INSERT INTO `areacode` VALUES ('2443', '2421', '513324', '九龙县');
INSERT INTO `areacode` VALUES ('2444', '2421', '513325', '雅江县');
INSERT INTO `areacode` VALUES ('2445', '2421', '513326', '道孚县');
INSERT INTO `areacode` VALUES ('2446', '2421', '513327', '炉霍县');
INSERT INTO `areacode` VALUES ('2447', '2421', '513328', '甘孜县');
INSERT INTO `areacode` VALUES ('2448', '2421', '513329', '新龙县');
INSERT INTO `areacode` VALUES ('2449', '2421', '513330', '德格县');
INSERT INTO `areacode` VALUES ('2450', '2421', '513331', '白玉县');
INSERT INTO `areacode` VALUES ('2451', '2421', '513332', '石渠县');
INSERT INTO `areacode` VALUES ('2452', '2421', '513333', '色达县');
INSERT INTO `areacode` VALUES ('2453', '2421', '513334', '理塘县');
INSERT INTO `areacode` VALUES ('2454', '2421', '513335', '巴塘县');
INSERT INTO `areacode` VALUES ('2455', '2421', '513336', '乡城县');
INSERT INTO `areacode` VALUES ('2456', '2421', '513337', '稻城县');
INSERT INTO `areacode` VALUES ('2457', '2421', '513338', '得荣县');
INSERT INTO `areacode` VALUES ('2458', '2421', '513400', '凉山彝族自治州');
INSERT INTO `areacode` VALUES ('2459', '2421', '513401', '西昌市');
INSERT INTO `areacode` VALUES ('2460', '2421', '513422', '木里藏族自治县');
INSERT INTO `areacode` VALUES ('2461', '2421', '513423', '盐源县');
INSERT INTO `areacode` VALUES ('2462', '2421', '513424', '德昌县');
INSERT INTO `areacode` VALUES ('2463', '2421', '513425', '会理县');
INSERT INTO `areacode` VALUES ('2464', '2421', '513426', '会东县');
INSERT INTO `areacode` VALUES ('2465', '2421', '513427', '宁南县');
INSERT INTO `areacode` VALUES ('2466', '2421', '513428', '普格县');
INSERT INTO `areacode` VALUES ('2467', '2421', '513429', '布拖县');
INSERT INTO `areacode` VALUES ('2468', '2421', '513430', '金阳县');
INSERT INTO `areacode` VALUES ('2469', '2421', '513431', '昭觉县');
INSERT INTO `areacode` VALUES ('2470', '2421', '513432', '喜德县');
INSERT INTO `areacode` VALUES ('2471', '2421', '513433', '冕宁县');
INSERT INTO `areacode` VALUES ('2472', '2421', '513434', '越西县');
INSERT INTO `areacode` VALUES ('2473', '2421', '513435', '甘洛县');
INSERT INTO `areacode` VALUES ('2474', '2421', '513436', '美姑县');
INSERT INTO `areacode` VALUES ('2475', '2421', '513437', '雷波县');
INSERT INTO `areacode` VALUES ('2476', '0', '520000', '贵州省');
INSERT INTO `areacode` VALUES ('2477', '2476', '520100', '贵阳市');
INSERT INTO `areacode` VALUES ('2478', '2477', '520102', '南明区');
INSERT INTO `areacode` VALUES ('2479', '2477', '520103', '云岩区');
INSERT INTO `areacode` VALUES ('2480', '2477', '520111', '花溪区');
INSERT INTO `areacode` VALUES ('2481', '2477', '520112', '乌当区');
INSERT INTO `areacode` VALUES ('2482', '2477', '520113', '白云区');
INSERT INTO `areacode` VALUES ('2483', '2477', '520115', '观山湖区');
INSERT INTO `areacode` VALUES ('2484', '2477', '520121', '开阳县');
INSERT INTO `areacode` VALUES ('2485', '2477', '520122', '息烽县');
INSERT INTO `areacode` VALUES ('2486', '2477', '520123', '修文县');
INSERT INTO `areacode` VALUES ('2487', '2477', '520181', '清镇市');
INSERT INTO `areacode` VALUES ('2488', '2476', '520200', '六盘水市');
INSERT INTO `areacode` VALUES ('2489', '2488', '520201', '钟山区');
INSERT INTO `areacode` VALUES ('2490', '2488', '520203', '六枝特区');
INSERT INTO `areacode` VALUES ('2491', '2488', '520221', '水城县');
INSERT INTO `areacode` VALUES ('2492', '2488', '520281', '盘州市');
INSERT INTO `areacode` VALUES ('2493', '2476', '520300', '遵义市');
INSERT INTO `areacode` VALUES ('2494', '2493', '520302', '红花岗区');
INSERT INTO `areacode` VALUES ('2495', '2493', '520303', '汇川区');
INSERT INTO `areacode` VALUES ('2496', '2493', '520304', '播州区');
INSERT INTO `areacode` VALUES ('2497', '2493', '520322', '桐梓县');
INSERT INTO `areacode` VALUES ('2498', '2493', '520323', '绥阳县');
INSERT INTO `areacode` VALUES ('2499', '2493', '520324', '正安县');
INSERT INTO `areacode` VALUES ('2500', '2493', '520325', '道真仡佬族苗族自治县');
INSERT INTO `areacode` VALUES ('2501', '2493', '520326', '务川仡佬族苗族自治县');
INSERT INTO `areacode` VALUES ('2502', '2493', '520327', '凤冈县');
INSERT INTO `areacode` VALUES ('2503', '2493', '520328', '湄潭县');
INSERT INTO `areacode` VALUES ('2504', '2493', '520329', '余庆县');
INSERT INTO `areacode` VALUES ('2505', '2493', '520330', '习水县');
INSERT INTO `areacode` VALUES ('2506', '2493', '520381', '赤水市');
INSERT INTO `areacode` VALUES ('2507', '2493', '520382', '仁怀市');
INSERT INTO `areacode` VALUES ('2508', '2476', '520400', '安顺市');
INSERT INTO `areacode` VALUES ('2509', '2508', '520402', '西秀区');
INSERT INTO `areacode` VALUES ('2510', '2508', '520403', '平坝区');
INSERT INTO `areacode` VALUES ('2511', '2508', '520422', '普定县');
INSERT INTO `areacode` VALUES ('2512', '2508', '520423', '镇宁布依族苗族自治县');
INSERT INTO `areacode` VALUES ('2513', '2508', '520424', '关岭布依族苗族自治县');
INSERT INTO `areacode` VALUES ('2514', '2508', '520425', '紫云苗族布依族自治县');
INSERT INTO `areacode` VALUES ('2515', '2476', '520500', '毕节市');
INSERT INTO `areacode` VALUES ('2516', '2515', '520502', '七星关区');
INSERT INTO `areacode` VALUES ('2517', '2515', '520521', '大方县');
INSERT INTO `areacode` VALUES ('2518', '2515', '520522', '黔西县');
INSERT INTO `areacode` VALUES ('2519', '2515', '520523', '金沙县');
INSERT INTO `areacode` VALUES ('2520', '2515', '520524', '织金县');
INSERT INTO `areacode` VALUES ('2521', '2515', '520525', '纳雍县');
INSERT INTO `areacode` VALUES ('2522', '2515', '520526', '威宁彝族回族苗族自治县');
INSERT INTO `areacode` VALUES ('2523', '2515', '520527', '赫章县');
INSERT INTO `areacode` VALUES ('2524', '2476', '520600', '铜仁市');
INSERT INTO `areacode` VALUES ('2525', '2524', '520602', '碧江区');
INSERT INTO `areacode` VALUES ('2526', '2524', '520603', '万山区');
INSERT INTO `areacode` VALUES ('2527', '2524', '520621', '江口县');
INSERT INTO `areacode` VALUES ('2528', '2524', '520622', '玉屏侗族自治县');
INSERT INTO `areacode` VALUES ('2529', '2524', '520623', '石阡县');
INSERT INTO `areacode` VALUES ('2530', '2524', '520624', '思南县');
INSERT INTO `areacode` VALUES ('2531', '2524', '520625', '印江土家族苗族自治县');
INSERT INTO `areacode` VALUES ('2532', '2524', '520626', '德江县');
INSERT INTO `areacode` VALUES ('2533', '2524', '520627', '沿河土家族自治县');
INSERT INTO `areacode` VALUES ('2534', '2524', '520628', '松桃苗族自治县');
INSERT INTO `areacode` VALUES ('2535', '2524', '522300', '黔西南布依族苗族自治州');
INSERT INTO `areacode` VALUES ('2536', '2524', '522301', '兴义市');
INSERT INTO `areacode` VALUES ('2537', '2524', '522322', '兴仁县');
INSERT INTO `areacode` VALUES ('2538', '2524', '522323', '普安县');
INSERT INTO `areacode` VALUES ('2539', '2524', '522324', '晴隆县');
INSERT INTO `areacode` VALUES ('2540', '2524', '522325', '贞丰县');
INSERT INTO `areacode` VALUES ('2541', '2524', '522326', '望谟县');
INSERT INTO `areacode` VALUES ('2542', '2524', '522327', '册亨县');
INSERT INTO `areacode` VALUES ('2543', '2524', '522328', '安龙县');
INSERT INTO `areacode` VALUES ('2544', '2524', '522600', '黔东南苗族侗族自治州');
INSERT INTO `areacode` VALUES ('2545', '2524', '522601', '凯里市');
INSERT INTO `areacode` VALUES ('2546', '2524', '522622', '黄平县');
INSERT INTO `areacode` VALUES ('2547', '2524', '522623', '施秉县');
INSERT INTO `areacode` VALUES ('2548', '2524', '522624', '三穗县');
INSERT INTO `areacode` VALUES ('2549', '2524', '522625', '镇远县');
INSERT INTO `areacode` VALUES ('2550', '2524', '522626', '岑巩县');
INSERT INTO `areacode` VALUES ('2551', '2524', '522627', '天柱县');
INSERT INTO `areacode` VALUES ('2552', '2524', '522628', '锦屏县');
INSERT INTO `areacode` VALUES ('2553', '2524', '522629', '剑河县');
INSERT INTO `areacode` VALUES ('2554', '2524', '522630', '台江县');
INSERT INTO `areacode` VALUES ('2555', '2524', '522631', '黎平县');
INSERT INTO `areacode` VALUES ('2556', '2524', '522632', '榕江县');
INSERT INTO `areacode` VALUES ('2557', '2524', '522633', '从江县');
INSERT INTO `areacode` VALUES ('2558', '2524', '522634', '雷山县');
INSERT INTO `areacode` VALUES ('2559', '2524', '522635', '麻江县');
INSERT INTO `areacode` VALUES ('2560', '2524', '522636', '丹寨县');
INSERT INTO `areacode` VALUES ('2561', '2524', '522700', '黔南布依族苗族自治州');
INSERT INTO `areacode` VALUES ('2562', '2524', '522701', '都匀市');
INSERT INTO `areacode` VALUES ('2563', '2524', '522702', '福泉市');
INSERT INTO `areacode` VALUES ('2564', '2524', '522722', '荔波县');
INSERT INTO `areacode` VALUES ('2565', '2524', '522723', '贵定县');
INSERT INTO `areacode` VALUES ('2566', '2524', '522725', '瓮安县');
INSERT INTO `areacode` VALUES ('2567', '2524', '522726', '独山县');
INSERT INTO `areacode` VALUES ('2568', '2524', '522727', '平塘县');
INSERT INTO `areacode` VALUES ('2569', '2524', '522728', '罗甸县');
INSERT INTO `areacode` VALUES ('2570', '2524', '522729', '长顺县');
INSERT INTO `areacode` VALUES ('2571', '2524', '522730', '龙里县');
INSERT INTO `areacode` VALUES ('2572', '2524', '522731', '惠水县');
INSERT INTO `areacode` VALUES ('2573', '2524', '522732', '三都水族自治县');
INSERT INTO `areacode` VALUES ('2574', '0', '530000', '云南省');
INSERT INTO `areacode` VALUES ('2575', '2574', '530100', '昆明市');
INSERT INTO `areacode` VALUES ('2576', '2575', '530102', '五华区');
INSERT INTO `areacode` VALUES ('2577', '2575', '530103', '盘龙区');
INSERT INTO `areacode` VALUES ('2578', '2575', '530111', '官渡区');
INSERT INTO `areacode` VALUES ('2579', '2575', '530112', '西山区');
INSERT INTO `areacode` VALUES ('2580', '2575', '530113', '东川区');
INSERT INTO `areacode` VALUES ('2581', '2575', '530114', '呈贡区');
INSERT INTO `areacode` VALUES ('2582', '2575', '530115', '晋宁区');
INSERT INTO `areacode` VALUES ('2583', '2575', '530124', '富民县');
INSERT INTO `areacode` VALUES ('2584', '2575', '530125', '宜良县');
INSERT INTO `areacode` VALUES ('2585', '2575', '530126', '石林彝族自治县');
INSERT INTO `areacode` VALUES ('2586', '2575', '530127', '嵩明县');
INSERT INTO `areacode` VALUES ('2587', '2575', '530128', '禄劝彝族苗族自治县');
INSERT INTO `areacode` VALUES ('2588', '2575', '530129', '寻甸回族彝族自治县');
INSERT INTO `areacode` VALUES ('2589', '2575', '530181', '安宁市');
INSERT INTO `areacode` VALUES ('2590', '2574', '530300', '曲靖市');
INSERT INTO `areacode` VALUES ('2591', '2590', '530302', '麒麟区');
INSERT INTO `areacode` VALUES ('2592', '2590', '530303', '沾益区');
INSERT INTO `areacode` VALUES ('2593', '2590', '530321', '马龙县');
INSERT INTO `areacode` VALUES ('2594', '2590', '530322', '陆良县');
INSERT INTO `areacode` VALUES ('2595', '2590', '530323', '师宗县');
INSERT INTO `areacode` VALUES ('2596', '2590', '530324', '罗平县');
INSERT INTO `areacode` VALUES ('2597', '2590', '530325', '富源县');
INSERT INTO `areacode` VALUES ('2598', '2590', '530326', '会泽县');
INSERT INTO `areacode` VALUES ('2599', '2590', '530381', '宣威市');
INSERT INTO `areacode` VALUES ('2600', '2574', '530400', '玉溪市');
INSERT INTO `areacode` VALUES ('2601', '2600', '530402', '红塔区');
INSERT INTO `areacode` VALUES ('2602', '2600', '530403', '江川区');
INSERT INTO `areacode` VALUES ('2603', '2600', '530422', '澄江县');
INSERT INTO `areacode` VALUES ('2604', '2600', '530423', '通海县');
INSERT INTO `areacode` VALUES ('2605', '2600', '530424', '华宁县');
INSERT INTO `areacode` VALUES ('2606', '2600', '530425', '易门县');
INSERT INTO `areacode` VALUES ('2607', '2600', '530426', '峨山彝族自治县');
INSERT INTO `areacode` VALUES ('2608', '2600', '530427', '新平彝族傣族自治县');
INSERT INTO `areacode` VALUES ('2609', '2600', '530428', '元江哈尼族彝族傣族自治县');
INSERT INTO `areacode` VALUES ('2610', '2574', '530500', '保山市');
INSERT INTO `areacode` VALUES ('2611', '2610', '530502', '隆阳区');
INSERT INTO `areacode` VALUES ('2612', '2610', '530521', '施甸县');
INSERT INTO `areacode` VALUES ('2613', '2610', '530523', '龙陵县');
INSERT INTO `areacode` VALUES ('2614', '2610', '530524', '昌宁县');
INSERT INTO `areacode` VALUES ('2615', '2610', '530581', '腾冲市');
INSERT INTO `areacode` VALUES ('2616', '2574', '530600', '昭通市');
INSERT INTO `areacode` VALUES ('2617', '2616', '530602', '昭阳区');
INSERT INTO `areacode` VALUES ('2618', '2616', '530621', '鲁甸县');
INSERT INTO `areacode` VALUES ('2619', '2616', '530622', '巧家县');
INSERT INTO `areacode` VALUES ('2620', '2616', '530623', '盐津县');
INSERT INTO `areacode` VALUES ('2621', '2616', '530624', '大关县');
INSERT INTO `areacode` VALUES ('2622', '2616', '530625', '永善县');
INSERT INTO `areacode` VALUES ('2623', '2616', '530626', '绥江县');
INSERT INTO `areacode` VALUES ('2624', '2616', '530627', '镇雄县');
INSERT INTO `areacode` VALUES ('2625', '2616', '530628', '彝良县');
INSERT INTO `areacode` VALUES ('2626', '2616', '530629', '威信县');
INSERT INTO `areacode` VALUES ('2627', '2616', '530630', '水富县');
INSERT INTO `areacode` VALUES ('2628', '2574', '530700', '丽江市');
INSERT INTO `areacode` VALUES ('2629', '2628', '530702', '古城区');
INSERT INTO `areacode` VALUES ('2630', '2628', '530721', '玉龙纳西族自治县');
INSERT INTO `areacode` VALUES ('2631', '2628', '530722', '永胜县');
INSERT INTO `areacode` VALUES ('2632', '2628', '530723', '华坪县');
INSERT INTO `areacode` VALUES ('2633', '2628', '530724', '宁蒗彝族自治县');
INSERT INTO `areacode` VALUES ('2634', '2574', '530800', '普洱市');
INSERT INTO `areacode` VALUES ('2635', '2634', '530802', '思茅区');
INSERT INTO `areacode` VALUES ('2636', '2634', '530821', '宁洱哈尼族彝族自治县');
INSERT INTO `areacode` VALUES ('2637', '2634', '530822', '墨江哈尼族自治县');
INSERT INTO `areacode` VALUES ('2638', '2634', '530823', '景东彝族自治县');
INSERT INTO `areacode` VALUES ('2639', '2634', '530824', '景谷傣族彝族自治县');
INSERT INTO `areacode` VALUES ('2640', '2634', '530825', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `areacode` VALUES ('2641', '2634', '530826', '江城哈尼族彝族自治县');
INSERT INTO `areacode` VALUES ('2642', '2634', '530827', '孟连傣族拉祜族佤族自治县');
INSERT INTO `areacode` VALUES ('2643', '2634', '530828', '澜沧拉祜族自治县');
INSERT INTO `areacode` VALUES ('2644', '2634', '530829', '西盟佤族自治县');
INSERT INTO `areacode` VALUES ('2645', '2574', '530900', '临沧市');
INSERT INTO `areacode` VALUES ('2646', '2645', '530902', '临翔区');
INSERT INTO `areacode` VALUES ('2647', '2645', '530921', '凤庆县');
INSERT INTO `areacode` VALUES ('2648', '2645', '530922', '云县');
INSERT INTO `areacode` VALUES ('2649', '2645', '530923', '永德县');
INSERT INTO `areacode` VALUES ('2650', '2645', '530924', '镇康县');
INSERT INTO `areacode` VALUES ('2651', '2645', '530925', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `areacode` VALUES ('2652', '2645', '530926', '耿马傣族佤族自治县');
INSERT INTO `areacode` VALUES ('2653', '2645', '530927', '沧源佤族自治县');
INSERT INTO `areacode` VALUES ('2654', '2645', '532300', '楚雄彝族自治州');
INSERT INTO `areacode` VALUES ('2655', '2645', '532301', '楚雄市');
INSERT INTO `areacode` VALUES ('2656', '2645', '532322', '双柏县');
INSERT INTO `areacode` VALUES ('2657', '2645', '532323', '牟定县');
INSERT INTO `areacode` VALUES ('2658', '2645', '532324', '南华县');
INSERT INTO `areacode` VALUES ('2659', '2645', '532325', '姚安县');
INSERT INTO `areacode` VALUES ('2660', '2645', '532326', '大姚县');
INSERT INTO `areacode` VALUES ('2661', '2645', '532327', '永仁县');
INSERT INTO `areacode` VALUES ('2662', '2645', '532328', '元谋县');
INSERT INTO `areacode` VALUES ('2663', '2645', '532329', '武定县');
INSERT INTO `areacode` VALUES ('2664', '2645', '532331', '禄丰县');
INSERT INTO `areacode` VALUES ('2665', '2645', '532500', '红河哈尼族彝族自治州');
INSERT INTO `areacode` VALUES ('2666', '2645', '532501', '个旧市');
INSERT INTO `areacode` VALUES ('2667', '2645', '532502', '开远市');
INSERT INTO `areacode` VALUES ('2668', '2645', '532503', '蒙自市');
INSERT INTO `areacode` VALUES ('2669', '2645', '532504', '弥勒市');
INSERT INTO `areacode` VALUES ('2670', '2645', '532523', '屏边苗族自治县');
INSERT INTO `areacode` VALUES ('2671', '2645', '532524', '建水县');
INSERT INTO `areacode` VALUES ('2672', '2645', '532525', '石屏县');
INSERT INTO `areacode` VALUES ('2673', '2645', '532527', '泸西县');
INSERT INTO `areacode` VALUES ('2674', '2645', '532528', '元阳县');
INSERT INTO `areacode` VALUES ('2675', '2645', '532529', '红河县');
INSERT INTO `areacode` VALUES ('2676', '2645', '532530', '金平苗族瑶族傣族自治县');
INSERT INTO `areacode` VALUES ('2677', '2645', '532531', '绿春县');
INSERT INTO `areacode` VALUES ('2678', '2645', '532532', '河口瑶族自治县');
INSERT INTO `areacode` VALUES ('2679', '2645', '532600', '文山壮族苗族自治州');
INSERT INTO `areacode` VALUES ('2680', '2645', '532601', '文山市');
INSERT INTO `areacode` VALUES ('2681', '2645', '532622', '砚山县');
INSERT INTO `areacode` VALUES ('2682', '2645', '532623', '西畴县');
INSERT INTO `areacode` VALUES ('2683', '2645', '532624', '麻栗坡县');
INSERT INTO `areacode` VALUES ('2684', '2645', '532625', '马关县');
INSERT INTO `areacode` VALUES ('2685', '2645', '532626', '丘北县');
INSERT INTO `areacode` VALUES ('2686', '2645', '532627', '广南县');
INSERT INTO `areacode` VALUES ('2687', '2645', '532628', '富宁县');
INSERT INTO `areacode` VALUES ('2688', '2645', '532800', '西双版纳傣族自治州');
INSERT INTO `areacode` VALUES ('2689', '2645', '532801', '景洪市');
INSERT INTO `areacode` VALUES ('2690', '2645', '532822', '勐海县');
INSERT INTO `areacode` VALUES ('2691', '2645', '532823', '勐腊县');
INSERT INTO `areacode` VALUES ('2692', '2645', '532900', '大理白族自治州');
INSERT INTO `areacode` VALUES ('2693', '2645', '532901', '大理市');
INSERT INTO `areacode` VALUES ('2694', '2645', '532922', '漾濞彝族自治县');
INSERT INTO `areacode` VALUES ('2695', '2645', '532923', '祥云县');
INSERT INTO `areacode` VALUES ('2696', '2645', '532924', '宾川县');
INSERT INTO `areacode` VALUES ('2697', '2645', '532925', '弥渡县');
INSERT INTO `areacode` VALUES ('2698', '2645', '532926', '南涧彝族自治县');
INSERT INTO `areacode` VALUES ('2699', '2645', '532927', '巍山彝族回族自治县');
INSERT INTO `areacode` VALUES ('2700', '2645', '532928', '永平县');
INSERT INTO `areacode` VALUES ('2701', '2645', '532929', '云龙县');
INSERT INTO `areacode` VALUES ('2702', '2645', '532930', '洱源县');
INSERT INTO `areacode` VALUES ('2703', '2645', '532931', '剑川县');
INSERT INTO `areacode` VALUES ('2704', '2645', '532932', '鹤庆县');
INSERT INTO `areacode` VALUES ('2705', '2645', '533100', '德宏傣族景颇族自治州');
INSERT INTO `areacode` VALUES ('2706', '2645', '533102', '瑞丽市');
INSERT INTO `areacode` VALUES ('2707', '2645', '533103', '芒市');
INSERT INTO `areacode` VALUES ('2708', '2645', '533122', '梁河县');
INSERT INTO `areacode` VALUES ('2709', '2645', '533123', '盈江县');
INSERT INTO `areacode` VALUES ('2710', '2645', '533124', '陇川县');
INSERT INTO `areacode` VALUES ('2711', '2645', '533300', '怒江傈僳族自治州');
INSERT INTO `areacode` VALUES ('2712', '2645', '533301', '泸水市');
INSERT INTO `areacode` VALUES ('2713', '2645', '533323', '福贡县');
INSERT INTO `areacode` VALUES ('2714', '2645', '533324', '贡山独龙族怒族自治县');
INSERT INTO `areacode` VALUES ('2715', '2645', '533325', '兰坪白族普米族自治县');
INSERT INTO `areacode` VALUES ('2716', '2645', '533400', '迪庆藏族自治州');
INSERT INTO `areacode` VALUES ('2717', '2645', '533401', '香格里拉市');
INSERT INTO `areacode` VALUES ('2718', '2645', '533422', '德钦县');
INSERT INTO `areacode` VALUES ('2719', '2645', '533423', '维西傈僳族自治县');
INSERT INTO `areacode` VALUES ('2720', '0', '540000', '西藏自治区');
INSERT INTO `areacode` VALUES ('2721', '2720', '540100', '拉萨市');
INSERT INTO `areacode` VALUES ('2722', '2721', '540102', '城关区');
INSERT INTO `areacode` VALUES ('2723', '2721', '540103', '堆龙德庆区');
INSERT INTO `areacode` VALUES ('2724', '2721', '540104', '达孜区');
INSERT INTO `areacode` VALUES ('2725', '2721', '540121', '林周县');
INSERT INTO `areacode` VALUES ('2726', '2721', '540122', '当雄县');
INSERT INTO `areacode` VALUES ('2727', '2721', '540123', '尼木县');
INSERT INTO `areacode` VALUES ('2728', '2721', '540124', '曲水县');
INSERT INTO `areacode` VALUES ('2729', '2721', '540127', '墨竹工卡县');
INSERT INTO `areacode` VALUES ('2730', '2720', '540200', '日喀则市');
INSERT INTO `areacode` VALUES ('2731', '2730', '540202', '桑珠孜区');
INSERT INTO `areacode` VALUES ('2732', '2730', '540221', '南木林县');
INSERT INTO `areacode` VALUES ('2733', '2730', '540222', '江孜县');
INSERT INTO `areacode` VALUES ('2734', '2730', '540223', '定日县');
INSERT INTO `areacode` VALUES ('2735', '2730', '540224', '萨迦县');
INSERT INTO `areacode` VALUES ('2736', '2730', '540225', '拉孜县');
INSERT INTO `areacode` VALUES ('2737', '2730', '540226', '昂仁县');
INSERT INTO `areacode` VALUES ('2738', '2730', '540227', '谢通门县');
INSERT INTO `areacode` VALUES ('2739', '2730', '540228', '白朗县');
INSERT INTO `areacode` VALUES ('2740', '2730', '540229', '仁布县');
INSERT INTO `areacode` VALUES ('2741', '2730', '540230', '康马县');
INSERT INTO `areacode` VALUES ('2742', '2730', '540231', '定结县');
INSERT INTO `areacode` VALUES ('2743', '2730', '540232', '仲巴县');
INSERT INTO `areacode` VALUES ('2744', '2730', '540233', '亚东县');
INSERT INTO `areacode` VALUES ('2745', '2730', '540234', '吉隆县');
INSERT INTO `areacode` VALUES ('2746', '2730', '540235', '聂拉木县');
INSERT INTO `areacode` VALUES ('2747', '2730', '540236', '萨嘎县');
INSERT INTO `areacode` VALUES ('2748', '2730', '540237', '岗巴县');
INSERT INTO `areacode` VALUES ('2749', '2720', '540300', '昌都市');
INSERT INTO `areacode` VALUES ('2750', '2749', '540302', '卡若区');
INSERT INTO `areacode` VALUES ('2751', '2749', '540321', '江达县');
INSERT INTO `areacode` VALUES ('2752', '2749', '540322', '贡觉县');
INSERT INTO `areacode` VALUES ('2753', '2749', '540323', '类乌齐县');
INSERT INTO `areacode` VALUES ('2754', '2749', '540324', '丁青县');
INSERT INTO `areacode` VALUES ('2755', '2749', '540325', '察雅县');
INSERT INTO `areacode` VALUES ('2756', '2749', '540326', '八宿县');
INSERT INTO `areacode` VALUES ('2757', '2749', '540327', '左贡县');
INSERT INTO `areacode` VALUES ('2758', '2749', '540328', '芒康县');
INSERT INTO `areacode` VALUES ('2759', '2749', '540329', '洛隆县');
INSERT INTO `areacode` VALUES ('2760', '2749', '540330', '边坝县');
INSERT INTO `areacode` VALUES ('2761', '2720', '540400', '林芝市');
INSERT INTO `areacode` VALUES ('2762', '2761', '540402', '巴宜区');
INSERT INTO `areacode` VALUES ('2763', '2761', '540421', '工布江达县');
INSERT INTO `areacode` VALUES ('2764', '2761', '540422', '米林县');
INSERT INTO `areacode` VALUES ('2765', '2761', '540423', '墨脱县');
INSERT INTO `areacode` VALUES ('2766', '2761', '540424', '波密县');
INSERT INTO `areacode` VALUES ('2767', '2761', '540425', '察隅县');
INSERT INTO `areacode` VALUES ('2768', '2761', '540426', '朗县');
INSERT INTO `areacode` VALUES ('2769', '2720', '540500', '山南市');
INSERT INTO `areacode` VALUES ('2770', '2769', '540502', '乃东区');
INSERT INTO `areacode` VALUES ('2771', '2769', '540521', '扎囊县');
INSERT INTO `areacode` VALUES ('2772', '2769', '540522', '贡嘎县');
INSERT INTO `areacode` VALUES ('2773', '2769', '540523', '桑日县');
INSERT INTO `areacode` VALUES ('2774', '2769', '540524', '琼结县');
INSERT INTO `areacode` VALUES ('2775', '2769', '540525', '曲松县');
INSERT INTO `areacode` VALUES ('2776', '2769', '540526', '措美县');
INSERT INTO `areacode` VALUES ('2777', '2769', '540527', '洛扎县');
INSERT INTO `areacode` VALUES ('2778', '2769', '540528', '加查县');
INSERT INTO `areacode` VALUES ('2779', '2769', '540529', '隆子县');
INSERT INTO `areacode` VALUES ('2780', '2769', '540530', '错那县');
INSERT INTO `areacode` VALUES ('2781', '2769', '540531', '浪卡子县');
INSERT INTO `areacode` VALUES ('2782', '2720', '540600', '那曲市');
INSERT INTO `areacode` VALUES ('2783', '2782', '540602', '色尼区');
INSERT INTO `areacode` VALUES ('2784', '2782', '540621', '嘉黎县');
INSERT INTO `areacode` VALUES ('2785', '2782', '540622', '比如县');
INSERT INTO `areacode` VALUES ('2786', '2782', '540623', '聂荣县');
INSERT INTO `areacode` VALUES ('2787', '2782', '540624', '安多县');
INSERT INTO `areacode` VALUES ('2788', '2782', '540625', '申扎县');
INSERT INTO `areacode` VALUES ('2789', '2782', '540626', '索县');
INSERT INTO `areacode` VALUES ('2790', '2782', '540627', '班戈县');
INSERT INTO `areacode` VALUES ('2791', '2782', '540628', '巴青县');
INSERT INTO `areacode` VALUES ('2792', '2782', '540629', '尼玛县');
INSERT INTO `areacode` VALUES ('2793', '2782', '540630', '双湖县');
INSERT INTO `areacode` VALUES ('2794', '2782', '542500', '阿里地区');
INSERT INTO `areacode` VALUES ('2795', '2782', '542521', '普兰县');
INSERT INTO `areacode` VALUES ('2796', '2782', '542522', '札达县');
INSERT INTO `areacode` VALUES ('2797', '2782', '542523', '噶尔县');
INSERT INTO `areacode` VALUES ('2798', '2782', '542524', '日土县');
INSERT INTO `areacode` VALUES ('2799', '2782', '542525', '革吉县');
INSERT INTO `areacode` VALUES ('2800', '2782', '542526', '改则县');
INSERT INTO `areacode` VALUES ('2801', '2782', '542527', '措勤县');
INSERT INTO `areacode` VALUES ('2802', '0', '610000', '陕西省');
INSERT INTO `areacode` VALUES ('2803', '2802', '610100', '西安市');
INSERT INTO `areacode` VALUES ('2804', '2803', '610102', '新城区');
INSERT INTO `areacode` VALUES ('2805', '2803', '610103', '碑林区');
INSERT INTO `areacode` VALUES ('2806', '2803', '610104', '莲湖区');
INSERT INTO `areacode` VALUES ('2807', '2803', '610111', '灞桥区');
INSERT INTO `areacode` VALUES ('2808', '2803', '610112', '未央区');
INSERT INTO `areacode` VALUES ('2809', '2803', '610113', '雁塔区');
INSERT INTO `areacode` VALUES ('2810', '2803', '610114', '阎良区');
INSERT INTO `areacode` VALUES ('2811', '2803', '610115', '临潼区');
INSERT INTO `areacode` VALUES ('2812', '2803', '610116', '长安区');
INSERT INTO `areacode` VALUES ('2813', '2803', '610117', '高陵区');
INSERT INTO `areacode` VALUES ('2814', '2803', '610118', '鄠邑区');
INSERT INTO `areacode` VALUES ('2815', '2803', '610122', '蓝田县');
INSERT INTO `areacode` VALUES ('2816', '2803', '610124', '周至县');
INSERT INTO `areacode` VALUES ('2817', '2802', '610200', '铜川市');
INSERT INTO `areacode` VALUES ('2818', '2817', '610202', '王益区');
INSERT INTO `areacode` VALUES ('2819', '2817', '610203', '印台区');
INSERT INTO `areacode` VALUES ('2820', '2817', '610204', '耀州区');
INSERT INTO `areacode` VALUES ('2821', '2817', '610222', '宜君县');
INSERT INTO `areacode` VALUES ('2822', '2802', '610300', '宝鸡市');
INSERT INTO `areacode` VALUES ('2823', '2822', '610302', '渭滨区');
INSERT INTO `areacode` VALUES ('2824', '2822', '610303', '金台区');
INSERT INTO `areacode` VALUES ('2825', '2822', '610304', '陈仓区');
INSERT INTO `areacode` VALUES ('2826', '2822', '610322', '凤翔县');
INSERT INTO `areacode` VALUES ('2827', '2822', '610323', '岐山县');
INSERT INTO `areacode` VALUES ('2828', '2822', '610324', '扶风县');
INSERT INTO `areacode` VALUES ('2829', '2822', '610326', '眉县');
INSERT INTO `areacode` VALUES ('2830', '2822', '610327', '陇县');
INSERT INTO `areacode` VALUES ('2831', '2822', '610328', '千阳县');
INSERT INTO `areacode` VALUES ('2832', '2822', '610329', '麟游县');
INSERT INTO `areacode` VALUES ('2833', '2822', '610330', '凤县');
INSERT INTO `areacode` VALUES ('2834', '2822', '610331', '太白县');
INSERT INTO `areacode` VALUES ('2835', '2802', '610400', '咸阳市');
INSERT INTO `areacode` VALUES ('2836', '2835', '610402', '秦都区');
INSERT INTO `areacode` VALUES ('2837', '2835', '610403', '杨陵区');
INSERT INTO `areacode` VALUES ('2838', '2835', '610404', '渭城区');
INSERT INTO `areacode` VALUES ('2839', '2835', '610422', '三原县');
INSERT INTO `areacode` VALUES ('2840', '2835', '610423', '泾阳县');
INSERT INTO `areacode` VALUES ('2841', '2835', '610424', '乾县');
INSERT INTO `areacode` VALUES ('2842', '2835', '610425', '礼泉县');
INSERT INTO `areacode` VALUES ('2843', '2835', '610426', '永寿县');
INSERT INTO `areacode` VALUES ('2844', '2835', '610427', '彬县');
INSERT INTO `areacode` VALUES ('2845', '2835', '610428', '长武县');
INSERT INTO `areacode` VALUES ('2846', '2835', '610429', '旬邑县');
INSERT INTO `areacode` VALUES ('2847', '2835', '610430', '淳化县');
INSERT INTO `areacode` VALUES ('2848', '2835', '610431', '武功县');
INSERT INTO `areacode` VALUES ('2849', '2835', '610481', '兴平市');
INSERT INTO `areacode` VALUES ('2850', '2802', '610500', '渭南市');
INSERT INTO `areacode` VALUES ('2851', '2850', '610502', '临渭区');
INSERT INTO `areacode` VALUES ('2852', '2850', '610503', '华州区');
INSERT INTO `areacode` VALUES ('2853', '2850', '610522', '潼关县');
INSERT INTO `areacode` VALUES ('2854', '2850', '610523', '大荔县');
INSERT INTO `areacode` VALUES ('2855', '2850', '610524', '合阳县');
INSERT INTO `areacode` VALUES ('2856', '2850', '610525', '澄城县');
INSERT INTO `areacode` VALUES ('2857', '2850', '610526', '蒲城县');
INSERT INTO `areacode` VALUES ('2858', '2850', '610527', '白水县');
INSERT INTO `areacode` VALUES ('2859', '2850', '610528', '富平县');
INSERT INTO `areacode` VALUES ('2860', '2850', '610581', '韩城市');
INSERT INTO `areacode` VALUES ('2861', '2850', '610582', '华阴市');
INSERT INTO `areacode` VALUES ('2862', '2802', '610600', '延安市');
INSERT INTO `areacode` VALUES ('2863', '2862', '610602', '宝塔区');
INSERT INTO `areacode` VALUES ('2864', '2862', '610603', '安塞区');
INSERT INTO `areacode` VALUES ('2865', '2862', '610621', '延长县');
INSERT INTO `areacode` VALUES ('2866', '2862', '610622', '延川县');
INSERT INTO `areacode` VALUES ('2867', '2862', '610623', '子长县');
INSERT INTO `areacode` VALUES ('2868', '2862', '610625', '志丹县');
INSERT INTO `areacode` VALUES ('2869', '2862', '610626', '吴起县');
INSERT INTO `areacode` VALUES ('2870', '2862', '610627', '甘泉县');
INSERT INTO `areacode` VALUES ('2871', '2862', '610628', '富县');
INSERT INTO `areacode` VALUES ('2872', '2862', '610629', '洛川县');
INSERT INTO `areacode` VALUES ('2873', '2862', '610630', '宜川县');
INSERT INTO `areacode` VALUES ('2874', '2862', '610631', '黄龙县');
INSERT INTO `areacode` VALUES ('2875', '2862', '610632', '黄陵县');
INSERT INTO `areacode` VALUES ('2876', '2802', '610700', '汉中市');
INSERT INTO `areacode` VALUES ('2877', '2876', '610702', '汉台区');
INSERT INTO `areacode` VALUES ('2878', '2876', '610703', '南郑区');
INSERT INTO `areacode` VALUES ('2879', '2876', '610722', '城固县');
INSERT INTO `areacode` VALUES ('2880', '2876', '610723', '洋县');
INSERT INTO `areacode` VALUES ('2881', '2876', '610724', '西乡县');
INSERT INTO `areacode` VALUES ('2882', '2876', '610725', '勉县');
INSERT INTO `areacode` VALUES ('2883', '2876', '610726', '宁强县');
INSERT INTO `areacode` VALUES ('2884', '2876', '610727', '略阳县');
INSERT INTO `areacode` VALUES ('2885', '2876', '610728', '镇巴县');
INSERT INTO `areacode` VALUES ('2886', '2876', '610729', '留坝县');
INSERT INTO `areacode` VALUES ('2887', '2876', '610730', '佛坪县');
INSERT INTO `areacode` VALUES ('2888', '2802', '610800', '榆林市');
INSERT INTO `areacode` VALUES ('2889', '2888', '610802', '榆阳区');
INSERT INTO `areacode` VALUES ('2890', '2888', '610803', '横山区');
INSERT INTO `areacode` VALUES ('2891', '2888', '610822', '府谷县');
INSERT INTO `areacode` VALUES ('2892', '2888', '610824', '靖边县');
INSERT INTO `areacode` VALUES ('2893', '2888', '610825', '定边县');
INSERT INTO `areacode` VALUES ('2894', '2888', '610826', '绥德县');
INSERT INTO `areacode` VALUES ('2895', '2888', '610827', '米脂县');
INSERT INTO `areacode` VALUES ('2896', '2888', '610828', '佳县');
INSERT INTO `areacode` VALUES ('2897', '2888', '610829', '吴堡县');
INSERT INTO `areacode` VALUES ('2898', '2888', '610830', '清涧县');
INSERT INTO `areacode` VALUES ('2899', '2888', '610831', '子洲县');
INSERT INTO `areacode` VALUES ('2900', '2888', '610881', '神木市');
INSERT INTO `areacode` VALUES ('2901', '2802', '610900', '安康市');
INSERT INTO `areacode` VALUES ('2902', '2901', '610902', '汉滨区');
INSERT INTO `areacode` VALUES ('2903', '2901', '610921', '汉阴县');
INSERT INTO `areacode` VALUES ('2904', '2901', '610922', '石泉县');
INSERT INTO `areacode` VALUES ('2905', '2901', '610923', '宁陕县');
INSERT INTO `areacode` VALUES ('2906', '2901', '610924', '紫阳县');
INSERT INTO `areacode` VALUES ('2907', '2901', '610925', '岚皋县');
INSERT INTO `areacode` VALUES ('2908', '2901', '610926', '平利县');
INSERT INTO `areacode` VALUES ('2909', '2901', '610927', '镇坪县');
INSERT INTO `areacode` VALUES ('2910', '2901', '610928', '旬阳县');
INSERT INTO `areacode` VALUES ('2911', '2901', '610929', '白河县');
INSERT INTO `areacode` VALUES ('2912', '2802', '611000', '商洛市');
INSERT INTO `areacode` VALUES ('2913', '2912', '611002', '商州区');
INSERT INTO `areacode` VALUES ('2914', '2912', '611021', '洛南县');
INSERT INTO `areacode` VALUES ('2915', '2912', '611022', '丹凤县');
INSERT INTO `areacode` VALUES ('2916', '2912', '611023', '商南县');
INSERT INTO `areacode` VALUES ('2917', '2912', '611024', '山阳县');
INSERT INTO `areacode` VALUES ('2918', '2912', '611025', '镇安县');
INSERT INTO `areacode` VALUES ('2919', '2912', '611026', '柞水县');
INSERT INTO `areacode` VALUES ('2920', '0', '620000', '甘肃省');
INSERT INTO `areacode` VALUES ('2921', '2920', '620100', '兰州市');
INSERT INTO `areacode` VALUES ('2922', '2921', '620102', '城关区');
INSERT INTO `areacode` VALUES ('2923', '2921', '620103', '七里河区');
INSERT INTO `areacode` VALUES ('2924', '2921', '620104', '西固区');
INSERT INTO `areacode` VALUES ('2925', '2921', '620105', '安宁区');
INSERT INTO `areacode` VALUES ('2926', '2921', '620111', '红古区');
INSERT INTO `areacode` VALUES ('2927', '2921', '620121', '永登县');
INSERT INTO `areacode` VALUES ('2928', '2921', '620122', '皋兰县');
INSERT INTO `areacode` VALUES ('2929', '2921', '620123', '榆中县');
INSERT INTO `areacode` VALUES ('2930', '2920', '620200', '嘉峪关市');
INSERT INTO `areacode` VALUES ('2931', '2920', '620300', '金昌市');
INSERT INTO `areacode` VALUES ('2932', '2931', '620302', '金川区');
INSERT INTO `areacode` VALUES ('2933', '2931', '620321', '永昌县');
INSERT INTO `areacode` VALUES ('2934', '2920', '620400', '白银市');
INSERT INTO `areacode` VALUES ('2935', '2934', '620402', '白银区');
INSERT INTO `areacode` VALUES ('2936', '2934', '620403', '平川区');
INSERT INTO `areacode` VALUES ('2937', '2934', '620421', '靖远县');
INSERT INTO `areacode` VALUES ('2938', '2934', '620422', '会宁县');
INSERT INTO `areacode` VALUES ('2939', '2934', '620423', '景泰县');
INSERT INTO `areacode` VALUES ('2940', '2920', '620500', '天水市');
INSERT INTO `areacode` VALUES ('2941', '2940', '620502', '秦州区');
INSERT INTO `areacode` VALUES ('2942', '2940', '620503', '麦积区');
INSERT INTO `areacode` VALUES ('2943', '2940', '620521', '清水县');
INSERT INTO `areacode` VALUES ('2944', '2940', '620522', '秦安县');
INSERT INTO `areacode` VALUES ('2945', '2940', '620523', '甘谷县');
INSERT INTO `areacode` VALUES ('2946', '2940', '620524', '武山县');
INSERT INTO `areacode` VALUES ('2947', '2940', '620525', '张家川回族自治县');
INSERT INTO `areacode` VALUES ('2948', '2920', '620600', '武威市');
INSERT INTO `areacode` VALUES ('2949', '2948', '620602', '凉州区');
INSERT INTO `areacode` VALUES ('2950', '2948', '620621', '民勤县');
INSERT INTO `areacode` VALUES ('2951', '2948', '620622', '古浪县');
INSERT INTO `areacode` VALUES ('2952', '2948', '620623', '天祝藏族自治县');
INSERT INTO `areacode` VALUES ('2953', '2920', '620700', '张掖市');
INSERT INTO `areacode` VALUES ('2954', '2953', '620702', '甘州区');
INSERT INTO `areacode` VALUES ('2955', '2953', '620721', '肃南裕固族自治县');
INSERT INTO `areacode` VALUES ('2956', '2953', '620722', '民乐县');
INSERT INTO `areacode` VALUES ('2957', '2953', '620723', '临泽县');
INSERT INTO `areacode` VALUES ('2958', '2953', '620724', '高台县');
INSERT INTO `areacode` VALUES ('2959', '2953', '620725', '山丹县');
INSERT INTO `areacode` VALUES ('2960', '2920', '620800', '平凉市');
INSERT INTO `areacode` VALUES ('2961', '2960', '620802', '崆峒区');
INSERT INTO `areacode` VALUES ('2962', '2960', '620821', '泾川县');
INSERT INTO `areacode` VALUES ('2963', '2960', '620822', '灵台县');
INSERT INTO `areacode` VALUES ('2964', '2960', '620823', '崇信县');
INSERT INTO `areacode` VALUES ('2965', '2960', '620824', '华亭县');
INSERT INTO `areacode` VALUES ('2966', '2960', '620825', '庄浪县');
INSERT INTO `areacode` VALUES ('2967', '2960', '620826', '静宁县');
INSERT INTO `areacode` VALUES ('2968', '2920', '620900', '酒泉市');
INSERT INTO `areacode` VALUES ('2969', '2968', '620902', '肃州区');
INSERT INTO `areacode` VALUES ('2970', '2968', '620921', '金塔县');
INSERT INTO `areacode` VALUES ('2971', '2968', '620922', '瓜州县');
INSERT INTO `areacode` VALUES ('2972', '2968', '620923', '肃北蒙古族自治县');
INSERT INTO `areacode` VALUES ('2973', '2968', '620924', '阿克塞哈萨克族自治县');
INSERT INTO `areacode` VALUES ('2974', '2968', '620981', '玉门市');
INSERT INTO `areacode` VALUES ('2975', '2968', '620982', '敦煌市');
INSERT INTO `areacode` VALUES ('2976', '2920', '621000', '庆阳市');
INSERT INTO `areacode` VALUES ('2977', '2976', '621002', '西峰区');
INSERT INTO `areacode` VALUES ('2978', '2976', '621021', '庆城县');
INSERT INTO `areacode` VALUES ('2979', '2976', '621022', '环县');
INSERT INTO `areacode` VALUES ('2980', '2976', '621023', '华池县');
INSERT INTO `areacode` VALUES ('2981', '2976', '621024', '合水县');
INSERT INTO `areacode` VALUES ('2982', '2976', '621025', '正宁县');
INSERT INTO `areacode` VALUES ('2983', '2976', '621026', '宁县');
INSERT INTO `areacode` VALUES ('2984', '2976', '621027', '镇原县');
INSERT INTO `areacode` VALUES ('2985', '2920', '621100', '定西市');
INSERT INTO `areacode` VALUES ('2986', '2985', '621102', '安定区');
INSERT INTO `areacode` VALUES ('2987', '2985', '621121', '通渭县');
INSERT INTO `areacode` VALUES ('2988', '2985', '621122', '陇西县');
INSERT INTO `areacode` VALUES ('2989', '2985', '621123', '渭源县');
INSERT INTO `areacode` VALUES ('2990', '2985', '621124', '临洮县');
INSERT INTO `areacode` VALUES ('2991', '2985', '621125', '漳县');
INSERT INTO `areacode` VALUES ('2992', '2985', '621126', '岷县');
INSERT INTO `areacode` VALUES ('2993', '2920', '621200', '陇南市');
INSERT INTO `areacode` VALUES ('2994', '2993', '621202', '武都区');
INSERT INTO `areacode` VALUES ('2995', '2993', '621221', '成县');
INSERT INTO `areacode` VALUES ('2996', '2993', '621222', '文县');
INSERT INTO `areacode` VALUES ('2997', '2993', '621223', '宕昌县');
INSERT INTO `areacode` VALUES ('2998', '2993', '621224', '康县');
INSERT INTO `areacode` VALUES ('2999', '2993', '621225', '西和县');
INSERT INTO `areacode` VALUES ('3000', '2993', '621226', '礼县');
INSERT INTO `areacode` VALUES ('3001', '2993', '621227', '徽县');
INSERT INTO `areacode` VALUES ('3002', '2993', '621228', '两当县');
INSERT INTO `areacode` VALUES ('3003', '2993', '622900', '临夏回族自治州');
INSERT INTO `areacode` VALUES ('3004', '2993', '622901', '临夏市');
INSERT INTO `areacode` VALUES ('3005', '2993', '622921', '临夏县');
INSERT INTO `areacode` VALUES ('3006', '2993', '622922', '康乐县');
INSERT INTO `areacode` VALUES ('3007', '2993', '622923', '永靖县');
INSERT INTO `areacode` VALUES ('3008', '2993', '622924', '广河县');
INSERT INTO `areacode` VALUES ('3009', '2993', '622925', '和政县');
INSERT INTO `areacode` VALUES ('3010', '2993', '622926', '东乡族自治县');
INSERT INTO `areacode` VALUES ('3011', '2993', '622927', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `areacode` VALUES ('3012', '2993', '623000', '甘南藏族自治州');
INSERT INTO `areacode` VALUES ('3013', '2920', '623001', '合作市');
INSERT INTO `areacode` VALUES ('3014', '3013', '623021', '临潭县');
INSERT INTO `areacode` VALUES ('3015', '3013', '623022', '卓尼县');
INSERT INTO `areacode` VALUES ('3016', '3013', '623023', '舟曲县');
INSERT INTO `areacode` VALUES ('3017', '3013', '623024', '迭部县');
INSERT INTO `areacode` VALUES ('3018', '3013', '623025', '玛曲县');
INSERT INTO `areacode` VALUES ('3019', '3013', '623026', '碌曲县');
INSERT INTO `areacode` VALUES ('3020', '3013', '623027', '夏河县');
INSERT INTO `areacode` VALUES ('3021', '0', '630000', '青海省');
INSERT INTO `areacode` VALUES ('3022', '3021', '630100', '西宁市');
INSERT INTO `areacode` VALUES ('3023', '3022', '630102', '城东区');
INSERT INTO `areacode` VALUES ('3024', '3022', '630103', '城中区');
INSERT INTO `areacode` VALUES ('3025', '3022', '630104', '城西区');
INSERT INTO `areacode` VALUES ('3026', '3022', '630105', '城北区');
INSERT INTO `areacode` VALUES ('3027', '3022', '630121', '大通回族土族自治县');
INSERT INTO `areacode` VALUES ('3028', '3022', '630122', '湟中县');
INSERT INTO `areacode` VALUES ('3029', '3022', '630123', '湟源县');
INSERT INTO `areacode` VALUES ('3030', '3021', '630200', '海东市');
INSERT INTO `areacode` VALUES ('3031', '3030', '630202', '乐都区');
INSERT INTO `areacode` VALUES ('3032', '3030', '630203', '平安区');
INSERT INTO `areacode` VALUES ('3033', '3030', '630222', '民和回族土族自治县');
INSERT INTO `areacode` VALUES ('3034', '3030', '630223', '互助土族自治县');
INSERT INTO `areacode` VALUES ('3035', '3030', '630224', '化隆回族自治县');
INSERT INTO `areacode` VALUES ('3036', '3030', '630225', '循化撒拉族自治县');
INSERT INTO `areacode` VALUES ('3037', '3030', '632200', '海北藏族自治州');
INSERT INTO `areacode` VALUES ('3038', '3030', '632221', '门源回族自治县');
INSERT INTO `areacode` VALUES ('3039', '3030', '632222', '祁连县');
INSERT INTO `areacode` VALUES ('3040', '3030', '632223', '海晏县');
INSERT INTO `areacode` VALUES ('3041', '3030', '632224', '刚察县');
INSERT INTO `areacode` VALUES ('3042', '3030', '632300', '黄南藏族自治州');
INSERT INTO `areacode` VALUES ('3043', '3030', '632321', '同仁县');
INSERT INTO `areacode` VALUES ('3044', '3030', '632322', '尖扎县');
INSERT INTO `areacode` VALUES ('3045', '3030', '632323', '泽库县');
INSERT INTO `areacode` VALUES ('3046', '3030', '632324', '河南蒙古族自治县');
INSERT INTO `areacode` VALUES ('3047', '3030', '632500', '海南藏族自治州');
INSERT INTO `areacode` VALUES ('3048', '3030', '632521', '共和县');
INSERT INTO `areacode` VALUES ('3049', '3030', '632522', '同德县');
INSERT INTO `areacode` VALUES ('3050', '3030', '632523', '贵德县');
INSERT INTO `areacode` VALUES ('3051', '3030', '632524', '兴海县');
INSERT INTO `areacode` VALUES ('3052', '3030', '632525', '贵南县');
INSERT INTO `areacode` VALUES ('3053', '3030', '632600', '果洛藏族自治州');
INSERT INTO `areacode` VALUES ('3054', '3030', '632621', '玛沁县');
INSERT INTO `areacode` VALUES ('3055', '3030', '632622', '班玛县');
INSERT INTO `areacode` VALUES ('3056', '3030', '632623', '甘德县');
INSERT INTO `areacode` VALUES ('3057', '3030', '632624', '达日县');
INSERT INTO `areacode` VALUES ('3058', '3030', '632625', '久治县');
INSERT INTO `areacode` VALUES ('3059', '3030', '632626', '玛多县');
INSERT INTO `areacode` VALUES ('3060', '3030', '632700', '玉树藏族自治州');
INSERT INTO `areacode` VALUES ('3061', '3030', '632701', '玉树市');
INSERT INTO `areacode` VALUES ('3062', '3030', '632722', '杂多县');
INSERT INTO `areacode` VALUES ('3063', '3030', '632723', '称多县');
INSERT INTO `areacode` VALUES ('3064', '3030', '632724', '治多县');
INSERT INTO `areacode` VALUES ('3065', '3030', '632725', '囊谦县');
INSERT INTO `areacode` VALUES ('3066', '3030', '632726', '曲麻莱县');
INSERT INTO `areacode` VALUES ('3067', '3030', '632800', '海西蒙古族藏族自治州');
INSERT INTO `areacode` VALUES ('3068', '3030', '632801', '格尔木市');
INSERT INTO `areacode` VALUES ('3069', '3030', '632802', '德令哈市');
INSERT INTO `areacode` VALUES ('3070', '3030', '632821', '乌兰县');
INSERT INTO `areacode` VALUES ('3071', '3030', '632822', '都兰县');
INSERT INTO `areacode` VALUES ('3072', '3030', '632823', '天峻县');
INSERT INTO `areacode` VALUES ('3073', '0', '640000', '宁夏回族自治区');
INSERT INTO `areacode` VALUES ('3074', '3073', '640100', '银川市');
INSERT INTO `areacode` VALUES ('3075', '3074', '640104', '兴庆区');
INSERT INTO `areacode` VALUES ('3076', '3074', '640105', '西夏区');
INSERT INTO `areacode` VALUES ('3077', '3074', '640106', '金凤区');
INSERT INTO `areacode` VALUES ('3078', '3074', '640121', '永宁县');
INSERT INTO `areacode` VALUES ('3079', '3074', '640122', '贺兰县');
INSERT INTO `areacode` VALUES ('3080', '3074', '640181', '灵武市');
INSERT INTO `areacode` VALUES ('3081', '3073', '640200', '石嘴山市');
INSERT INTO `areacode` VALUES ('3082', '3081', '640202', '大武口区');
INSERT INTO `areacode` VALUES ('3083', '3081', '640205', '惠农区');
INSERT INTO `areacode` VALUES ('3084', '3081', '640221', '平罗县');
INSERT INTO `areacode` VALUES ('3085', '3073', '640300', '吴忠市');
INSERT INTO `areacode` VALUES ('3086', '3085', '640302', '利通区');
INSERT INTO `areacode` VALUES ('3087', '3085', '640303', '红寺堡区');
INSERT INTO `areacode` VALUES ('3088', '3085', '640323', '盐池县');
INSERT INTO `areacode` VALUES ('3089', '3085', '640324', '同心县');
INSERT INTO `areacode` VALUES ('3090', '3085', '640381', '青铜峡市');
INSERT INTO `areacode` VALUES ('3091', '3073', '640400', '固原市');
INSERT INTO `areacode` VALUES ('3092', '3091', '640402', '原州区');
INSERT INTO `areacode` VALUES ('3093', '3091', '640422', '西吉县');
INSERT INTO `areacode` VALUES ('3094', '3091', '640423', '隆德县');
INSERT INTO `areacode` VALUES ('3095', '3091', '640424', '泾源县');
INSERT INTO `areacode` VALUES ('3096', '3091', '640425', '彭阳县');
INSERT INTO `areacode` VALUES ('3097', '3073', '640500', '中卫市');
INSERT INTO `areacode` VALUES ('3098', '3097', '640502', '沙坡头区');
INSERT INTO `areacode` VALUES ('3099', '3097', '640521', '中宁县');
INSERT INTO `areacode` VALUES ('3100', '3097', '640522', '海原县');
INSERT INTO `areacode` VALUES ('3101', '0', '650000', '新疆维吾尔自治区');
INSERT INTO `areacode` VALUES ('3102', '3101', '650100', '乌鲁木齐市');
INSERT INTO `areacode` VALUES ('3103', '3102', '650102', '天山区');
INSERT INTO `areacode` VALUES ('3104', '3102', '650103', '沙依巴克区');
INSERT INTO `areacode` VALUES ('3105', '3102', '650104', '新市区');
INSERT INTO `areacode` VALUES ('3106', '3102', '650105', '水磨沟区');
INSERT INTO `areacode` VALUES ('3107', '3102', '650106', '头屯河区');
INSERT INTO `areacode` VALUES ('3108', '3102', '650107', '达坂城区');
INSERT INTO `areacode` VALUES ('3109', '3102', '650109', '米东区');
INSERT INTO `areacode` VALUES ('3110', '3102', '650121', '乌鲁木齐县');
INSERT INTO `areacode` VALUES ('3111', '3101', '650200', '克拉玛依市');
INSERT INTO `areacode` VALUES ('3112', '3111', '650202', '独山子区');
INSERT INTO `areacode` VALUES ('3113', '3111', '650203', '克拉玛依区');
INSERT INTO `areacode` VALUES ('3114', '3111', '650204', '白碱滩区');
INSERT INTO `areacode` VALUES ('3115', '3111', '650205', '乌尔禾区');
INSERT INTO `areacode` VALUES ('3116', '3101', '650400', '吐鲁番市');
INSERT INTO `areacode` VALUES ('3117', '3116', '650402', '高昌区');
INSERT INTO `areacode` VALUES ('3118', '3116', '650421', '鄯善县');
INSERT INTO `areacode` VALUES ('3119', '3116', '650422', '托克逊县');
INSERT INTO `areacode` VALUES ('3120', '3101', '650500', '哈密市');
INSERT INTO `areacode` VALUES ('3121', '3120', '650502', '伊州区');
INSERT INTO `areacode` VALUES ('3122', '3120', '650521', '巴里坤哈萨克自治县');
INSERT INTO `areacode` VALUES ('3123', '3120', '650522', '伊吾县');
INSERT INTO `areacode` VALUES ('3124', '3120', '652300', '昌吉回族自治州');
INSERT INTO `areacode` VALUES ('3125', '3120', '652301', '昌吉市');
INSERT INTO `areacode` VALUES ('3126', '3120', '652302', '阜康市');
INSERT INTO `areacode` VALUES ('3127', '3120', '652323', '呼图壁县');
INSERT INTO `areacode` VALUES ('3128', '3120', '652324', '玛纳斯县');
INSERT INTO `areacode` VALUES ('3129', '3120', '652325', '奇台县');
INSERT INTO `areacode` VALUES ('3130', '3120', '652327', '吉木萨尔县');
INSERT INTO `areacode` VALUES ('3131', '3120', '652328', '木垒哈萨克自治县');
INSERT INTO `areacode` VALUES ('3132', '3120', '652700', '博尔塔拉蒙古自治州');
INSERT INTO `areacode` VALUES ('3133', '3120', '652701', '博乐市');
INSERT INTO `areacode` VALUES ('3134', '3120', '652702', '阿拉山口市');
INSERT INTO `areacode` VALUES ('3135', '3120', '652722', '精河县');
INSERT INTO `areacode` VALUES ('3136', '3120', '652723', '温泉县');
INSERT INTO `areacode` VALUES ('3137', '3120', '652800', '巴音郭楞蒙古自治州');
INSERT INTO `areacode` VALUES ('3138', '3120', '652801', '库尔勒市');
INSERT INTO `areacode` VALUES ('3139', '3120', '652822', '轮台县');
INSERT INTO `areacode` VALUES ('3140', '3120', '652823', '尉犁县');
INSERT INTO `areacode` VALUES ('3141', '3120', '652824', '若羌县');
INSERT INTO `areacode` VALUES ('3142', '3120', '652825', '且末县');
INSERT INTO `areacode` VALUES ('3143', '3120', '652826', '焉耆回族自治县');
INSERT INTO `areacode` VALUES ('3144', '3120', '652827', '和静县');
INSERT INTO `areacode` VALUES ('3145', '3120', '652828', '和硕县');
INSERT INTO `areacode` VALUES ('3146', '3120', '652829', '博湖县');
INSERT INTO `areacode` VALUES ('3147', '3120', '652900', '阿克苏地区');
INSERT INTO `areacode` VALUES ('3148', '3120', '652901', '阿克苏市');
INSERT INTO `areacode` VALUES ('3149', '3120', '652922', '温宿县');
INSERT INTO `areacode` VALUES ('3150', '3120', '652923', '库车县');
INSERT INTO `areacode` VALUES ('3151', '3120', '652924', '沙雅县');
INSERT INTO `areacode` VALUES ('3152', '3120', '652925', '新和县');
INSERT INTO `areacode` VALUES ('3153', '3120', '652926', '拜城县');
INSERT INTO `areacode` VALUES ('3154', '3120', '652927', '乌什县');
INSERT INTO `areacode` VALUES ('3155', '3120', '652928', '阿瓦提县');
INSERT INTO `areacode` VALUES ('3156', '3120', '652929', '柯坪县');
INSERT INTO `areacode` VALUES ('3157', '3120', '653000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `areacode` VALUES ('3158', '3101', '653001', '阿图什市');
INSERT INTO `areacode` VALUES ('3159', '3158', '653022', '阿克陶县');
INSERT INTO `areacode` VALUES ('3160', '3158', '653023', '阿合奇县');
INSERT INTO `areacode` VALUES ('3161', '3158', '653024', '乌恰县');
INSERT INTO `areacode` VALUES ('3162', '3158', '653100', '喀什地区');
INSERT INTO `areacode` VALUES ('3163', '3158', '653101', '喀什市');
INSERT INTO `areacode` VALUES ('3164', '3158', '653121', '疏附县');
INSERT INTO `areacode` VALUES ('3165', '3158', '653122', '疏勒县');
INSERT INTO `areacode` VALUES ('3166', '3158', '653123', '英吉沙县');
INSERT INTO `areacode` VALUES ('3167', '3158', '653124', '泽普县');
INSERT INTO `areacode` VALUES ('3168', '3158', '653125', '莎车县');
INSERT INTO `areacode` VALUES ('3169', '3158', '653126', '叶城县');
INSERT INTO `areacode` VALUES ('3170', '3158', '653127', '麦盖提县');
INSERT INTO `areacode` VALUES ('3171', '3158', '653128', '岳普湖县');
INSERT INTO `areacode` VALUES ('3172', '3158', '653129', '伽师县');
INSERT INTO `areacode` VALUES ('3173', '3158', '653130', '巴楚县');
INSERT INTO `areacode` VALUES ('3174', '3158', '653131', '塔什库尔干塔吉克自治县');
INSERT INTO `areacode` VALUES ('3175', '3158', '653200', '和田地区');
INSERT INTO `areacode` VALUES ('3176', '3158', '653201', '和田市');
INSERT INTO `areacode` VALUES ('3177', '3158', '653221', '和田县');
INSERT INTO `areacode` VALUES ('3178', '3158', '653222', '墨玉县');
INSERT INTO `areacode` VALUES ('3179', '3158', '653223', '皮山县');
INSERT INTO `areacode` VALUES ('3180', '3158', '653224', '洛浦县');
INSERT INTO `areacode` VALUES ('3181', '3158', '653225', '策勒县');
INSERT INTO `areacode` VALUES ('3182', '3158', '653226', '于田县');
INSERT INTO `areacode` VALUES ('3183', '3158', '653227', '民丰县');
INSERT INTO `areacode` VALUES ('3184', '3158', '654000', '伊犁哈萨克自治州');
INSERT INTO `areacode` VALUES ('3185', '3101', '654002', '伊宁市');
INSERT INTO `areacode` VALUES ('3186', '3101', '654003', '奎屯市');
INSERT INTO `areacode` VALUES ('3187', '3101', '654004', '霍尔果斯市');
INSERT INTO `areacode` VALUES ('3188', '3187', '654021', '伊宁县');
INSERT INTO `areacode` VALUES ('3189', '3187', '654022', '察布查尔锡伯自治县');
INSERT INTO `areacode` VALUES ('3190', '3187', '654023', '霍城县');
INSERT INTO `areacode` VALUES ('3191', '3187', '654024', '巩留县');
INSERT INTO `areacode` VALUES ('3192', '3187', '654025', '新源县');
INSERT INTO `areacode` VALUES ('3193', '3187', '654026', '昭苏县');
INSERT INTO `areacode` VALUES ('3194', '3187', '654027', '特克斯县');
INSERT INTO `areacode` VALUES ('3195', '3187', '654028', '尼勒克县');
INSERT INTO `areacode` VALUES ('3196', '3187', '654200', '塔城地区');
INSERT INTO `areacode` VALUES ('3197', '3187', '654201', '塔城市');
INSERT INTO `areacode` VALUES ('3198', '3187', '654202', '乌苏市');
INSERT INTO `areacode` VALUES ('3199', '3187', '654221', '额敏县');
INSERT INTO `areacode` VALUES ('3200', '3187', '654223', '沙湾县');
INSERT INTO `areacode` VALUES ('3201', '3187', '654224', '托里县');
INSERT INTO `areacode` VALUES ('3202', '3187', '654225', '裕民县');
INSERT INTO `areacode` VALUES ('3203', '3187', '654226', '和布克赛尔蒙古自治县');
INSERT INTO `areacode` VALUES ('3204', '3187', '654300', '阿勒泰地区');
INSERT INTO `areacode` VALUES ('3205', '3187', '654301', '阿勒泰市');
INSERT INTO `areacode` VALUES ('3206', '3187', '654321', '布尔津县');
INSERT INTO `areacode` VALUES ('3207', '3187', '654322', '富蕴县');
INSERT INTO `areacode` VALUES ('3208', '3187', '654323', '福海县');
INSERT INTO `areacode` VALUES ('3209', '3187', '654324', '哈巴河县');
INSERT INTO `areacode` VALUES ('3210', '3187', '654325', '青河县');
INSERT INTO `areacode` VALUES ('3211', '3187', '654326', '吉木乃县');
INSERT INTO `areacode` VALUES ('3212', '3101', '659001', '石河子市');
INSERT INTO `areacode` VALUES ('3213', '3101', '659002', '阿拉尔市');
INSERT INTO `areacode` VALUES ('3214', '3101', '659003', '图木舒克市');
INSERT INTO `areacode` VALUES ('3215', '3101', '659004', '五家渠市');
INSERT INTO `areacode` VALUES ('3216', '3101', '659005', '北屯市');
INSERT INTO `areacode` VALUES ('3217', '3101', '659006', '铁门关市');
INSERT INTO `areacode` VALUES ('3218', '3101', '659007', '双河市');
INSERT INTO `areacode` VALUES ('3219', '3101', '659008', '可克达拉市');
INSERT INTO `areacode` VALUES ('3220', '3101', '659009', '昆玉市');
INSERT INTO `areacode` VALUES ('3221', '0', '710000', '台湾省');
INSERT INTO `areacode` VALUES ('3222', '0', '810000', '香港特别行政区');
INSERT INTO `areacode` VALUES ('3223', '0', '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL,
  `typeid` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `picture` varchar(200) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `linktype` tinyint(4) DEFAULT '0' COMMENT '跳转类型,阿楷定义 "0": "首页",',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='内容表';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('3', '1014', '1', '第三届“多彩话童”全国青少年语言艺术大赛开始了 ', '<p><strong>一、活动宗旨</strong><s><u><span class=\"ql-cursor\">﻿﻿﻿﻿﻿﻿</span></u></s></p><p>&nbsp;领导人在十九大报告中强调：“文化是一个国家、一个民族的灵魂。文化兴国运兴，文化强民族强。没有高度的文化自信，没有文化的繁荣兴盛，就没有中华民族伟大复兴。”</p>', 'http://akivipic.meisaas.com/VHIIJhAh36824993.jpg', '金龟子与您相约在中国传媒大学，你准备好了吗？ ', '2018-09-12 15:20:29', '2018-11-12 18:08:43', '3');
INSERT INTO `article` VALUES ('4', '1014', '2', '会员内容', '<p><strong>会员福利：</strong></p><p>一键式成为vip会员，可以享受产品折扣优惠，还可以拥有推荐产品上限时秒杀的权利……更多智能选购体验等你来参与哟</p>', 'http://akivipic.meisaas.com/OgrRQilm62887180.png', '会员内容会员内容会员内容', '2018-09-17 13:41:43', '2018-11-05 16:22:02', '1');
INSERT INTO `article` VALUES ('5', '1014', '2', 'sad', '<p>撒大声地aasdasasdasdasdasdasdasdas</p>', 'http://akivipic.meisaas.com/ziEJGNsM98206107.png', 'sad', '2018-11-14 14:10:09', '2018-11-05 16:22:31', '2');
INSERT INTO `article` VALUES ('6', '1014', '1', 'sad', '<p>啊实打实sad撒大声地的阿萨德阿萨德阿萨德阿萨德阿萨德是d</p>', 'http://akivipic.meisaas.com/YEKJuj__04441486.png', 'sad', '2018-11-05 15:54:12', '2018-11-05 16:22:44', '0');
INSERT INTO `article` VALUES ('8', '1014', '1', '测试', '<p>s实打实设计可谓佛来我家二级品我饿金融危机人颇为金融危机饿哦i</p>', 'http://akivipic.meisaas.com/aQRjCXMO09351431.png', '是滴是滴', '2018-11-05 17:16:22', '2018-11-12 13:17:40', '3');
INSERT INTO `article` VALUES ('10', '1', '2', '撒啊飒飒飒飒', '<p>s水水水水水水水水水水水水水水水水水水水水撒撒</p>', 'http://cdn.huodongxing.com/Content/app/appom/193479456655076.jpg', '嗡嗡嗡为', '2019-07-12 21:19:29', '2019-07-12 21:19:29', '2');
INSERT INTO `article` VALUES ('11', '1', '2', '飒飒撒', '<p>q去嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡五七五七七五</p>', 'https://cdn.huodongxing.com/logo/201906/1497866245700/103457411367139_v2small.jpg', '哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇', '2019-07-12 21:22:30', '2019-07-12 21:22:30', '1');
INSERT INTO `article` VALUES ('12', '1', '1', '为谔谔谔谔谔谔谔谔谔谔', '<p>g呱呱呱呱呱呱呱呱呱呱呱呱呱呱呱古古怪怪</p>', 'https://cdn.huodongxing.com/logo/201906/1497866245700/103457411367139_v2small.jpg', '呃呃呃呃呃呃呃呃呃呃呃呃呃', '2019-07-12 21:22:46', '2019-07-12 21:22:46', '0');
INSERT INTO `article` VALUES ('13', '1', '2', '的水水水水水水水水水水', '<p>h哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</p>', 'https://cdn.huodongxing.com/logo/201906/1497866245700/103457411367139_v2small.jpg', '顶顶顶顶顶顶顶顶', '2019-07-12 21:23:06', '2019-07-12 21:23:06', '0');

-- ----------------------------
-- Table structure for articletype
-- ----------------------------
DROP TABLE IF EXISTS `articletype`;
CREATE TABLE `articletype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sortvalue` tinyint(3) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='内容分类';

-- ----------------------------
-- Records of articletype
-- ----------------------------
INSERT INTO `articletype` VALUES ('1', '1014', '活动', '1', '2018-09-12 15:01:51', '2018-09-12 15:01:51');
INSERT INTO `articletype` VALUES ('2', '1014', '会员内容', '2', '2018-09-17 13:38:40', '2018-09-17 13:38:43');

-- ----------------------------
-- Table structure for authorization
-- ----------------------------
DROP TABLE IF EXISTS `authorization`;
CREATE TABLE `authorization` (
  `merid` int(10) NOT NULL,
  `appid` varchar(100) NOT NULL,
  `accesstoken` varchar(200) NOT NULL,
  `refreshtoken` varchar(200) NOT NULL,
  `authtype` varchar(10) NOT NULL COMMENT '授权类型(wxa:小程序授权，wp:微信公众号授权)',
  `expiretime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `iscancel` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authorization
-- ----------------------------

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card
-- ----------------------------

-- ----------------------------
-- Table structure for cardstyle
-- ----------------------------
DROP TABLE IF EXISTS `cardstyle`;
CREATE TABLE `cardstyle` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员卡模板id',
  `merid` int(11) NOT NULL COMMENT '商户id',
  `cardurl` varchar(100) NOT NULL COMMENT '会员卡图片',
  `cardname` varchar(50) NOT NULL COMMENT '会员卡名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '会员卡说明',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员卡模版表';

-- ----------------------------
-- Records of cardstyle
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) DEFAULT NULL,
  `catename` varchar(50) DEFAULT NULL,
  `catepic` varchar(200) DEFAULT NULL,
  `sortvalue` tinyint(4) DEFAULT NULL,
  `parentid` int(10) DEFAULT NULL,
  `ishidden` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `isrecommend` tinyint(4) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '1014', '我的速度', 'http://akivipic.meisaas.com/VAKRaLhG54205365.jpg', '2', '0', '1', '1', '2018-09-11 16:16:23', '2018-09-11 16:23:27');
INSERT INTO `category` VALUES ('2', '1014', '校园必备', 'http://akivipic.meisaas.com/mzwRCOqL54195180.jpg', '1', '0', '0', '0', '2018-09-11 16:16:37', '2018-09-12 18:57:05');
INSERT INTO `category` VALUES ('5', '1014', '数码产品', 'http://pic.meisaas.com/wechat/sales/summer_special.png', '0', '0', '0', '0', '2018-09-11 16:16:52', '2018-09-12 18:57:19');
INSERT INTO `category` VALUES ('6', null, '最新分类', 'http://pic.meisaas.com/wechat/sales/summer_special.png', '3', '0', '1', '1', '2019-07-12 10:49:55', '2019-07-12 10:49:55');

-- ----------------------------
-- Table structure for checkcode
-- ----------------------------
DROP TABLE IF EXISTS `checkcode`;
CREATE TABLE `checkcode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) DEFAULT NULL,
  `code` int(10) DEFAULT NULL,
  `expiretime` datetime DEFAULT NULL COMMENT '过期时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkcode
-- ----------------------------
INSERT INTO `checkcode` VALUES ('1', '13971141337', '490848', '2018-09-19 16:33:20', '2018-09-19 16:28:20', '2018-09-11 16:07:53');
INSERT INTO `checkcode` VALUES ('2', '13055912971', '442242', '2018-11-12 18:11:13', '2018-11-12 18:06:13', '2018-09-11 16:44:11');
INSERT INTO `checkcode` VALUES ('4', '18868926846', '473172', '2018-12-10 14:45:56', '2018-12-10 14:40:56', '2018-09-12 13:27:27');
INSERT INTO `checkcode` VALUES ('5', '13935684346', '640769', '2018-10-17 11:46:57', '2018-10-17 11:41:57', '2018-10-17 11:41:57');
INSERT INTO `checkcode` VALUES ('6', '18879705120', '543379', '2018-11-23 19:54:47', '2018-11-23 19:49:47', '2018-10-23 17:00:22');
INSERT INTO `checkcode` VALUES ('7', '18824118536', '173221', '2018-11-12 18:13:07', '2018-11-12 18:08:07', '2018-11-05 17:06:18');

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code` (
  `codeid` int(11) NOT NULL AUTO_INCREMENT,
  `merid` decimal(10,0) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `code` decimal(10,0) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`codeid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES ('1', '1', '13012311111', '123', '2019-07-10 11:27:08');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `merid` int(10) NOT NULL,
  `shopname` varchar(150) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `wechat` varchar(25) DEFAULT NULL COMMENT '微信号',
  `mail` varchar(25) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(200) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `industry` text,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '测试店铺', '测试公司', '张三', 'http://akivipic.meisaas.com/rpFOWubl54363777.jpg', 'harlaaa', '123@163.com', '古翠路', '13900000001', '<p>高端大气上档次的公司</p>', '2018-09-11 16:26:11', '2018-09-11 16:26:11');

-- ----------------------------
-- Table structure for component
-- ----------------------------
DROP TABLE IF EXISTS `component`;
CREATE TABLE `component` (
  `appid` varchar(100) NOT NULL,
  `appsecret` varchar(200) NOT NULL,
  `ticket` varchar(2000) DEFAULT NULL,
  `accesstoken` varchar(2000) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of component
-- ----------------------------
INSERT INTO `component` VALUES ('wx5c1590027955d73b', '0110c150fbd2ba54512f61c511cc85bb', 'ticket@@@bWAj1kS9KaIIbd8lW3IXeOoCFKufTPjsakD5pRafmD2X22axLSRYwcrCuhVrTlYVjSa6Ufzzxjjzdp9-Vbp8qA', '11_D_AD1VTn1vN_JKRuVKNT2YBH3sTrYOjJsRrPGoGwkRcAs7rXOXPrHsA5xoV1TX8wpZQHcI9UdhCB7-jhPslrYk4ERtkQdsHP6XpUPbo_RhIWW7KGXLFpsq-Ghol-up_5Xizfb381ct2VCAceWXDcAGAKLR', '2017-12-24 19:42:21', '2018-07-11 16:50:48');

-- ----------------------------
-- Table structure for configuration
-- ----------------------------
DROP TABLE IF EXISTS `configuration`;
CREATE TABLE `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL COMMENT '比例值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of configuration
-- ----------------------------
INSERT INTO `configuration` VALUES ('1', 'signintointegral', '签到赠送积分', '1');
INSERT INTO `configuration` VALUES ('2', 'invitetointegral', '邀请注册赠送积分', '2');
INSERT INTO `configuration` VALUES ('3', 'vipprice', '会员价格(%)', '70');
INSERT INTO `configuration` VALUES ('4', 'fastleveltoaward', '一级获赠消费后金额比例(%)', '10');
INSERT INTO `configuration` VALUES ('5', 'secondleveltoaward', '二级获赠消费后金额比例(%)', '7');
INSERT INTO `configuration` VALUES ('6', 'threeleveltoaward', '三级获赠消费后金额比例(%)', '5');
INSERT INTO `configuration` VALUES ('7', 'shoppingtointegral', '购物获赠积分(%)', '5');
INSERT INTO `configuration` VALUES ('8', 'medal', '满多少人赠送奖章', '0');
INSERT INTO `configuration` VALUES ('9', 'getservicecharge', '提现手续费(%)', '6');
INSERT INTO `configuration` VALUES ('10', 'shareitemtointegral', '分享商品获赠积分', '0');
INSERT INTO `configuration` VALUES ('11', 'activitytonumber', '活动赠送奖章个数', '0');
INSERT INTO `configuration` VALUES ('12', 'seckillitemnum', '秒杀商品购买数量限制', '1');
INSERT INTO `configuration` VALUES ('13', 'sellvipprice', '购买会员的价格', '1');

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券id',
  `merid` int(11) NOT NULL COMMENT '商户id',
  `couponname` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `couponbackground` varchar(255) DEFAULT NULL COMMENT '优惠券图片',
  `couponcolor` varchar(255) DEFAULT NULL COMMENT '优惠券颜色',
  `brandname` varchar(255) NOT NULL COMMENT '店铺简称',
  `coupontype` tinyint(3) NOT NULL COMMENT '优惠券类型(1:满减券，2:代金券,3,月券,)',
  `couponnum` int(11) NOT NULL COMMENT '优惠券数量',
  `remainnum` int(11) NOT NULL COMMENT '剩余数量',
  `price` float(10,2) NOT NULL COMMENT '优惠券价格',
  `minprice` float(10,2) NOT NULL COMMENT '优惠券使用情况(满XX元可用)',
  `couponmodel` tinyint(3) NOT NULL COMMENT '优惠券优惠方式(1优惠XX元，2折扣)',
  `cutprice` float(10,2) NOT NULL COMMENT '优惠券优惠金额(优惠XX元或10=9折)',
  `maxnum` int(10) NOT NULL COMMENT '限领数量(0无限制)',
  `couponscene` tinyint(3) NOT NULL COMMENT '投放场景(1注册返券，2下单领取，3点击领券,5会员礼包,6.扫码领券)',
  `couponscope` tinyint(3) NOT NULL COMMENT '卡券使用范围(1全场通用，2分类，3单品)',
  `couponcateids` varchar(255) DEFAULT NULL COMMENT '投放分类id集合',
  `couponitemids` varchar(255) DEFAULT NULL COMMENT '投放单品id集合',
  `usertype` tinyint(3) NOT NULL COMMENT '适用人群(1所有人，2新注册用户)',
  `remark` varchar(255) NOT NULL COMMENT '使用说明',
  `duration` int(10) NOT NULL DEFAULT '0' COMMENT '使用时长',
  `isissued` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否投放',
  `expiretime` datetime DEFAULT NULL COMMENT '有效时间',
  `issuetime` datetime DEFAULT NULL COMMENT '投放时间',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  `iscancel` tinyint(4) unsigned zerofill DEFAULT '0000' COMMENT '是否删除',
  `uselimit` int(11) DEFAULT NULL COMMENT '类型的使用限制',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('18', '1014', '维修抵用券', null, null, '校园小八', '2', '1000', '1000', '0.00', '0.00', '1', '30.00', '3', '5', '3', null, '9', '1', '抵扣30元维修费用', '0', '1', '2021-07-21 10:50:25', '2018-10-25 10:50:25', '2018-10-25 10:50:25', '2018-10-25 10:50:25', '0000', null);
INSERT INTO `coupon` VALUES ('19', '1014', '贴膜券', null, null, '校园小八', '3', '10000', '10000', '0.00', '0.00', '1', '20.00', '10', '5', '3', null, '8', '1', '手机贴膜抵用券', '0', '1', '2021-07-21 10:51:51', '2018-10-25 10:51:51', '2018-10-25 10:51:51', '2018-10-25 10:51:51', '0000', '4');
INSERT INTO `coupon` VALUES ('20', '1014', '换屏券', null, null, '校园小八', '2', '10000', '10000', '0.00', '0.00', '1', '100.00', '1', '5', '3', null, '9', '1', '抵扣100换屏费用', '0', '1', '2021-07-21 10:54:19', '2018-10-25 10:54:19', '2018-10-25 10:54:19', '2018-10-25 10:54:19', '0000', null);
INSERT INTO `coupon` VALUES ('21', '1014', '维修抵用券', null, null, '校园小八', '2', '10000', '10000', '0.00', '0.00', '1', '10.00', '1', '5', '3', null, '9', '1', '抵扣10维修费用', '0', '1', '2021-07-21 10:56:06', '2018-10-25 10:56:06', '2018-10-25 10:56:06', '2018-10-25 10:56:06', '0000', null);
INSERT INTO `coupon` VALUES ('22', '1014', '换屏券', null, null, '校园小八', '2', '10000', '10000', '0.00', '0.00', '1', '100.00', '1', '5', '3', null, '8,9', '1', '阿萨大大', '0', '1', '2021-07-28 16:29:35', '2018-11-01 16:29:35', '2018-11-01 16:29:35', '2018-11-01 16:29:35', '0000', null);
INSERT INTO `coupon` VALUES ('23', '1014', '新用户满减卷', null, null, '新用户', '1', '3', '3', '0.00', '10.00', '1', '10.00', '2', '1', '1', null, null, '1', '消费金额满10可用', '100', '1', '2046-03-23 14:37:57', '2018-11-05 14:37:57', '2018-11-05 14:37:57', '2018-11-05 14:37:57', '0000', null);
INSERT INTO `coupon` VALUES ('24', '1014', '新用户代金', null, null, '新用户代金', '2', '4', '4', '0.00', '0.00', '1', '10.00', '1', '1', '1', null, null, '1', '消费金额立减10元', '10', '0', '2018-11-24 21:04:56', '2018-11-23 21:04:56', '2018-11-05 14:38:55', '2018-11-05 14:38:55', '0000', null);

-- ----------------------------
-- Table structure for couponlog
-- ----------------------------
DROP TABLE IF EXISTS `couponlog`;
CREATE TABLE `couponlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `orderid` varchar(30) NOT NULL COMMENT '订单编号',
  `memcouponid` int(11) NOT NULL COMMENT '用户优惠券id',
  `amount` float(10,2) NOT NULL COMMENT '消费总金额',
  `discount` float(10,2) NOT NULL COMMENT '折扣金额',
  `createtime` datetime NOT NULL COMMENT '使用时间',
  `couponname` varchar(255) DEFAULT NULL COMMENT '优惠券名字',
  `couponid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='优惠券日志表';

-- ----------------------------
-- Records of couponlog
-- ----------------------------
INSERT INTO `couponlog` VALUES ('1', '201809111705161000546697219', '1', '10.00', '20.00', '2018-09-13 17:56:26', null, null);
INSERT INTO `couponlog` VALUES ('2', '201809142103371001717908857', '3', '76.10', '10.00', '2018-09-14 21:03:37', null, null);
INSERT INTO `couponlog` VALUES ('3', '201809142113381000576002806', '4', '47.70', '100.00', '2018-09-14 21:13:38', null, null);
INSERT INTO `couponlog` VALUES ('4', '201809142119021001151117634', '3', '76.10', '10.00', '2018-09-14 21:19:02', null, null);
INSERT INTO `couponlog` VALUES ('5', '201809142142501001820005959', '1', '201.10', '10.00', '2018-09-14 21:42:50', null, null);
INSERT INTO `couponlog` VALUES ('7', '201809181104201001561740713', '2', '0.01', '100.00', '2018-09-18 11:04:20', null, null);
INSERT INTO `couponlog` VALUES ('8', '201809181334461000730616717', '6', '0.01', '100.00', '2018-09-18 13:34:46', null, null);
INSERT INTO `couponlog` VALUES ('9', '201809181343171001088419538', '8', '0.01', '100.00', '2018-09-18 13:43:17', null, null);
INSERT INTO `couponlog` VALUES ('10', '201809181345541000846091222', '1', '90.01', '10.00', '2018-09-18 13:45:54', null, null);
INSERT INTO `couponlog` VALUES ('11', '201809181346201001766065241', '8', '0.01', '100.00', '2018-09-18 13:46:20', null, null);
INSERT INTO `couponlog` VALUES ('12', '201809181350451001575330413', '10', '0.01', '100.00', '2018-09-18 13:50:45', null, null);
INSERT INTO `couponlog` VALUES ('13', '201809181412331001510487380', '12', '0.01', '100.00', '2018-09-18 14:12:33', null, null);
INSERT INTO `couponlog` VALUES ('14', '201810241510131000039250764', '1', '90.01', '10.00', '2018-10-24 15:10:13', null, null);
INSERT INTO `couponlog` VALUES ('15', '201810251419431000793191788', '14', '0.00', '100.00', '2018-10-25 14:19:40', null, null);
INSERT INTO `couponlog` VALUES ('16', '201810251448351001370034277', '4', '0.00', '20.00', '2018-10-25 14:52:19', null, null);
INSERT INTO `couponlog` VALUES ('17', '201810251501431001253985354', '5', '0.00', '20.00', '2018-10-25 15:01:39', null, null);
INSERT INTO `couponlog` VALUES ('18', '201810251503561001010543575', '6', '0.00', '20.00', '2018-10-25 15:07:39', null, null);
INSERT INTO `couponlog` VALUES ('19', '201810251546081000954102026', '16', '5.00', '30.00', '2018-10-25 15:46:05', '维修抵用券', '18');
INSERT INTO `couponlog` VALUES ('20', '201810251550541000691309803', '17', '0.10', '30.00', '2018-10-25 15:50:51', '维修抵用券', '18');
INSERT INTO `couponlog` VALUES ('21', '201810251605021000363342089', '7', '0.00', '20.00', '2018-10-25 16:04:58', '贴膜券', '19');
INSERT INTO `couponlog` VALUES ('22', '201810251631061000249198786', '1', '47.00', '30.00', '2018-10-25 16:31:02', '维修抵用券', '18');
INSERT INTO `couponlog` VALUES ('23', '201810251712271001060966701', '2', '47.00', '30.00', '2018-10-25 17:12:27', '维修抵用券', '18');
INSERT INTO `couponlog` VALUES ('24', '201810251731461001598997983', '1', '0.00', '30.00', '2018-10-25 17:31:46', '维修抵用券', '18');
INSERT INTO `couponlog` VALUES ('25', '201810251735491001979671056', '3', '0.00', '30.00', '2018-10-25 17:35:49', '维修抵用券', '18');
INSERT INTO `couponlog` VALUES ('26', '201810251736231001691809533', '15', '67.00', '10.00', '2018-10-25 17:36:23', '维修抵用券', '21');
INSERT INTO `couponlog` VALUES ('27', '201810251751061001955103459', '2', '0.00', '30.00', '2018-10-25 17:51:06', '维修抵用券', '18');
INSERT INTO `couponlog` VALUES ('28', '201810251751441000373685336', '15', '0.08', '10.00', '2018-10-25 17:51:44', '维修抵用券', '21');
INSERT INTO `couponlog` VALUES ('29', '201810251757481001375130679', '15', '20.10', '10.00', '2018-10-25 17:57:48', '维修抵用券', '21');
INSERT INTO `couponlog` VALUES ('30', '201810251903491001478386303', '29', '0.00', '100.00', '2018-10-25 19:03:49', '换屏券', '20');
INSERT INTO `couponlog` VALUES ('31', '201810251904151000337114019', '33', '0.10', '30.00', '2018-10-25 19:04:15', '维修抵用券', '18');
INSERT INTO `couponlog` VALUES ('32', '201810251904321001993755571', '44', '0.00', '100.00', '2018-10-25 19:04:32', '换屏券', '20');
INSERT INTO `couponlog` VALUES ('33', '201810251904461002105690561', '75', '20.10', '10.00', '2018-10-25 19:04:46', '维修抵用券', '21');
INSERT INTO `couponlog` VALUES ('34', '201811011632241000250009673', '74', '0.00', '100.00', '2018-11-01 16:32:24', '换屏券', '20');
INSERT INTO `couponlog` VALUES ('35', '201811051724091000463146545', '81', '0.00', '10.00', '2018-11-05 17:24:09', '新用户代金', '24');
INSERT INTO `couponlog` VALUES ('36', '201811051726101000809819802', '79', '0.00', '10.00', '2018-11-05 17:26:10', '新用户满减卷', '23');
INSERT INTO `couponlog` VALUES ('37', '201811051804331000368403226', '76', '201.00', '10.00', '2018-11-05 18:04:33', '新用户满减卷', '23');

-- ----------------------------
-- Table structure for craftsman
-- ----------------------------
DROP TABLE IF EXISTS `craftsman`;
CREATE TABLE `craftsman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merid` int(11) NOT NULL,
  `nickname` varchar(10) DEFAULT NULL COMMENT '姓名',
  `title` varchar(50) DEFAULT NULL COMMENT '头衔',
  `workage` tinyint(4) DEFAULT NULL COMMENT '工作年限',
  `skilllabel` varchar(100) DEFAULT NULL COMMENT '特长标签',
  `resume` varchar(4000) DEFAULT NULL COMMENT '简介',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of craftsman
-- ----------------------------

-- ----------------------------
-- Table structure for family
-- ----------------------------
DROP TABLE IF EXISTS `family`;
CREATE TABLE `family` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(120) DEFAULT NULL,
  `detail` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of family
-- ----------------------------

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `memid` int(10) DEFAULT NULL,
  `itemid` int(10) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES ('43', '5', '2018-09-11 18:30:43');
INSERT INTO `favorite` VALUES ('43', '6', '2018-09-13 18:38:14');

-- ----------------------------
-- Table structure for integralflow
-- ----------------------------
DROP TABLE IF EXISTS `integralflow`;
CREATE TABLE `integralflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '获取类型',
  `scale` decimal(11,2) DEFAULT NULL COMMENT '赠送的值',
  `merid` int(11) DEFAULT NULL,
  `memid` int(11) DEFAULT NULL,
  `configid` int(11) DEFAULT NULL COMMENT '配置表id',
  `createtime` datetime DEFAULT NULL,
  `isexpense` tinyint(4) DEFAULT NULL COMMENT '支出1  收入0',
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of integralflow
-- ----------------------------
INSERT INTO `integralflow` VALUES ('1', '签到赠送积分', '1.00', '1014', '1', '1', '2018-09-11 16:35:19', '0', null);
INSERT INTO `integralflow` VALUES ('2', '分享商品获赠积分', '0.00', '1014', '1', null, '2018-09-11 17:06:13', '0', null);
INSERT INTO `integralflow` VALUES ('3', '分享商品获赠积分', '0.00', '1014', '1', null, '2018-09-11 17:06:17', '0', null);
INSERT INTO `integralflow` VALUES ('4', '分享商品获赠积分', '0.00', '1014', '2', null, '2018-09-11 18:08:33', '0', null);
INSERT INTO `integralflow` VALUES ('5', '分享商品获赠积分', '0.00', '1014', '1', null, '2018-09-11 18:25:45', '0', null);
INSERT INTO `integralflow` VALUES ('6', '分享商品获赠积分', '0.00', '1014', '1', null, '2018-09-11 18:29:28', '0', null);
INSERT INTO `integralflow` VALUES ('7', '分享商品获赠积分', '0.00', '1014', '1', null, '2018-09-11 18:29:52', '0', null);
INSERT INTO `integralflow` VALUES ('8', '签到赠送积分', '1.00', '1014', '2', '1', '2018-09-12 09:38:46', '0', null);
INSERT INTO `integralflow` VALUES ('9', '分享商品获赠积分', '0.00', '1014', '6', null, '2018-10-24 14:25:33', '0', null);
INSERT INTO `integralflow` VALUES ('10', '邀请注册赠送积分', '2.00', '1014', '6', '2', '2018-10-25 18:53:02', '0', null);
INSERT INTO `integralflow` VALUES ('11', '分享商品获赠积分', '0.00', '1014', '8', null, '2018-11-06 10:54:43', '0', null);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `itemtype` tinyint(3) DEFAULT '1' COMMENT '商品类型，(1是普通商品',
  `itemmodel` tinyint(3) NOT NULL DEFAULT '1' COMMENT '商品模型(1、普通商品，2、秒杀商品，3、积分商品，4.套餐商品 ,5 新品推荐）',
  `cateid` int(11) DEFAULT NULL,
  `marketprice` float(10,2) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `description` text,
  `picurl` varchar(200) DEFAULT NULL,
  `istop` tinyint(4) DEFAULT '0' COMMENT '是否置顶',
  `isrecommend` tinyint(4) DEFAULT NULL,
  `ishidden` tinyint(3) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `seckillbegin` datetime DEFAULT NULL COMMENT '秒杀开始',
  `seckillend` datetime DEFAULT NULL COMMENT '秒杀结束',
  `vipprice` float(10,2) DEFAULT '0.00' COMMENT 'vip价格',
  `oldprice` float(10,2) DEFAULT NULL,
  `integral` float(11,2) DEFAULT '1000.00' COMMENT '积分购买价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('3', '1014', '测试122', '1', '4', '2', '123.00', '123.00', '123', '<p>123</p>', 'https://img.alicdn.com/imgextra/i1/628189716/O1CN01o8Ofxs2LdyiG5ZVpM_!!628189716.jpg_430x430q90.jpg', '0', '0', '0', '2018-09-11 16:33:11', '2018-09-11 16:34:25', null, null, '22.00', '0.00', '0.00');
INSERT INTO `item` VALUES ('4', '1014', '超级商品', '1', '4', '1', '111.00', '222.00', '123', '<p>阿萨飒飒</p>', 'https://img.alicdn.com/imgextra/i3/421050009/O1CN01jRQzGN1BwA6jN9BAm_!!0-saturn_solar.jpg_220x220.jpg_.webp', '1', '1', '0', '2018-09-11 16:33:28', '2018-09-18 11:03:38', null, null, '33.00', '0.00', '0.00');
INSERT INTO `item` VALUES ('5', '1014', '测试无敌', '1', '2', '1', '1.00', '2.00', '6', '<p>嘤嘤嘤</p>', 'http://img004.hc360.cn/g8/M09/15/24/wKhQt1OEXaGEE_SHAAAAAOlhTxk623.jpg', '0', '0', '0', '2018-09-11 16:48:08', '2018-09-11 16:48:40', '2019-07-12 19:12:37', '2019-07-31 19:12:37', '123.00', '0.00', '0.00');
INSERT INTO `item` VALUES ('6', '1014', '阿萨德', '1', '5', '1', '0.01', '211.00', '11', '<p>sad</p>', 'http://akivipic.meisaas.com/LxtvAeWn55900732.jpg', '1', '1', '0', '2018-09-11 16:51:41', '2018-09-11 17:20:08', null, null, '1.00', '0.00', '0.00');
INSERT INTO `item` VALUES ('7', '1014', '很好的商品', '1', '4', '3', '20.00', '30.00', '17', '<p><strong>【美业生态拓客循环系统】</strong></p><p>一年只需拓一次的系统&nbsp;！</p><p><strong>杭州站：2018年11月4日</strong></p><p><br></p><p>3天时间让你店增300+新客&nbsp;！</p><p>30天做出你店3倍的业绩！</p><p>业绩治百病，拓客排万难！没有顾客什么都空谈&nbsp;！</p><p><br></p><p><strong>私人订制</strong></p><p>【拓客】拓到满意为止</p><p>【留客】才是重头戏让店</p><p>【业绩】\"基础业绩\"比平时翻3倍！纯新客户开发，发单顾客50%以上出单率，199一单，1年新客自动循环，非美容产品！</p><p><br></p><p><strong>【现场干货分享】</strong>沙龙人数仅限30名，先到先得，报名请点击下图二维码～</p><p><br></p><p><strong>活动报名时间</strong>：10月28日-11月2日下午18:00</p><p><strong>开始时间</strong>：2018年11月4日&nbsp;&nbsp;周末下午14:00</p><p><strong>公交车站</strong>：节能公司站下（77路、25路、36路、74路、86路、199路、37路）</p><p><br></p><p><br></p><p><br></p><p><strong><em>江苏名媛女子会所</em></strong></p><p><img src=\"http://akivipic.meisaas.com/CMIluvoW18971397.jpg\"></p><p><br></p><p><strong><em>慈溪 创美媛</em></strong></p><p><img src=\"http://akivipic.meisaas.com/kZLhLnzq19028070.jpg\"></p><p><br></p><p><strong><em>海宁时代佳人</em></strong></p><p><img src=\"http://akivipic.meisaas.com/woLIzFCH19063301.jpg\"></p><p><br></p><p><br></p>', 'http://akivipic.meisaas.com/dFVTjJDh17854635.jpg', '1', '1', '0', '2018-09-12 18:58:26', '2018-10-27 13:45:03', null, null, '12.00', '0.00', '0.00');
INSERT INTO `item` VALUES ('8', '1014', '手机贴膜1', '1', '4', '4', '30.00', '20.00', '100', '<p>我是手机贴膜</p>', 'http://akivipic.meisaas.com/OlcfMXOI33149285.jpg', '0', '0', '0', '2018-10-25 10:06:10', '2018-10-25 14:45:17', null, null, '23.00', '0.00', '0.00');
INSERT INTO `item` VALUES ('9', '1014', '维修', '1', '1', '4', '30.00', '50.00', '100', '<p>手机维修</p>', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '0', '0', '0', '2018-10-25 10:31:13', '2018-10-25 15:49:58', '2019-07-13 00:00:00', '2019-07-17 00:00:00', '2.00', '0.00', '0.00');
INSERT INTO `item` VALUES ('12', '1014', '手机', '1', '1', '2', '1.00', '1.00', '0', '<p>s水电费水电费</p>', 'https://img.alicdn.com/imgextra/i3/26468968/O1CN01wkv3aj2G7OSd1AObx_!!0-saturn_solar.jpg_220x220.jpg_.webp', '0', '0', '0', '2018-11-02 13:19:32', '2018-11-02 13:19:32', null, null, '3.00', null, '0.00');
INSERT INTO `item` VALUES ('13', '1014', '上古神兽', '1', '5', '3', '20.00', '10.00', '999', '<p>s涉及到哈市的健康会没地方能理解的垃圾分类kljsdjfldjl什么都输了就看见你的快乐</p>', 'https://img.alicdn.com/imgextra/i1/53887732/O1CN01QImPTn26zItF6LbPh_!!0-saturn_solar.jpg_220x220.jpg_.webp', '0', '0', '0', '2018-11-05 17:25:49', '2018-11-05 17:25:49', null, null, '1.00', null, '0.00');
INSERT INTO `item` VALUES ('14', '1014', '撒大声地', '1', '1', '3', '0.01', '0.02', '3333', '<p>a阿大声道阿萨德阿萨德阿萨德阿萨德阿萨德</p>', 'https://img.alicdn.com/imgextra/i3/26468968/O1CN01V82q2N2G7OSbnMiMj_!!0-saturn_solar.jpg_220x220.jpg_.webp', '0', '0', '0', '2018-11-05 17:43:12', '2018-11-05 17:43:12', null, null, '1.00', null, '0.00');
INSERT INTO `item` VALUES ('15', '1', 'assassinated ', '1', '1', '2', '1.00', '2.00', '3', '<p>d当时的</p>', 'https://img.alicdn.com/imgextra/i3/131835021/O1CN016pqv6i1mxf92A6LvK_!!0-saturn_solar.jpg_220x220.jpg_.webp', '1', '1', '0', '2019-07-10 20:08:25', '2019-07-10 20:08:25', null, null, '1.00', '1.00', '2.00');
INSERT INTO `item` VALUES ('19', '1', '七万五千', '1', '4', '2', '1.00', '2.00', '3', '<p>电风扇大师傅士大夫</p>', 'http://img004.hc360.cn/g8/M09/15/24/wKhQt1OEXaGEE_SHAAAAAOlhTxk623.jpg', '1', '1', '0', '2019-07-10 20:29:17', '2019-07-10 20:29:17', null, null, '5.00', null, null);

-- ----------------------------
-- Table structure for itemattr
-- ----------------------------
DROP TABLE IF EXISTS `itemattr`;
CREATE TABLE `itemattr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(11) DEFAULT NULL,
  `cateid` int(10) DEFAULT NULL,
  `attrname` varchar(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemattr
-- ----------------------------
INSERT INTO `itemattr` VALUES ('1', '1014', '1', '颜色', '2018-09-11 16:21:27', '2018-09-11 16:21:27');
INSERT INTO `itemattr` VALUES ('2', '1014', '1', '尺寸', '2018-09-11 16:21:31', '2018-09-11 16:21:31');
INSERT INTO `itemattr` VALUES ('3', '1014', '4', '维修类型', '2018-10-25 10:31:41', '2018-10-25 10:31:41');
INSERT INTO `itemattr` VALUES ('4', '1014', '2', '测试', '2018-11-02 10:56:29', '2018-11-02 10:56:29');
INSERT INTO `itemattr` VALUES ('5', '1014', '2', '另外一个规格', '2018-11-02 11:00:30', '2018-11-02 11:00:30');
INSERT INTO `itemattr` VALUES ('6', '1014', '3', 'sad', '2018-11-05 17:43:19', '2018-11-05 17:43:19');

-- ----------------------------
-- Table structure for itembargain
-- ----------------------------
DROP TABLE IF EXISTS `itembargain`;
CREATE TABLE `itembargain` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itembargain
-- ----------------------------

-- ----------------------------
-- Table structure for itembargainassist
-- ----------------------------
DROP TABLE IF EXISTS `itembargainassist`;
CREATE TABLE `itembargainassist` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '帮忙砍价id',
  `itembarid` int(10) NOT NULL COMMENT '砍价信息id',
  `memid` int(11) NOT NULL COMMENT '用户id',
  `weakensale` float(10,2) NOT NULL COMMENT '砍得价格',
  `content` varchar(100) NOT NULL COMMENT '随机text',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮忙砍价表';

-- ----------------------------
-- Records of itembargainassist
-- ----------------------------

-- ----------------------------
-- Table structure for itembargains
-- ----------------------------
DROP TABLE IF EXISTS `itembargains`;
CREATE TABLE `itembargains` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '砍价信息id',
  `merid` int(10) NOT NULL COMMENT '商户id',
  `memid` int(10) NOT NULL COMMENT '用户id',
  `itemid` int(10) NOT NULL COMMENT '砍价商品id',
  `orderid` varchar(27) DEFAULT NULL,
  `surplussale` float(10,2) NOT NULL COMMENT '剩余砍价金额',
  `historysales` float(10,2) NOT NULL COMMENT '已砍价金额',
  `status` tinyint(4) NOT NULL COMMENT '砍价状态(1、砍价中，2、已完成，3等待中，4、支付完成，5、已取消)',
  `endtime` datetime NOT NULL COMMENT '砍价结束时间',
  `createtime` datetime NOT NULL COMMENT '砍价创建时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  `expiretime` datetime DEFAULT NULL COMMENT '失效时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='砍价信息表';

-- ----------------------------
-- Records of itembargains
-- ----------------------------

-- ----------------------------
-- Table structure for itemevaluate
-- ----------------------------
DROP TABLE IF EXISTS `itemevaluate`;
CREATE TABLE `itemevaluate` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评价id',
  `memid` int(10) NOT NULL COMMENT '评价用户Id',
  `itemid` int(10) NOT NULL COMMENT '商品ID',
  `avatarurl` varchar(200) NOT NULL COMMENT '用户头像',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `itemsku` varchar(50) DEFAULT NULL COMMENT '商品sku',
  `remark` varchar(200) NOT NULL COMMENT '评价内容',
  `evaluateurls` varchar(255) DEFAULT NULL COMMENT '图片集',
  `rate` tinyint(3) NOT NULL COMMENT '评价星级',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemevaluate
-- ----------------------------
INSERT INTO `itemevaluate` VALUES ('1', '1', '3', 'https://wx.qlogo.cn/mmopen/vi_32/mKUHqykmVTrhbiasjHayUEvPq5HXnY12IECjiaoMRuE3XboDHpjL6iapXicKVGMnibZfcxfWCL0sCU9n0Jq8sOibuBbA/132', '啊啊', null, '很好', '我非常喜欢', '1', '2019-07-06 10:05:06');

-- ----------------------------
-- Table structure for itemgroup
-- ----------------------------
DROP TABLE IF EXISTS `itemgroup`;
CREATE TABLE `itemgroup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `mininum` tinyint(3) DEFAULT NULL,
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemgroup
-- ----------------------------

-- ----------------------------
-- Table structure for itemgroupon
-- ----------------------------
DROP TABLE IF EXISTS `itemgroupon`;
CREATE TABLE `itemgroupon` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '拼团id',
  `merid` int(10) NOT NULL COMMENT '商户id',
  `itemid` int(10) NOT NULL COMMENT '拼团商品id',
  `grouponsale` float(10,2) NOT NULL COMMENT '拼团价格',
  `maxnum` tinyint(4) NOT NULL COMMENT '参团人数',
  `maxgroupon` tinyint(4) NOT NULL COMMENT '最大团数',
  `itemmodel` tinyint(4) NOT NULL COMMENT '商品模型(1、普通商品，2、拼团商品，3、砍价商品，4、免费商品，5、抢购商品)',
  `status` tinyint(4) NOT NULL COMMENT '拼团状态(1、未启用，2、已启用，3、已结束)',
  `expire` int(4) NOT NULL COMMENT '用户抢购时间',
  `remark` text COMMENT '说明',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  `begintime` datetime NOT NULL COMMENT '商品拼团开始时间',
  `endtime` datetime NOT NULL COMMENT '商品拼团结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼团商品表';

-- ----------------------------
-- Records of itemgroupon
-- ----------------------------

-- ----------------------------
-- Table structure for itemid_tagid
-- ----------------------------
DROP TABLE IF EXISTS `itemid_tagid`;
CREATE TABLE `itemid_tagid` (
  `itemid` int(11) NOT NULL,
  `tagid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemid_tagid
-- ----------------------------
INSERT INTO `itemid_tagid` VALUES ('2', '1');

-- ----------------------------
-- Table structure for itempicture
-- ----------------------------
DROP TABLE IF EXISTS `itempicture`;
CREATE TABLE `itempicture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL,
  `picurl` varchar(200) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itempicture
-- ----------------------------
INSERT INTO `itempicture` VALUES ('6', '1', 'http://akivipic.meisaas.com/cScDdryE54167914.jpg', '2018-09-11 16:22:48', '2018-09-11 16:22:48');
INSERT INTO `itempicture` VALUES ('7', '1', 'http://akivipic.meisaas.com/HxPMzyCw54170860.jpg', '2018-09-11 16:22:52', '2018-09-11 16:22:52');
INSERT INTO `itempicture` VALUES ('8', '7', 'http://akivipic.meisaas.com/SqihUNGs58231515.jpg', '2018-10-24 13:17:11', '2018-10-24 13:17:11');
INSERT INTO `itempicture` VALUES ('9', '7', 'http://akivipic.meisaas.com/UTiJrsxV58239279.jpg', '2018-10-24 13:17:18', '2018-10-24 13:17:18');
INSERT INTO `itempicture` VALUES ('10', '7', 'http://akivipic.meisaas.com/AOAFwnOw75489800.jpg', '2018-10-24 13:17:33', '2018-10-27 01:38:10');
INSERT INTO `itempicture` VALUES ('11', '7', 'http://akivipic.meisaas.com/NYKSIDyc58278745.jpg', '2018-10-24 13:17:58', '2018-10-24 13:17:58');
INSERT INTO `itempicture` VALUES ('12', '8', 'http://akivipic.meisaas.com/FfjZThZQ33181058.jpg', '2018-10-25 10:06:19', '2018-10-25 10:06:19');
INSERT INTO `itempicture` VALUES ('13', '9', 'http://akivipic.meisaas.com/OMRMexNz34680215.jpg', '2018-10-25 10:31:18', '2018-10-25 10:31:18');

-- ----------------------------
-- Table structure for itemsku
-- ----------------------------
DROP TABLE IF EXISTS `itemsku`;
CREATE TABLE `itemsku` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(11) DEFAULT NULL,
  `itemid` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `attrvalue` varchar(200) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemsku
-- ----------------------------
INSERT INTO `itemsku` VALUES ('1', '1014', '19', '12', '10000', '{\"颜色\":\"蓝色\",\"尺寸\":\"200\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('2', '1014', '19', '12', '10000', '{\"颜色\":\"黑色\",\"尺寸\":\"150\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('3', '1014', '19', '12', '10000', '{\"颜色\":\"黑色\",\"尺寸\":\"100\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('4', '1014', '19', '12', '10000', '{\"颜色\":\"红色\",\"尺寸\":\"150\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('5', '1014', '1', '12', '10000', '{\"颜色\":\"红色\",\"尺寸\":\"200\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('6', '1014', '1', '12', '10000', '{\"颜色\":\"红色\",\"尺寸\":\"100\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('7', '1014', '1', '12', '10000', '{\"颜色\":\"蓝色\",\"尺寸\":\"150\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('8', '1014', '1', '12', '10000', '{\"颜色\":\"黑色\",\"尺寸\":\"200\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('9', '1014', '1', '12', '10000', '{\"颜色\":\"蓝色\",\"尺寸\":\"100\"}', '2018-09-11 16:22:15', '2018-09-11 16:22:15');
INSERT INTO `itemsku` VALUES ('10', '1014', '9', '110', '1000', '{\"维修类型\":\"换屏（屏成本另计）\"}', '2018-10-25 10:33:45', '2018-10-25 14:19:03');
INSERT INTO `itemsku` VALUES ('11', '1014', '9', '43', '1000', '{\"维修类型\":\"清洗\"}', '2018-10-25 10:33:45', '2018-10-25 15:50:15');
INSERT INTO `itemsku` VALUES ('12', '1014', '9', '14.4', '1000', '{\"维修类型\":\"其它\"}', '2018-10-25 10:33:45', '2018-10-25 15:50:26');
INSERT INTO `itemsku` VALUES ('13', '1014', '11', '0.06', '221', '{\"测试\":\"121111111111111122\",\"另外一个规格\":\"阿善动阿萨德撒的阿萨德按时\"}', '2018-11-02 11:14:43', '2018-11-02 11:14:43');
INSERT INTO `itemsku` VALUES ('14', '1014', '11', '0.02', '221', '{\"测试\":\"1233123\",\"另外一个规格\":\"121248578545454545\"}', '2018-11-02 11:14:43', '2018-11-02 11:14:43');
INSERT INTO `itemsku` VALUES ('15', '1014', '11', '0.03', '221', '{\"测试\":\"121111111111111122\",\"另外一个规格\":\"121248578545454545\"}', '2018-11-02 11:14:43', '2018-11-02 11:14:43');
INSERT INTO `itemsku` VALUES ('16', '1014', '11', '0.05', '221', '{\"测试\":\"1233123\",\"另外一个规格\":\"阿善动阿萨德撒的阿萨德按时\"}', '2018-11-02 11:14:43', '2018-11-02 11:14:43');
INSERT INTO `itemsku` VALUES ('17', '1014', '11', '0.01', '221', '{\"测试\":\"13211111111\",\"另外一个规格\":\"121248578545454545\"}', '2018-11-02 11:14:43', '2018-11-02 11:14:43');
INSERT INTO `itemsku` VALUES ('18', '1014', '11', '0.04', '221', '{\"测试\":\"13211111111\",\"另外一个规格\":\"阿善动阿萨德撒的阿萨德按时\"}', '2018-11-02 11:14:43', '2018-11-02 11:14:43');
INSERT INTO `itemsku` VALUES ('19', '1014', '12', '0.03', '999', '{\"测试\":\"12399999999\"}', '2018-11-02 13:21:48', '2018-11-02 13:21:48');
INSERT INTO `itemsku` VALUES ('20', '1014', '12', '0.04', '999', '{\"测试\":\"78945612322\"}', '2018-11-02 13:21:48', '2018-11-02 13:21:48');
INSERT INTO `itemsku` VALUES ('21', '1014', '12', '0.02', '999', '{\"测试\":\"15877777777\"}', '2018-11-02 13:21:48', '2018-11-02 13:21:48');
INSERT INTO `itemsku` VALUES ('22', '1014', '12', '0.01', '999', '{\"测试\":\"13211111111\"}', '2018-11-02 13:21:48', '2018-11-02 13:21:48');
INSERT INTO `itemsku` VALUES ('23', '1014', '14', '12121', '12123132', '{\"sad\":\"12222222222221211111\"}', '2018-11-05 17:44:32', '2018-11-05 17:44:32');

-- ----------------------------
-- Table structure for itemspec
-- ----------------------------
DROP TABLE IF EXISTS `itemspec`;
CREATE TABLE `itemspec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL,
  `attrid` int(10) DEFAULT NULL,
  `attrvalue` varchar(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itemspec
-- ----------------------------
INSERT INTO `itemspec` VALUES ('1', '1014', '2', '100', '2018-09-11 16:21:39', '2018-09-11 16:21:39');
INSERT INTO `itemspec` VALUES ('2', '1014', '2', '150', '2018-09-11 16:21:43', '2018-09-11 16:21:43');
INSERT INTO `itemspec` VALUES ('3', '1014', '2', '200', '2018-09-11 16:21:48', '2018-09-11 16:21:48');
INSERT INTO `itemspec` VALUES ('4', '1014', '1', '红色', '2018-09-11 16:21:57', '2018-09-11 16:21:57');
INSERT INTO `itemspec` VALUES ('5', '1014', '1', '蓝色', '2018-09-11 16:22:01', '2018-09-11 16:22:01');
INSERT INTO `itemspec` VALUES ('6', '1014', '1', '黑色', '2018-09-11 16:22:05', '2018-09-11 16:22:05');
INSERT INTO `itemspec` VALUES ('7', '1014', '3', '换屏（屏成本另计）', '2018-10-25 10:32:29', '2018-10-25 10:32:29');
INSERT INTO `itemspec` VALUES ('8', '1014', '3', '清洗', '2018-10-25 10:32:48', '2018-10-25 10:32:48');
INSERT INTO `itemspec` VALUES ('9', '1014', '3', '其它', '2018-10-25 10:33:08', '2018-10-25 10:33:08');
INSERT INTO `itemspec` VALUES ('10', '1014', '4', '13211111111', '2018-11-02 10:56:53', '2018-11-02 10:56:53');
INSERT INTO `itemspec` VALUES ('11', '1014', '4', '15877777777', '2018-11-02 10:57:16', '2018-11-02 13:20:07');
INSERT INTO `itemspec` VALUES ('12', '1014', '4', '12399999999', '2018-11-02 10:59:32', '2018-11-02 13:20:25');
INSERT INTO `itemspec` VALUES ('13', '1014', '5', '121248578545454545', '2018-11-02 11:00:40', '2018-11-02 11:00:40');
INSERT INTO `itemspec` VALUES ('14', '1014', '5', '阿善动阿萨德撒的阿萨德按时', '2018-11-02 11:12:35', '2018-11-02 11:12:35');
INSERT INTO `itemspec` VALUES ('15', '1014', '4', '78945612322', '2018-11-02 13:20:35', '2018-11-02 13:20:35');
INSERT INTO `itemspec` VALUES ('16', '1014', '6', '12222222222221211111', '2018-11-05 17:43:46', '2018-11-05 17:44:08');

-- ----------------------------
-- Table structure for itemtheme
-- ----------------------------
DROP TABLE IF EXISTS `itemtheme`;
CREATE TABLE `itemtheme` (
  `themeid` int(11) DEFAULT NULL COMMENT '主题id',
  `itemid` int(11) DEFAULT NULL COMMENT '商品id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主题商品表';

-- ----------------------------
-- Records of itemtheme
-- ----------------------------

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `optime` datetime DEFAULT NULL,
  `desct` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for loginlog
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL,
  `memid` int(10) NOT NULL,
  `sysname` varchar(20) DEFAULT NULL,
  `sysversion` varchar(20) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `localname` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `logintype` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginlog
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL,
  `openid` varchar(200) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `avatarurl` varchar(200) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `telnumber` varchar(15) DEFAULT NULL,
  `levelid` int(10) DEFAULT '0' COMMENT '用于区分店铺管理者(1), 还是店铺新增会员(2)',
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `isvip` tinyint(4) DEFAULT '0' COMMENT '是否是vip',
  `invitecode` varchar(255) DEFAULT NULL COMMENT '邀请码',
  `parentid` int(11) DEFAULT '0' COMMENT '父类id',
  `storecode` varchar(11) DEFAULT NULL COMMENT '店铺邀请码',
  `storename` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `idcard` varchar(255) DEFAULT NULL COMMENT '身份证',
  `recommendnum` int(11) DEFAULT '0' COMMENT '直推总数量',
  `securitycode` varchar(6) DEFAULT '' COMMENT '安全密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('2', '1014', 'otEgU0W9CptljOyH5zLSD_EJyOSg', '男神', 'http://pic.meisaas.com/aboutus/1.jpg', '2018-09-11', '1', '13012312344', '0', '杭州', '浙江', 'China', '2018-09-11 17:57:15', '2019-07-01 17:57:16', '1', '231005', null, '100', '21', '熊大', '352229200001071234', '2', '');
INSERT INTO `member` VALUES ('7', '1014', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=764239526,1193721540&fm=26&gp=0.jpg', '高手', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=764239526,1193721540&fm=26&gp=0.jpg', '1988-06-01', '1', '13012312341', '0', '衢州', '浙江', 'China', '2018-10-10 18:27:14', '2019-07-02 18:29:10', '1', '427268', null, '120', '46', '熊二', '352229200001071222', '188', '');
INSERT INTO `member` VALUES ('20', '1014', 'https://b-http://img0.pconline.com.cn/pconline/1506/28/6634276_1346_thumb.jpg', '昔日伴', 'http://img0.pconline.com.cn/pconline/1506/28/6634276_1346_thumb.jpg', '2018-11-07', '1', '13012312345', '0', '天津市', '天津', 'China', '2018-11-07 16:27:30', '2019-07-04 18:33:04', '0', '673473', null, '230', '92', '光头强', '352229200001071234', '1122', '');
INSERT INTO `member` VALUES ('22', '1014', 'otEgU0TXtfbqn3kHtORXSvxmcKqc', '大陈', 'https://img.52z.com/upload/news/image/20190212/20190212120220_57841.jpg', '2018-11-07', '1', '13012312346', '0', '北京市', '北京', 'United Arab Emirates', '2018-11-07 16:41:18', '2019-07-05 17:00:23', '0', '124604', '20', '620', '299', '马云', '352229200001071234', '333', '');
INSERT INTO `member` VALUES ('43', '43', 'o9shn5P88weSU33HTQjQZ9UrhFeE', '极致', 'https://wx.qlogo.cn/mmopen/vi_32/mKUHqykmVTrhbiasjHayUEvPq5HXnY12IECjiaoMRuE3XboDHpjL6iapXicKVGMnibZfcxfWCL0sCU9n0Jq8sOibuBbA/132', '2019-07-14', '1', '110', '110', 'Hangzhou', 'Zhejiang', 'China', '2019-07-14 21:24:13', '2019-07-14 21:24:13', '110', '110', '110', '110', '110', '110', '110', '0', '');

-- ----------------------------
-- Table structure for membercard
-- ----------------------------
DROP TABLE IF EXISTS `membercard`;
CREATE TABLE `membercard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员卡id',
  `merid` int(11) NOT NULL COMMENT '商户id',
  `memid` int(11) NOT NULL COMMENT '用户id',
  `cardid` int(11) NOT NULL COMMENT '会员卡id',
  `integral` int(11) NOT NULL COMMENT '积分',
  `balance` float(11,2) NOT NULL COMMENT '余额',
  `carnum` varchar(30) NOT NULL COMMENT '会员卡编号',
  `isuse` tinyint(3) NOT NULL COMMENT '是否启用',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员卡表';

-- ----------------------------
-- Records of membercard
-- ----------------------------

-- ----------------------------
-- Table structure for membercoupon
-- ----------------------------
DROP TABLE IF EXISTS `membercoupon`;
CREATE TABLE `membercoupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `memid` int(11) NOT NULL COMMENT '用户id',
  `couponid` int(11) NOT NULL COMMENT '优惠券id',
  `isuse` tinyint(3) NOT NULL COMMENT '是否使用',
  `isexpire` tinyint(3) NOT NULL COMMENT '是否过期',
  `ispermanent` tinyint(3) NOT NULL COMMENT '是否永久可用',
  `expiretime` datetime NOT NULL COMMENT '过期时间',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='用户优惠券表';

-- ----------------------------
-- Records of membercoupon
-- ----------------------------
INSERT INTO `membercoupon` VALUES ('1', '6', '18', '1', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 17:31:46');
INSERT INTO `membercoupon` VALUES ('2', '6', '18', '1', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 17:51:06');
INSERT INTO `membercoupon` VALUES ('3', '6', '18', '1', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 17:35:49');
INSERT INTO `membercoupon` VALUES ('4', '6', '19', '1', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 14:52:19');
INSERT INTO `membercoupon` VALUES ('5', '6', '19', '1', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 15:01:39');
INSERT INTO `membercoupon` VALUES ('6', '6', '19', '1', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 15:08:33');
INSERT INTO `membercoupon` VALUES ('7', '6', '19', '1', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 16:04:58');
INSERT INTO `membercoupon` VALUES ('8', '6', '19', '0', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 13:30:43');
INSERT INTO `membercoupon` VALUES ('9', '6', '19', '0', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 13:30:43');
INSERT INTO `membercoupon` VALUES ('10', '6', '19', '0', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 13:30:43');
INSERT INTO `membercoupon` VALUES ('11', '6', '19', '0', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 13:30:43');
INSERT INTO `membercoupon` VALUES ('12', '6', '19', '0', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 13:30:43');
INSERT INTO `membercoupon` VALUES ('13', '6', '19', '0', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 13:30:43');
INSERT INTO `membercoupon` VALUES ('14', '6', '20', '1', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 14:19:40');
INSERT INTO `membercoupon` VALUES ('15', '6', '21', '0', '0', '1', '2018-10-25 13:30:43', '2018-10-25 13:30:43', '2018-10-25 17:58:24');
INSERT INTO `membercoupon` VALUES ('16', '1', '18', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 16:19:56');
INSERT INTO `membercoupon` VALUES ('17', '1', '18', '1', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 15:50:51');
INSERT INTO `membercoupon` VALUES ('18', '1', '18', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('19', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('20', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('21', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('22', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('23', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('24', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('25', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('26', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('27', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('28', '1', '19', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('29', '1', '20', '1', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 19:03:49');
INSERT INTO `membercoupon` VALUES ('30', '1', '21', '0', '0', '1', '2018-10-25 13:44:02', '2018-10-25 13:44:02', '2018-10-25 13:44:02');
INSERT INTO `membercoupon` VALUES ('31', '1', '18', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('32', '1', '18', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('33', '1', '18', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 19:35:00');
INSERT INTO `membercoupon` VALUES ('34', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('35', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('36', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('37', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('38', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('39', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('40', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('41', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('42', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('43', '1', '19', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('44', '1', '20', '1', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 19:04:32');
INSERT INTO `membercoupon` VALUES ('45', '1', '21', '0', '0', '1', '2018-10-25 18:22:29', '2018-10-25 18:22:29', '2018-10-25 18:22:29');
INSERT INTO `membercoupon` VALUES ('46', '7', '18', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('47', '7', '18', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('48', '7', '18', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('49', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('50', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('51', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('52', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('53', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('54', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('55', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('56', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('57', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('58', '7', '19', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('59', '7', '20', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('60', '7', '21', '0', '0', '1', '2018-10-25 18:29:10', '2018-10-25 18:29:10', '2018-10-25 18:29:10');
INSERT INTO `membercoupon` VALUES ('61', '1', '18', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('62', '1', '18', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('63', '1', '18', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('64', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('65', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('66', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('67', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('68', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('69', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('70', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('71', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('72', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('73', '1', '19', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 18:53:02');
INSERT INTO `membercoupon` VALUES ('74', '1', '20', '1', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-11-01 16:32:24');
INSERT INTO `membercoupon` VALUES ('75', '1', '21', '0', '0', '1', '2018-10-25 18:53:02', '2018-10-25 18:53:02', '2018-10-25 19:35:00');
INSERT INTO `membercoupon` VALUES ('76', '8', '23', '0', '0', '0', '2019-02-13 14:39:20', '2018-11-05 14:39:20', '2018-11-05 18:35:00');
INSERT INTO `membercoupon` VALUES ('77', '8', '23', '0', '0', '0', '2019-02-13 14:39:20', '2018-11-05 14:39:20', '2018-11-05 14:39:20');
INSERT INTO `membercoupon` VALUES ('78', '8', '24', '0', '1', '0', '2018-11-15 14:39:20', '2018-11-05 14:39:20', '2018-11-15 14:40:00');
INSERT INTO `membercoupon` VALUES ('79', '9', '23', '1', '0', '0', '2019-02-13 17:04:32', '2018-11-05 17:04:32', '2018-11-05 17:26:10');
INSERT INTO `membercoupon` VALUES ('80', '9', '23', '0', '0', '0', '2019-02-13 17:04:32', '2018-11-05 17:04:32', '2018-11-05 17:04:32');
INSERT INTO `membercoupon` VALUES ('81', '9', '24', '1', '0', '0', '2018-11-15 17:04:32', '2018-11-05 17:04:32', '2018-11-05 17:24:09');
INSERT INTO `membercoupon` VALUES ('82', '10', '23', '0', '0', '0', '2019-02-15 15:00:31', '2018-11-07 15:00:31', '2018-11-07 15:00:31');
INSERT INTO `membercoupon` VALUES ('83', '10', '23', '0', '0', '0', '2019-02-15 15:00:31', '2018-11-07 15:00:31', '2018-11-07 15:00:31');
INSERT INTO `membercoupon` VALUES ('84', '10', '24', '0', '1', '0', '2018-11-17 15:00:31', '2018-11-07 15:00:31', '2018-11-17 15:05:00');
INSERT INTO `membercoupon` VALUES ('85', '11', '23', '0', '0', '0', '2019-02-15 15:09:29', '2018-11-07 15:09:29', '2018-11-07 15:09:29');
INSERT INTO `membercoupon` VALUES ('86', '11', '23', '0', '0', '0', '2019-02-15 15:09:29', '2018-11-07 15:09:29', '2018-11-07 15:09:29');
INSERT INTO `membercoupon` VALUES ('87', '11', '24', '0', '1', '0', '2018-11-17 15:09:29', '2018-11-07 15:09:29', '2018-11-17 15:10:00');
INSERT INTO `membercoupon` VALUES ('88', '12', '23', '0', '0', '0', '2019-02-15 15:12:42', '2018-11-07 15:12:42', '2018-11-07 15:12:42');
INSERT INTO `membercoupon` VALUES ('89', '12', '23', '0', '0', '0', '2019-02-15 15:12:42', '2018-11-07 15:12:42', '2018-11-07 15:12:42');
INSERT INTO `membercoupon` VALUES ('90', '12', '24', '0', '1', '0', '2018-11-17 15:12:42', '2018-11-07 15:12:42', '2018-11-17 15:15:00');
INSERT INTO `membercoupon` VALUES ('91', '13', '23', '0', '0', '0', '2019-02-15 15:28:54', '2018-11-07 15:28:54', '2018-11-07 15:28:54');
INSERT INTO `membercoupon` VALUES ('92', '13', '23', '0', '0', '0', '2019-02-15 15:28:54', '2018-11-07 15:28:54', '2018-11-07 15:28:54');
INSERT INTO `membercoupon` VALUES ('93', '13', '24', '0', '1', '0', '2018-11-17 15:28:54', '2018-11-07 15:28:54', '2018-11-17 15:30:00');
INSERT INTO `membercoupon` VALUES ('94', '14', '23', '0', '0', '0', '2019-02-15 15:54:05', '2018-11-07 15:54:05', '2018-11-07 15:54:05');
INSERT INTO `membercoupon` VALUES ('95', '14', '23', '0', '0', '0', '2019-02-15 15:54:05', '2018-11-07 15:54:05', '2018-11-07 15:54:05');
INSERT INTO `membercoupon` VALUES ('96', '14', '24', '0', '1', '0', '2018-11-17 15:54:05', '2018-11-07 15:54:05', '2018-11-17 15:55:00');
INSERT INTO `membercoupon` VALUES ('97', '15', '23', '0', '0', '0', '2019-02-15 16:01:54', '2018-11-07 16:01:54', '2018-11-07 16:01:54');
INSERT INTO `membercoupon` VALUES ('98', '15', '23', '0', '0', '0', '2019-02-15 16:01:54', '2018-11-07 16:01:54', '2018-11-07 16:01:54');
INSERT INTO `membercoupon` VALUES ('99', '15', '24', '0', '1', '0', '2018-11-17 16:01:54', '2018-11-07 16:01:54', '2018-11-17 16:05:00');
INSERT INTO `membercoupon` VALUES ('100', '16', '23', '0', '0', '0', '2019-02-15 16:10:07', '2018-11-07 16:10:07', '2018-11-07 16:10:07');
INSERT INTO `membercoupon` VALUES ('101', '16', '23', '0', '0', '0', '2019-02-15 16:10:07', '2018-11-07 16:10:07', '2018-11-07 16:10:07');
INSERT INTO `membercoupon` VALUES ('102', '16', '24', '0', '1', '0', '2018-11-17 16:10:07', '2018-11-07 16:10:07', '2018-11-17 16:15:00');
INSERT INTO `membercoupon` VALUES ('103', '17', '23', '0', '0', '0', '2019-02-15 16:10:52', '2018-11-07 16:10:52', '2018-11-07 16:10:52');
INSERT INTO `membercoupon` VALUES ('104', '17', '23', '0', '0', '0', '2019-02-15 16:10:52', '2018-11-07 16:10:52', '2018-11-07 16:10:52');
INSERT INTO `membercoupon` VALUES ('105', '17', '24', '0', '1', '0', '2018-11-17 16:10:52', '2018-11-07 16:10:52', '2018-11-17 16:15:00');
INSERT INTO `membercoupon` VALUES ('106', '18', '23', '0', '0', '0', '2019-02-15 16:11:50', '2018-11-07 16:11:50', '2018-11-07 16:11:50');
INSERT INTO `membercoupon` VALUES ('107', '18', '23', '0', '0', '0', '2019-02-15 16:11:50', '2018-11-07 16:11:50', '2018-11-07 16:11:50');
INSERT INTO `membercoupon` VALUES ('108', '18', '24', '0', '1', '0', '2018-11-17 16:11:50', '2018-11-07 16:11:50', '2018-11-17 16:15:00');
INSERT INTO `membercoupon` VALUES ('109', '19', '23', '0', '0', '0', '2019-02-15 16:12:43', '2018-11-07 16:12:43', '2018-11-07 16:12:43');
INSERT INTO `membercoupon` VALUES ('110', '19', '23', '0', '0', '0', '2019-02-15 16:12:43', '2018-11-07 16:12:43', '2018-11-07 16:12:43');
INSERT INTO `membercoupon` VALUES ('111', '19', '24', '0', '1', '0', '2018-11-17 16:12:43', '2018-11-07 16:12:43', '2018-11-17 16:15:00');
INSERT INTO `membercoupon` VALUES ('112', '20', '23', '0', '0', '0', '2019-02-15 16:27:32', '2018-11-07 16:27:30', '2018-11-07 16:27:30');
INSERT INTO `membercoupon` VALUES ('113', '20', '23', '0', '0', '0', '2019-02-15 16:27:32', '2018-11-07 16:27:30', '2018-11-07 16:27:30');
INSERT INTO `membercoupon` VALUES ('114', '20', '24', '0', '1', '0', '2018-11-17 16:27:32', '2018-11-07 16:27:30', '2018-11-17 16:30:00');
INSERT INTO `membercoupon` VALUES ('115', '21', '23', '0', '0', '0', '2019-02-15 16:30:21', '2018-11-07 16:30:19', '2018-11-07 16:30:19');
INSERT INTO `membercoupon` VALUES ('116', '21', '23', '0', '0', '0', '2019-02-15 16:30:21', '2018-11-07 16:30:19', '2018-11-07 16:30:19');
INSERT INTO `membercoupon` VALUES ('117', '21', '24', '0', '1', '0', '2018-11-17 16:30:21', '2018-11-07 16:30:19', '2018-11-17 16:35:00');
INSERT INTO `membercoupon` VALUES ('118', '22', '23', '0', '0', '0', '2019-02-15 16:41:18', '2018-11-07 16:41:18', '2018-11-07 16:41:18');
INSERT INTO `membercoupon` VALUES ('119', '22', '23', '0', '0', '0', '2019-02-15 16:41:18', '2018-11-07 16:41:18', '2018-11-07 16:41:18');
INSERT INTO `membercoupon` VALUES ('120', '22', '24', '0', '1', '0', '2018-11-17 16:41:18', '2018-11-07 16:41:18', '2018-11-17 16:45:00');
INSERT INTO `membercoupon` VALUES ('121', '23', '23', '0', '0', '0', '2019-02-15 17:04:31', '2018-11-07 17:04:31', '2018-11-07 17:04:31');
INSERT INTO `membercoupon` VALUES ('122', '23', '23', '0', '0', '0', '2019-02-15 17:04:31', '2018-11-07 17:04:31', '2018-11-07 17:04:31');
INSERT INTO `membercoupon` VALUES ('123', '23', '24', '0', '1', '0', '2018-11-17 17:04:31', '2018-11-07 17:04:31', '2018-11-17 17:05:00');

-- ----------------------------
-- Table structure for membergroupon
-- ----------------------------
DROP TABLE IF EXISTS `membergroupon`;
CREATE TABLE `membergroupon` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '拼团用户id',
  `orderid` varchar(30) NOT NULL COMMENT '订单id',
  `ordergrouponid` int(10) NOT NULL COMMENT '拼团订单id',
  `isleader` tinyint(4) NOT NULL COMMENT '是否团长',
  `memid` int(10) NOT NULL COMMENT '用户id',
  `maxnum` tinyint(4) NOT NULL COMMENT '最大拼团数',
  `status` tinyint(4) NOT NULL COMMENT '拼团状态(1、拼团中，2、拼团成功，3、拼团失败)',
  `createtime` datetime NOT NULL COMMENT '参团时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼团用户表';

-- ----------------------------
-- Records of membergroupon
-- ----------------------------

-- ----------------------------
-- Table structure for memberlogin
-- ----------------------------
DROP TABLE IF EXISTS `memberlogin`;
CREATE TABLE `memberlogin` (
  `openid` varchar(200) NOT NULL,
  `unionid` varchar(200) DEFAULT NULL,
  `sessionkey` varchar(200) NOT NULL,
  `sessionid` varchar(200) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  UNIQUE KEY `openid` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of memberlogin
-- ----------------------------
INSERT INTO `memberlogin` VALUES ('otEgU0bbjk337fCmFK2jTNka5hm0', null, '81c/Y+V17FNniqWh+JBkYQ==', '6FDC20328360848974AF5E38B5234A1B', '2018-11-05 17:04:32', '2018-11-07 17:04:31');
INSERT INTO `memberlogin` VALUES ('otEgU0dwvHbD1vaoKus7IkI64iPQ', null, 'JdCBMR9NvWNgRXXvBXYLPA==', '76DE4488FD5515807F41DE853234B86C', '2018-09-14 10:07:44', '2018-11-12 18:33:04');
INSERT INTO `memberlogin` VALUES ('otEgU0RkKVK2AxVQT3DGRfoQAk7I', null, 'nZWxM10uNL8IOVP/5j+I+g==', '097C4A1DDB49A1F4AEDA6FCFEBDDDB52', '2018-10-25 18:27:14', '2018-10-25 18:27:14');
INSERT INTO `memberlogin` VALUES ('otEgU0TXtfbqn3kHtORXSvxmcKqc', null, 'pfHwd9W/n7t3VtGqP07JYA==', 'FBC84DEA4B08BD7B3260338A1FE7E83C', '2018-09-11 16:29:12', '2018-11-07 17:00:23');
INSERT INTO `memberlogin` VALUES ('otEgU0W9CptljOyH5zLSD_EJyOSg', null, '3hZzLlJ823FXgW0TxeGjdw==', '0A6A954AA2CA5BE0768A943430A09AB4', '2018-09-11 17:57:15', '2018-09-11 17:57:16');

-- ----------------------------
-- Table structure for memberupgradelog
-- ----------------------------
DROP TABLE IF EXISTS `memberupgradelog`;
CREATE TABLE `memberupgradelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memid` int(11) DEFAULT NULL COMMENT '用户id',
  `originalgrade` tinyint(4) DEFAULT NULL COMMENT '原来等级',
  `upgradegrade` tinyint(4) DEFAULT NULL COMMENT '升级后等级',
  `upgradetype` tinyint(4) DEFAULT NULL COMMENT '升级类型(1购微信支付，2奖章兑换)',
  `activityid` int(11) DEFAULT NULL COMMENT '活动id',
  `activityname` varchar(50) DEFAULT NULL COMMENT '活动名称',
  `createtime` datetime DEFAULT NULL,
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of memberupgradelog
-- ----------------------------
INSERT INTO `memberupgradelog` VALUES ('1', '1', '0', '1', '1', null, null, '2018-09-11 19:15:26', null);
INSERT INTO `memberupgradelog` VALUES ('2', '6', '0', '1', '1', null, null, '2018-10-25 10:57:12', '201810251056311000443012902');
INSERT INTO `memberupgradelog` VALUES ('3', '1', '0', '1', '1', null, null, '2018-10-25 11:08:51', '201810251108351001255721188');
INSERT INTO `memberupgradelog` VALUES ('4', '6', '0', '1', '1', null, null, '2018-10-25 13:30:43', '201810251329591000260151410');
INSERT INTO `memberupgradelog` VALUES ('5', '1', '0', '1', '1', null, null, '2018-10-25 13:44:02', '201810251334031000585132281');
INSERT INTO `memberupgradelog` VALUES ('6', '1', '0', '1', '1', null, null, '2018-10-25 18:22:29', '201810251822061001898450972');
INSERT INTO `memberupgradelog` VALUES ('7', '7', '0', '1', '1', null, null, '2018-10-25 18:29:10', '201810251828541001167886219');
INSERT INTO `memberupgradelog` VALUES ('8', '1', '0', '1', '1', null, null, '2018-10-25 18:53:02', '201810251852391000582714514');

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userkey` varchar(100) NOT NULL,
  `wxopenid` varchar(100) DEFAULT NULL,
  `wxaopenid` varchar(100) DEFAULT NULL,
  `unionid` varchar(100) DEFAULT NULL,
  `isauth` tinyint(3) DEFAULT NULL COMMENT '审核(1:未审核，2:已审核，3:关闭)',
  `mobile` varchar(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('1014', '9c573b128afd11e894684ccc6afb6d2f', null, null, null, '1', '18026130871', '2018-07-19 10:44:01', '2018-07-19 10:44:01');

-- ----------------------------
-- Table structure for merchantloginlog
-- ----------------------------
DROP TABLE IF EXISTS `merchantloginlog`;
CREATE TABLE `merchantloginlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL COMMENT '商品id',
  `account` varchar(200) DEFAULT NULL COMMENT '登陆账号',
  `logintype` varchar(10) DEFAULT NULL COMMENT 'sms,weixin,wxa',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `ipaddress` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchantloginlog
-- ----------------------------
INSERT INTO `merchantloginlog` VALUES ('1', '1', '15906519312', 'sms', '登陆成功', '220.184.253.137', '2018-09-11 19:29:51');

-- ----------------------------
-- Table structure for merchantorder
-- ----------------------------
DROP TABLE IF EXISTS `merchantorder`;
CREATE TABLE `merchantorder` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL,
  `memid` int(10) NOT NULL,
  `orderid` varchar(27) NOT NULL,
  `ordertype` tinyint(4) DEFAULT NULL COMMENT '1/微信支付 2.积分商品支付 3.购物钱包支付,4.vip订单,5.优惠券订单',
  `ordermodel` varchar(4) DEFAULT NULL COMMENT '如果是vip订单,这里可用来填写店铺邀请码',
  `amount` float NOT NULL,
  `logisticsnum` varchar(20) DEFAULT NULL COMMENT '快递单号',
  `remark` varchar(100) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT ' 0.待付状态;1.待发货;2.待收货;3.待评价4.已完成;5.已取消',
  `ismemberdel` tinyint(3) NOT NULL DEFAULT '0',
  `ishidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expiretime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchantorder
-- ----------------------------
INSERT INTO `merchantorder` VALUES ('1', '1014', '1', '201809111705161000546697219', '1', null, '0.2', null, '定时器关闭未支付订单', '2', '0', '0', '2018-09-11 17:35:16', '2018-09-11 17:05:16', '2018-09-13 18:11:43');
INSERT INTO `merchantorder` VALUES ('2', '1014', '1', '201809111720191002109425002', '1', null, '211', null, '定时器关闭未支付订单', '5', '1', '0', '2018-09-11 17:50:19', '2018-09-11 17:20:19', '2018-09-11 18:17:09');
INSERT INTO `merchantorder` VALUES ('3', '1014', '2', '201809111807311001599255386', '4', '', '199', null, '定时器关闭未支付订单', '5', '0', '0', '2018-09-11 18:37:31', '2018-09-11 18:07:31', '2018-09-11 18:40:00');
INSERT INTO `merchantorder` VALUES ('4', '1014', '2', '201809111807351000471844095', '4', '', '199', null, '定时器关闭未支付订单', '5', '0', '0', '2018-09-11 18:37:35', '2018-09-11 18:07:35', '2018-09-11 18:40:00');
INSERT INTO `merchantorder` VALUES ('5', '1014', '1', '201809111910161002112133405', '4', '', '199', null, '定时器关闭未支付订单', '5', '0', '0', '2018-09-11 19:40:16', '2018-09-11 19:10:16', '2018-09-11 19:45:00');
INSERT INTO `merchantorder` VALUES ('6', '1014', '1', '201809111911551000383064529', '4', '', '199', null, '定时器关闭未支付订单', '5', '0', '0', '2018-09-11 19:41:55', '2018-09-11 19:11:55', '2018-09-11 19:45:00');
INSERT INTO `merchantorder` VALUES ('7', '1014', '1', '201809111912421001880811063', '4', '', '199', null, '定时器关闭未支付订单', '5', '0', '0', '2018-09-11 19:42:42', '2018-09-11 19:12:42', '2018-09-11 19:45:00');
INSERT INTO `merchantorder` VALUES ('8', '1014', '2', '201809120932571000900161597', '4', '', '199', null, '定时器关闭未支付订单', '5', '0', '0', '2018-09-12 10:02:57', '2018-09-12 09:32:57', '2018-09-12 10:05:00');
INSERT INTO `merchantorder` VALUES ('9', '1014', '2', '201809120932591000406512103', '4', '', '199', null, '定时器关闭未支付订单', '5', '0', '0', '2018-09-12 10:02:59', '2018-09-12 09:32:59', '2018-09-12 10:05:00');
INSERT INTO `merchantorder` VALUES ('10', '1014', '1', '201809131953251001738350498', '1', null, '233.8', null, '', '5', '0', '0', '2018-09-13 20:23:25', '2018-09-13 19:53:25', '2018-09-13 20:24:58');
INSERT INTO `merchantorder` VALUES ('11', '1014', '1', '201809140906161000727547975', '1', null, '295.47', null, '', '5', '0', '0', '2018-09-14 09:36:16', '2018-09-14 09:06:16', '2018-09-14 09:40:00');
INSERT INTO `merchantorder` VALUES ('12', '1014', '1', '201809141711591001356615888', '1', null, '86.1', null, '', '5', '0', '0', '2018-09-14 17:41:59', '2018-09-14 17:11:59', '2018-09-14 17:45:00');
INSERT INTO `merchantorder` VALUES ('13', '1014', '1', '201809141944121001600891762', '1', null, '86.1', null, '', '5', '0', '0', '2018-09-14 20:14:12', '2018-09-14 19:44:12', '2018-09-14 20:14:59');
INSERT INTO `merchantorder` VALUES ('14', '1014', '1', '201809142012101001531082656', '1', null, '86.1', null, '', '5', '0', '0', '2018-09-14 20:42:10', '2018-09-14 20:12:10', '2018-09-14 20:45:00');
INSERT INTO `merchantorder` VALUES ('15', '1014', '1', '201809142012201000096516841', '1', null, '86.1', null, '', '5', '0', '0', '2018-09-14 20:42:20', '2018-09-14 20:12:20', '2018-09-14 20:45:00');
INSERT INTO `merchantorder` VALUES ('16', '1014', '1', '201809142103371001717908857', '1', null, '76.1', null, '', '5', '0', '0', '2018-09-14 21:33:37', '2018-09-14 21:03:37', '2018-09-14 21:09:30');
INSERT INTO `merchantorder` VALUES ('17', '1014', '1', '201809142113381000576002806', '1', null, '47.7', null, '', '5', '0', '0', '2018-09-14 21:43:38', '2018-09-14 21:13:38', '2018-09-14 21:16:59');
INSERT INTO `merchantorder` VALUES ('18', '1014', '1', '201809142119021001151117634', '3', null, '76.1', null, '', '1', '0', '0', '2018-09-14 21:49:02', '2018-09-14 21:19:02', '2018-09-14 21:19:02');
INSERT INTO `merchantorder` VALUES ('19', '1014', '6', '201809142142501001820005959', '1', null, '201.1', null, '', '5', '0', '0', '2018-09-14 22:12:50', '2018-09-14 21:42:50', '2018-09-14 22:15:00');
INSERT INTO `merchantorder` VALUES ('21', '1014', '6', '201809181104201001561740713', '1', null, '0.0100021', null, '', '1', '0', '0', '2018-09-18 11:34:20', '2018-09-18 11:04:20', '2018-09-18 11:04:43');
INSERT INTO `merchantorder` VALUES ('22', '1014', '6', '201809181334461000730616717', '1', null, '0.0100021', '1231213123', '', '3', '0', '0', '2018-09-29 10:49:17', '2018-09-18 13:34:46', '2018-09-22 10:49:37');
INSERT INTO `merchantorder` VALUES ('23', '1014', '6', '201809181343171001088419538', '1', null, '0.0100021', null, '', '5', '0', '0', '2018-09-18 14:13:17', '2018-09-18 13:43:17', '2018-09-18 13:44:56');
INSERT INTO `merchantorder` VALUES ('24', '1014', '6', '201809181345541000846091222', '1', null, '90.01', null, '', '5', '0', '0', '2018-09-18 14:15:54', '2018-09-18 13:45:54', '2018-09-18 13:47:53');
INSERT INTO `merchantorder` VALUES ('25', '1014', '6', '201809181346201001766065241', '1', null, '0.0100021', null, '', '5', '0', '0', '2018-09-18 14:16:20', '2018-09-18 13:46:20', '2018-09-18 13:47:50');
INSERT INTO `merchantorder` VALUES ('26', '1014', '6', '201809181350451001575330413', '1', null, '0.0100021', null, '', '5', '0', '0', '2018-09-18 14:20:45', '2018-09-18 13:50:45', '2018-09-18 13:57:57');
INSERT INTO `merchantorder` VALUES ('27', '1014', '6', '201809181412331001510487380', '1', null, '0.0100021', null, '', '5', '0', '0', '2018-09-18 14:42:33', '2018-09-18 14:12:33', '2018-09-18 14:12:50');
INSERT INTO `merchantorder` VALUES ('28', '1014', '6', '201810241342211001347417390', '4', '', '99', null, '购买vip服务,价格: 99.0元/年', '5', '0', '0', '2018-10-24 14:12:22', '2018-10-24 13:42:22', '2018-10-24 14:15:00');
INSERT INTO `merchantorder` VALUES ('29', '1014', '6', '201810241510131000039250764', '1', null, '90.01', null, '', '5', '0', '0', '2018-10-24 15:40:13', '2018-10-24 15:10:13', '2018-10-24 15:45:00');
INSERT INTO `merchantorder` VALUES ('30', '1014', '6', '201810251056311000443012902', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '6', '0', '0', '2018-10-25 11:26:31', '2018-10-25 10:56:31', '2018-10-25 10:57:12');
INSERT INTO `merchantorder` VALUES ('31', '1014', '1', '201810251108351001255721188', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '6', '0', '0', '2018-10-25 11:38:35', '2018-10-25 11:08:35', '2018-10-25 11:08:51');
INSERT INTO `merchantorder` VALUES ('32', '1014', '6', '201810251329591000260151410', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '6', '0', '0', '2018-10-25 13:59:55', '2018-10-25 13:29:55', '2018-10-25 13:30:43');
INSERT INTO `merchantorder` VALUES ('33', '1014', '1', '201810251334031000585132281', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '6', '0', '0', '2018-10-25 14:03:59', '2018-10-25 13:33:59', '2018-10-25 13:44:02');
INSERT INTO `merchantorder` VALUES ('34', '1014', '6', '201810251419431000793191788', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 14:49:40', '2018-10-25 14:19:40', '2018-10-25 14:19:40');
INSERT INTO `merchantorder` VALUES ('35', '1014', '6', '201810251448351001370034277', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 15:22:52', '2018-10-25 14:52:52', '2018-10-25 14:52:52');
INSERT INTO `merchantorder` VALUES ('36', '1014', '6', '201810251501431001253985354', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 15:31:39', '2018-10-25 15:01:39', '2018-10-25 15:01:39');
INSERT INTO `merchantorder` VALUES ('37', '1014', '6', '201810251503561001010543575', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 15:38:48', '2018-10-25 15:08:48', '2018-10-25 15:08:48');
INSERT INTO `merchantorder` VALUES ('38', '1014', '1', '201810251546081000954102026', '1', null, '5', null, '', '5', '0', '0', '2018-10-25 16:16:05', '2018-10-25 15:46:05', '2018-10-25 16:19:56');
INSERT INTO `merchantorder` VALUES ('39', '1014', '1', '201810251550541000691309803', '1', null, '0.1', null, '', '1', '0', '0', '2018-10-25 16:20:51', '2018-10-25 15:50:51', '2018-10-25 15:51:18');
INSERT INTO `merchantorder` VALUES ('40', '1014', '6', '201810251605021000363342089', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 16:34:58', '2018-10-25 16:04:58', '2018-10-25 16:04:58');
INSERT INTO `merchantorder` VALUES ('41', '1014', '6', '201810251631061000249198786', '1', null, '47', null, '', '5', '0', '0', '2018-10-25 17:01:02', '2018-10-25 16:31:02', '2018-10-25 17:05:00');
INSERT INTO `merchantorder` VALUES ('42', '1014', '6', '201810251712271001060966701', '1', null, '47', null, '', '5', '0', '0', '2018-10-25 17:42:27', '2018-10-25 17:12:27', '2018-10-25 17:45:00');
INSERT INTO `merchantorder` VALUES ('43', '1014', '6', '201810251731461001598997983', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 18:01:46', '2018-10-25 17:31:46', '2018-10-25 17:31:46');
INSERT INTO `merchantorder` VALUES ('44', '1014', '6', '201810251735491001979671056', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 18:05:49', '2018-10-25 17:35:49', '2018-10-25 17:35:49');
INSERT INTO `merchantorder` VALUES ('45', '1014', '6', '201810251736231001691809533', '1', null, '67', null, '', '5', '0', '0', '2018-10-25 18:06:23', '2018-10-25 17:36:23', '2018-10-25 17:42:58');
INSERT INTO `merchantorder` VALUES ('46', '1014', '6', '201810251751061001955103459', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 18:21:06', '2018-10-25 17:51:06', '2018-10-25 17:51:06');
INSERT INTO `merchantorder` VALUES ('47', '1014', '6', '201810251751441000373685336', '1', null, '0.0799999', null, '', '5', '0', '0', '2018-10-25 18:21:44', '2018-10-25 17:51:44', '2018-10-25 17:56:03');
INSERT INTO `merchantorder` VALUES ('48', '1014', '6', '201810251757481001375130679', '1', null, '20.1', null, '', '5', '0', '0', '2018-10-25 18:27:48', '2018-10-25 17:57:48', '2018-10-25 17:58:24');
INSERT INTO `merchantorder` VALUES ('49', '1014', '1', '201810251822061001898450972', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '6', '0', '0', '2018-10-25 18:52:06', '2018-10-25 18:22:06', '2018-10-25 18:22:29');
INSERT INTO `merchantorder` VALUES ('50', '1014', '7', '201810251827431001495349767', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '5', '0', '0', '2018-10-25 18:57:43', '2018-10-25 18:27:43', '2018-10-25 18:59:59');
INSERT INTO `merchantorder` VALUES ('51', '1014', '7', '201810251828481000565808093', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '5', '0', '0', '2018-10-25 18:58:48', '2018-10-25 18:28:48', '2018-10-25 18:59:59');
INSERT INTO `merchantorder` VALUES ('52', '1014', '7', '201810251828541001167886219', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '6', '0', '0', '2018-10-25 18:58:54', '2018-10-25 18:28:54', '2018-10-25 18:29:10');
INSERT INTO `merchantorder` VALUES ('53', '1014', '1', '201810251852391000582714514', '4', '', '0.01', null, '购买vip服务,价格: 0.01元/年', '6', '0', '0', '2018-10-25 19:22:39', '2018-10-25 18:52:39', '2018-10-25 18:53:02');
INSERT INTO `merchantorder` VALUES ('54', '1014', '1', '201810251903491001478386303', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 19:33:49', '2018-10-25 19:03:49', '2018-10-25 19:03:49');
INSERT INTO `merchantorder` VALUES ('55', '1014', '1', '201810251904151000337114019', '1', null, '0.1', null, '', '5', '0', '0', '2018-10-25 19:34:15', '2018-10-25 19:04:15', '2018-10-25 19:35:00');
INSERT INTO `merchantorder` VALUES ('56', '1014', '1', '201810251904321001993755571', '1', null, '0', null, '', '1', '0', '0', '2018-10-25 19:34:32', '2018-10-25 19:04:32', '2018-10-25 19:04:32');
INSERT INTO `merchantorder` VALUES ('57', '1014', '1', '201810251904461002105690561', '1', null, '20.1', null, '', '5', '0', '0', '2018-10-25 19:34:46', '2018-10-25 19:04:46', '2018-10-25 19:35:00');
INSERT INTO `merchantorder` VALUES ('58', '1014', '1', '201811011632241000250009673', '1', null, '0', null, '', '1', '0', '0', '2018-11-01 17:02:24', '2018-11-01 16:32:24', '2018-11-01 16:32:24');
INSERT INTO `merchantorder` VALUES ('59', '1014', '9', '201811051724091000463146545', '3', null, '0', null, '', '1', '0', '0', '2018-11-05 17:54:09', '2018-11-05 17:24:09', '2018-11-05 17:24:09');
INSERT INTO `merchantorder` VALUES ('60', '1014', '9', '201811051726101000809819802', '3', null, '0', null, '', '1', '0', '0', '2018-11-05 17:56:10', '2018-11-05 17:26:10', '2018-11-05 17:26:10');
INSERT INTO `merchantorder` VALUES ('61', '1014', '8', '201811051804331000368403226', '1', null, '201', null, '', '5', '0', '0', '2018-11-05 18:34:33', '2018-11-05 18:04:33', '2018-11-05 18:35:00');
INSERT INTO `merchantorder` VALUES ('62', '1014', '8', '201811061053021001395732841', '4', '', '1', null, '购买vip服务,价格: 1.0元/年', '5', '0', '0', '2018-11-06 11:23:02', '2018-11-06 10:53:02', '2018-11-06 11:25:00');

-- ----------------------------
-- Table structure for movedeposit
-- ----------------------------
DROP TABLE IF EXISTS `movedeposit`;
CREATE TABLE `movedeposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `turnover` varchar(255) DEFAULT NULL COMMENT '流水号',
  `memid` int(11) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `servicecharge` decimal(10,2) DEFAULT NULL COMMENT '手续费,暂时先是0',
  `state` tinyint(4) DEFAULT '0' COMMENT '提现状态 0:未审核,1,审核成功,2审核失败',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `bankcard` varchar(255) DEFAULT NULL COMMENT '银行账户',
  `banktype` tinyint(255) DEFAULT NULL COMMENT '1工商 2 农业 3中国 4建设',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movedeposit
-- ----------------------------
INSERT INTO `movedeposit` VALUES ('1', '120999111', '2', '300.00', '11.00', '0', '小明', '22', '33', '2019-06-19 15:57:49', '2019-06-02 15:57:54');
INSERT INTO `movedeposit` VALUES ('2', '22123', '0', '112321.00', '12.00', '1', '很少', '2', '3', '2018-10-10 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('3', '2324', '2', '112321.00', '12.00', '1', '十点多', '2', '3', '2018-11-08 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('4', '32423', '3', '12321.00', '12.00', '1', '狒狒', '2', '3', '2018-11-17 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('5', '4354', '4', '1321.00', '12.00', '1', '嗯嗯', '2', '3', '2018-12-01 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('6', '3463', '5', '2321.00', '12.00', '1', '撒大声', '2', '3', '2018-11-21 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('7', '54654', '6', '1321.00', '12.00', '1', '是的', '2', '3', '2018-11-17 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('8', '766', '7', '1321.00', '12.00', '1', '嘻嘻', '2', '3', '2018-11-17 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('9', '657', '8', '1321.00', '12.00', '1', '那你', '2', '3', '2018-11-28 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('10', '657', '9', '13321.00', '12.00', '1', '啊啊', '2', '3', '2018-11-24 10:20:10', '2018-11-12 10:20:10');
INSERT INTO `movedeposit` VALUES ('11', '676653', '10', '12321.00', '12.00', '1', '请求', '2', '3', '2018-11-12 10:20:10', '2018-11-12 10:20:10');

-- ----------------------------
-- Table structure for msgtemplate
-- ----------------------------
DROP TABLE IF EXISTS `msgtemplate`;
CREATE TABLE `msgtemplate` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msgtemplate
-- ----------------------------

-- ----------------------------
-- Table structure for odrlist
-- ----------------------------
DROP TABLE IF EXISTS `odrlist`;
CREATE TABLE `odrlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(120) DEFAULT NULL,
  `addressid` varchar(120) DEFAULT NULL,
  `telephone` varchar(120) DEFAULT NULL,
  `realname` varchar(120) DEFAULT NULL,
  `province` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `district` varchar(120) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `orderid` varchar(120) DEFAULT NULL,
  `amount` varchar(120) DEFAULT NULL,
  `paystatus` varchar(120) DEFAULT NULL,
  `paytype` varchar(120) DEFAULT NULL,
  `shopcarts` varchar(1000) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of odrlist
-- ----------------------------
INSERT INTO `odrlist` VALUES ('1', 'o9shn5P88weSU33HTQjQZ9UrhFeE', '1', '020-8116788', '张三', '广东省', '广州市', '海珠区', '新港中路397号', '15633500893327796037', '109', '1', '3', '[{\"id\":\"8\",\"itemid\":4,\"num\":\"3\",\"sku\":\"None\",\"picture\":\"https://img.alicdn.com/imgextra/i3/421050009/O1CN01jRQzGN1BwA6jN9BAm_!!0-saturn_solar.jpg_220x220.jpg_.webp\",\"title\":\"超级商品\",\"price\":33},{\"id\":\"9\",\"itemid\":19,\"num\":\"2\",\"sku\":\"{\\\"颜色\\\":\\\"黑色\\\",\\\"尺寸\\\":\\\"100\\\"}\",\"picture\":\"http://img004.hc360.cn/g8/M09/15/24/wKhQt1OEXaGEE_SHAAAAAOlhTxk623.jpg\",\"title\":\"七万五千\",\"price\":5}]', '2019-07-17 15:54:49', '2019-07-17 15:54:49');
INSERT INTO `odrlist` VALUES ('2', 'o9shn5P88weSU33HTQjQZ9UrhFeE', '1', '020-8116788', '张三', '广东省', '广州市', '海珠区', '新港中路397号', '156335014171460178087', '112', '1', '3', '[{\"id\":\"8\",\"itemid\":4,\"num\":\"3\",\"sku\":\"None\",\"picture\":\"https://img.alicdn.com/imgextra/i3/421050009/O1CN01jRQzGN1BwA6jN9BAm_!!0-saturn_solar.jpg_220x220.jpg_.webp\",\"title\":\"超级商品\",\"price\":33},{\"id\":\"9\",\"itemid\":19,\"num\":\"2\",\"sku\":\"{\\\"颜色\\\":\\\"黑色\\\",\\\"尺寸\\\":\\\"100\\\"}\",\"picture\":\"http://img004.hc360.cn/g8/M09/15/24/wKhQt1OEXaGEE_SHAAAAAOlhTxk623.jpg\",\"title\":\"七万五千\",\"price\":5},{\"id\":\"10\",\"itemid\":12,\"num\":\"1\",\"sku\":\"{\\\"测试\\\":\\\"13211111111\\\"}\",\"picture\":\"https://img.alicdn.com/imgextra/i3/26468968/O1CN01wkv3aj2G7OSd1AObx_!!0-saturn_solar.jpg_220x220.jpg_.webp\",\"title\":\"手机\",\"price\":3}]', '2019-07-17 15:55:42', '2019-07-17 15:55:42');
INSERT INTO `odrlist` VALUES ('3', 'o9shn5P88weSU33HTQjQZ9UrhFeE', '13222222222', '020-8116788', '张三', '广东省', '广州市', '海珠区', '新港中路397号', '1563350691577610042083', '112', '2', '3', '[{\"id\":\"8\",\"itemid\":4,\"num\":\"3\",\"sku\":\"None\",\"picture\":\"https://img.alicdn.com/imgextra/i3/421050009/O1CN01jRQzGN1BwA6jN9BAm_!!0-saturn_solar.jpg_220x220.jpg_.webp\",\"title\":\"超级商品\",\"price\":33},{\"id\":\"9\",\"itemid\":19,\"num\":\"2\",\"sku\":\"{\\\"颜色\\\":\\\"黑色\\\",\\\"尺寸\\\":\\\"100\\\"}\",\"picture\":\"http://img004.hc360.cn/g8/M09/15/24/wKhQt1OEXaGEE_SHAAAAAOlhTxk623.jpg\",\"title\":\"七万五千\",\"price\":5},{\"id\":\"10\",\"itemid\":12,\"num\":\"1\",\"sku\":\"{\\\"测试\\\":\\\"13211111111\\\"}\",\"picture\":\"https://img.alicdn.com/imgextra/i3/26468968/O1CN01wkv3aj2G7OSd1AObx_!!0-saturn_solar.jpg_220x220.jpg_.webp\",\"title\":\"手机\",\"price\":3}]', '2019-07-17 16:04:52', '2019-07-17 16:04:52');

-- ----------------------------
-- Table structure for orderaddress
-- ----------------------------
DROP TABLE IF EXISTS `orderaddress`;
CREATE TABLE `orderaddress` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(27) DEFAULT NULL,
  `realname` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `province` varchar(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `district` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderaddress
-- ----------------------------
INSERT INTO `orderaddress` VALUES ('1', '201809111705161000546697219', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-11 17:05:16', '2018-09-11 17:05:16');
INSERT INTO `orderaddress` VALUES ('2', '201809111720191002109425002', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-11 17:20:19', '2018-09-11 17:20:19');
INSERT INTO `orderaddress` VALUES ('3', '201809131953251001738350498', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-13 19:53:25', '2018-09-13 19:53:25');
INSERT INTO `orderaddress` VALUES ('4', '201809140906161000727547975', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 09:06:16', '2018-09-14 09:06:16');
INSERT INTO `orderaddress` VALUES ('5', '201809141711591001356615888', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 17:11:59', '2018-09-14 17:11:59');
INSERT INTO `orderaddress` VALUES ('6', '201809141944121001600891762', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 19:44:12', '2018-09-14 19:44:12');
INSERT INTO `orderaddress` VALUES ('7', '201809142012101001531082656', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 20:12:10', '2018-09-14 20:12:10');
INSERT INTO `orderaddress` VALUES ('8', '201809142012201000096516841', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 20:12:20', '2018-09-14 20:12:20');
INSERT INTO `orderaddress` VALUES ('9', '201809142103371001717908857', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 21:03:37', '2018-09-14 21:03:37');
INSERT INTO `orderaddress` VALUES ('10', '201809142113381000576002806', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 21:13:38', '2018-09-14 21:13:38');
INSERT INTO `orderaddress` VALUES ('11', '201809142119021001151117634', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 21:19:02', '2018-09-14 21:19:02');
INSERT INTO `orderaddress` VALUES ('12', '201809142142501001820005959', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-14 21:42:50', '2018-09-14 21:42:50');
INSERT INTO `orderaddress` VALUES ('14', '201809181104201001561740713', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-18 11:04:20', '2018-09-18 11:04:20');
INSERT INTO `orderaddress` VALUES ('15', '201809181334461000730616717', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-18 13:34:46', '2018-09-18 13:34:46');
INSERT INTO `orderaddress` VALUES ('16', '201809181343171001088419538', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-18 13:43:17', '2018-09-18 13:43:17');
INSERT INTO `orderaddress` VALUES ('17', '201809181345541000846091222', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-18 13:45:54', '2018-09-18 13:45:54');
INSERT INTO `orderaddress` VALUES ('18', '201809181346201001766065241', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-18 13:46:20', '2018-09-18 13:46:20');
INSERT INTO `orderaddress` VALUES ('19', '201809181350451001575330413', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-18 13:50:45', '2018-09-18 13:50:45');
INSERT INTO `orderaddress` VALUES ('20', '201809181412331001510487380', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-09-18 14:12:33', '2018-09-18 14:12:33');
INSERT INTO `orderaddress` VALUES ('21', '201810241510131000039250764', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-24 15:10:13', '2018-10-24 15:10:13');
INSERT INTO `orderaddress` VALUES ('22', '201810251419431000793191788', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 14:19:40', '2018-10-25 14:19:40');
INSERT INTO `orderaddress` VALUES ('23', '201810251448351001370034277', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 14:53:55', '2018-10-25 14:53:55');
INSERT INTO `orderaddress` VALUES ('24', '201810251501431001253985354', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 15:01:39', '2018-10-25 15:01:39');
INSERT INTO `orderaddress` VALUES ('25', '201810251503561001010543575', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 15:08:53', '2018-10-25 15:08:53');
INSERT INTO `orderaddress` VALUES ('26', '201810251546081000954102026', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-10-25 15:46:05', '2018-10-25 15:46:05');
INSERT INTO `orderaddress` VALUES ('27', '201810251550541000691309803', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-10-25 15:50:51', '2018-10-25 15:50:51');
INSERT INTO `orderaddress` VALUES ('28', '201810251605021000363342089', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 16:04:58', '2018-10-25 16:04:58');
INSERT INTO `orderaddress` VALUES ('29', '201810251631061000249198786', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 16:31:02', '2018-10-25 16:31:02');
INSERT INTO `orderaddress` VALUES ('30', '201810251712271001060966701', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 17:12:27', '2018-10-25 17:12:27');
INSERT INTO `orderaddress` VALUES ('31', '201810251731461001598997983', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 17:31:46', '2018-10-25 17:31:46');
INSERT INTO `orderaddress` VALUES ('32', '201810251735491001979671056', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 17:35:49', '2018-10-25 17:35:49');
INSERT INTO `orderaddress` VALUES ('33', '201810251736231001691809533', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 17:36:23', '2018-10-25 17:36:23');
INSERT INTO `orderaddress` VALUES ('34', '201810251751061001955103459', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 17:51:06', '2018-10-25 17:51:06');
INSERT INTO `orderaddress` VALUES ('35', '201810251751441000373685336', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 17:51:44', '2018-10-25 17:51:44');
INSERT INTO `orderaddress` VALUES ('36', '201810251757481001375130679', 'asd ', '12123131321', '北京市', '北京市', '西城区', 'sad ', '2018-10-25 17:57:48', '2018-10-25 17:57:48');
INSERT INTO `orderaddress` VALUES ('37', '201810251903491001478386303', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-10-25 19:03:49', '2018-10-25 19:03:49');
INSERT INTO `orderaddress` VALUES ('38', '201810251904151000337114019', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-10-25 19:04:15', '2018-10-25 19:04:15');
INSERT INTO `orderaddress` VALUES ('39', '201810251904321001993755571', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-10-25 19:04:32', '2018-10-25 19:04:32');
INSERT INTO `orderaddress` VALUES ('40', '201810251904461002105690561', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-10-25 19:04:46', '2018-10-25 19:04:46');
INSERT INTO `orderaddress` VALUES ('41', '201811011632241000250009673', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-11-01 16:32:24', '2018-11-01 16:32:24');
INSERT INTO `orderaddress` VALUES ('42', '201811051724091000463146545', '徐', '18824118536', '北京市', '北京市', '东城区', '健健康康', '2018-11-05 17:24:09', '2018-11-05 17:24:09');
INSERT INTO `orderaddress` VALUES ('43', '201811051726101000809819802', '徐', '18824118536', '北京市', '北京市', '东城区', '健健康康', '2018-11-05 17:26:10', '2018-11-05 17:26:10');
INSERT INTO `orderaddress` VALUES ('44', '201811051804331000368403226', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2018-11-05 18:04:33', '2018-11-05 18:04:33');
INSERT INTO `orderaddress` VALUES ('45', '156319292848927864525', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2019-07-15 20:15:28', '2019-07-15 20:15:28');
INSERT INTO `orderaddress` VALUES ('46', '156319305901319596331', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2019-07-15 20:17:39', '2019-07-15 20:17:39');
INSERT INTO `orderaddress` VALUES ('47', '156326827745716804174', '张三', '020-8116788', '广东省', '广州市', '海珠区', '新港中路397号', '2019-07-16 17:11:17', '2019-07-16 17:11:17');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(27) NOT NULL,
  `itemid` int(10) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `itempic` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `itemsku` varchar(60) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '201809111705161000546697219', '5', '商品', 'http://akivipic.meisaas.com/sjDVIBtp55688690.jpg', '0.1', '2', null, '2018-09-11 17:05:16', '2018-09-11 17:05:16');
INSERT INTO `orderdetail` VALUES ('2', '201809111720191002109425002', '6', '阿萨德', 'http://akivipic.meisaas.com/LxtvAeWn55900732.jpg', '211', '1', null, '2018-09-11 17:20:19', '2018-09-11 17:20:19');
INSERT INTO `orderdetail` VALUES ('3', '201809111807311001599255386', null, '购买vip服务', null, '199', '1', null, '2018-09-11 18:07:31', '2018-09-11 18:07:31');
INSERT INTO `orderdetail` VALUES ('4', '201809111807351000471844095', null, '购买vip服务', null, '199', '1', null, '2018-09-11 18:07:35', '2018-09-11 18:07:35');
INSERT INTO `orderdetail` VALUES ('5', '201809111910161002112133405', null, '购买vip服务', null, '199', '1', null, '2018-09-11 19:10:16', '2018-09-11 19:10:16');
INSERT INTO `orderdetail` VALUES ('6', '201809111911551000383064529', null, '购买vip服务', null, '199', '1', null, '2018-09-11 19:11:55', '2018-09-11 19:11:55');
INSERT INTO `orderdetail` VALUES ('7', '201809111912421001880811063', null, '购买vip服务', null, '199', '1', null, '2018-09-11 19:12:42', '2018-09-11 19:12:42');
INSERT INTO `orderdetail` VALUES ('8', '201809120932571000900161597', null, '购买vip服务', null, '199', '1', null, '2018-09-12 09:32:57', '2018-09-12 09:32:57');
INSERT INTO `orderdetail` VALUES ('9', '201809120932591000406512103', null, '购买vip服务', null, '199', '1', null, '2018-09-12 09:32:59', '2018-09-12 09:32:59');
INSERT INTO `orderdetail` VALUES ('10', '201809131953251001738350498', '6', '阿萨德', 'http://akivipic.meisaas.com/LxtvAeWn55900732.jpg', '147.7', '1', null, '2018-09-13 19:53:25', '2018-09-13 19:53:25');
INSERT INTO `orderdetail` VALUES ('11', '201809131953251001738350498', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '86.1', '1', null, '2018-09-13 19:53:25', '2018-09-13 19:53:25');
INSERT INTO `orderdetail` VALUES ('12', '201809140906161000727547975', '6', '阿萨德', 'http://akivipic.meisaas.com/LxtvAeWn55900732.jpg', '147.7', '2', null, '2018-09-14 09:06:16', '2018-09-14 09:06:16');
INSERT INTO `orderdetail` VALUES ('13', '201809140906161000727547975', '5', '商品', 'http://akivipic.meisaas.com/sjDVIBtp55688690.jpg', '0.07', '1', null, '2018-09-14 09:06:16', '2018-09-14 09:06:16');
INSERT INTO `orderdetail` VALUES ('14', '201809141711591001356615888', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '86.1', '1', null, '2018-09-14 17:11:59', '2018-09-14 17:11:59');
INSERT INTO `orderdetail` VALUES ('15', '201809141944121001600891762', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '86.1', '1', null, '2018-09-14 19:44:12', '2018-09-14 19:44:12');
INSERT INTO `orderdetail` VALUES ('16', '201809142012101001531082656', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '86.1', '1', null, '2018-09-14 20:12:10', '2018-09-14 20:12:10');
INSERT INTO `orderdetail` VALUES ('17', '201809142012201000096516841', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '86.1', '1', null, '2018-09-14 20:12:20', '2018-09-14 20:12:20');
INSERT INTO `orderdetail` VALUES ('18', '201809142103371001717908857', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '86.1', '1', null, '2018-09-14 21:03:37', '2018-09-14 21:03:37');
INSERT INTO `orderdetail` VALUES ('19', '201809142113381000576002806', '6', '阿萨德', 'http://akivipic.meisaas.com/LxtvAeWn55900732.jpg', '147.7', '1', null, '2018-09-14 21:13:38', '2018-09-14 21:13:38');
INSERT INTO `orderdetail` VALUES ('20', '201809142119021001151117634', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '86.1', '1', null, '2018-09-14 21:19:02', '2018-09-14 21:19:02');
INSERT INTO `orderdetail` VALUES ('21', '201809142142501001820005959', '6', '阿萨德', 'http://akivipic.meisaas.com/LxtvAeWn55900732.jpg', '211', '1', null, '2018-09-14 21:42:50', '2018-09-14 21:42:50');
INSERT INTO `orderdetail` VALUES ('22', '201809142142501001820005959', '5', '商品', 'http://akivipic.meisaas.com/sjDVIBtp55688690.jpg', '0.1', '1', null, '2018-09-14 21:42:50', '2018-09-14 21:42:50');
INSERT INTO `orderdetail` VALUES ('24', '201809181104201001561740713', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '100.01', '1', null, '2018-09-18 11:04:20', '2018-09-18 11:04:20');
INSERT INTO `orderdetail` VALUES ('25', '201809181334461000730616717', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '100.01', '1', null, '2018-09-18 13:34:46', '2018-09-18 13:34:46');
INSERT INTO `orderdetail` VALUES ('26', '201809181343171001088419538', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '100.01', '1', null, '2018-09-18 13:43:17', '2018-09-18 13:43:17');
INSERT INTO `orderdetail` VALUES ('27', '201809181345541000846091222', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '100.01', '1', null, '2018-09-18 13:45:54', '2018-09-18 13:45:54');
INSERT INTO `orderdetail` VALUES ('28', '201809181346201001766065241', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '100.01', '1', null, '2018-09-18 13:46:20', '2018-09-18 13:46:20');
INSERT INTO `orderdetail` VALUES ('29', '201809181350451001575330413', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '100.01', '1', null, '2018-09-18 13:50:45', '2018-09-18 13:50:45');
INSERT INTO `orderdetail` VALUES ('30', '201809181412331001510487380', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '100.01', '1', null, '2018-09-18 14:12:33', '2018-09-18 14:12:33');
INSERT INTO `orderdetail` VALUES ('31', '201810241342211001347417390', null, '购买vip服务', null, '99', '1', null, '2018-10-24 13:42:22', '2018-10-24 13:42:22');
INSERT INTO `orderdetail` VALUES ('32', '201810241510131000039250764', '4', '123', 'http://akivipic.meisaas.com/WhSeCyPf54819228.jpg', '100.01', '1', null, '2018-10-24 15:10:13', '2018-10-24 15:10:13');
INSERT INTO `orderdetail` VALUES ('33', '201810251056311000443012902', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 10:56:32', '2018-10-25 10:56:32');
INSERT INTO `orderdetail` VALUES ('34', '201810251108351001255721188', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 11:08:35', '2018-10-25 11:08:35');
INSERT INTO `orderdetail` VALUES ('35', '201810251329591000260151410', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 13:29:55', '2018-10-25 13:29:55');
INSERT INTO `orderdetail` VALUES ('36', '201810251334031000585132281', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 13:33:59', '2018-10-25 13:33:59');
INSERT INTO `orderdetail` VALUES ('37', '201810251419431000793191788', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '77', '1', '{\"维修类型\":\"换屏（屏成本另计）\"}', '2018-10-25 14:19:40', '2018-10-25 14:19:40');
INSERT INTO `orderdetail` VALUES ('38', '201810251448351001370034277', '8', '手机贴膜1', 'http://akivipic.meisaas.com/OlcfMXOI33149285.jpg', '14', '1', null, '2018-10-25 14:48:54', '2018-10-25 14:48:54');
INSERT INTO `orderdetail` VALUES ('39', '201810251501431001253985354', '8', '手机贴膜1', 'http://akivipic.meisaas.com/OlcfMXOI33149285.jpg', '14', '1', null, '2018-10-25 15:01:39', '2018-10-25 15:01:39');
INSERT INTO `orderdetail` VALUES ('40', '201810251503561001010543575', '8', '手机贴膜1', 'http://akivipic.meisaas.com/OlcfMXOI33149285.jpg', '14', '1', null, '2018-10-25 15:04:41', '2018-10-25 15:04:41');
INSERT INTO `orderdetail` VALUES ('41', '201810251546081000954102026', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '35', '1', '{\"维修类型\":\"其它\"}', '2018-10-25 15:46:05', '2018-10-25 15:46:05');
INSERT INTO `orderdetail` VALUES ('42', '201810251550541000691309803', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '30.1', '1', '{\"维修类型\":\"清洗\"}', '2018-10-25 15:50:51', '2018-10-25 15:50:51');
INSERT INTO `orderdetail` VALUES ('43', '201810251605021000363342089', '8', '手机贴膜1', 'http://akivipic.meisaas.com/OlcfMXOI33149285.jpg', '14', '1', null, '2018-10-25 16:04:58', '2018-10-25 16:04:58');
INSERT INTO `orderdetail` VALUES ('44', '201810251631061000249198786', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '77', '1', '{\"维修类型\":\"换屏（屏成本另计）\"}', '2018-10-25 16:31:02', '2018-10-25 16:31:02');
INSERT INTO `orderdetail` VALUES ('45', '201810251712271001060966701', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '77', '1', '{\"维修类型\":\"换屏（屏成本另计）\"}', '2018-10-25 17:12:27', '2018-10-25 17:12:27');
INSERT INTO `orderdetail` VALUES ('46', '201810251731461001598997983', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '10.08', '1', '{\"维修类型\":\"其它\"}', '2018-10-25 17:31:46', '2018-10-25 17:31:46');
INSERT INTO `orderdetail` VALUES ('47', '201810251735491001979671056', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '10.08', '1', '{\"维修类型\":\"其它\"}', '2018-10-25 17:35:49', '2018-10-25 17:35:49');
INSERT INTO `orderdetail` VALUES ('48', '201810251736231001691809533', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '77', '1', '{\"维修类型\":\"换屏（屏成本另计）\"}', '2018-10-25 17:36:23', '2018-10-25 17:36:23');
INSERT INTO `orderdetail` VALUES ('49', '201810251751061001955103459', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '10.08', '1', '{\"维修类型\":\"其它\"}', '2018-10-25 17:51:06', '2018-10-25 17:51:06');
INSERT INTO `orderdetail` VALUES ('50', '201810251751441000373685336', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '10.08', '1', '{\"维修类型\":\"其它\"}', '2018-10-25 17:51:44', '2018-10-25 17:51:44');
INSERT INTO `orderdetail` VALUES ('51', '201810251757481001375130679', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '30.1', '1', '{\"维修类型\":\"清洗\"}', '2018-10-25 17:57:48', '2018-10-25 17:57:48');
INSERT INTO `orderdetail` VALUES ('52', '201810251822061001898450972', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 18:22:06', '2018-10-25 18:22:06');
INSERT INTO `orderdetail` VALUES ('53', '201810251827431001495349767', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 18:27:43', '2018-10-25 18:27:43');
INSERT INTO `orderdetail` VALUES ('54', '201810251828481000565808093', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 18:28:48', '2018-10-25 18:28:48');
INSERT INTO `orderdetail` VALUES ('55', '201810251828541001167886219', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 18:28:54', '2018-10-25 18:28:54');
INSERT INTO `orderdetail` VALUES ('56', '201810251852391000582714514', null, '购买vip服务', null, '0.01', '1', null, '2018-10-25 18:52:39', '2018-10-25 18:52:39');
INSERT INTO `orderdetail` VALUES ('57', '201810251903491001478386303', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '77', '1', '{\"维修类型\":\"换屏（屏成本另计）\"}', '2018-10-25 19:03:49', '2018-10-25 19:03:49');
INSERT INTO `orderdetail` VALUES ('58', '201810251904151000337114019', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '30.1', '1', '{\"维修类型\":\"清洗\"}', '2018-10-25 19:04:15', '2018-10-25 19:04:15');
INSERT INTO `orderdetail` VALUES ('59', '201810251904321001993755571', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '30.1', '1', '{\"维修类型\":\"清洗\"}', '2018-10-25 19:04:32', '2018-10-25 19:04:32');
INSERT INTO `orderdetail` VALUES ('60', '201810251904461002105690561', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '30.1', '1', '{\"维修类型\":\"清洗\"}', '2018-10-25 19:04:46', '2018-10-25 19:04:46');
INSERT INTO `orderdetail` VALUES ('61', '201811011632241000250009673', '9', '维修', 'http://akivipic.meisaas.com/kdCDVaPK34651701.jpg', '77', '1', '{\"维修类型\":\"换屏（屏成本另计）\"}', '2018-11-01 16:32:24', '2018-11-01 16:32:24');
INSERT INTO `orderdetail` VALUES ('62', '201811051724091000463146545', '12', '手机', 'http://akivipic.meisaas.com/mItUwLCo35961885.jpg', '0.04', '1', '{\"测试\":\"78945612322\"}', '2018-11-05 17:24:09', '2018-11-05 17:24:09');
INSERT INTO `orderdetail` VALUES ('63', '201811051726101000809819802', '13', '上古神兽', 'http://akivipic.meisaas.com/isyqoAGM09934899.png', '10', '1', null, '2018-11-05 17:26:10', '2018-11-05 17:26:10');
INSERT INTO `orderdetail` VALUES ('64', '201811051804331000368403226', '6', '阿萨德', 'http://akivipic.meisaas.com/LxtvAeWn55900732.jpg', '211', '1', null, '2018-11-05 18:04:33', '2018-11-05 18:04:33');
INSERT INTO `orderdetail` VALUES ('65', '201811061053021001395732841', null, '购买vip服务', null, '1', '1', null, '2018-11-06 10:53:02', '2018-11-06 10:53:02');

-- ----------------------------
-- Table structure for ordergroupon
-- ----------------------------
DROP TABLE IF EXISTS `ordergroupon`;
CREATE TABLE `ordergroupon` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '拼团订单id',
  `merid` int(10) NOT NULL COMMENT '商户id',
  `itemid` int(10) NOT NULL COMMENT '商品id',
  `maxnum` tinyint(4) NOT NULL COMMENT '最大人数',
  `status` tinyint(4) NOT NULL COMMENT '拼团状态 (1、拼团中，2、拼团成功，3、拼团失败)',
  `createtime` datetime NOT NULL COMMENT '参团时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  `endtime` datetime NOT NULL COMMENT '团购结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼团订单表';

-- ----------------------------
-- Records of ordergroupon
-- ----------------------------

-- ----------------------------
-- Table structure for payconfig
-- ----------------------------
DROP TABLE IF EXISTS `payconfig`;
CREATE TABLE `payconfig` (
  `merid` int(10) NOT NULL,
  `chargefee` float DEFAULT NULL,
  `appid` varchar(50) DEFAULT NULL,
  `appsecret` varchar(100) DEFAULT NULL,
  `mchid` varchar(50) DEFAULT NULL,
  `signkey` varchar(100) DEFAULT NULL,
  `loginaccount` varchar(100) DEFAULT NULL,
  `apiclientcert` varchar(500) DEFAULT NULL,
  `apiclientkey` varchar(500) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  UNIQUE KEY `merid` (`merid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payconfig
-- ----------------------------
INSERT INTO `payconfig` VALUES ('1014', '0', null, null, '1513709141', 'TNITuVnzZwqfsC5TbKmXX0X7oqtIEybW', null, null, null, '2018-07-24 17:32:04', '2018-09-11 09:33:30');

-- ----------------------------
-- Table structure for paymentlog
-- ----------------------------
DROP TABLE IF EXISTS `paymentlog`;
CREATE TABLE `paymentlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) NOT NULL,
  `orderid` varchar(30) DEFAULT NULL,
  `channelid` varchar(30) DEFAULT NULL,
  `paymethod` varchar(3) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `chargefee` float DEFAULT NULL,
  `totalamount` float DEFAULT NULL,
  `paystatus` tinyint(4) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paymentlog
-- ----------------------------
INSERT INTO `paymentlog` VALUES ('1', '1014', '201809111705161000546697219', null, 'wxa', '0.1988', '0.0012', '0.2', '1', '小程序支付-发送请求', '2018-09-11 17:05:17', '2018-09-11 17:05:17');
INSERT INTO `paymentlog` VALUES ('2', '1014', '201809111720191002109425002', null, 'wxa', '209.734', '1.266', '211', '1', '小程序支付-发送请求', '2018-09-11 17:20:19', '2018-09-11 17:20:19');
INSERT INTO `paymentlog` VALUES ('3', '1014', '201809111807311001599255386', null, 'wxa', '199', null, '199', '1', '小程序支付-发送请求', '2018-09-11 18:07:31', '2018-09-11 18:07:31');
INSERT INTO `paymentlog` VALUES ('4', '1014', '201809111807351000471844095', null, 'wxa', '199', null, '199', '1', '小程序支付-发送请求', '2018-09-11 18:07:35', '2018-09-11 18:07:35');
INSERT INTO `paymentlog` VALUES ('5', '1014', '201809111910161002112133405', null, 'wxa', '199', null, '199', '1', '小程序支付-发送请求', '2018-09-11 19:10:16', '2018-09-11 19:10:16');
INSERT INTO `paymentlog` VALUES ('6', '1014', '201809111911551000383064529', null, 'wxa', '199', null, '199', '1', '小程序支付-发送请求', '2018-09-11 19:11:55', '2018-09-11 19:11:55');
INSERT INTO `paymentlog` VALUES ('7', '1014', '201809111912421001880811063', null, 'wxa', '199', null, '199', '1', '小程序支付-发送请求', '2018-09-11 19:12:42', '2018-09-11 19:12:42');
INSERT INTO `paymentlog` VALUES ('8', '1014', '201809120932571000900161597', null, 'wxa', '199', null, '199', '1', '小程序支付-发送请求', '2018-09-12 09:32:57', '2018-09-12 09:32:57');
INSERT INTO `paymentlog` VALUES ('9', '1014', '201809120932591000406512103', null, 'wxa', '199', null, '199', '1', '小程序支付-发送请求', '2018-09-12 09:32:59', '2018-09-12 09:32:59');
INSERT INTO `paymentlog` VALUES ('10', '1014', '201809131953251001738350498', null, 'wxa', '232.397', '1.4028', '233.8', '1', '小程序支付-发送请求', '2018-09-13 19:53:25', '2018-09-13 19:53:25');
INSERT INTO `paymentlog` VALUES ('11', '1014', '201809140906161000727547975', null, 'wxa', '293.697', '1.77282', '295.47', '1', '小程序支付-发送请求', '2018-09-14 09:06:16', '2018-09-14 09:06:16');
INSERT INTO `paymentlog` VALUES ('12', '1014', '201809141711591001356615888', null, 'wxa', '85.5834', '0.5166', '86.1', '1', '小程序支付-发送请求', '2018-09-14 17:11:59', '2018-09-14 17:11:59');
INSERT INTO `paymentlog` VALUES ('13', '1014', '201809141944121001600891762', null, 'wxa', '85.5834', '0.5166', '86.1', '1', '小程序支付-发送请求', '2018-09-14 19:44:12', '2018-09-14 19:44:12');
INSERT INTO `paymentlog` VALUES ('14', '1014', '201809142012101001531082656', null, 'wxa', '85.5834', '0.5166', '86.1', '1', '小程序支付-发送请求', '2018-09-14 20:12:10', '2018-09-14 20:12:10');
INSERT INTO `paymentlog` VALUES ('15', '1014', '201809142012201000096516841', null, 'wxa', '85.5834', '0.5166', '86.1', '1', '小程序支付-发送请求', '2018-09-14 20:12:20', '2018-09-14 20:12:20');
INSERT INTO `paymentlog` VALUES ('16', '1014', '201809142103371001717908857', null, 'wxa', '75.6434', '0.4566', '76.1', '1', '小程序支付-发送请求', '2018-09-14 21:03:37', '2018-09-14 21:03:37');
INSERT INTO `paymentlog` VALUES ('17', '1014', '201809142113381000576002806', null, 'wxa', '47.4138', '0.2862', '47.7', '1', '小程序支付-发送请求', '2018-09-14 21:13:38', '2018-09-14 21:13:38');
INSERT INTO `paymentlog` VALUES ('18', '1014', '201809142113381000576002806', null, 'wxa', '47.4138', '0.2862', '47.7', '1', '小程序支付-发送请求(send)-', '2018-09-14 21:14:26', '2018-09-14 21:14:26');
INSERT INTO `paymentlog` VALUES ('19', '1014', '201809142113381000576002806', null, 'wxa', '47.4138', '0.2862', '47.7', '1', '小程序支付-发送请求(send)-', '2018-09-14 21:16:54', '2018-09-14 21:16:54');
INSERT INTO `paymentlog` VALUES ('20', '1014', '201809142142501001820005959', null, 'wxa', '199.893', '1.2066', '201.1', '1', '小程序支付-发送请求', '2018-09-14 21:42:50', '2018-09-14 21:42:50');
INSERT INTO `paymentlog` VALUES ('21', '1014', '201809181104201001561740713', null, 'wxa', '0.00994212', '0.0000600128', '0.0100021', '2', '小程序支付-回调成功', '2018-09-18 11:04:20', '2018-09-18 11:04:43');
INSERT INTO `paymentlog` VALUES ('22', '1014', '201809181334461000730616717', null, 'wxa', '0.00994212', '0.0000600128', '0.0100021', '2', '小程序支付-回调成功', '2018-09-18 13:34:46', '2018-09-18 13:34:59');
INSERT INTO `paymentlog` VALUES ('23', '1014', '201809181343171001088419538', null, 'wxa', '0.00994212', '0.0000600128', '0.0100021', '1', '小程序支付-发送请求', '2018-09-18 13:43:17', '2018-09-18 13:43:17');
INSERT INTO `paymentlog` VALUES ('24', '1014', '201809181345541000846091222', null, 'wxa', '89.4699', '0.54006', '90.01', '1', '小程序支付-发送请求', '2018-09-18 13:45:54', '2018-09-18 13:45:54');
INSERT INTO `paymentlog` VALUES ('25', '1014', '201809181346201001766065241', null, 'wxa', '0.00994212', '0.0000600128', '0.0100021', '1', '小程序支付-发送请求', '2018-09-18 13:46:20', '2018-09-18 13:46:20');
INSERT INTO `paymentlog` VALUES ('26', '1014', '201809181350451001575330413', null, 'wxa', '0.00994212', '0.0000600128', '0.0100021', '1', '小程序支付-发送请求', '2018-09-18 13:50:45', '2018-09-18 13:50:45');
INSERT INTO `paymentlog` VALUES ('27', '1014', '201809181412331001510487380', null, 'wxa', '0.00994212', '0.0000600128', '0.0100021', '1', '小程序支付-发送请求', '2018-09-18 14:12:33', '2018-09-18 14:12:33');
INSERT INTO `paymentlog` VALUES ('28', '1014', '201810241342211001347417390', null, 'wxa', '99', null, '99', '1', '小程序支付-发送请求', '2018-10-24 13:42:22', '2018-10-24 13:42:22');
INSERT INTO `paymentlog` VALUES ('29', '1014', '201810241510131000039250764', null, 'wxa', '89.4699', '0.54006', '90.01', '1', '小程序支付-发送请求', '2018-10-24 15:10:14', '2018-10-24 15:10:14');
INSERT INTO `paymentlog` VALUES ('30', '1014', '201810251056311000443012902', null, 'wxa', '0.01', null, '0.01', '2', '小程序支付-回调成功', '2018-10-25 10:56:32', '2018-10-25 10:57:12');
INSERT INTO `paymentlog` VALUES ('31', '1014', '201810251108351001255721188', null, 'wxa', '0.01', null, '0.01', '2', '小程序支付-回调成功', '2018-10-25 11:08:35', '2018-10-25 11:08:51');
INSERT INTO `paymentlog` VALUES ('32', '1014', '201810251329591000260151410', null, 'wxa', '0.01', null, '0.01', '2', '小程序支付-回调成功', '2018-10-25 13:29:55', '2018-10-25 14:34:20');
INSERT INTO `paymentlog` VALUES ('33', '1014', '201810251334031000585132281', null, 'wxa', '0.01', null, '0.01', '2', '小程序支付-回调成功', '2018-10-25 13:33:59', '2018-10-25 13:44:02');
INSERT INTO `paymentlog` VALUES ('34', '1014', '201810251546081000954102026', null, 'wxa', '4.97', '0.03', '5', '1', '小程序支付-发送请求', '2018-10-25 15:46:05', '2018-10-25 15:46:05');
INSERT INTO `paymentlog` VALUES ('35', '1014', '201810251546081000954102026', null, 'wxa', '4.97', '0.03', '5', '1', '小程序支付-发送请求(send)-', '2018-10-25 15:46:22', '2018-10-25 15:46:22');
INSERT INTO `paymentlog` VALUES ('36', '1014', '201810251546081000954102026', null, 'wxa', '4.97', '0.03', '5', '1', '小程序支付-发送请求(send)-', '2018-10-25 15:47:06', '2018-10-25 15:47:06');
INSERT INTO `paymentlog` VALUES ('37', '1014', '201810251550541000691309803', null, 'wxa', '0.0994004', '0.000600002', '0.1', '2', '小程序支付-回调成功', '2018-10-25 15:50:51', '2018-10-25 15:51:18');
INSERT INTO `paymentlog` VALUES ('38', '1014', '201810251631061000249198786', null, 'wxa', '46.718', '0.282', '47', '1', '小程序支付-发送请求', '2018-10-25 16:31:02', '2018-10-25 16:31:02');
INSERT INTO `paymentlog` VALUES ('39', '1014', '201810251712271001060966701', null, 'wxa', '46.718', '0.282', '47', '1', '小程序支付-发送请求', '2018-10-25 17:12:27', '2018-10-25 17:12:27');
INSERT INTO `paymentlog` VALUES ('40', '1014', '201810251736231001691809533', null, 'wxa', '66.598', '0.402', '67', '1', '小程序支付-发送请求', '2018-10-25 17:36:23', '2018-10-25 17:36:23');
INSERT INTO `paymentlog` VALUES ('41', '1014', '201810251751441000373685336', null, 'wxa', '0.0795199', '0.00048', '0.0799999', '1', '小程序支付-发送请求', '2018-10-25 17:51:44', '2018-10-25 17:51:44');
INSERT INTO `paymentlog` VALUES ('42', '1014', '201810251757481001375130679', null, 'wxa', '19.9794', '0.1206', '20.1', '1', '小程序支付-发送请求', '2018-10-25 17:57:48', '2018-10-25 17:57:48');
INSERT INTO `paymentlog` VALUES ('43', '1014', '201810251822061001898450972', null, 'wxa', '0.01', null, '0.01', '2', '小程序支付-回调成功', '2018-10-25 18:22:06', '2018-10-25 18:22:29');
INSERT INTO `paymentlog` VALUES ('44', '1014', '201810251827431001495349767', null, 'wxa', '0.01', null, '0.01', '1', '小程序支付-发送请求', '2018-10-25 18:27:43', '2018-10-25 18:27:43');
INSERT INTO `paymentlog` VALUES ('45', '1014', '201810251828481000565808093', null, 'wxa', '0.01', null, '0.01', '1', '小程序支付-发送请求', '2018-10-25 18:28:48', '2018-10-25 18:28:48');
INSERT INTO `paymentlog` VALUES ('46', '1014', '201810251828541001167886219', null, 'wxa', '0.01', null, '0.01', '2', '小程序支付-回调成功', '2018-10-25 18:28:54', '2018-10-25 18:29:10');
INSERT INTO `paymentlog` VALUES ('47', '1014', '201810251852391000582714514', null, 'wxa', '0.01', null, '0.01', '2', '小程序支付-回调成功', '2018-10-25 18:52:39', '2018-10-25 18:53:02');
INSERT INTO `paymentlog` VALUES ('48', '1014', '201810251904151000337114019', null, 'wxa', '0.0994004', '0.000600002', '0.1', '1', '小程序支付-发送请求', '2018-10-25 19:04:15', '2018-10-25 19:04:15');
INSERT INTO `paymentlog` VALUES ('49', '1014', '201810251904461002105690561', null, 'wxa', '19.9794', '0.1206', '20.1', '1', '小程序支付-发送请求', '2018-10-25 19:04:46', '2018-10-25 19:04:46');
INSERT INTO `paymentlog` VALUES ('50', '1014', '201811051804331000368403226', null, 'wxa', '199.794', '1.206', '201', '1', '小程序支付-发送请求', '2018-11-05 18:04:33', '2018-11-05 18:04:33');
INSERT INTO `paymentlog` VALUES ('51', '1014', '201811061053021001395732841', null, 'wxa', '1', null, '1', '1', '小程序支付-发送请求', '2018-11-06 10:53:02', '2018-11-06 10:53:02');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_family_id` int(11) DEFAULT NULL,
  `pname` varchar(120) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `subtitle` varchar(120) DEFAULT NULL,
  `spec` varchar(120) DEFAULT NULL,
  `network` varchar(120) DEFAULT NULL,
  `color` varchar(120) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `pcount` decimal(10,0) DEFAULT NULL,
  `expire` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone
-- ----------------------------

-- ----------------------------
-- Table structure for pic
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `color` varchar(120) DEFAULT NULL,
  `img1` varchar(120) DEFAULT NULL,
  `img2` varchar(120) DEFAULT NULL,
  `img3` varchar(120) DEFAULT NULL,
  `img4` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pic
-- ----------------------------

-- ----------------------------
-- Table structure for refundlog
-- ----------------------------
DROP TABLE IF EXISTS `refundlog`;
CREATE TABLE `refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '退款id',
  `refundid` varchar(32) DEFAULT NULL COMMENT '退款订单id',
  `orderid` varchar(30) DEFAULT NULL COMMENT '订单id',
  `merid` int(11) DEFAULT NULL COMMENT '商户id',
  `amount` float(10,2) DEFAULT NULL COMMENT '订单总金额',
  `refundfee` float(10,2) DEFAULT NULL COMMENT '退款金额',
  `chargefee` float(10,2) DEFAULT NULL COMMENT '退款手续费',
  `type` tinyint(4) DEFAULT NULL COMMENT 'tuik类型',
  `status` tinyint(4) DEFAULT NULL COMMENT '退款状态(1:退款中，2：退款成功，3：退款失败)',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of refundlog
-- ----------------------------

-- ----------------------------
-- Table structure for relationrecord
-- ----------------------------
DROP TABLE IF EXISTS `relationrecord`;
CREATE TABLE `relationrecord` (
  `memid` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL COMMENT '没有传递默认输入000',
  `createtime` datetime DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relationrecord
-- ----------------------------
INSERT INTO `relationrecord` VALUES ('2', null, '2018-09-11 17:57:15', 'com.lormi.service.IMemberService.createOrUpdate');
INSERT INTO `relationrecord` VALUES ('6', null, '2018-09-14 10:07:44', 'com.lormi.service.IMemberService.createOrUpdate');
INSERT INTO `relationrecord` VALUES ('7', null, '2018-10-25 18:27:14', 'com.lormi.service.IMemberService.createOrUpdate');
INSERT INTO `relationrecord` VALUES ('1', '6', '2018-10-25 18:47:15', 'com.lormi.service.impl.MemberService.updateParent');
INSERT INTO `relationrecord` VALUES ('8', null, '2018-11-05 14:39:20', 'com.lormi.service.IMemberService.createOrUpdate');
INSERT INTO `relationrecord` VALUES ('9', null, '2018-11-05 17:04:32', 'com.lormi.service.IMemberService.createOrUpdate');
INSERT INTO `relationrecord` VALUES ('13', '8', '2018-11-07 15:32:03', 'com.lormi.service.IMemberService.createOrUpdate.更新登录用户信息');
INSERT INTO `relationrecord` VALUES ('13', '8', '2018-11-07 15:35:11', 'com.lormi.service.IMemberService.createOrUpdate.更新登录用户信息');
INSERT INTO `relationrecord` VALUES ('8', '14', '2018-11-07 15:56:34', 'com.lormi.service.IMemberService.createOrUpdate.更新登录用户信息');
INSERT INTO `relationrecord` VALUES ('15', '8', '2018-11-07 16:02:41', 'com.lormi.service.IMemberService.createOrUpdate.更新登录用户信息');
INSERT INTO `relationrecord` VALUES ('19', '17', '2018-11-07 16:16:01', 'com.lormi.service.IMemberService.createOrUpdate.更新登录用户信息');
INSERT INTO `relationrecord` VALUES ('22', '20', '2018-11-07 16:41:18', 'com.lormi.service.IMemberService.createOrUpdate');
INSERT INTO `relationrecord` VALUES ('22', '20', '2018-11-07 17:00:22', 'com.lormi.service.IMemberService.createOrUpdate.更新登录用户信息');
INSERT INTO `relationrecord` VALUES ('23', '22', '2018-11-07 17:04:31', 'com.lormi.service.IMemberService.createOrUpdate');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merid` int(11) DEFAULT NULL,
  `memid` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `faultimg` varchar(1024) DEFAULT NULL COMMENT '故障图片',
  `malfunction` varchar(255) DEFAULT NULL COMMENT '故障说明 ',
  `repairtype` tinyint(4) DEFAULT NULL COMMENT '1.手机 2.电脑, 3.宽带',
  `state` tinyint(4) DEFAULT NULL COMMENT '0,申请中, 1,已维修,2已拒绝',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL COMMENT '维修型号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('1', '1014', '1', '测试接口添加', '18800000000', 'http://akivipic.meisaas.com/wx/fylumFEj85802468.jpg,http://akivipic.meisaas.com/wx/jljUAht_85367131.jpg,http://akivipic.meisaas.com/wx/fylumFEj85802468.jpg,http://akivipic.meisaas.com/wx/jljUAht_85367131.jpg,http://akivipic.meisaas.com/wx/fylumFEj85802468.jpg,http://akivipic.meisaas.com/wx/jljUAht_85367131.jpg', '测试故障说明', '1', '1', '2018-10-23 10:41:31', '2018-10-24 16:40:21', null);
INSERT INTO `repair` VALUES ('2', '1014', '1', '测试接口添加', '18800000000', 'http://akivipic.meisaas.com/wx/fylumFEj85802468.jpg,http://akivipic.meisaas.com/wx/MTsclIHn69616355.jpg,http://akivipic.meisaas.com/wx/fylumFEj85802468.jpg,http://akivipic.meisaas.com/wx/jljUAht_85367131.jpg,http://akivipic.meisaas.com/wx/fylumFEj85802468.jpg,http://akivipic.meisaas.com/wx/jljUAht_85367131.jpg', '测试故障说明', '1', '1', '2018-10-23 10:44:06', '2018-10-24 16:40:40', null);
INSERT INTO `repair` VALUES ('3', '1014', '2', '测试', '15822222222', '', '验证', '1', '1', '2018-10-23 11:25:24', '2018-11-12 11:28:21', null);
INSERT INTO `repair` VALUES ('4', '1014', '2', '测试1', '15822222228', '', '验证', '2', '1', '2018-10-23 11:26:29', '2018-10-25 14:53:13', null);
INSERT INTO `repair` VALUES ('5', '1014', '2', '测试2', '15822222288', '', '验证', '3', '1', '2018-10-23 11:26:53', '2018-11-02 17:45:00', null);
INSERT INTO `repair` VALUES ('6', '1014', '2', '测试3', '15822222288', '', '验证', '4', '0', '2018-10-23 13:32:11', '2018-10-23 13:32:11', null);
INSERT INTO `repair` VALUES ('7', '1014', '6', 'asd', '13211222222', '', 'asd ', '1', '0', '2018-10-23 17:02:18', '2018-10-23 17:02:18', 'iPhone X');
INSERT INTO `repair` VALUES ('8', '1014', '6', 'qweqw', '13000001111', 'http://akivipic.meisaas.com/wx/XEsLcPds85362496.jpg,http://akivipic.meisaas.com/wx/jljUAht_85367131.jpg', 'asd', '1', '2', '2018-10-23 17:02:48', '2018-10-25 14:54:25', 'iPhone X');
INSERT INTO `repair` VALUES ('9', '1014', '6', 'sad', '13222222222', 'http://akivipic.meisaas.com/wx/fylumFEj85802468.jpg', 'asda', '2', '0', '2018-10-23 17:10:04', '2018-10-23 17:10:04', 'undefined');
INSERT INTO `repair` VALUES ('10', '1014', '6', 'sd', '13222222222', '', 'sad', '2', '0', '2018-10-23 17:54:26', '2018-10-23 17:54:26', 'undefined');
INSERT INTO `repair` VALUES ('11', '1014', '6', 'asd', '13212111111', '', 'sadas', '2', '0', '2018-10-23 17:56:06', '2018-10-23 17:56:06', 'iPhone X');
INSERT INTO `repair` VALUES ('12', '1014', '6', 'asd', '13211111111', '', 'sad', '2', '0', '2018-10-23 17:56:34', '2018-10-23 17:56:34', 'iPhone X');
INSERT INTO `repair` VALUES ('13', '1014', '2', '', '15822220000', '', '验证', '1', '0', '2018-10-24 13:09:38', '2018-10-24 13:09:38', null);
INSERT INTO `repair` VALUES ('14', '1014', '2', '东方红', '15822220000', '', '', '1', '0', '2018-10-24 13:15:00', '2018-10-24 13:15:00', null);
INSERT INTO `repair` VALUES ('15', '1014', '6', 'sa', '13211111111', 'http://akivipic.meisaas.com/wx/MTsclIHn69616355.jpg', 'sadasd', '2', '0', '2018-10-24 16:27:13', '2018-10-24 16:27:13', null);
INSERT INTO `repair` VALUES ('16', '1014', '6', 'sad', '13111111111', '', 'asd', '1', '0', '2018-10-24 16:28:45', '2018-10-24 16:28:45', 'iPhone X');
INSERT INTO `repair` VALUES ('17', '1014', '6', 'asd', '13111111111', '', 'asdas', '2', '0', '2018-10-24 16:29:07', '2018-10-24 16:29:07', null);
INSERT INTO `repair` VALUES ('18', '1014', '6', 'asds', '13211111111', '', 'sa', '1', '0', '2018-10-24 16:29:25', '2018-10-24 16:29:25', 'iPhone X');
INSERT INTO `repair` VALUES ('19', '1014', '6', 'asd', '13211111111', '', 'sad', '2', '0', '2018-10-24 16:29:52', '2018-10-24 16:29:52', null);
INSERT INTO `repair` VALUES ('20', '1014', '6', 'asd', '13111111111', '', 'asd', '1', '0', '2018-10-24 16:34:17', '2018-10-24 16:34:17', 'iPhone X');
INSERT INTO `repair` VALUES ('21', '1014', '6', 'asd', '13222222222', '', 'asd', '3', '0', '2018-10-24 16:34:35', '2018-10-24 16:34:35', null);
INSERT INTO `repair` VALUES ('22', '1014', '6', 'sada', '13222222222', '', 'asd', '1', '0', '2018-10-24 16:35:30', '2018-10-24 16:35:30', 'iPhone X');
INSERT INTO `repair` VALUES ('23', '1014', '6', 'wqeq', '13222222222', '', 'asd', '2', '0', '2018-10-24 16:35:48', '2018-10-24 16:35:48', null);
INSERT INTO `repair` VALUES ('24', '1014', '6', 'asdas', '13222222222', '', 'sadas', '2', '0', '2018-10-24 16:36:50', '2018-10-24 16:36:50', null);
INSERT INTO `repair` VALUES ('25', '1014', '2', '东方红', '15822220000', '', '验证', '1', '0', '2018-10-25 13:24:47', '2018-10-25 13:24:47', null);
INSERT INTO `repair` VALUES ('26', '1014', '6', '鱼刺', '15822225555', '', '狗狗', '1', '0', '2018-10-25 17:50:49', '2018-10-25 17:50:49', 'PAR-AL00');
INSERT INTO `repair` VALUES ('27', '1014', '6', '你们', '15822228888', 'http://akivipic.meisaas.com/wx/XbFAJxbU61079532.jpg,http://akivipic.meisaas.com/wx/molzmcef61095692.jpg,http://akivipic.meisaas.com/wx/dxNoPqNg61095696.jpg,http://akivipic.meisaas.com/wx/VXPAvxvP61095698.jpg,http://akivipic.meisaas.com/wx/oJDTjKHm61095699.jpg', '功能', '1', '0', '2018-10-25 17:51:49', '2018-10-25 17:51:49', 'PAR-AL00');
INSERT INTO `repair` VALUES ('28', '1014', '6', 'asdas', '13211111111', 'http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg', 'asdas', '1', '0', '2018-11-02 16:02:58', '2018-11-02 16:02:58', 'iPhone X');
INSERT INTO `repair` VALUES ('29', '1014', '6', 'asd', '13222222222', 'http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg,http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg', 'asd', '1', '0', '2018-11-02 16:09:26', '2018-11-02 16:09:26', 'iPhone X');
INSERT INTO `repair` VALUES ('30', '1014', '6', '的身份', '13211111111', 'http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg,http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg', '大师傅似的', '1', '0', '2018-11-02 16:47:01', '2018-11-02 16:47:01', 'iPhone X');
INSERT INTO `repair` VALUES ('31', '1014', '6', '撒的', '13211111111', 'http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg,http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg,http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg,http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg,http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg,http://akivipic.meisaas.com/wx/AWlUitBX45769922.jpg', '阿萨德', '1', '1', '2018-11-02 16:56:27', '2018-11-02 17:48:32', 'iPhone X');
INSERT INTO `repair` VALUES ('32', '1014', '9', '健健康康', '13800000000', '', '健健康康长大成人勇', '1', '2', '2018-11-05 17:05:15', '2018-11-05 17:05:15', 'iPhone 6 Plus<iPhone7,1>');
INSERT INTO `repair` VALUES ('33', '1014', '9', '徐', '15822223333', '', '健健康康快快乐乐健健康康', '1', '1', '2018-11-05 17:22:29', '2018-11-05 17:22:29', 'iPhone 6 Plus<iPhone7,1>');
INSERT INTO `repair` VALUES ('34', '1014', '8', '阿萨德', '13221111111', '', '撒大声地sad阿萨德', '1', '1', '2018-11-05 17:54:50', '2018-11-05 17:54:50', 'iPhone X');
INSERT INTO `repair` VALUES ('35', '1014', '8', '发郭德纲', '13521111111', '', '33223232', '3', '2', '2018-11-05 17:55:30', '2018-11-05 17:56:39', null);
INSERT INTO `repair` VALUES ('36', '1014', '8', '胜多负少的', '13211111111', '', '阿大声道', '2', '1', '2018-11-05 17:59:37', '2018-11-05 18:00:04', null);

-- ----------------------------
-- Table structure for reservation
-- ----------------------------
DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `memid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reservation
-- ----------------------------

-- ----------------------------
-- Table structure for seckillflow
-- ----------------------------
DROP TABLE IF EXISTS `seckillflow`;
CREATE TABLE `seckillflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `memid` int(11) DEFAULT NULL,
  `merid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seckillflow
-- ----------------------------

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memid` int(11) DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `merid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES ('1', '1', '5', '2018-09-11', '1014');
INSERT INTO `share` VALUES ('2', '1', '1', '2018-09-11', '1014');
INSERT INTO `share` VALUES ('3', '2', '1', '2018-09-11', '1014');
INSERT INTO `share` VALUES ('4', '1', '6', '2018-09-11', '1014');
INSERT INTO `share` VALUES ('5', '1', '3', '2018-09-11', '1014');
INSERT INTO `share` VALUES ('6', '1', '2', '2018-09-11', '1014');
INSERT INTO `share` VALUES ('7', '6', '6', '2018-10-24', '1014');
INSERT INTO `share` VALUES ('8', '8', '11', '2018-11-06', '1014');

-- ----------------------------
-- Table structure for shippingaddress
-- ----------------------------
DROP TABLE IF EXISTS `shippingaddress`;
CREATE TABLE `shippingaddress` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `memid` int(10) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `detailinfo` varchar(100) DEFAULT NULL,
  `isdefault` tinyint(3) DEFAULT '1',
  `telnumber` varchar(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shippingaddress
-- ----------------------------
INSERT INTO `shippingaddress` VALUES ('1', '43', '张三', null, '广东省', '广州市', '海珠区', '新港中路397号', '2', '020-8116788', '2018-09-11 17:05:12', '2018-09-11 17:05:12');
INSERT INTO `shippingaddress` VALUES ('4', '43', 'asd ', null, '北京市', '北京市', '西城区', 'sad ', '3', '12123131321', '2018-09-22 18:17:03', '2018-09-22 18:17:03');
INSERT INTO `shippingaddress` VALUES ('5', '9', '徐', null, '北京市', '北京市', '东城区', '健健康康', '2', '18824118536', '2018-11-05 17:24:04', '2018-11-05 17:24:04');
INSERT INTO `shippingaddress` VALUES ('6', '8', '张三', null, '广东省', '广州市', '海珠区', '新港中路397号', '2', '020-8116788', '2018-11-05 18:04:29', '2018-11-05 18:04:29');

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `memid` int(11) DEFAULT NULL,
  `merid` int(11) DEFAULT NULL,
  `itemid` int(10) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('8', '43', '1014', '4', '3', null, '2018-09-14 16:33:47', '2018-09-14 16:33:47');
INSERT INTO `shoppingcart` VALUES ('9', '43', '1014', '19', '2', '{\"颜色\":\"黑色\",\"尺寸\":\"100\"}', '2019-07-15 12:19:02', '2019-07-15 12:19:02');
INSERT INTO `shoppingcart` VALUES ('10', '43', '1014', '12', '1', '{\"测试\":\"13211111111\"}', '2019-07-17 15:55:23', '2019-07-17 15:55:23');

-- ----------------------------
-- Table structure for signin
-- ----------------------------
DROP TABLE IF EXISTS `signin`;
CREATE TABLE `signin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merid` int(11) DEFAULT NULL,
  `memid` int(11) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signin
-- ----------------------------
INSERT INTO `signin` VALUES ('1', '1014', '1', '2018-09-11');
INSERT INTO `signin` VALUES ('2', '1014', '2', '2018-09-12');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '店铺名称',
  `address` varchar(255) DEFAULT NULL COMMENT '店铺地址',
  `picture` varchar(255) DEFAULT NULL,
  `performance` decimal(10,0) DEFAULT '0' COMMENT '店铺总业绩',
  `totalnum` int(11) DEFAULT '0' COMMENT '店铺总会员',
  `income` decimal(10,0) DEFAULT '0' COMMENT '奖励收入',
  `incode` varchar(11) DEFAULT NULL COMMENT '店铺邀请码',
  `referrer` varchar(255) DEFAULT NULL COMMENT '推荐人编码',
  `managername` varchar(255) DEFAULT NULL COMMENT '店铺管理人姓名',
  `telphone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT '123456' COMMENT '登录密码',
  `ishidden` tinyint(4) DEFAULT '0' COMMENT '假定删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------

-- ----------------------------
-- Table structure for storeflow
-- ----------------------------
DROP TABLE IF EXISTS `storeflow`;
CREATE TABLE `storeflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `flowtype` tinyint(4) DEFAULT '1' COMMENT '目前没用到默认1.奖励总收入;2.总业绩',
  `orderid` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `isexpense` tinyint(4) DEFAULT NULL COMMENT '支出1  收入0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storeflow
-- ----------------------------

-- ----------------------------
-- Table structure for swiper
-- ----------------------------
DROP TABLE IF EXISTS `swiper`;
CREATE TABLE `swiper` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merid` int(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `picurl` varchar(200) DEFAULT NULL,
  `linkurl` varchar(100) DEFAULT NULL,
  `sortvalue` tinyint(4) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swiper
-- ----------------------------
INSERT INTO `swiper` VALUES ('1', '1014', '真好', 'http://akivipic.meisaas.com/nnZspruL54238153.jpg', '{\"type\":\"item\",\"id\":6,\"name\":\"阿萨德\"}', '0', '2018-09-11 16:24:00', '2018-09-12 09:37:16');
INSERT INTO `swiper` VALUES ('2', '1014', '不错', 'http://akivipic.meisaas.com/zqVTG_Cm54255259.jpg', '{\"type\":\"aboutus\",\"id\":\"\",\"name\":\"\"}', '0', '2018-09-11 16:24:17', '2018-09-12 09:37:22');
INSERT INTO `swiper` VALUES ('3', '1014', '哎哟', 'http://akivipic.meisaas.com/nffJHCWZ54269759.jpg', '', '0', '2018-09-11 16:24:31', '2018-09-11 16:24:31');
INSERT INTO `swiper` VALUES ('4', '1014', '测试跳转内容', 'http://akivipic.meisaas.com/LdhpxfJU60959710.jpg', '{\"type\":\"article\",\"id\":1,\"name\":\"第三届“多彩话童”全国青少年语言艺术大赛开始了 \"}', '1', '2018-09-17 13:09:28', '2018-09-17 13:34:43');

-- ----------------------------
-- Table structure for sysconfig
-- ----------------------------
DROP TABLE IF EXISTS `sysconfig`;
CREATE TABLE `sysconfig` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysconfig
-- ----------------------------

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '12');

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wxatempid` int(10) DEFAULT NULL,
  `temptype` int(10) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `temppic` varchar(200) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------

-- ----------------------------
-- Table structure for theme
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主题id',
  `themetype` tinyint(4) NOT NULL COMMENT '主题类型:1、超值套餐，2、新品推荐，',
  `themeimage` varchar(150) DEFAULT NULL COMMENT '主题图片',
  `themename` varchar(50) DEFAULT NULL COMMENT '主题名称',
  `contentsummary` varchar(200) DEFAULT NULL COMMENT '内容简介',
  `contentdetails` text COMMENT '内容详情',
  `sortvalue` tinyint(4) NOT NULL COMMENT '排序数',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主题表';

-- ----------------------------
-- Records of theme
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(120) DEFAULT NULL,
  `upwd` varchar(120) DEFAULT NULL,
  `tel` decimal(10,0) DEFAULT NULL,
  `avatar` varchar(120) DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  `ip` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for weixinconfig
-- ----------------------------
DROP TABLE IF EXISTS `weixinconfig`;
CREATE TABLE `weixinconfig` (
  `merid` int(10) DEFAULT NULL,
  `appid` varchar(200) DEFAULT NULL,
  `appsecret` varchar(200) DEFAULT NULL,
  `encodingaeskey` varchar(200) DEFAULT NULL,
  `sessionkey` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  UNIQUE KEY `appid` (`appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixinconfig
-- ----------------------------
INSERT INTO `weixinconfig` VALUES ('1014', 'wx548a7b4e4e2d2212', '91042e67da0fb7d836b81cf6e5c80ef3', null, null, null, '2018-07-24 17:28:57', '2018-09-11 09:13:20');

-- ----------------------------
-- Table structure for wxareview
-- ----------------------------
DROP TABLE IF EXISTS `wxareview`;
CREATE TABLE `wxareview` (
  `merid` int(10) NOT NULL COMMENT '商户ID',
  `appid` varchar(50) NOT NULL COMMENT '商户APPID',
  `tempid` int(10) NOT NULL COMMENT '模板id',
  `status` tinyint(4) NOT NULL COMMENT '审核状态',
  `remark` text,
  `iscancel` tinyint(4) NOT NULL COMMENT '是否取消授权',
  `ishidden` tinyint(4) NOT NULL COMMENT '是否隐藏',
  `expiretime` datetime NOT NULL COMMENT '到期时间',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxareview
-- ----------------------------
