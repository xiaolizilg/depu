/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : depu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-10 16:22:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for depu_ads
-- ----------------------------
DROP TABLE IF EXISTS `depu_ads`;
CREATE TABLE `depu_ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '资讯ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面图',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ads_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_ads
-- ----------------------------

-- ----------------------------
-- Table structure for depu_agreements
-- ----------------------------
DROP TABLE IF EXISTS `depu_agreements`;
CREATE TABLE `depu_agreements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '协议ID',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '协议内容',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_agreements
-- ----------------------------
INSERT INTO `depu_agreements` VALUES ('1', '这是支持富文本的协议内容。', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');

-- ----------------------------
-- Table structure for depu_areas
-- ----------------------------
DROP TABLE IF EXISTS `depu_areas`;
CREATE TABLE `depu_areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '区域ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级区域',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '区域名称',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `areas_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3653 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_areas
-- ----------------------------
INSERT INTO `depu_areas` VALUES ('1', '0', '北京市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2', '0', '天津市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('3', '0', '河北省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('4', '0', '山西省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('5', '0', '内蒙古', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('6', '0', '辽宁省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('7', '0', '吉林省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('8', '0', '黑龙江省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('9', '0', '上海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('10', '0', '江苏省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('11', '0', '浙江省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('12', '0', '安徽省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('13', '0', '福建省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('14', '0', '江西省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('15', '0', '山东省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('16', '0', '河南省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('17', '0', '湖北省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('18', '0', '湖南省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('19', '0', '广东省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('20', '0', '广西', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('21', '0', '海南省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('22', '0', '重庆市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('23', '0', '四川省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('24', '0', '贵州省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('25', '0', '云南省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('26', '0', '西藏', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('27', '0', '陕西省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('28', '0', '甘肃省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('29', '0', '青海省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('30', '0', '宁夏', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('31', '0', '新疆', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('32', '0', '台湾省', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('33', '0', '澳门', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('34', '0', '香港', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('35', '0', '北京市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('36', '0', '天津市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('37', '0', '石家庄市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('38', '0', '唐山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('39', '0', '秦皇岛市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('40', '0', '邯郸市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('41', '0', '邢台市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('42', '0', '保定市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('43', '0', '张家口', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('44', '0', '承德市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('45', '0', '沧州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('46', '0', '廊坊市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('47', '0', '衡水市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('48', '0', '太原市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('49', '0', '大同市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('50', '0', '阳泉市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('51', '0', '长治市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('52', '0', '晋城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('53', '0', '朔州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('54', '0', '忻州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('55', '0', '吕梁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('56', '0', '晋中市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('57', '0', '临汾市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('58', '0', '运城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('59', '0', '呼和浩特市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('60', '0', '包头市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('61', '0', '乌海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('62', '0', '赤峰市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('63', '0', '呼伦贝尔市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('64', '0', '兴安盟', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('65', '0', '通辽市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('66', '0', '锡林郭勒盟', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('67', '0', '乌兰察布盟', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('68', '0', '伊克昭盟', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('69', '0', '巴彦淖尔盟', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('70', '0', '阿拉善盟', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('71', '0', '沈阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('72', '0', '大连市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('73', '0', '鞍山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('74', '0', '抚顺市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('75', '0', '本溪市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('76', '0', '丹东市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('77', '0', '锦州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('78', '0', '营口市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('79', '0', '阜新市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('80', '0', '辽阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('81', '0', '盘锦', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('82', '0', '铁岭市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('83', '0', '朝阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('84', '0', '葫芦岛市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('85', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('86', '0', '长春市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('87', '0', '吉林市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('88', '0', '四平', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('89', '0', '辽源市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('90', '0', '通化市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('91', '0', '白山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('92', '0', '松原市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('93', '0', '白城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('94', '0', '延边朝鲜族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('95', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('96', '0', '哈尔滨市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('97', '0', '齐齐哈尔市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('98', '0', '鹤岗市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('99', '0', '双鸭山', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('100', '0', '鸡西市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('101', '0', '大庆市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('102', '0', '伊春市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('103', '0', '牡丹江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('104', '0', '佳木斯市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('105', '0', '七台河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('106', '0', '黑河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('107', '0', '绥化市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('108', '0', '大兴安岭地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('109', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('110', '0', '上海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('111', '0', '南京市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('112', '0', '苏州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('113', '0', '无锡市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('114', '0', '常州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('115', '0', '镇江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('116', '0', '南通市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('117', '0', '泰州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('118', '0', '扬州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('119', '0', '盐城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('120', '0', '连云港市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('121', '0', '徐州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('122', '0', '淮安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('123', '0', '宿迁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('124', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('125', '0', '杭州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('126', '0', '宁波市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('127', '0', '温州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('128', '0', '嘉兴市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('129', '0', '湖州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('130', '0', '绍兴市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('131', '0', '金华市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('132', '0', '衢州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('133', '0', '舟山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('134', '0', '台州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('135', '0', '丽水市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('136', '0', '其他市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('137', '0', '合肥市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('138', '0', '芜湖市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('139', '0', '蚌埠市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('140', '0', '淮南市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('141', '0', '马鞍山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('142', '0', '淮北市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('143', '0', '铜陵市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('144', '0', '安庆市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('145', '0', '黄山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('146', '0', '滁州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('147', '0', '阜阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('148', '0', '宿州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('149', '0', '巢湖市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('150', '0', '六安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('151', '0', '亳州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('152', '0', '池州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('153', '0', '宣城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('154', '0', '其他市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('155', '0', '福州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('156', '0', '厦门市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('157', '0', '莆田市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('158', '0', '三明市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('159', '0', '泉州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('160', '0', '漳州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('161', '0', '南平市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('162', '0', '龙岩市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('163', '0', '宁德市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('164', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('165', '0', '南昌市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('166', '0', '景德镇市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('167', '0', '萍乡市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('168', '0', '九江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('169', '0', '新余市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('170', '0', '鹰潭市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('171', '0', '赣州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('172', '0', '吉安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('173', '0', '宜春市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('174', '0', '抚州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('175', '0', '上饶市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('176', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('177', '0', '济南市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('178', '0', '青岛市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('179', '0', '淄博市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('180', '0', '枣庄市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('181', '0', '东营市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('182', '0', '烟台市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('183', '0', '潍坊市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('184', '0', '济宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('185', '0', '泰安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('186', '0', '威海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('187', '0', '日照市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('188', '0', '莱芜市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('189', '0', '临沂市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('190', '0', '德州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('191', '0', '聊城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('192', '0', '滨州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('193', '0', '菏泽市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('194', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('195', '0', '郑州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('196', '0', '开封市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('197', '0', '洛阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('198', '0', '平顶山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('199', '0', '安阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('200', '0', '鹤壁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('201', '0', '新乡市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('202', '0', '焦作市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('203', '0', '濮阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('204', '0', '许昌市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('205', '0', '漯河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('206', '0', '三门峡市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('207', '0', '南阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('208', '0', '商丘市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('209', '0', '信阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('210', '0', '周口市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('211', '0', '驻马店市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('212', '0', '焦作市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('213', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('214', '0', '武汉市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('215', '0', '黄石市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('216', '0', '十堰市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('217', '0', '荆州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('218', '0', '宜昌市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('219', '0', '襄樊市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('220', '0', '鄂州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('221', '0', '荆门市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('222', '0', '孝感市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('223', '0', '黄冈市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('224', '0', '咸宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('225', '0', '随州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('226', '0', '恩施土家族苗族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('227', '0', '仙桃市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('228', '0', '天门市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('229', '0', '潜江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('230', '0', '神农架林区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('231', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('232', '0', '长沙市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('233', '0', '株洲市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('234', '0', '湘潭市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('235', '0', '衡阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('236', '0', '邵阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('237', '0', '岳阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('238', '0', '常德市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('239', '0', '张家界市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('240', '0', '益阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('241', '0', '郴州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('242', '0', '永州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('243', '0', '怀化市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('244', '0', '娄底市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('245', '0', '湘西土家族苗族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('246', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('247', '0', '广州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('248', '0', '深圳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('249', '0', '东莞市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('250', '0', '中山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('251', '0', '潮州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('252', '0', '揭阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('253', '0', '云浮市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('254', '0', '珠海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('255', '0', '汕头市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('256', '0', '韶关市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('257', '0', '佛山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('258', '0', '江门市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('259', '0', '湛江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('260', '0', '茂名市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('261', '0', '肇庆市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('262', '0', '惠州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('263', '0', '梅州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('264', '0', '汕尾市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('265', '0', '河源市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('266', '0', '阳江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('267', '0', '清远市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('268', '0', '南宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('269', '0', '柳州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('270', '0', '桂林市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('271', '0', '梧州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('272', '0', '北海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('273', '0', '防城港市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('274', '0', '钦州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('275', '0', '贵港市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('276', '0', '玉林市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('277', '0', '百色市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('278', '0', '贺州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('279', '0', '河池市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('280', '0', '来宾市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('281', '0', '崇左市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('282', '0', '其他市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('283', '0', '海口市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('284', '0', '三亚市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('285', '0', '五指山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('286', '0', '琼海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('287', '0', '儋州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('288', '0', '文昌市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('289', '0', '万宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('290', '0', '东方市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('291', '0', '澄迈县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('292', '0', '定安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('293', '0', '屯昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('294', '0', '临高县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('295', '0', '白沙黎族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('296', '0', '昌江黎族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('297', '0', '乐东黎族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('298', '0', '陵水黎族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('299', '0', '保亭黎族苗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('300', '0', '琼中黎族苗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('301', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('302', '0', '重庆市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('303', '0', '成都市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('304', '0', '自贡市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('305', '0', '攀枝花市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('306', '0', '泸州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('307', '0', '德阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('308', '0', '绵阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('309', '0', '广元市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('310', '0', '遂宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('311', '0', '内江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('312', '0', '乐山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('313', '0', '南充', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('314', '0', '眉山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('315', '0', '宜宾市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('316', '0', '广安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('317', '0', '达州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('318', '0', '雅安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('319', '0', '巴中市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('320', '0', '资阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('321', '0', '阿坝藏族羌族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('322', '0', '甘孜藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('323', '0', '凉山彝族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('324', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('325', '0', '贵阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('326', '0', '六盘水市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('327', '0', '遵义市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('328', '0', '安顺市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('329', '0', '铜仁地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('330', '0', '毕节地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('331', '0', '黔西南布依族苗族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('332', '0', '黔东南苗族侗族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('333', '0', '黔南布依族苗族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('334', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('335', '0', '昆明市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('336', '0', '曲靖市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('337', '0', '玉溪市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('338', '0', '保山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('339', '0', '昭通市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('340', '0', '丽江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('341', '0', '普洱市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('342', '0', '临沧市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('343', '0', '德宏傣族景颇族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('344', '0', '怒江傈僳族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('345', '0', '迪庆藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('346', '0', '大理白族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('347', '0', '楚雄彝族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('348', '0', '红河哈尼族彝族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('349', '0', '文山壮族苗族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('350', '0', '西双版纳傣族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('351', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('352', '0', '拉萨市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('353', '0', '那曲地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('354', '0', '昌都地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('355', '0', '林芝地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('356', '0', '山南地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('357', '0', '日喀则地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('358', '0', '阿里地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('359', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('360', '0', '西安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('361', '0', '铜川市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('362', '0', '宝鸡市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('363', '0', '咸阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('364', '0', '渭南市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('365', '0', '延安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('366', '0', '汉中市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('367', '0', '榆林市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('368', '0', '安康市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('369', '0', '商洛市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('370', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('371', '0', '兰州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('372', '0', '嘉峪关市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('373', '0', '金昌市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('374', '0', '白银市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('375', '0', '天水市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('376', '0', '武威市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('377', '0', '酒泉市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('378', '0', '张掖市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('379', '0', '庆阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('380', '0', '平凉市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('381', '0', '定西市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('382', '0', '陇南市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('383', '0', '临夏回族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('384', '0', '甘南藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('385', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('386', '0', '西宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('387', '0', '海东地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('388', '0', '海北藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('389', '0', '海南藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('390', '0', '黄南藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('391', '0', '果洛藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('392', '0', '玉树藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('393', '0', '海西蒙古族藏族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('394', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('395', '0', '银川市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('396', '0', '石嘴山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('397', '0', '吴忠市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('398', '0', '固原市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('399', '0', '中卫市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('400', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('401', '0', '乌鲁木齐市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('402', '0', '克拉玛依市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('403', '0', '吐鲁番地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('404', '0', '哈密地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('405', '0', '和田地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('406', '0', '阿克苏地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('407', '0', '喀什地区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('408', '0', '克孜勒苏柯尔克孜自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('409', '0', '巴音郭楞蒙古自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('410', '0', '昌吉回族自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('411', '0', '博尔塔拉蒙古自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('412', '0', '石河子', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('413', '0', '阿拉尔', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('414', '0', '图木舒克', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('415', '0', '五家渠', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('416', '0', '伊犁哈萨克自治州', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('417', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('418', '0', '台北市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('419', '0', '新北市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('420', '0', '桃园市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('421', '0', '台中市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('422', '0', '台南市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('423', '0', '高雄市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('424', '0', '澳门', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('425', '0', '香港', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('426', '0', '东城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('427', '0', '西城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('428', '0', '崇文区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('429', '0', '宣武区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('430', '0', '朝阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('431', '0', '丰台区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('432', '0', '石景山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('433', '0', '海淀区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('434', '0', '门头沟区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('435', '0', '房山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('436', '0', '通州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('437', '0', '顺义区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('438', '0', '昌平区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('439', '0', '大兴区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('440', '0', '平谷区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('441', '0', '怀柔区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('442', '0', '密云县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('443', '0', '延庆县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('444', '0', '和平区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('445', '0', '河东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('446', '0', '河西区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('447', '0', '南开区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('448', '0', '河北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('449', '0', '红桥区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('450', '0', '塘沽区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('451', '0', '汉沽区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('452', '0', '大港区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('453', '0', '东丽区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('454', '0', '西青区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('455', '0', '津南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('456', '0', '北辰区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('457', '0', '武清区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('458', '0', '宝坻区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('459', '0', '宁河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('460', '0', '静海县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('461', '0', '蓟  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('462', '0', '长安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('463', '0', '桥东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('464', '0', '桥西区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('465', '0', '新华区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('466', '0', '郊  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('467', '0', '井陉矿区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('468', '0', '井陉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('469', '0', '正定县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('470', '0', '栾城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('471', '0', '行唐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('472', '0', '灵寿县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('473', '0', '高邑县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('474', '0', '深泽县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('475', '0', '赞皇县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('476', '0', '无极县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('477', '0', '平山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('478', '0', '元氏县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('479', '0', '赵  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('480', '0', '辛集市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('481', '0', '藁', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('482', '0', '晋州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('483', '0', '新乐市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('484', '0', '鹿泉市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('485', '0', '路南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('486', '0', '路北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('487', '0', '古冶区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('488', '0', '开平区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('489', '0', '新  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('490', '0', '丰润县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('491', '0', '滦  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('492', '0', '滦南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('493', '0', '乐亭县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('494', '0', '迁西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('495', '0', '玉田县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('496', '0', '唐海县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('497', '0', '遵化市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('498', '0', '丰南市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('499', '0', '迁安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('500', '0', '海港区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('501', '0', '山海关区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('502', '0', '北戴河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('503', '0', '青龙满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('504', '0', '昌黎县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('505', '0', '抚宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('506', '0', '卢龙县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('507', '0', '邯山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('508', '0', '丛台区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('509', '0', '复兴区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('510', '0', '峰峰矿区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('511', '0', '邯郸县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('512', '0', '临漳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('513', '0', '成安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('514', '0', '大名县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('515', '0', '涉  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('516', '0', '磁  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('517', '0', '肥乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('518', '0', '永年县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('519', '0', '邱  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('520', '0', '鸡泽县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('521', '0', '广平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('522', '0', '馆陶县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('523', '0', '魏  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('524', '0', '曲周县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('525', '0', '武安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('526', '0', '桥东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('527', '0', '桥西区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('528', '0', '邢台县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('529', '0', '临城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('530', '0', '内丘县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('531', '0', '柏乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('532', '0', '隆尧县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('533', '0', '任  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('534', '0', '南和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('535', '0', '宁晋县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('536', '0', '巨鹿县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('537', '0', '新河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('538', '0', '广宗县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('539', '0', '平乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('540', '0', '威  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('541', '0', '清河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('542', '0', '临西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('543', '0', '南宫市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('544', '0', '沙河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('545', '0', '新市区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('546', '0', '北市区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('547', '0', '南市区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('548', '0', '满城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('549', '0', '清苑县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('550', '0', '涞水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('551', '0', '阜平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('552', '0', '徐水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('553', '0', '定兴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('554', '0', '唐  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('555', '0', '高阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('556', '0', '容城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('557', '0', '涞源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('558', '0', '望都县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('559', '0', '安新县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('560', '0', '易  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('561', '0', '曲阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('562', '0', '蠡  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('563', '0', '顺平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('564', '0', '博野', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('565', '0', '雄县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('566', '0', '涿州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('567', '0', '定州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('568', '0', '安国市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('569', '0', '高碑店市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('570', '0', '桥东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('571', '0', '桥西区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('572', '0', '宣化区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('573', '0', '下花园区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('574', '0', '宣化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('575', '0', '张北县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('576', '0', '康保县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('577', '0', '沽源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('578', '0', '尚义县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('579', '0', '蔚  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('580', '0', '阳原县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('581', '0', '怀安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('582', '0', '万全县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('583', '0', '怀来县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('584', '0', '涿鹿县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('585', '0', '赤城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('586', '0', '崇礼县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('587', '0', '双桥区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('588', '0', '双滦区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('589', '0', '鹰手营子矿区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('590', '0', '承德县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('591', '0', '兴隆县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('592', '0', '平泉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('593', '0', '滦平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('594', '0', '隆化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('595', '0', '丰宁满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('596', '0', '宽城满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('597', '0', '围场满族蒙古族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('598', '0', '新华区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('599', '0', '运河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('600', '0', '沧  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('601', '0', '青  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('602', '0', '东光县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('603', '0', '海兴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('604', '0', '盐山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('605', '0', '肃宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('606', '0', '南皮县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('607', '0', '吴桥县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('608', '0', '献  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('609', '0', '孟村回族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('610', '0', '泊头市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('611', '0', '任丘市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('612', '0', '黄骅市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('613', '0', '河间市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('614', '0', '安次区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('615', '0', '固安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('616', '0', '永清县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('617', '0', '香河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('618', '0', '大城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('619', '0', '文安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('620', '0', '大厂回族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('621', '0', '霸州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('622', '0', '三河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('623', '0', '桃城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('624', '0', '枣强县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('625', '0', '武邑县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('626', '0', '武强县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('627', '0', '饶阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('628', '0', '安平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('629', '0', '故城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('630', '0', '景  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('631', '0', '阜城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('632', '0', '冀州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('633', '0', '深州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('634', '0', '小店区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('635', '0', '迎泽区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('636', '0', '杏花岭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('637', '0', '尖草坪区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('638', '0', '万柏林区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('639', '0', '晋源区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('640', '0', '清徐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('641', '0', '阳曲县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('642', '0', '娄烦县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('643', '0', '古交市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('644', '0', '城  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('645', '0', '矿  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('646', '0', '南郊区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('647', '0', '新荣区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('648', '0', '阳高县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('649', '0', '天镇县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('650', '0', '广灵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('651', '0', '灵丘县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('652', '0', '浑源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('653', '0', '左云县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('654', '0', '大同县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('655', '0', '城  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('656', '0', '矿  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('657', '0', '郊  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('658', '0', '平定县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('659', '0', '盂  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('660', '0', '城  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('661', '0', '郊  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('662', '0', '长治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('663', '0', '襄垣县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('664', '0', '屯留县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('665', '0', '平顺县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('666', '0', '黎城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('667', '0', '壶关县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('668', '0', '长子县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('669', '0', '武乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('670', '0', '沁  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('671', '0', '沁源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('672', '0', '潞城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('673', '0', '城  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('674', '0', '沁水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('675', '0', '阳城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('676', '0', '陵川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('677', '0', '泽州县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('678', '0', '高平市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('679', '0', '朔城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('680', '0', '平鲁区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('681', '0', '山阴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('682', '0', '应  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('683', '0', '右玉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('684', '0', '怀仁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('685', '0', '忻府区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('686', '0', '原平市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('687', '0', '定襄县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('688', '0', '五台县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('689', '0', '代  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('690', '0', '繁峙县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('691', '0', '宁武县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('692', '0', '静乐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('693', '0', '神池县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('694', '0', '五寨县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('695', '0', '岢岚县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('696', '0', '河曲县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('697', '0', '保德县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('698', '0', '偏关县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('699', '0', '离石区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('700', '0', '孝义市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('701', '0', '汾阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('702', '0', '文水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('703', '0', '交城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('704', '0', '兴  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('705', '0', '临  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('706', '0', '柳林县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('707', '0', '石楼县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('708', '0', '岚  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('709', '0', '方山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('710', '0', '中阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('711', '0', '交口县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('712', '0', '榆次市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('713', '0', '介休市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('714', '0', '榆社县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('715', '0', '左权县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('716', '0', '和顺县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('717', '0', '昔阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('718', '0', '寿阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('719', '0', '太谷县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('720', '0', '祁  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('721', '0', '平遥县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('722', '0', '灵石县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('723', '0', '临汾市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('724', '0', '侯马市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('725', '0', '霍州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('726', '0', '曲沃县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('727', '0', '翼城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('728', '0', '襄汾县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('729', '0', '洪洞县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('730', '0', '古  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('731', '0', '安泽县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('732', '0', '浮山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('733', '0', '吉  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('734', '0', '乡宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('735', '0', '蒲  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('736', '0', '大宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('737', '0', '永和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('738', '0', '隰  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('739', '0', '汾西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('740', '0', '运城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('741', '0', '永济市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('742', '0', '河津市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('743', '0', '芮城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('744', '0', '临猗县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('745', '0', '万荣县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('746', '0', '新绛县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('747', '0', '稷山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('748', '0', '闻喜县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('749', '0', '夏  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('750', '0', '绛  县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('751', '0', '平陆县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('752', '0', '垣曲县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('753', '0', '新城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('754', '0', '回民区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('755', '0', '玉泉区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('756', '0', '郊  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('757', '0', '土默特左旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('758', '0', '托克托县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('759', '0', '和林格尔县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('760', '0', '清水河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('761', '0', '武川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('762', '0', '东河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('763', '0', '昆都伦区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('764', '0', '青山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('765', '0', '石拐矿区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('766', '0', '白云矿区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('767', '0', '郊  区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('768', '0', '土默特右旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('769', '0', '固阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('770', '0', '达尔罕茂明安联合旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('771', '0', '海勃湾区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('772', '0', '海南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('773', '0', '乌达区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('774', '0', '红山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('775', '0', '元宝山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('776', '0', '松山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('777', '0', '阿鲁科尔沁旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('778', '0', '巴林左旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('779', '0', '巴林右旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('780', '0', '林西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('781', '0', '克什克腾旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('782', '0', '翁牛特旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('783', '0', '喀喇沁旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('784', '0', '宁城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('785', '0', '敖汉旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('786', '0', '海拉尔市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('787', '0', '满洲里市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('788', '0', '扎兰屯市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('789', '0', '牙克石市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('790', '0', '根河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('791', '0', '额尔古纳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('792', '0', '阿荣旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('793', '0', '莫力达瓦达斡尔族自治旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('794', '0', '鄂伦春自治旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('795', '0', '鄂温克族自治旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('796', '0', '新巴尔虎右旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('797', '0', '新巴尔虎左旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('798', '0', '陈巴尔虎旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('799', '0', '乌兰浩特市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('800', '0', '阿尔山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('801', '0', '科尔沁右翼前旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('802', '0', '科尔沁右翼中旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('803', '0', '扎赉特旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('804', '0', '突泉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('805', '0', '科尔沁区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('806', '0', '霍林郭勒市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('807', '0', '科尔沁左翼中旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('808', '0', '科尔沁左翼后旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('809', '0', '开鲁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('810', '0', '库伦旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('811', '0', '奈曼旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('812', '0', '扎鲁特旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('813', '0', '二连浩特市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('814', '0', '锡林浩特市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('815', '0', '阿巴嘎旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('816', '0', '苏尼特左旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('817', '0', '苏尼特右旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('818', '0', '东乌珠穆沁旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('819', '0', '西乌珠穆沁旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('820', '0', '太仆寺旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('821', '0', '镶黄旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('822', '0', '正镶白旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('823', '0', '正蓝旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('824', '0', '多伦县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('825', '0', '集宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('826', '0', '丰镇市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('827', '0', '卓资县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('828', '0', '化德县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('829', '0', '商都县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('830', '0', '兴和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('831', '0', '凉城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('832', '0', '察哈尔右翼前旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('833', '0', '察哈尔右翼中旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('834', '0', '察哈尔右翼后旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('835', '0', '四子王旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('836', '0', '东胜市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('837', '0', '达拉特旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('838', '0', '准格尔旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('839', '0', '鄂托克前旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('840', '0', '鄂托克旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('841', '0', '杭锦旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('842', '0', '乌审旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('843', '0', '伊金霍洛旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('844', '0', '临河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('845', '0', '五原县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('846', '0', '磴口县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('847', '0', '乌拉特前旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('848', '0', '乌拉特中旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('849', '0', '乌拉特后旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('850', '0', '杭锦后旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('851', '0', '阿拉善左旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('852', '0', '阿拉善右旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('853', '0', '额济纳旗', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('854', '0', '沈河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('855', '0', '皇姑区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('856', '0', '和平区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('857', '0', '大东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('858', '0', '铁西区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('859', '0', '苏家屯区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('860', '0', '东陵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('861', '0', '于洪区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('862', '0', '新民市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('863', '0', '法库县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('864', '0', '辽中县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('865', '0', '康平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('866', '0', '新城子区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('867', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('868', '0', '西岗区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('869', '0', '中山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('870', '0', '沙河口区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('871', '0', '甘井子区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('872', '0', '旅顺口区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('873', '0', '金州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('874', '0', '瓦房店市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('875', '0', '普兰店市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('876', '0', '庄河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('877', '0', '长海县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('878', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('879', '0', '铁东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('880', '0', '铁西区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('881', '0', '立山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('882', '0', '千山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('883', '0', '海城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('884', '0', '台安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('885', '0', '岫岩满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('886', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('887', '0', '顺城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('888', '0', '新抚区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('889', '0', '东洲区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('890', '0', '望花区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('891', '0', '抚顺县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('892', '0', '清原满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('893', '0', '新宾满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('894', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('895', '0', '平山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('896', '0', '明山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('897', '0', '溪湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('898', '0', '南芬区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('899', '0', '本溪满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('900', '0', '桓仁满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('901', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('902', '0', '振兴区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('903', '0', '元宝区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('904', '0', '振安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('905', '0', '东港市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('906', '0', '凤城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('907', '0', '宽甸满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('908', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('909', '0', '太和区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('910', '0', '古塔区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('911', '0', '凌河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('912', '0', '凌海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('913', '0', '黑山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('914', '0', '义县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('915', '0', '北宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('916', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('917', '0', '站前区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('918', '0', '西市区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('919', '0', '鲅鱼圈区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('920', '0', '老边区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('921', '0', '大石桥市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('922', '0', '盖州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('923', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('924', '0', '海州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('925', '0', '新邱区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('926', '0', '太平区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('927', '0', '清河门区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('928', '0', '细河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('929', '0', '彰武县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('930', '0', '阜新蒙古族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('931', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('932', '0', '白塔区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('933', '0', '文圣区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('934', '0', '宏伟区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('935', '0', '太子河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('936', '0', '弓长岭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('937', '0', '灯塔市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('938', '0', '辽阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('939', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('940', '0', '双台子区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('941', '0', '兴隆台区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('942', '0', '盘山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('943', '0', '大洼县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('944', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('945', '0', '银州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('946', '0', '清河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('947', '0', '调兵山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('948', '0', '开原市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('949', '0', '铁岭县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('950', '0', '昌图县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('951', '0', '西丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('952', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('953', '0', '双塔区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('954', '0', '龙城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('955', '0', '凌源市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('956', '0', '北票市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('957', '0', '朝阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('958', '0', '建平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('959', '0', '喀喇沁左翼蒙古族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('960', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('961', '0', '龙港区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('962', '0', '南票区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('963', '0', '连山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('964', '0', '兴城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('965', '0', '绥中县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('966', '0', '建昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('967', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('968', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('969', '0', '朝阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('970', '0', '宽城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('971', '0', '二道区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('972', '0', '南关区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('973', '0', '绿园区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('974', '0', '双阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('975', '0', '九台市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('976', '0', '榆树市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('977', '0', '德惠市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('978', '0', '农安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('979', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('980', '0', '船营区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('981', '0', '昌邑区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('982', '0', '龙潭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('983', '0', '丰满区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('984', '0', '舒兰市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('985', '0', '桦甸市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('986', '0', '蛟河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('987', '0', '磐石市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('988', '0', '永吉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('989', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('990', '0', '铁西区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('991', '0', '铁东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('992', '0', '公主岭市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('993', '0', '双辽市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('994', '0', '梨树县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('995', '0', '伊通满族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('996', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('997', '0', '龙山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('998', '0', '西安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('999', '0', '东辽县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1000', '0', '东丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1001', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1002', '0', '东昌区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1003', '0', '二道江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1004', '0', '梅河口市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1005', '0', '集安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1006', '0', '通化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1007', '0', '辉南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1008', '0', '柳河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1009', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1010', '0', '八道江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1011', '0', '江源区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1012', '0', '临江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1013', '0', '靖宇县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1014', '0', '抚松县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1015', '0', '长白朝鲜族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1016', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1017', '0', '宁江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1018', '0', '乾安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1019', '0', '长岭县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1020', '0', '扶余县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1021', '0', '前郭尔罗斯蒙古族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1022', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1023', '0', '洮北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1024', '0', '大安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1025', '0', '洮南市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1026', '0', '镇赉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1027', '0', '通榆县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1028', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1029', '0', '延吉市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1030', '0', '图们市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1031', '0', '敦化市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1032', '0', '龙井市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1033', '0', '珲春市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1034', '0', '和龙市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1035', '0', '安图县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1036', '0', '汪清县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1037', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1038', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1039', '0', '松北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1040', '0', '道里区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1041', '0', '南岗区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1042', '0', '平房区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1043', '0', '香坊区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1044', '0', '道外区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1045', '0', '呼兰区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1046', '0', '阿城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1047', '0', '双城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1048', '0', '尚志市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1049', '0', '五常市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1050', '0', '宾县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1051', '0', '方正县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1052', '0', '通河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1053', '0', '巴彦县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1054', '0', '延寿县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1055', '0', '木兰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1056', '0', '依兰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1057', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1058', '0', '龙沙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1059', '0', '昂昂溪区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1060', '0', '铁锋区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1061', '0', '建华区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1062', '0', '富拉尔基区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1063', '0', '碾子山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1064', '0', '梅里斯达斡尔族区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1065', '0', '讷河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1066', '0', '富裕县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1067', '0', '拜泉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1068', '0', '甘南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1069', '0', '依安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1070', '0', '克山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1071', '0', '泰来县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1072', '0', '克东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1073', '0', '龙江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1074', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1075', '0', '兴山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1076', '0', '工农区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1077', '0', '南山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1078', '0', '兴安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1079', '0', '向阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1080', '0', '东山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1081', '0', '萝北县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1082', '0', '绥滨县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1083', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1084', '0', '尖山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1085', '0', '岭东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1086', '0', '四方台区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1087', '0', '宝山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1088', '0', '集贤县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1089', '0', '宝清县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1090', '0', '友谊县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1091', '0', '饶河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1092', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1093', '0', '鸡冠区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1094', '0', '恒山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1095', '0', '城子河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1096', '0', '滴道区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1097', '0', '梨树区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1098', '0', '麻山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1099', '0', '密山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1100', '0', '虎林市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1101', '0', '鸡东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1102', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1103', '0', '萨尔图区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1104', '0', '红岗区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1105', '0', '龙凤区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1106', '0', '让胡路区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1107', '0', '大同区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1108', '0', '林甸县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1109', '0', '肇州县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1110', '0', '肇源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1111', '0', '杜尔伯特蒙古族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1112', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1113', '0', '伊春区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1114', '0', '带岭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1115', '0', '南岔区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1116', '0', '金山屯区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1117', '0', '西林区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1118', '0', '美溪区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1119', '0', '乌马河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1120', '0', '翠峦区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1121', '0', '友好区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1122', '0', '上甘岭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1123', '0', '五营区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1124', '0', '红星区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1125', '0', '新青区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1126', '0', '汤旺河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1127', '0', '乌伊岭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1128', '0', '铁力市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1129', '0', '嘉荫县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1130', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1131', '0', '爱民区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1132', '0', '东安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1133', '0', '阳明区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1134', '0', '西安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1135', '0', '绥芬河市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1136', '0', '宁安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1137', '0', '海林市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1138', '0', '穆棱市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1139', '0', '林口县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1140', '0', '东宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1141', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1142', '0', '向阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1143', '0', '前进区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1144', '0', '东风区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1145', '0', '郊区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1146', '0', '同江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1147', '0', '富锦市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1148', '0', '桦川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1149', '0', '抚远县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1150', '0', '桦南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1151', '0', '汤原县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1152', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1153', '0', '桃山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1154', '0', '新兴区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1155', '0', '茄子河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1156', '0', '勃利县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1157', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1158', '0', '爱辉区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1159', '0', '北安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1160', '0', '五大连池市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1161', '0', '逊克县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1162', '0', '嫩江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1163', '0', '孙吴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1164', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1165', '0', '北林区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1166', '0', '安达市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1167', '0', '肇东市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1168', '0', '海伦市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1169', '0', '绥棱县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1170', '0', '兰西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1171', '0', '明水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1172', '0', '青冈县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1173', '0', '庆安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1174', '0', '望奎县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1175', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1176', '0', '呼玛县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1177', '0', '塔河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1178', '0', '漠河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1179', '0', '大兴安岭辖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1180', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1181', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1182', '0', '黄浦区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1183', '0', '卢湾区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1184', '0', '徐汇区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1185', '0', '长宁区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1186', '0', '静安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1187', '0', '普陀区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1188', '0', '闸北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1189', '0', '虹口区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1190', '0', '杨浦区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1191', '0', '宝山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1192', '0', '闵行区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1193', '0', '嘉定区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1194', '0', '松江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1195', '0', '金山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1196', '0', '青浦区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1197', '0', '南汇区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1198', '0', '奉贤区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1199', '0', '浦东新区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1200', '0', '崇明县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1201', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1202', '0', '玄武区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1203', '0', '白下区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1204', '0', '秦淮区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1205', '0', '建邺区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1206', '0', '鼓楼区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1207', '0', '下关区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1208', '0', '栖霞区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1209', '0', '雨花台区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1210', '0', '浦口区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1211', '0', '江宁区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1212', '0', '六合区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1213', '0', '溧水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1214', '0', '高淳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1215', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1216', '0', '金阊区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1217', '0', '平江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1218', '0', '沧浪区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1219', '0', '虎丘区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1220', '0', '吴中区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1221', '0', '相城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1222', '0', '常熟市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1223', '0', '张家港市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1224', '0', '昆山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1225', '0', '吴江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1226', '0', '太仓市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1227', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1228', '0', '崇安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1229', '0', '南长区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1230', '0', '北塘区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1231', '0', '滨湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1232', '0', '锡山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1233', '0', '惠山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1234', '0', '江阴市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1235', '0', '宜兴市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1236', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1237', '0', '钟楼区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1238', '0', '天宁区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1239', '0', '戚墅堰区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1240', '0', '新北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1241', '0', '武进区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1242', '0', '金坛市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1243', '0', '溧阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1244', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1245', '0', '京口区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1246', '0', '润州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1247', '0', '丹徒区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1248', '0', '丹阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1249', '0', '扬中市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1250', '0', '句容市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1251', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1252', '0', '崇川区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1253', '0', '港闸区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1254', '0', '通州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1255', '0', '如皋市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1256', '0', '海门市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1257', '0', '启东市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1258', '0', '海安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1259', '0', '如东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1260', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1261', '0', '海陵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1262', '0', '高港区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1263', '0', '姜堰市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1264', '0', '泰兴市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1265', '0', '靖江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1266', '0', '兴化市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1267', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1268', '0', '广陵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1269', '0', '维扬区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1270', '0', '邗江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1271', '0', '江都市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1272', '0', '仪征市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1273', '0', '高邮市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1274', '0', '宝应县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1275', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1276', '0', '亭湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1277', '0', '盐都区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1278', '0', '大丰市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1279', '0', '东台市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1280', '0', '建湖县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1281', '0', '射阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1282', '0', '阜宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1283', '0', '滨海县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1284', '0', '响水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1285', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1286', '0', '新浦区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1287', '0', '海州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1288', '0', '连云区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1289', '0', '东海县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1290', '0', '灌云县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1291', '0', '赣榆县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1292', '0', '灌南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1293', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1294', '0', '云龙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1295', '0', '鼓楼区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1296', '0', '九里区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1297', '0', '泉山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1298', '0', '贾汪区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1299', '0', '邳州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1300', '0', '新沂市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1301', '0', '铜山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1302', '0', '睢宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1303', '0', '沛县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1304', '0', '丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1305', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1306', '0', '清河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1307', '0', '清浦区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1308', '0', '楚州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1309', '0', '淮阴区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1310', '0', '涟水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1311', '0', '洪泽县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1312', '0', '金湖县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1313', '0', '盱眙县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1314', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1315', '0', '宿城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1316', '0', '宿豫区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1317', '0', '沭阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1318', '0', '泗阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1319', '0', '泗洪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1320', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1321', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1322', '0', '拱墅区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1323', '0', '西湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1324', '0', '上城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1325', '0', '下城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1326', '0', '江干区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1327', '0', '滨江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1328', '0', '余杭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1329', '0', '萧山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1330', '0', '建德市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1331', '0', '富阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1332', '0', '临安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1333', '0', '桐庐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1334', '0', '淳安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1335', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1336', '0', '海曙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1337', '0', '江东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1338', '0', '江北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1339', '0', '镇海区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1340', '0', '北仑区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1341', '0', '鄞州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1342', '0', '余姚市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1343', '0', '慈溪市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1344', '0', '奉化市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1345', '0', '宁海县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1346', '0', '象山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1347', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1348', '0', '鹿城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1349', '0', '龙湾区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1350', '0', '瓯海区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1351', '0', '瑞安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1352', '0', '乐清市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1353', '0', '永嘉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1354', '0', '洞头县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1355', '0', '平阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1356', '0', '苍南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1357', '0', '文成县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1358', '0', '泰顺县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1359', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1360', '0', '秀城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1361', '0', '秀洲区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1362', '0', '海宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1363', '0', '平湖市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1364', '0', '桐乡市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1365', '0', '嘉善县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1366', '0', '海盐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1367', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1368', '0', '吴兴区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1369', '0', '南浔区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1370', '0', '长兴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1371', '0', '德清县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1372', '0', '安吉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1373', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1374', '0', '越城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1375', '0', '诸暨市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1376', '0', '上虞市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1377', '0', '嵊州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1378', '0', '绍兴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1379', '0', '新昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1380', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1381', '0', '婺城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1382', '0', '金东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1383', '0', '兰溪市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1384', '0', '义乌市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1385', '0', '东阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1386', '0', '永康市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1387', '0', '武义县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1388', '0', '浦江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1389', '0', '磐安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1390', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1391', '0', '柯城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1392', '0', '衢江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1393', '0', '江山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1394', '0', '龙游县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1395', '0', '常山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1396', '0', '开化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1397', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1398', '0', '定海区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1399', '0', '普陀区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1400', '0', '岱山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1401', '0', '嵊泗县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1402', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1403', '0', '椒江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1404', '0', '黄岩区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1405', '0', '路桥区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1406', '0', '临海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1407', '0', '温岭市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1408', '0', '玉环县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1409', '0', '天台县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1410', '0', '仙居县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1411', '0', '三门县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1412', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1413', '0', '莲都区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1414', '0', '龙泉市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1415', '0', '缙云县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1416', '0', '青田县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1417', '0', '云和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1418', '0', '遂昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1419', '0', '松阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1420', '0', '庆元县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1421', '0', '景宁畲族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1422', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1423', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1424', '0', '庐阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1425', '0', '瑶海区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1426', '0', '蜀山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1427', '0', '包河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1428', '0', '长丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1429', '0', '肥东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1430', '0', '肥西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1431', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1432', '0', '镜湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1433', '0', '弋江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1434', '0', '鸠江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1435', '0', '三山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1436', '0', '芜湖县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1437', '0', '南陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1438', '0', '繁昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1439', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1440', '0', '蚌山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1441', '0', '龙子湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1442', '0', '禹会区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1443', '0', '淮上区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1444', '0', '怀远县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1445', '0', '固镇县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1446', '0', '五河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1447', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1448', '0', '田家庵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1449', '0', '大通区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1450', '0', '谢家集区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1451', '0', '八公山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1452', '0', '潘集区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1453', '0', '凤台县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1454', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1455', '0', '雨山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1456', '0', '花山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1457', '0', '金家庄区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1458', '0', '当涂县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1459', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1460', '0', '相山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1461', '0', '杜集区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1462', '0', '烈山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1463', '0', '濉溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1464', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1465', '0', '铜官山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1466', '0', '狮子山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1467', '0', '郊区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1468', '0', '铜陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1469', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1470', '0', '迎江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1471', '0', '大观区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1472', '0', '宜秀区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1473', '0', '桐城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1474', '0', '宿松县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1475', '0', '枞阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1476', '0', '太湖县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1477', '0', '怀宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1478', '0', '岳西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1479', '0', '望江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1480', '0', '潜山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1481', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1482', '0', '屯溪区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1483', '0', '黄山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1484', '0', '徽州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1485', '0', '休宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1486', '0', '歙县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1487', '0', '祁门县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1488', '0', '黟县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1489', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1490', '0', '琅琊区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1491', '0', '南谯区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1492', '0', '天长市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1493', '0', '明光市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1494', '0', '全椒县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1495', '0', '来安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1496', '0', '定远县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1497', '0', '凤阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1498', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1499', '0', '颍州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1500', '0', '颍东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1501', '0', '颍泉区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1502', '0', '界首市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1503', '0', '临泉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1504', '0', '颍上县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1505', '0', '阜南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1506', '0', '太和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1507', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1508', '0', '埇桥区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1509', '0', '萧县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1510', '0', '泗县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1511', '0', '砀山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1512', '0', '灵璧县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1513', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1514', '0', '居巢区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1515', '0', '含山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1516', '0', '无为县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1517', '0', '庐江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1518', '0', '和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1519', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1520', '0', '金安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1521', '0', '裕安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1522', '0', '寿县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1523', '0', '霍山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1524', '0', '霍邱县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1525', '0', '舒城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1526', '0', '金寨县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1527', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1528', '0', '谯城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1529', '0', '利辛县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1530', '0', '涡阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1531', '0', '蒙城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1532', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1533', '0', '贵池区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1534', '0', '东至县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1535', '0', '石台县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1536', '0', '青阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1537', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1538', '0', '宣州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1539', '0', '宁国市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1540', '0', '广德县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1541', '0', '郎溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1542', '0', '泾县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1543', '0', '旌德县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1544', '0', '绩溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1545', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1546', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1547', '0', '鼓楼区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1548', '0', '台江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1549', '0', '仓山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1550', '0', '马尾区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1551', '0', '晋安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1552', '0', '福清市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1553', '0', '长乐市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1554', '0', '闽侯县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1555', '0', '闽清县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1556', '0', '永泰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1557', '0', '连江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1558', '0', '罗源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1559', '0', '平潭县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1560', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1561', '0', '思明区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1562', '0', '海沧区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1563', '0', '湖里区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1564', '0', '集美区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1565', '0', '同安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1566', '0', '翔安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1567', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1568', '0', '城厢区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1569', '0', '涵江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1570', '0', '荔城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1571', '0', '秀屿区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1572', '0', '仙游县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1573', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1574', '0', '梅列区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1575', '0', '三元区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1576', '0', '永安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1577', '0', '明溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1578', '0', '将乐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1579', '0', '大田县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1580', '0', '宁化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1581', '0', '建宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1582', '0', '沙县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1583', '0', '尤溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1584', '0', '清流县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1585', '0', '泰宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1586', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1587', '0', '鲤城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1588', '0', '丰泽区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1589', '0', '洛江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1590', '0', '泉港区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1591', '0', '石狮市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1592', '0', '晋江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1593', '0', '南安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1594', '0', '惠安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1595', '0', '永春县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1596', '0', '安溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1597', '0', '德化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1598', '0', '金门县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1599', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1600', '0', '芗城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1601', '0', '龙文区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1602', '0', '龙海市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1603', '0', '平和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1604', '0', '南靖县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1605', '0', '诏安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1606', '0', '漳浦县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1607', '0', '华安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1608', '0', '东山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1609', '0', '长泰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1610', '0', '云霄县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1611', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1612', '0', '延平区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1613', '0', '建瓯市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1614', '0', '邵武市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1615', '0', '武夷山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1616', '0', '建阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1617', '0', '松溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1618', '0', '光泽县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1619', '0', '顺昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1620', '0', '浦城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1621', '0', '政和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1622', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1623', '0', '新罗区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1624', '0', '漳平市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1625', '0', '长汀县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1626', '0', '武平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1627', '0', '上杭县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1628', '0', '永定县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1629', '0', '连城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1630', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1631', '0', '蕉城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1632', '0', '福安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1633', '0', '福鼎市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1634', '0', '寿宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1635', '0', '霞浦县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1636', '0', '柘荣县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1637', '0', '屏南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1638', '0', '古田县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1639', '0', '周宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1640', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1641', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1642', '0', '东湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1643', '0', '西湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1644', '0', '青云谱区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1645', '0', '湾里区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1646', '0', '青山湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1647', '0', '新建县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1648', '0', '南昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1649', '0', '进贤县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1650', '0', '安义县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1651', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1652', '0', '珠山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1653', '0', '昌江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1654', '0', '乐平市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1655', '0', '浮梁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1656', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1657', '0', '安源区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1658', '0', '湘东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1659', '0', '莲花县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1660', '0', '上栗县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1661', '0', '芦溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1662', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1663', '0', '浔阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1664', '0', '庐山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1665', '0', '瑞昌市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1666', '0', '九江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1667', '0', '星子县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1668', '0', '武宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1669', '0', '彭泽县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1670', '0', '永修县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1671', '0', '修水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1672', '0', '湖口县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1673', '0', '德安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1674', '0', '都昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1675', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1676', '0', '渝水区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1677', '0', '分宜县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1678', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1679', '0', '月湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1680', '0', '贵溪市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1681', '0', '余江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1682', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1683', '0', '章贡区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1684', '0', '瑞金市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1685', '0', '南康市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1686', '0', '石城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1687', '0', '安远县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1688', '0', '赣县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1689', '0', '宁都县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1690', '0', '寻乌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1691', '0', '兴国县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1692', '0', '定南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1693', '0', '上犹县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1694', '0', '于都县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1695', '0', '龙南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1696', '0', '崇义县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1697', '0', '信丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1698', '0', '全南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1699', '0', '大余县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1700', '0', '会昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1701', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1702', '0', '吉州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1703', '0', '青原区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1704', '0', '井冈山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1705', '0', '吉安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1706', '0', '永丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1707', '0', '永新县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1708', '0', '新干县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1709', '0', '泰和县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1710', '0', '峡江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1711', '0', '遂川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1712', '0', '安福县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1713', '0', '吉水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1714', '0', '万安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1715', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1716', '0', '袁州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1717', '0', '丰城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1718', '0', '樟树市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1719', '0', '高安市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1720', '0', '铜鼓县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1721', '0', '靖安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1722', '0', '宜丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1723', '0', '奉新县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1724', '0', '万载县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1725', '0', '上高县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1726', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1727', '0', '临川区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1728', '0', '南丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1729', '0', '乐安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1730', '0', '金溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1731', '0', '南城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1732', '0', '东乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1733', '0', '资溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1734', '0', '宜黄县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1735', '0', '广昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1736', '0', '黎川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1737', '0', '崇仁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1738', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1739', '0', '信州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1740', '0', '德兴市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1741', '0', '上饶县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1742', '0', '广丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1743', '0', '鄱阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1744', '0', '婺源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1745', '0', '铅山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1746', '0', '余干县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1747', '0', '横峰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1748', '0', '弋阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1749', '0', '玉山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1750', '0', '万年县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1751', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1752', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1753', '0', '市中区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1754', '0', '历下区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1755', '0', '天桥区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1756', '0', '槐荫区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1757', '0', '历城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1758', '0', '长清区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1759', '0', '章丘市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1760', '0', '平阴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1761', '0', '济阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1762', '0', '商河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1763', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1764', '0', '市南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1765', '0', '市北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1766', '0', '城阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1767', '0', '四方区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1768', '0', '李沧区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1769', '0', '黄岛区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1770', '0', '崂山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1771', '0', '胶南市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1772', '0', '胶州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1773', '0', '平度市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1774', '0', '莱西市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1775', '0', '即墨市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1776', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1777', '0', '张店区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1778', '0', '临淄区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1779', '0', '淄川区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1780', '0', '博山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1781', '0', '周村区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1782', '0', '桓台县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1783', '0', '高青县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1784', '0', '沂源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1785', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1786', '0', '市中区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1787', '0', '山亭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1788', '0', '峄城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1789', '0', '台儿庄区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1790', '0', '薛城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1791', '0', '滕州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1792', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1793', '0', '东营区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1794', '0', '河口区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1795', '0', '垦利县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1796', '0', '广饶县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1797', '0', '利津县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1798', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1799', '0', '芝罘区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1800', '0', '福山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1801', '0', '牟平区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1802', '0', '莱山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1803', '0', '龙口市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1804', '0', '莱阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1805', '0', '莱州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1806', '0', '招远市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1807', '0', '蓬莱市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1808', '0', '栖霞市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1809', '0', '海阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1810', '0', '长岛县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1811', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1812', '0', '潍城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1813', '0', '寒亭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1814', '0', '坊子区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1815', '0', '奎文区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1816', '0', '青州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1817', '0', '诸城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1818', '0', '寿光市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1819', '0', '安丘市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1820', '0', '高密市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1821', '0', '昌邑市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1822', '0', '昌乐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1823', '0', '临朐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1824', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1825', '0', '市中区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1826', '0', '任城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1827', '0', '曲阜市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1828', '0', '兖州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1829', '0', '邹城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1830', '0', '鱼台县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1831', '0', '金乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1832', '0', '嘉祥县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1833', '0', '微山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1834', '0', '汶上县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1835', '0', '泗水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1836', '0', '梁山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1837', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1838', '0', '泰山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1839', '0', '岱岳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1840', '0', '新泰市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1841', '0', '肥城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1842', '0', '宁阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1843', '0', '东平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1844', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1845', '0', '环翠区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1846', '0', '乳山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1847', '0', '文登市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1848', '0', '荣成市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1849', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1850', '0', '东港区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1851', '0', '岚山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1852', '0', '五莲县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1853', '0', '莒县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1854', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1855', '0', '莱城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1856', '0', '钢城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1857', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1858', '0', '兰山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1859', '0', '罗庄区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1860', '0', '河东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1861', '0', '沂南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1862', '0', '郯城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1863', '0', '沂水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1864', '0', '苍山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1865', '0', '费县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1866', '0', '平邑县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1867', '0', '莒南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1868', '0', '蒙阴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1869', '0', '临沭县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1870', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1871', '0', '德城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1872', '0', '乐陵市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1873', '0', '禹城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1874', '0', '陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1875', '0', '宁津县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1876', '0', '齐河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1877', '0', '武城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1878', '0', '庆云县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1879', '0', '平原县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1880', '0', '夏津县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1881', '0', '临邑县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1882', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1883', '0', '东昌府区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1884', '0', '临清市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1885', '0', '高唐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1886', '0', '阳谷县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1887', '0', '茌平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1888', '0', '莘县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1889', '0', '东阿县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1890', '0', '冠县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1891', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1892', '0', '滨城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1893', '0', '邹平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1894', '0', '沾化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1895', '0', '惠民县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1896', '0', '博兴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1897', '0', '阳信县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1898', '0', '无棣县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1899', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1900', '0', '牡丹区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1901', '0', '鄄城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1902', '0', '单县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1903', '0', '郓城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1904', '0', '曹县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1905', '0', '定陶县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1906', '0', '巨野县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1907', '0', '东明县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1908', '0', '成武县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1909', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1910', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1911', '0', '中原区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1912', '0', '金水区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1913', '0', '二七区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1914', '0', '管城回族区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1915', '0', '上街区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1916', '0', '惠济区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1917', '0', '巩义市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1918', '0', '新郑市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1919', '0', '新密市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1920', '0', '登封市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1921', '0', '荥阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1922', '0', '中牟县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1923', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1924', '0', '鼓楼区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1925', '0', '龙亭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1926', '0', '顺河回族区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1927', '0', '禹王台区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1928', '0', '金明区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1929', '0', '开封县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1930', '0', '尉氏县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1931', '0', '兰考县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1932', '0', '杞县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1933', '0', '通许县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1934', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1935', '0', '西工区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1936', '0', '老城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1937', '0', '涧西区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1938', '0', '瀍河回族区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1939', '0', '洛龙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1940', '0', '吉利区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1941', '0', '偃师市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1942', '0', '孟津县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1943', '0', '汝阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1944', '0', '伊川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1945', '0', '洛宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1946', '0', '嵩县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1947', '0', '宜阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1948', '0', '新安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1949', '0', '栾川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1950', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1951', '0', '新华区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1952', '0', '卫东区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1953', '0', '湛河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1954', '0', '石龙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1955', '0', '汝州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1956', '0', '舞钢市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1957', '0', '宝丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1958', '0', '叶县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1959', '0', '郏县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1960', '0', '鲁山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1961', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1962', '0', '北关区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1963', '0', '文峰区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1964', '0', '殷都区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1965', '0', '龙安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1966', '0', '林州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1967', '0', '安阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1968', '0', '滑县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1969', '0', '内黄县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1970', '0', '汤阴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1971', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1972', '0', '淇滨区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1973', '0', '山城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1974', '0', '鹤山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1975', '0', '浚县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1976', '0', '淇县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1977', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1978', '0', '卫滨区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1979', '0', '红旗区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1980', '0', '凤泉区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1981', '0', '牧野区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1982', '0', '卫辉市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1983', '0', '辉县市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1984', '0', '新乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1985', '0', '获嘉县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1986', '0', '原阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1987', '0', '长垣县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1988', '0', '封丘县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1989', '0', '延津县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1990', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1991', '0', '解放区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1992', '0', '中站区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1993', '0', '马村区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1994', '0', '山阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1995', '0', '沁阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1996', '0', '孟州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1997', '0', '修武县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1998', '0', '温县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('1999', '0', '武陟县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2000', '0', '博爱县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2001', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2002', '0', '华龙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2003', '0', '濮阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2004', '0', '南乐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2005', '0', '台前县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2006', '0', '清丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2007', '0', '范县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2008', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2009', '0', '魏都区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2010', '0', '禹州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2011', '0', '长葛市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2012', '0', '许昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2013', '0', '鄢陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2014', '0', '襄城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2015', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2016', '0', '源汇区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2017', '0', '郾城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2018', '0', '召陵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2019', '0', '临颍县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2020', '0', '舞阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2021', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2022', '0', '湖滨区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2023', '0', '义马市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2024', '0', '灵宝市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2025', '0', '渑池县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2026', '0', '卢氏县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2027', '0', '陕县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2028', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2029', '0', '卧龙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2030', '0', '宛城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2031', '0', '邓州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2032', '0', '桐柏县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2033', '0', '方城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2034', '0', '淅川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2035', '0', '镇平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2036', '0', '唐河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2037', '0', '南召县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2038', '0', '内乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2039', '0', '新野县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2040', '0', '社旗县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2041', '0', '西峡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2042', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2043', '0', '梁园区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2044', '0', '睢阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2045', '0', '永城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2046', '0', '宁陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2047', '0', '虞城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2048', '0', '民权县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2049', '0', '夏邑县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2050', '0', '柘城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2051', '0', '睢县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2052', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2053', '0', '浉河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2054', '0', '平桥区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2055', '0', '潢川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2056', '0', '淮滨县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2057', '0', '息县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2058', '0', '新县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2059', '0', '商城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2060', '0', '固始县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2061', '0', '罗山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2062', '0', '光山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2063', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2064', '0', '川汇区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2065', '0', '项城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2066', '0', '商水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2067', '0', '淮阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2068', '0', '太康县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2069', '0', '鹿邑县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2070', '0', '西华县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2071', '0', '扶沟县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2072', '0', '沈丘县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2073', '0', '郸城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2074', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2075', '0', '驿城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2076', '0', '确山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2077', '0', '新蔡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2078', '0', '上蔡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2079', '0', '西平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2080', '0', '泌阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2081', '0', '平舆县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2082', '0', '汝南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2083', '0', '遂平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2084', '0', '正阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2085', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2086', '0', '济源市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2087', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2088', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2089', '0', '江岸区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2090', '0', '武昌区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2091', '0', '江汉区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2092', '0', '硚口区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2093', '0', '汉阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2094', '0', '青山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2095', '0', '洪山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2096', '0', '东西湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2097', '0', '汉南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2098', '0', '蔡甸区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2099', '0', '江夏区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2100', '0', '黄陂区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2101', '0', '新洲区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2102', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2103', '0', '黄石港区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2104', '0', '西塞山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2105', '0', '下陆区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2106', '0', '铁山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2107', '0', '大冶市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2108', '0', '阳新县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2109', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2110', '0', '张湾区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2111', '0', '茅箭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2112', '0', '丹江口市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2113', '0', '郧县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2114', '0', '竹山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2115', '0', '房县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2116', '0', '郧西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2117', '0', '竹溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2118', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2119', '0', '沙市区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2120', '0', '荆州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2121', '0', '洪湖市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2122', '0', '石首市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2123', '0', '松滋市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2124', '0', '监利县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2125', '0', '公安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2126', '0', '江陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2127', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2128', '0', '西陵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2129', '0', '伍家岗区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2130', '0', '点军区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2131', '0', '猇亭区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2132', '0', '夷陵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2133', '0', '宜都市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2134', '0', '当阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2135', '0', '枝江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2136', '0', '秭归县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2137', '0', '远安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2138', '0', '兴山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2139', '0', '五峰土家族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2140', '0', '长阳土家族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2141', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2142', '0', '襄城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2143', '0', '樊城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2144', '0', '襄阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2145', '0', '老河口市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2146', '0', '枣阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2147', '0', '宜城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2148', '0', '南漳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2149', '0', '谷城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2150', '0', '保康县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2151', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2152', '0', '鄂城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2153', '0', '华容区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2154', '0', '梁子湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2155', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2156', '0', '东宝区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2157', '0', '掇刀区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2158', '0', '钟祥市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2159', '0', '京山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2160', '0', '沙洋县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2161', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2162', '0', '孝南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2163', '0', '应城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2164', '0', '安陆市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2165', '0', '汉川市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2166', '0', '云梦县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2167', '0', '大悟县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2168', '0', '孝昌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2169', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2170', '0', '黄州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2171', '0', '麻城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2172', '0', '武穴市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2173', '0', '红安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2174', '0', '罗田县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2175', '0', '浠水县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2176', '0', '蕲春县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2177', '0', '黄梅县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2178', '0', '英山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2179', '0', '团风县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2180', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2181', '0', '咸安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2182', '0', '赤壁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2183', '0', '嘉鱼县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2184', '0', '通山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2185', '0', '崇阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2186', '0', '通城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2187', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2188', '0', '曾都区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2189', '0', '广水市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2190', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2191', '0', '恩施市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2192', '0', '利川市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2193', '0', '建始县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2194', '0', '来凤县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2195', '0', '巴东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2196', '0', '鹤峰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2197', '0', '宣恩县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2198', '0', '咸丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2199', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2200', '0', '仙桃', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2201', '0', '天门', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2202', '0', '潜江', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2203', '0', '神农架林区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2204', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2205', '0', '岳麓区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2206', '0', '芙蓉区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2207', '0', '天心区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2208', '0', '开福区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2209', '0', '雨花区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2210', '0', '浏阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2211', '0', '长沙县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2212', '0', '望城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2213', '0', '宁乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2214', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2215', '0', '天元区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2216', '0', '荷塘区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2217', '0', '芦淞区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2218', '0', '石峰区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2219', '0', '醴陵市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2220', '0', '株洲县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2221', '0', '炎陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2222', '0', '茶陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2223', '0', '攸县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2224', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2225', '0', '岳塘区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2226', '0', '雨湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2227', '0', '湘乡市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2228', '0', '韶山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2229', '0', '湘潭县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2230', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2231', '0', '雁峰区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2232', '0', '珠晖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2233', '0', '石鼓区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2234', '0', '蒸湘区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2235', '0', '南岳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2236', '0', '耒阳市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2237', '0', '常宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2238', '0', '衡阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2239', '0', '衡东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2240', '0', '衡山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2241', '0', '衡南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2242', '0', '祁东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2243', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2244', '0', '双清区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2245', '0', '大祥区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2246', '0', '北塔区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2247', '0', '武冈市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2248', '0', '邵东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2249', '0', '洞口县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2250', '0', '新邵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2251', '0', '绥宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2252', '0', '新宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2253', '0', '邵阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2254', '0', '隆回县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2255', '0', '城步苗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2256', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2257', '0', '岳阳楼区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2258', '0', '云溪区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2259', '0', '君山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2260', '0', '临湘市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2261', '0', '汨罗市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2262', '0', '岳阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2263', '0', '湘阴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2264', '0', '平江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2265', '0', '华容县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2266', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2267', '0', '武陵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2268', '0', '鼎城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2269', '0', '津市市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2270', '0', '澧县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2271', '0', '临澧县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2272', '0', '桃源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2273', '0', '汉寿县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2274', '0', '安乡县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2275', '0', '石门县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2276', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2277', '0', '永定区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2278', '0', '武陵源区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2279', '0', '慈利县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2280', '0', '桑植县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2281', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2282', '0', '赫山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2283', '0', '资阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2284', '0', '沅江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2285', '0', '桃江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2286', '0', '南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2287', '0', '安化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2288', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2289', '0', '北湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2290', '0', '苏仙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2291', '0', '资兴市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2292', '0', '宜章县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2293', '0', '汝城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2294', '0', '安仁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2295', '0', '嘉禾县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2296', '0', '临武县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2297', '0', '桂东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2298', '0', '永兴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2299', '0', '桂阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2300', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2301', '0', '冷水滩区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2302', '0', '零陵区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2303', '0', '祁阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2304', '0', '蓝山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2305', '0', '宁远县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2306', '0', '新田县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2307', '0', '东安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2308', '0', '江永县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2309', '0', '道县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2310', '0', '双牌县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2311', '0', '江华瑶族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2312', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2313', '0', '鹤城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2314', '0', '洪江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2315', '0', '会同县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2316', '0', '沅陵县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2317', '0', '辰溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2318', '0', '溆浦县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2319', '0', '中方县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2320', '0', '新晃侗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2321', '0', '芷江侗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2322', '0', '通道侗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2323', '0', '靖州苗族侗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2324', '0', '麻阳苗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2325', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2326', '0', '娄星区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2327', '0', '冷水江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2328', '0', '涟源市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2329', '0', '新化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2330', '0', '双峰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2331', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2332', '0', '吉首市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2333', '0', '古丈县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2334', '0', '龙山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2335', '0', '永顺县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2336', '0', '凤凰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2337', '0', '泸溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2338', '0', '保靖县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2339', '0', '花垣县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2340', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2341', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2342', '0', '越秀区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2343', '0', '荔湾区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2344', '0', '海珠区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2345', '0', '天河区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2346', '0', '白云区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2347', '0', '黄埔区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2348', '0', '番禺区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2349', '0', '花都区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2350', '0', '南沙区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2351', '0', '萝岗区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2352', '0', '增城市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2353', '0', '从化市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2354', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2355', '0', '福田区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2356', '0', '罗湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2357', '0', '南山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2358', '0', '宝安区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2359', '0', '龙岗区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2360', '0', '盐田区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2361', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2362', '0', '莞城', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2363', '0', '常平', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2364', '0', '塘厦', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2365', '0', '塘厦', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2366', '0', '塘厦', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2367', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2368', '0', '中山', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2369', '0', '湘桥区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2370', '0', '潮安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2371', '0', '饶平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2372', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2373', '0', '榕城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2374', '0', '揭东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2375', '0', '揭西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2376', '0', '惠来县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2377', '0', '普宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2378', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2379', '0', '云城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2380', '0', '新兴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2381', '0', '郁南县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2382', '0', '云安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2383', '0', '罗定市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2384', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2385', '0', '香洲区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2386', '0', '斗门区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2387', '0', '金湾区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2388', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2389', '0', '金平区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2390', '0', '濠江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2391', '0', '龙湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2392', '0', '潮阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2393', '0', '潮南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2394', '0', '澄海区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2395', '0', '南澳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2396', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2397', '0', '浈江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2398', '0', '武江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2399', '0', '曲江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2400', '0', '乐昌市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2401', '0', '南雄市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2402', '0', '始兴县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2403', '0', '仁化县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2404', '0', '翁源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2405', '0', '新丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2406', '0', '乳源瑶族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2407', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2408', '0', '禅城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2409', '0', '南海区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2410', '0', '顺德区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2411', '0', '三水区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2412', '0', '高明区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2413', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2414', '0', '蓬江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2415', '0', '江海区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2416', '0', '新会区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2417', '0', '恩平市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2418', '0', '台山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2419', '0', '开平市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2420', '0', '鹤山市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2421', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2422', '0', '赤坎区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2423', '0', '霞山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2424', '0', '坡头区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2425', '0', '麻章区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2426', '0', '吴川市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2427', '0', '廉江市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2428', '0', '雷州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2429', '0', '遂溪县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2430', '0', '徐闻县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2431', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2432', '0', '茂南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2433', '0', '茂港区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2434', '0', '化州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2435', '0', '信宜市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2436', '0', '高州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2437', '0', '电白县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2438', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2439', '0', '端州区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2440', '0', '鼎湖区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2441', '0', '高要市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2442', '0', '四会市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2443', '0', '广宁县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2444', '0', '怀集县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2445', '0', '封开县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2446', '0', '德庆县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2447', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2448', '0', '惠城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2449', '0', '惠阳区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2450', '0', '博罗县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2451', '0', '惠东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2452', '0', '龙门县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2453', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2454', '0', '梅江区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2455', '0', '兴宁市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2456', '0', '梅县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2457', '0', '大埔县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2458', '0', '丰顺县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2459', '0', '五华县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2460', '0', '平远县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2461', '0', '蕉岭县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2462', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2463', '0', '城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2464', '0', '陆丰市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2465', '0', '海丰县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2466', '0', '陆河县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2467', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2468', '0', '源城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2469', '0', '紫金县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2470', '0', '龙川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2471', '0', '连平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2472', '0', '和平县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2473', '0', '东源县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2474', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2475', '0', '江城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2476', '0', '阳春市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2477', '0', '阳西县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2478', '0', '阳东县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2479', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2480', '0', '清城区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2481', '0', '英德市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2482', '0', '连州市', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2483', '0', '佛冈县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2484', '0', '阳山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2485', '0', '清新县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2486', '0', '连山壮族瑶族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2487', '0', '连南瑶族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2488', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2489', '0', '青秀区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2490', '0', '兴宁区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2491', '0', '西乡塘区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2492', '0', '良庆区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2493', '0', '江南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2494', '0', '邕宁区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2495', '0', '武鸣县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2496', '0', '隆安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2497', '0', '马山县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2498', '0', '上林县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2499', '0', '宾阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2500', '0', '横县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2501', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2502', '0', '城中区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2503', '0', '鱼峰区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2504', '0', '柳北区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2505', '0', '柳南区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2506', '0', '柳江县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2507', '0', '柳城县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2508', '0', '鹿寨县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2509', '0', '融安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2510', '0', '融水苗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2511', '0', '三江侗族自治县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2512', '0', '其他', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2513', '0', '象山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2514', '0', '秀峰区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2515', '0', '叠彩区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2516', '0', '七星区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2517', '0', '雁山区', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2518', '0', '阳朔县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2519', '0', '临桂县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2520', '0', '灵川县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2521', '0', '全州县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2522', '0', '平乐县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2523', '0', '兴安县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2524', '0', '灌阳县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_areas` VALUES ('2525', '0', '荔浦县', '0', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2526', '0', '资源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2527', '0', '永福县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2528', '0', '龙胜各族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2529', '0', '恭城瑶族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2530', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2531', '0', '万秀区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2532', '0', '蝶山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2533', '0', '长洲区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2534', '0', '岑溪市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2535', '0', '苍梧县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2536', '0', '藤县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2537', '0', '蒙山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2538', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2539', '0', '海城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2540', '0', '银海区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2541', '0', '铁山港区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2542', '0', '合浦县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2543', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2544', '0', '港口区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2545', '0', '防城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2546', '0', '东兴市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2547', '0', '上思县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2548', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2549', '0', '钦南区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2550', '0', '钦北区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2551', '0', '灵山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2552', '0', '浦北县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2553', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2554', '0', '港北区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2555', '0', '港南区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2556', '0', '覃塘区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2557', '0', '桂平市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2558', '0', '平南县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2559', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2560', '0', '玉州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2561', '0', '北流市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2562', '0', '容县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2563', '0', '陆川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2564', '0', '博白县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2565', '0', '兴业县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2566', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2567', '0', '右江区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2568', '0', '凌云县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2569', '0', '平果县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2570', '0', '西林县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2571', '0', '乐业县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2572', '0', '德保县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2573', '0', '田林县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2574', '0', '田阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2575', '0', '靖西县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2576', '0', '田东县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2577', '0', '那坡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2578', '0', '隆林各族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2579', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2580', '0', '八步区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2581', '0', '钟山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2582', '0', '昭平县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2583', '0', '富川瑶族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2584', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2585', '0', '金城江区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2586', '0', '宜州市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2587', '0', '天峨县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2588', '0', '凤山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2589', '0', '南丹县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2590', '0', '东兰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2591', '0', '都安瑶族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2592', '0', '罗城仫佬族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2593', '0', '巴马瑶族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2594', '0', '环江毛南族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2595', '0', '大化瑶族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2596', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2597', '0', '兴宾区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2598', '0', '合山市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2599', '0', '象州县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2600', '0', '武宣县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2601', '0', '忻城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2602', '0', '金秀瑶族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2603', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2604', '0', '江州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2605', '0', '凭祥市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2606', '0', '宁明县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2607', '0', '扶绥县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2608', '0', '龙州县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2609', '0', '大新县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2610', '0', '天等县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2611', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2612', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2613', '0', '龙华区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2614', '0', '秀英区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2615', '0', '琼山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2616', '0', '美兰区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2617', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2618', '0', '三亚市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2619', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2620', '0', '五指山', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2621', '0', '琼海', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2622', '0', '儋州', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2623', '0', '文昌', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2624', '0', '万宁', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2625', '0', '东方', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2626', '0', '澄迈县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2627', '0', '定安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2628', '0', '屯昌县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2629', '0', '临高县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2630', '0', '白沙黎族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2631', '0', '昌江黎族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2632', '0', '乐东黎族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2633', '0', '陵水黎族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2634', '0', '保亭黎族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2635', '0', '琼中黎族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2636', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2637', '0', '渝中区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2638', '0', '大渡口区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2639', '0', '江北区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2640', '0', '南岸区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2641', '0', '北碚区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2642', '0', '渝北区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2643', '0', '巴南区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2644', '0', '长寿区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2645', '0', '双桥区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2646', '0', '沙坪坝区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2647', '0', '万盛区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2648', '0', '万州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2649', '0', '涪陵区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2650', '0', '黔江区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2651', '0', '永川区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2652', '0', '合川区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2653', '0', '江津区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2654', '0', '九龙坡区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2655', '0', '南川区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2656', '0', '綦江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2657', '0', '潼南县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2658', '0', '荣昌县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2659', '0', '璧山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2660', '0', '大足县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2661', '0', '铜梁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2662', '0', '梁平县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2663', '0', '开县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2664', '0', '忠县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2665', '0', '城口县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2666', '0', '垫江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2667', '0', '武隆县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2668', '0', '丰都县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2669', '0', '奉节县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2670', '0', '云阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2671', '0', '巫溪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2672', '0', '巫山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2673', '0', '石柱土家族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2674', '0', '秀山土家族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2675', '0', '酉阳土家族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2676', '0', '彭水苗族土家族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2677', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2678', '0', '青羊区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2679', '0', '锦江区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2680', '0', '金牛区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2681', '0', '武侯区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2682', '0', '成华区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2683', '0', '龙泉驿区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2684', '0', '青白江区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2685', '0', '新都区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2686', '0', '温江区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2687', '0', '都江堰市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2688', '0', '彭州市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2689', '0', '邛崃市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2690', '0', '崇州市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2691', '0', '金堂县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2692', '0', '郫县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2693', '0', '新津县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2694', '0', '双流县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2695', '0', '蒲江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2696', '0', '大邑县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2697', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2698', '0', '大安区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2699', '0', '自流井区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2700', '0', '贡井区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2701', '0', '沿滩区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2702', '0', '荣县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2703', '0', '富顺县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2704', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2705', '0', '仁和区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2706', '0', '米易县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2707', '0', '盐边县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2708', '0', '东区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2709', '0', '西区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2710', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2711', '0', '江阳区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2712', '0', '纳溪区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2713', '0', '龙马潭区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2714', '0', '泸县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2715', '0', '合江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2716', '0', '叙永县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2717', '0', '古蔺县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2718', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2719', '0', '旌阳区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2720', '0', '广汉市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2721', '0', '什邡市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2722', '0', '绵竹市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2723', '0', '罗江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2724', '0', '中江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2725', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2726', '0', '涪城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2727', '0', '游仙区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2728', '0', '江油市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2729', '0', '盐亭县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2730', '0', '三台县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2731', '0', '平武县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2732', '0', '安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2733', '0', '梓潼县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2734', '0', '北川羌族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2735', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2736', '0', '元坝区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2737', '0', '朝天区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2738', '0', '青川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2739', '0', '旺苍县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2740', '0', '剑阁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2741', '0', '苍溪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2742', '0', '市中区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2743', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2744', '0', '船山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2745', '0', '安居区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2746', '0', '射洪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2747', '0', '蓬溪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2748', '0', '大英县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2749', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2750', '0', '市中区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2751', '0', '东兴区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2752', '0', '资中县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2753', '0', '隆昌县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2754', '0', '威远县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2755', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2756', '0', '市中区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2757', '0', '五通桥区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2758', '0', '沙湾区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2759', '0', '金口河区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2760', '0', '峨眉山市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2761', '0', '夹江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2762', '0', '井研县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2763', '0', '犍为县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2764', '0', '沐川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2765', '0', '马边彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2766', '0', '峨边彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2767', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2768', '0', '顺庆区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2769', '0', '高坪区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2770', '0', '嘉陵区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2771', '0', '阆中市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2772', '0', '营山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2773', '0', '蓬安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2774', '0', '仪陇县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2775', '0', '南部县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2776', '0', '西充县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2777', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2778', '0', '东坡区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2779', '0', '仁寿县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2780', '0', '彭山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2781', '0', '洪雅县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2782', '0', '丹棱县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2783', '0', '青神县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2784', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2785', '0', '翠屏区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2786', '0', '宜宾县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2787', '0', '兴文县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2788', '0', '南溪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2789', '0', '珙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2790', '0', '长宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2791', '0', '高县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2792', '0', '江安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2793', '0', '筠连县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2794', '0', '屏山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2795', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2796', '0', '广安区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2797', '0', '华蓥市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2798', '0', '岳池县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2799', '0', '邻水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2800', '0', '武胜县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2801', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2802', '0', '通川区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2803', '0', '万源市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2804', '0', '达县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2805', '0', '渠县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2806', '0', '宣汉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2807', '0', '开江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2808', '0', '大竹县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2809', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2810', '0', '雨城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2811', '0', '芦山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2812', '0', '石棉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2813', '0', '名山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2814', '0', '天全县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2815', '0', '荥经县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2816', '0', '宝兴县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2817', '0', '汉源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2818', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2819', '0', '巴州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2820', '0', '南江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2821', '0', '平昌县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2822', '0', '通江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2823', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2824', '0', '雁江区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2825', '0', '简阳市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2826', '0', '安岳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2827', '0', '乐至县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2828', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2829', '0', '马尔康县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2830', '0', '九寨沟县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2831', '0', '红原县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2832', '0', '汶川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2833', '0', '阿坝县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2834', '0', '理县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2835', '0', '若尔盖县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2836', '0', '小金县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2837', '0', '黑水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2838', '0', '金川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2839', '0', '松潘县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2840', '0', '壤塘县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2841', '0', '茂县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2842', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2843', '0', '康定县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2844', '0', '丹巴县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2845', '0', '炉霍县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2846', '0', '九龙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2847', '0', '甘孜县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2848', '0', '雅江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2849', '0', '新龙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2850', '0', '道孚县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2851', '0', '白玉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2852', '0', '理塘县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2853', '0', '德格县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2854', '0', '乡城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2855', '0', '石渠县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2856', '0', '稻城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2857', '0', '色达县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2858', '0', '巴塘县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2859', '0', '泸定县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2860', '0', '得荣县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2861', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2862', '0', '西昌市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2863', '0', '美姑县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2864', '0', '昭觉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2865', '0', '金阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2866', '0', '甘洛县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2867', '0', '布拖县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2868', '0', '雷波县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2869', '0', '普格县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2870', '0', '宁南县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2871', '0', '喜德县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2872', '0', '会东县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2873', '0', '越西县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2874', '0', '会理县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2875', '0', '盐源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2876', '0', '德昌县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2877', '0', '冕宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2878', '0', '木里藏族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2879', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2880', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2881', '0', '南明区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2882', '0', '云岩区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2883', '0', '花溪区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2884', '0', '乌当区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2885', '0', '白云区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2886', '0', '小河区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2887', '0', '清镇市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2888', '0', '开阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2889', '0', '修文县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2890', '0', '息烽县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2891', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2892', '0', '钟山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2893', '0', '水城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2894', '0', '盘县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2895', '0', '六枝特区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2896', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2897', '0', '红花岗区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2898', '0', '汇川区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2899', '0', '赤水市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2900', '0', '仁怀市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2901', '0', '遵义县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2902', '0', '绥阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2903', '0', '桐梓县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2904', '0', '习水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2905', '0', '凤冈县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2906', '0', '正安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2907', '0', '余庆县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2908', '0', '湄潭县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2909', '0', '道真仡佬族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2910', '0', '务川仡佬族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2911', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2912', '0', '西秀区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2913', '0', '普定县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2914', '0', '平坝县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2915', '0', '镇宁布依族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2916', '0', '紫云苗族布依族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2917', '0', '关岭布依族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2918', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2919', '0', '铜仁市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2920', '0', '德江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2921', '0', '江口县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2922', '0', '思南县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2923', '0', '石阡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2924', '0', '玉屏侗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2925', '0', '松桃苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2926', '0', '印江土家族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2927', '0', '沿河土家族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2928', '0', '万山特区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2929', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2930', '0', '毕节市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2931', '0', '黔西县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2932', '0', '大方县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2933', '0', '织金县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2934', '0', '金沙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2935', '0', '赫章县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2936', '0', '纳雍县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2937', '0', '威宁彝族回族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2938', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2939', '0', '兴义市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2940', '0', '望谟县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2941', '0', '兴仁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2942', '0', '普安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2943', '0', '册亨县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2944', '0', '晴隆县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2945', '0', '贞丰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2946', '0', '安龙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2947', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2948', '0', '凯里市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2949', '0', '施秉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2950', '0', '从江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2951', '0', '锦屏县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2952', '0', '镇远县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2953', '0', '麻江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2954', '0', '台江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2955', '0', '天柱县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2956', '0', '黄平县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2957', '0', '榕江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2958', '0', '剑河县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2959', '0', '三穗县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2960', '0', '雷山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2961', '0', '黎平县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2962', '0', '岑巩县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2963', '0', '丹寨县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2964', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2965', '0', '都匀市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2966', '0', '福泉市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2967', '0', '贵定县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2968', '0', '惠水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2969', '0', '罗甸县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2970', '0', '瓮安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2971', '0', '荔波县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2972', '0', '龙里县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2973', '0', '平塘县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2974', '0', '长顺县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2975', '0', '独山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2976', '0', '三都水族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2977', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2978', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2979', '0', '盘龙区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2980', '0', '五华区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2981', '0', '官渡区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2982', '0', '西山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2983', '0', '东川区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2984', '0', '安宁市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2985', '0', '呈贡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2986', '0', '晋宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2987', '0', '富民县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2988', '0', '宜良县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2989', '0', '嵩明县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2990', '0', '石林彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2991', '0', '禄劝彝族苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2992', '0', '寻甸回族彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2993', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2994', '0', '麒麟区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2995', '0', '宣威市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2996', '0', '马龙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2997', '0', '沾益县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2998', '0', '富源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('2999', '0', '罗平县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3000', '0', '师宗县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3001', '0', '陆良县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3002', '0', '会泽县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3003', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3004', '0', '红塔区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3005', '0', '江川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3006', '0', '澄江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3007', '0', '通海县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3008', '0', '华宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3009', '0', '易门县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3010', '0', '峨山彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3011', '0', '新平彝族傣族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3012', '0', '元江哈尼族彝族傣族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3013', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3014', '0', '隆阳区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3015', '0', '施甸县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3016', '0', '腾冲县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3017', '0', '龙陵县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3018', '0', '昌宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3019', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3020', '0', '昭阳区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3021', '0', '鲁甸县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3022', '0', '巧家县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3023', '0', '盐津县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3024', '0', '大关县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3025', '0', '永善县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3026', '0', '绥江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3027', '0', '镇雄县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3028', '0', '彝良县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3029', '0', '威信县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3030', '0', '水富县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3031', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3032', '0', '古城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3033', '0', '永胜县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3034', '0', '华坪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3035', '0', '玉龙纳西族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3036', '0', '宁蒗彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3037', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3038', '0', '思茅区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3039', '0', '普洱哈尼族彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3040', '0', '墨江哈尼族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3041', '0', '景东彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3042', '0', '景谷傣族彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3043', '0', '镇沅彝族哈尼族拉祜族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3044', '0', '江城哈尼族彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3045', '0', '孟连傣族拉祜族佤族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3046', '0', '澜沧拉祜族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3047', '0', '西盟佤族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3048', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3049', '0', '临翔区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3050', '0', '凤庆县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3051', '0', '云县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3052', '0', '永德县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3053', '0', '镇康县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3054', '0', '双江拉祜族佤族布朗族傣族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3055', '0', '耿马傣族佤族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3056', '0', '沧源佤族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3057', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3058', '0', '潞西市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3059', '0', '瑞丽市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3060', '0', '梁河县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3061', '0', '盈江县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3062', '0', '陇川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3063', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3064', '0', '泸水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3065', '0', '福贡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3066', '0', '贡山独龙族怒族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3067', '0', '兰坪白族普米族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3068', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3069', '0', '香格里拉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3070', '0', '德钦县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3071', '0', '维西傈僳族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3072', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3073', '0', '大理市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3074', '0', '祥云县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3075', '0', '宾川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3076', '0', '弥渡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3077', '0', '永平县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3078', '0', '云龙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3079', '0', '洱源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3080', '0', '剑川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3081', '0', '鹤庆县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3082', '0', '漾濞彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3083', '0', '南涧彝族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3084', '0', '巍山彝族回族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3085', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3086', '0', '楚雄市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3087', '0', '双柏县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3088', '0', '牟定县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3089', '0', '南华县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3090', '0', '姚安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3091', '0', '大姚县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3092', '0', '永仁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3093', '0', '元谋县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3094', '0', '武定县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3095', '0', '禄丰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3096', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3097', '0', '蒙自县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3098', '0', '个旧市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3099', '0', '开远市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3100', '0', '绿春县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3101', '0', '建水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3102', '0', '石屏县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3103', '0', '弥勒县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3104', '0', '泸西县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3105', '0', '元阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3106', '0', '红河县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3107', '0', '金平苗族瑶族傣族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3108', '0', '河口瑶族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3109', '0', '屏边苗族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3110', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3111', '0', '文山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3112', '0', '砚山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3113', '0', '西畴县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3114', '0', '麻栗坡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3115', '0', '马关县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3116', '0', '丘北县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3117', '0', '广南县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3118', '0', '富宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3119', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3120', '0', '景洪市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3121', '0', '勐海县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3122', '0', '勐腊县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3123', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3124', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3125', '0', '城关区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3126', '0', '林周县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3127', '0', '当雄县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3128', '0', '尼木县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3129', '0', '曲水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3130', '0', '堆龙德庆县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3131', '0', '达孜县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3132', '0', '墨竹工卡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3133', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3134', '0', '那曲县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3135', '0', '嘉黎县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3136', '0', '比如县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3137', '0', '聂荣县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3138', '0', '安多县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3139', '0', '申扎县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3140', '0', '索县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3141', '0', '班戈县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3142', '0', '巴青县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3143', '0', '尼玛县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3144', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3145', '0', '昌都县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3146', '0', '江达县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3147', '0', '贡觉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3148', '0', '类乌齐县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3149', '0', '丁青县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3150', '0', '察雅县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3151', '0', '八宿县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3152', '0', '左贡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3153', '0', '芒康县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3154', '0', '洛隆县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3155', '0', '边坝县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3156', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3157', '0', '林芝县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3158', '0', '工布江达县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3159', '0', '米林县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3160', '0', '墨脱县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3161', '0', '波密县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3162', '0', '察隅县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3163', '0', '朗县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3164', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3165', '0', '乃东县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3166', '0', '扎囊县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3167', '0', '贡嘎县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3168', '0', '桑日县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3169', '0', '琼结县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3170', '0', '曲松县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3171', '0', '措美县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3172', '0', '洛扎县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3173', '0', '加查县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3174', '0', '隆子县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3175', '0', '错那县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3176', '0', '浪卡子县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3177', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3178', '0', '日喀则市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3179', '0', '南木林县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3180', '0', '江孜县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3181', '0', '定日县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3182', '0', '萨迦县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3183', '0', '拉孜县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3184', '0', '昂仁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3185', '0', '谢通门县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3186', '0', '白朗县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3187', '0', '仁布县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3188', '0', '康马县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3189', '0', '定结县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3190', '0', '仲巴县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3191', '0', '亚东县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3192', '0', '吉隆县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3193', '0', '聂拉木县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3194', '0', '萨嘎县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3195', '0', '岗巴县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3196', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3197', '0', '噶尔县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3198', '0', '普兰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3199', '0', '札达县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3200', '0', '日土县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3201', '0', '革吉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3202', '0', '改则县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3203', '0', '措勤县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3204', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3205', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3206', '0', '莲湖区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3207', '0', '新城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3208', '0', '碑林区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3209', '0', '雁塔区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3210', '0', '灞桥区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3211', '0', '未央区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3212', '0', '阎良区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3213', '0', '临潼区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3214', '0', '长安区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3215', '0', '高陵县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3216', '0', '蓝田县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3217', '0', '户县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3218', '0', '周至县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3219', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3220', '0', '耀州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3221', '0', '王益区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3222', '0', '印台区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3223', '0', '宜君县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3224', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3225', '0', '渭滨区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3226', '0', '金台区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3227', '0', '陈仓区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3228', '0', '岐山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3229', '0', '凤翔县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3230', '0', '陇县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3231', '0', '太白县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3232', '0', '麟游县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3233', '0', '扶风县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3234', '0', '千阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3235', '0', '眉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3236', '0', '凤县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3237', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3238', '0', '秦都区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3239', '0', '渭城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3240', '0', '杨陵区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3241', '0', '兴平市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3242', '0', '礼泉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3243', '0', '泾阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3244', '0', '永寿县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3245', '0', '三原县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3246', '0', '彬县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3247', '0', '旬邑县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3248', '0', '长武县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3249', '0', '乾县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3250', '0', '武功县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3251', '0', '淳化县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3252', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3253', '0', '临渭区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3254', '0', '韩城市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3255', '0', '华阴市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3256', '0', '蒲城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3257', '0', '潼关县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3258', '0', '白水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3259', '0', '澄城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3260', '0', '华县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3261', '0', '合阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3262', '0', '富平县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3263', '0', '大荔县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3264', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3265', '0', '宝塔区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3266', '0', '安塞县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3267', '0', '洛川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3268', '0', '子长县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3269', '0', '黄陵县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3270', '0', '延川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3271', '0', '富县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3272', '0', '延长县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3273', '0', '甘泉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3274', '0', '宜川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3275', '0', '志丹县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3276', '0', '黄龙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3277', '0', '吴起县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3278', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3279', '0', '汉台区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3280', '0', '留坝县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3281', '0', '镇巴县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3282', '0', '城固县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3283', '0', '南郑县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3284', '0', '洋县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3285', '0', '宁强县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3286', '0', '佛坪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3287', '0', '勉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3288', '0', '西乡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3289', '0', '略阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3290', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3291', '0', '榆阳区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3292', '0', '清涧县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3293', '0', '绥德县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3294', '0', '神木县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3295', '0', '佳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3296', '0', '府谷县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3297', '0', '子洲县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3298', '0', '靖边县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3299', '0', '横山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3300', '0', '米脂县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3301', '0', '吴堡县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3302', '0', '定边县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3303', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3304', '0', '汉滨区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3305', '0', '紫阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3306', '0', '岚皋县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3307', '0', '旬阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3308', '0', '镇坪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3309', '0', '平利县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3310', '0', '石泉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3311', '0', '宁陕县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3312', '0', '白河县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3313', '0', '汉阴县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3314', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3315', '0', '商州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3316', '0', '镇安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3317', '0', '山阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3318', '0', '洛南县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3319', '0', '商南县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3320', '0', '丹凤县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3321', '0', '柞水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3322', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3323', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3324', '0', '城关区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3325', '0', '七里河区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3326', '0', '西固区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3327', '0', '安宁区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3328', '0', '红古区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3329', '0', '永登县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3330', '0', '皋兰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3331', '0', '榆中县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3332', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3333', '0', '嘉峪关市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3334', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3335', '0', '金川区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3336', '0', '永昌县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3337', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3338', '0', '白银区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3339', '0', '平川区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3340', '0', '靖远县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3341', '0', '会宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3342', '0', '景泰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3343', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3344', '0', '清水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3345', '0', '秦安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3346', '0', '甘谷县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3347', '0', '武山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3348', '0', '张家川回族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3349', '0', '北道区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3350', '0', '秦城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3351', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3352', '0', '凉州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3353', '0', '民勤县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3354', '0', '古浪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3355', '0', '天祝藏族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3356', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3357', '0', '肃州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3358', '0', '玉门市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3359', '0', '敦煌市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3360', '0', '金塔县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3361', '0', '肃北蒙古族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3362', '0', '阿克塞哈萨克族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3363', '0', '安西县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3364', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3365', '0', '甘州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3366', '0', '民乐县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3367', '0', '临泽县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3368', '0', '高台县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3369', '0', '山丹县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3370', '0', '肃南裕固族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3371', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3372', '0', '西峰区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3373', '0', '庆城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3374', '0', '环县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3375', '0', '华池县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3376', '0', '合水县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3377', '0', '正宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3378', '0', '宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3379', '0', '镇原县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3380', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3381', '0', '崆峒区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3382', '0', '泾川县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3383', '0', '灵台县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3384', '0', '崇信县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3385', '0', '华亭县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3386', '0', '庄浪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3387', '0', '静宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3388', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3389', '0', '安定区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3390', '0', '通渭县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3391', '0', '临洮县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3392', '0', '漳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3393', '0', '岷县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3394', '0', '渭源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3395', '0', '陇西县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3396', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3397', '0', '武都区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3398', '0', '成县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3399', '0', '宕昌县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3400', '0', '康县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3401', '0', '文县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3402', '0', '西和县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3403', '0', '礼县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3404', '0', '两当县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3405', '0', '徽县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3406', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3407', '0', '临夏市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3408', '0', '临夏县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3409', '0', '康乐县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3410', '0', '永靖县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3411', '0', '广河县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3412', '0', '和政县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3413', '0', '东乡族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3414', '0', '积石山保安族东乡族撒拉族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3415', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3416', '0', '合作市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3417', '0', '临潭县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3418', '0', '卓尼县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3419', '0', '舟曲县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3420', '0', '迭部县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3421', '0', '玛曲县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3422', '0', '碌曲县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3423', '0', '夏河县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3424', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3425', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3426', '0', '城中区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3427', '0', '城东区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3428', '0', '城西区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3429', '0', '城北区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3430', '0', '湟源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3431', '0', '湟中县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3432', '0', '大通回族土族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3433', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3434', '0', '平安县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3435', '0', '乐都县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3436', '0', '民和回族土族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3437', '0', '互助土族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3438', '0', '化隆回族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3439', '0', '循化撒拉族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3440', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3441', '0', '海晏县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3442', '0', '祁连县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3443', '0', '刚察县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3444', '0', '门源回族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3445', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3446', '0', '共和县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3447', '0', '同德县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3448', '0', '贵德县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3449', '0', '兴海县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3450', '0', '贵南县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3451', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3452', '0', '同仁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3453', '0', '尖扎县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3454', '0', '泽库县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3455', '0', '河南蒙古族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3456', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3457', '0', '玛沁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3458', '0', '班玛县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3459', '0', '甘德县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3460', '0', '达日县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3461', '0', '久治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3462', '0', '玛多县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3463', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3464', '0', '玉树县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3465', '0', '杂多县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3466', '0', '称多县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3467', '0', '治多县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3468', '0', '囊谦县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3469', '0', '曲麻莱县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3470', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3471', '0', '德令哈市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3472', '0', '格尔木市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3473', '0', '乌兰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3474', '0', '都兰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3475', '0', '天峻县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3476', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3477', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3478', '0', '兴庆区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3479', '0', '西夏区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3480', '0', '金凤区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3481', '0', '灵武市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3482', '0', '永宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3483', '0', '贺兰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3484', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3485', '0', '大武口区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3486', '0', '惠农区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3487', '0', '平罗县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3488', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3489', '0', '利通区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3490', '0', '青铜峡市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3491', '0', '盐池县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3492', '0', '同心县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3493', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3494', '0', '原州区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3495', '0', '西吉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3496', '0', '隆德县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3497', '0', '泾源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3498', '0', '彭阳县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3499', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3500', '0', '沙坡头区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3501', '0', '中宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3502', '0', '海原县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3503', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3504', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3505', '0', '天山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3506', '0', '沙依巴克区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3507', '0', '新市区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3508', '0', '水磨沟区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3509', '0', '头屯河区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3510', '0', '达坂城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3511', '0', '东山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3512', '0', '乌鲁木齐县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3513', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3514', '0', '克拉玛依区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3515', '0', '独山子区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3516', '0', '白碱滩区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3517', '0', '乌尔禾区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3518', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3519', '0', '吐鲁番市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3520', '0', '托克逊县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3521', '0', '鄯善县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3522', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3523', '0', '哈密市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3524', '0', '伊吾县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3525', '0', '巴里坤哈萨克自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3526', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3527', '0', '和田市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3528', '0', '和田县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3529', '0', '洛浦县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3530', '0', '民丰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3531', '0', '皮山县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3532', '0', '策勒县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3533', '0', '于田县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3534', '0', '墨玉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3535', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3536', '0', '阿克苏市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3537', '0', '温宿县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3538', '0', '沙雅县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3539', '0', '拜城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3540', '0', '阿瓦提县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3541', '0', '库车县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3542', '0', '柯坪县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3543', '0', '新和县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3544', '0', '乌什县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3545', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3546', '0', '喀什市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3547', '0', '巴楚县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3548', '0', '泽普县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3549', '0', '伽师县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3550', '0', '叶城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3551', '0', '岳普湖县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3552', '0', '疏勒县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3553', '0', '麦盖提县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3554', '0', '英吉沙县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3555', '0', '莎车县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3556', '0', '疏附县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3557', '0', '塔什库尔干塔吉克自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3558', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3559', '0', '阿图什市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3560', '0', '阿合奇县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3561', '0', '乌恰县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3562', '0', '阿克陶县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3563', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3564', '0', '库尔勒市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3565', '0', '和静县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3566', '0', '尉犁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3567', '0', '和硕县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3568', '0', '且末县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3569', '0', '博湖县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3570', '0', '轮台县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3571', '0', '若羌县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3572', '0', '焉耆回族自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3573', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3574', '0', '昌吉市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3575', '0', '阜康市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3576', '0', '奇台县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3577', '0', '玛纳斯县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3578', '0', '吉木萨尔县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3579', '0', '呼图壁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3580', '0', '木垒哈萨克自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3581', '0', '米泉市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3582', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3583', '0', '博乐市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3584', '0', '精河县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3585', '0', '温泉县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3586', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3587', '0', '石河子', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3588', '0', '阿拉尔', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3589', '0', '图木舒克', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3590', '0', '五家渠', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3591', '0', '伊宁市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3592', '0', '奎屯市', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3593', '0', '伊宁县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3594', '0', '特克斯县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3595', '0', '尼勒克县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3596', '0', '昭苏县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3597', '0', '新源县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3598', '0', '霍城县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3599', '0', '巩留县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3600', '0', '察布查尔锡伯自治县', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3601', '0', '塔城地区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3602', '0', '阿勒泰地区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3603', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3604', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3605', '0', '内湖区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3606', '0', '南港区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3607', '0', '中正区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3608', '0', '万华区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3609', '0', '大同区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3610', '0', '中山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3611', '0', '松山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3612', '0', '大安区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3613', '0', '信义区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3614', '0', '文山区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3615', '0', '士林区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3616', '0', '北投区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3617', '0', '板桥区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3618', '0', '汐止区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3619', '0', '新店区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3620', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3621', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3622', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3623', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3624', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3625', '0', '花地玛堂区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3626', '0', '圣安多尼堂区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3627', '0', '大堂区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3628', '0', '望德堂区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3629', '0', '风顺堂区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3630', '0', '嘉模堂区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3631', '0', '圣方济各堂区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3632', '0', '路凼', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3633', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3634', '0', '深水埗区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3635', '0', '油尖旺区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3636', '0', '九龙城区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3637', '0', '黄大仙区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3638', '0', '观塘区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3639', '0', '北区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3640', '0', '大埔区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3641', '0', '沙田区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3642', '0', '西贡区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3643', '0', '元朗区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3644', '0', '屯门区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3645', '0', '荃湾区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3646', '0', '葵青区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3647', '0', '离岛区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3648', '0', '中西区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3649', '0', '湾仔区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3650', '0', '东区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3651', '0', '南区', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');
INSERT INTO `depu_areas` VALUES ('3652', '0', '其他', '0', '1', null, '2017-07-25 14:51:59', '2017-07-25 14:51:59');

-- ----------------------------
-- Table structure for depu_banners
-- ----------------------------
DROP TABLE IF EXISTS `depu_banners`;
CREATE TABLE `depu_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'BannerID',
  `pc_image_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'PC端banner',
  `mobile_image_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '移动端banner',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banners_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_banners
-- ----------------------------

-- ----------------------------
-- Table structure for depu_blogrolls
-- ----------------------------
DROP TABLE IF EXISTS `depu_blogrolls`;
CREATE TABLE `depu_blogrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Logo图片',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogrolls_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_blogrolls
-- ----------------------------

-- ----------------------------
-- Table structure for depu_categories
-- ----------------------------
DROP TABLE IF EXISTS `depu_categories`;
CREATE TABLE `depu_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `icon_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标ID',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类说明',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类描述',
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '绑定模型',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '层级',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '隐藏',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_pid_index` (`pid`),
  KEY `categories_name_index` (`name`),
  KEY `categories_model_index` (`model`),
  KEY `categories_sort_index` (`sort`),
  KEY `categories_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_categories
-- ----------------------------

-- ----------------------------
-- Table structure for depu_comments
-- ----------------------------
DROP TABLE IF EXISTS `depu_comments`;
CREATE TABLE `depu_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论用户ID',
  `trip_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行程ID',
  `commentable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论模型ID',
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '被评论模型',
  `starts` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `image_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评论图片ID',
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评论内容',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_index` (`user_id`),
  KEY `comments_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_comments
-- ----------------------------

-- ----------------------------
-- Table structure for depu_complaints
-- ----------------------------
DROP TABLE IF EXISTS `depu_complaints`;
CREATE TABLE `depu_complaints` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '投诉ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投诉用户ID',
  `comment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复专员ID',
  `trip_info_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行程细节ID',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '投诉类型(0:投诉APP 1:投诉行程)',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '投诉内容',
  `comment` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '回复内容',
  `image_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '投诉图片ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `complaints_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_complaints
-- ----------------------------

-- ----------------------------
-- Table structure for depu_countries
-- ----------------------------
DROP TABLE IF EXISTS `depu_countries`;
CREATE TABLE `depu_countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '国家ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家封面',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '国家名称',
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '国家英文名称',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countries_project_id_index` (`project_id`),
  KEY `countries_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_countries
-- ----------------------------
INSERT INTO `depu_countries` VALUES ('1', '1', '0', '中国', 'China', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_countries` VALUES ('2', '13', '0', '美国', 'America', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');

-- ----------------------------
-- Table structure for depu_doctors
-- ----------------------------
DROP TABLE IF EXISTS `depu_doctors`;
CREATE TABLE `depu_doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '医生ID',
  `hospital_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '医院ID',
  `avatar_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '头像ID',
  `country_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家ID',
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `success_rate` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '成功率',
  `exp` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '从业经验',
  `comment_starts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `comment_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论人数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctors_hospital_id_index` (`hospital_id`),
  KEY `doctors_avatar_id_index` (`avatar_id`),
  KEY `doctors_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_doctors
-- ----------------------------

-- ----------------------------
-- Table structure for depu_files
-- ----------------------------
DROP TABLE IF EXISTS `depu_files`;
CREATE TABLE `depu_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件路径',
  `md5` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'MD5值',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_files
-- ----------------------------

-- ----------------------------
-- Table structure for depu_hospitals
-- ----------------------------
DROP TABLE IF EXISTS `depu_hospitals`;
CREATE TABLE `depu_hospitals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '医院ID',
  `country_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '医院封面',
  `image_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '医院图片',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '医院名称',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `address_zh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中文地址',
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '英文地址',
  `baidu_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '百度坐标',
  `google_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '谷歌坐标',
  `price` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '费用',
  `success_rate` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '成功率',
  `treatment_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '就诊数',
  `department_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '科室',
  `bed_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '床位',
  `comment_starts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `comment_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论人数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospitals_country_id_index` (`country_id`),
  KEY `hospitals_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_hospitals
-- ----------------------------

-- ----------------------------
-- Table structure for depu_hotals
-- ----------------------------
DROP TABLE IF EXISTS `depu_hotals`;
CREATE TABLE `depu_hotals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '酒店ID',
  `hospital_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '医院ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '酒店封面',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '酒店名称',
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `address_zh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中文地址',
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '英文地址',
  `baidu_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '百度坐标',
  `google_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '谷歌坐标',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '星级',
  `price` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '费用',
  `image_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '酒店图片',
  `comment_starts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `comment_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论人数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hotals_hospital_id_index` (`hospital_id`),
  KEY `hotals_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_hotals
-- ----------------------------

-- ----------------------------
-- Table structure for depu_images
-- ----------------------------
DROP TABLE IF EXISTS `depu_images`;
CREATE TABLE `depu_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片ID',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片路径',
  `md5` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'MD5值',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_images
-- ----------------------------

-- ----------------------------
-- Table structure for depu_logs
-- ----------------------------
DROP TABLE IF EXISTS `depu_logs`;
CREATE TABLE `depu_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '账号',
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作板块',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '操作类型',
  `ip` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作IP地址',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_logs
-- ----------------------------

-- ----------------------------
-- Table structure for depu_menus
-- ----------------------------
DROP TABLE IF EXISTS `depu_menus`;
CREATE TABLE `depu_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单说明',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单描述',
  `has_url` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有链接地址',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '层级',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '隐藏',
  `is_local` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否本地环境显示',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '系统菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_pid_index` (`pid`),
  KEY `menus_name_index` (`name`),
  KEY `menus_sort_index` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_menus
-- ----------------------------
INSERT INTO `depu_menus` VALUES ('1', '0', 'dashboard', 'backend.dashboard.index', '管&nbsp;理&nbsp;中&nbsp;心', '', '1', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('2', '0', 'user', 'backend.account', '用&nbsp;户', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('3', '0', 'lock', 'backend.access', '权&nbsp;限', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('4', '0', 'bars', 'backend.category', '分&nbsp;类', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('5', '0', 'pencil', 'backend.log', '日&nbsp;志', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('6', '0', 'laptop', 'backend.system', '系&nbsp;统', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('7', '2', '', 'backend.account.admin.index', '管理员', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('8', '2', '', 'backend.account.user.index', '会员', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('9', '3', '', 'backend.access.role.index', '角色管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('10', '3', '', 'backend.access.permission.index', '权限管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('11', '3', '', 'backend.access.group.index', '分组管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('12', '5', '', 'backend.log.action.index', '操作日志', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('13', '5', '', 'backend.log.system.index', '系统日志', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('14', '6', '', 'backend.system.menu.index', '菜单管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('15', '7', '', 'backend.account.admin.show', '管理员详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('16', '7', '', 'backend.account.admin.create', '添加管理员', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('17', '7', '', 'backend.account.admin.edit', '编辑管理员', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('18', '7', '', 'backend.account.admin.change-password', '修改管理员密码', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('19', '7', '', 'backend.account.admin.deleted', '回收站', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('20', '8', '', 'backend.account.user.show', '会员详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('21', '8', '', 'backend.account.user.create', '添加会员', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('22', '8', '', 'backend.account.user.edit', '编辑会员', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('23', '8', '', 'backend.account.user.change-password', '修改会员密码', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('24', '8', '', 'backend.account.user.deleted', '回收站', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('25', '9', '', 'backend.access.role.show', '角色详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('26', '9', '', 'backend.access.role.create', '添加角色', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('27', '9', '', 'backend.access.role.edit', '编辑角色', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('28', '9', '', 'backend.access.role.set-role', '角色授权', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('29', '9', '', 'backend.access.role.set-permission', '访问授权', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('30', '9', '', 'backend.access.role.deleted', '回收站', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('31', '10', '', 'backend.access.permission.show', '权限详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('32', '10', '', 'backend.access.permission.create', '添加权限', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('33', '10', '', 'backend.access.permission.edit', '编辑权限', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('34', '10', '', 'backend.access.permission.deleted', '回收站', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('35', '11', '', 'backend.access.group.show', '分组详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('36', '11', '', 'backend.access.group.create', '添加分组', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('37', '11', '', 'backend.access.group.edit', '编辑分组', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('38', '11', '', 'backend.access.group.deleted', '回收站', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('39', '12', '', 'backend.log.system.show', '日志详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('40', '13', '', 'backend.log.action.show', '日志详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('41', '14', '', 'backend.system.menu.show', '菜单详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('42', '14', '', 'backend.system.menu.create', '添加菜单', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('43', '14', '', 'backend.system.menu.edit', '编辑菜单', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('44', '14', '', 'backend.system.menu.deleted', '回收站', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('45', '8', '', 'backend.account.user.records', '档案管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('46', '0', 'inbox', 'backend.project', '项目', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('47', '46', '', 'backend.project.index', '项目管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('48', '47', '', 'backend.project.edit', '编辑项目', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('49', '46', '', 'backend.project.country.index', '国家管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('50', '49', '', 'backend.project.country.create', '创建国家', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('51', '49', '', 'backend.project.country.edit', '编辑国家', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('52', '49', '', 'backend.project.country.deleted', '删除国家列表', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('53', '0', 'cube', 'backend.content.service', '内容', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('54', '53', '', 'backend.content.service.index', '服务管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('55', '54', '', 'backend.content.service.edit', '编辑服务', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('56', '0', 'heart', 'backend.hospital', '医院', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('57', '56', '', 'backend.hospital.index', '医院管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('58', '57', '', 'backend.hospital.create', '添加医院', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('59', '57', '', 'backend.hospital.edit', '编辑医院', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('60', '57', '', 'backend.hospital.deleted', '已删除的医院', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('61', '57', '', 'backend.hospital.image.index', '医院图片管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('62', '57', '', 'backend.hospital.doctor.index', '医院医生', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('63', '57', '', 'backend.hospital.doctor.create', '添加医生', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('64', '57', '', 'backend.hospital.doctor.edit', '编辑医生', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('65', '57', '', 'backend.hospital.doctor.deleted', '已删除的医生', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('66', '57', '', 'backend.hospital.medical.index', '医疗翻译管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('67', '57', '', 'backend.hospital.medical.create', '添加医疗翻译', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('68', '57', '', 'backend.hospital.medical.edit', '编辑医疗翻译', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('69', '57', '', 'backend.hospital.medical.deleted', '已删除的医疗翻译', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('70', '57', '', 'backend.hospital.life.index', '生活翻译管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('71', '57', '', 'backend.hospital.life.create', '添加生活翻译', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('72', '57', '', 'backend.hospital.life.edit', '编辑生活翻译', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('73', '57', '', 'backend.hospital.life.deleted', '已删除的生活翻译', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('74', '57', '', 'backend.hospital.nanny.index', '保姆管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('75', '57', '', 'backend.hospital.nanny.create', '添加保姆', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('76', '57', '', 'backend.hospital.nanny.edit', '编辑保姆', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('77', '57', '', 'backend.hospital.nanny.deleted', '已删除的保姆', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('78', '57', '', 'backend.hospital.taxi.index', '出租车管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('79', '57', '', 'backend.hospital.taxi.create', '添加出租车', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('80', '57', '', 'backend.hospital.taxi.edit', '编辑出租车', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('81', '57', '', 'backend.hospital.taxi.deleted', '已删除的出租车', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('82', '57', '', 'backend.hospital.taxi.image.index', '出租车图片管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('83', '57', '', 'backend.hospital.hotal.index', '酒店管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('84', '57', '', 'backend.hospital.hotal.create', '添加酒店', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('85', '57', '', 'backend.hospital.hotal.edit', '编辑酒店', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('86', '57', '', 'backend.hospital.hotal.deleted', '已删除的酒店', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('87', '57', '', 'backend.hospital.hotal.image.index', '酒店图片管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('88', '57', '', 'backend.hospital.tourism.index', '景区管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('89', '57', '', 'backend.hospital.tourism.create', '添加景区', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('90', '57', '', 'backend.hospital.tourism.edit', '编辑景区', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('91', '57', '', 'backend.hospital.tourism.deleted', '已删除的景区', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('92', '57', '', 'backend.hospital.tourism.spot.index', '景点管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('93', '57', '', 'backend.hospital.tourism.spot.create', '添加景点', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('94', '57', '', 'backend.hospital.tourism.spot.edit', '编辑景点', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('95', '57', '', 'backend.hospital.tourism.spot.deleted', '已删除的景点', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('96', '57', '', 'backend.hospital.tourism.spot.image.index', '景点图片管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('97', '56', '', 'backend.comment.index', '评论管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('98', '97', '', 'backend.comment.edit', '回复评论', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('99', '97', '', 'backend.comment.deleted', '已删除的评论', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('100', '53', '', 'backend.content.complaint.index', '投诉管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('101', '100', '', 'backend.content.complaint.edit', '回复投诉', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('102', '0', 'money', 'backend.order', '订单', '', '0', '0', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('103', '102', '', 'backend.order.index', '订单管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('104', '103', '', 'backend.order.show', '查看订单', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('105', '103', '', 'backend.order.trip.index', '行程管理', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('106', '103', '', 'backend.order.trip.edit', '编辑行程', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('107', '103', '', 'backend.order.trip.create', '添加行程', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('108', '102', '', 'backend.running.index', '财务管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('109', '108', '', 'backend.running.show', '财务详情', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('110', '53', '', 'backend.content.blogroll.index', '友情链接管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('111', '110', '', 'backend.content.blogroll.create', '添加友情链接', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('112', '110', '', 'backend.content.blogroll.edit', '编辑友情链接', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('113', '110', '', 'backend.content.blogroll.deleted', '已删除的友情链接', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('114', '53', '', 'backend.content.news.index', '资讯管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('115', '114', '', 'backend.content.news.create', '添加资讯', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('116', '114', '', 'backend.content.news.edit', '编辑资讯', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('117', '114', '', 'backend.content.news.deleted', '已删除的资讯', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('118', '53', '', 'backend.content.agreement.index', '站点设置', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('119', '53', '', 'backend.content.version.index', '版本管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('120', '119', '', 'backend.content.version.create', '添加版本', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('121', '119', '', 'backend.content.version.edit', '编辑版本', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('122', '119', '', 'backend.content.version.deleted', '已删除的版本', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('123', '53', '', 'backend.content.banner.index', '轮播图管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('124', '123', '', 'backend.content.banner.create', '添加轮播图', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('125', '123', '', 'backend.content.banner.edit', '编辑轮播图', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('126', '123', '', 'backend.content.banner.deleted', '已删除的轮播图', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('127', '53', '', 'backend.content.ad.index', '广告管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('128', '127', '', 'backend.content.ad.create', '添加广告', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('129', '127', '', 'backend.content.ad.edit', '编辑广告', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('130', '127', '', 'backend.content.ad.deleted', '已删除的广告', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('131', '53', '', 'backend.content.pusher.index', '推送管理', '', '1', '1', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_menus` VALUES ('132', '131', '', 'backend.content.pusher.create', '添加推送', '', '1', '2', '0', '0', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');

-- ----------------------------
-- Table structure for depu_migrations
-- ----------------------------
DROP TABLE IF EXISTS `depu_migrations`;
CREATE TABLE `depu_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_migrations
-- ----------------------------
INSERT INTO `depu_migrations` VALUES ('19', '2017_06_08_000000_create_users_table', '1');
INSERT INTO `depu_migrations` VALUES ('20', '2017_06_08_161904_create_accesses_table', '1');
INSERT INTO `depu_migrations` VALUES ('21', '2017_06_08_162007_create_menus_table', '1');
INSERT INTO `depu_migrations` VALUES ('22', '2017_06_08_162141_create_categories_table', '1');
INSERT INTO `depu_migrations` VALUES ('23', '2017_06_08_162248_create_logs_table', '1');
INSERT INTO `depu_migrations` VALUES ('24', '2017_06_12_094704_create_banners_table', '1');
INSERT INTO `depu_migrations` VALUES ('25', '2017_06_12_094906_create_agreements_table', '1');
INSERT INTO `depu_migrations` VALUES ('26', '2017_06_12_110331_create_blogrolls_table', '1');
INSERT INTO `depu_migrations` VALUES ('27', '2017_06_12_110358_create_news_table', '1');
INSERT INTO `depu_migrations` VALUES ('28', '2017_06_12_111634_create_versions_table', '1');
INSERT INTO `depu_migrations` VALUES ('29', '2017_06_12_111737_create_pushers_table', '1');
INSERT INTO `depu_migrations` VALUES ('30', '2017_06_12_112202_create_projects_table', '1');
INSERT INTO `depu_migrations` VALUES ('31', '2017_06_12_112738_create_complaints_table', '1');
INSERT INTO `depu_migrations` VALUES ('32', '2017_06_12_113422_create_comments_table', '1');
INSERT INTO `depu_migrations` VALUES ('33', '2017_06_12_113744_create_records_table', '1');
INSERT INTO `depu_migrations` VALUES ('34', '2017_06_12_113828_create_orders_table', '1');
INSERT INTO `depu_migrations` VALUES ('35', '2017_06_13_235730_create_images_table', '1');
INSERT INTO `depu_migrations` VALUES ('36', '2017_06_14_173549_create_trips_table', '1');
INSERT INTO `depu_migrations` VALUES ('37', '2017_06_26_202830_create_areas_table', '1');
INSERT INTO `depu_migrations` VALUES ('38', '2017_07_16_214829_create_pictures_table', '1');
INSERT INTO `depu_migrations` VALUES ('39', '2017_07_17_093630_create_ads_table', '1');

-- ----------------------------
-- Table structure for depu_news
-- ----------------------------
DROP TABLE IF EXISTS `depu_news`;
CREATE TABLE `depu_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '资讯ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面图',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '热门资讯',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `published_at` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_is_hot_index` (`is_hot`),
  KEY `news_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_news
-- ----------------------------

-- ----------------------------
-- Table structure for depu_orders
-- ----------------------------
DROP TABLE IF EXISTS `depu_orders`;
CREATE TABLE `depu_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `hospital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '医院名称',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `total_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总费用',
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `money` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '服务费',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态(0:已关闭 1:已完成 2:已付款 3:已下单 4:已退款 5:申请退款)',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_index` (`user_id`),
  KEY `orders_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_orders
-- ----------------------------

-- ----------------------------
-- Table structure for depu_order_infos
-- ----------------------------
DROP TABLE IF EXISTS `depu_order_infos`;
CREATE TABLE `depu_order_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '详情ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `infoable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '服务ID',
  `infoable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务模型',
  `service_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '具体服务ID',
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '费用',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_infos_order_id_index` (`order_id`),
  KEY `order_infos_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_order_infos
-- ----------------------------

-- ----------------------------
-- Table structure for depu_permissions
-- ----------------------------
DROP TABLE IF EXISTS `depu_permissions`;
CREATE TABLE `depu_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '权限分组ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限说明',
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '系统权限',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_group_id_index` (`group_id`),
  KEY `permissions_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_permissions
-- ----------------------------
INSERT INTO `depu_permissions` VALUES ('1', '1', 'backend.dashboard.index', '查看管理中心', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('2', '2', 'backend.account.admin.index', '查看管理员列表', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('3', '2', 'backend.account.admin.show', '查看管理员详情', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('4', '2', 'backend.account.admin.deleted', '查看管理员回收站', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('5', '2', 'backend.account.admin.create', '添加管理员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('6', '2', 'backend.account.admin.store', '保存管理员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('7', '2', 'backend.account.admin.edit', '编辑管理员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('8', '2', 'backend.account.admin.update', '更新管理员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('9', '2', 'backend.account.admin.change-password', '编辑管理员密码', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('10', '2', 'backend.account.admin.change-password.post', '更新管理员密码', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('11', '2', 'backend.account.admin.mark', '更改管理员状态', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('12', '2', 'backend.account.admin.destroy', '删除管理员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('13', '2', 'backend.account.admin.restore', '恢复管理员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('14', '2', 'backend.account.admin.forcedelete', '永久删除管理员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('15', '2', 'backend.account.user.index', '查看会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('16', '2', 'backend.account.user.show', '查看会员详情', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('17', '2', 'backend.account.user.deleted', '查看会员回收站', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('18', '2', 'backend.account.user.create', '添加会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('19', '2', 'backend.account.user.store', '保存会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('20', '2', 'backend.account.user.edit', '编辑会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('21', '2', 'backend.account.user.update', '更新会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('22', '2', 'backend.account.admin.change-password', '编辑会员密码', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('23', '2', 'backend.account.admin.change-password.post', '更新会员密码', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('24', '2', 'backend.account.user.mark', '更改会员状态', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('25', '2', 'backend.account.user.destroy', '删除会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('26', '2', 'backend.account.user.restore', '恢复会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('27', '2', 'backend.account.user.forcedelete', '永久删除会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('28', '3', 'backend.access.role.index', '查看角色', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('29', '3', 'backend.access.role.show', '查看角色详情', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('30', '3', 'backend.access.role.deleted', '查看角色回收站', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('31', '3', 'backend.access.role.create', '添加角色', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('32', '3', 'backend.access.role.store', '保存角色', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('33', '3', 'backend.access.role.edit', '编辑角色', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('34', '3', 'backend.access.role.update', '更新角色', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('35', '3', 'backend.access.role.mark', '更改角色状态', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('36', '3', 'backend.access.role.destroy', '删除角色', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('37', '3', 'backend.access.role.restore', '恢复角色', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('38', '3', 'backend.access.role.forcedelete', '永久删除角色', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('39', '3', 'backend.access.role.set-role', '编辑角色授权', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('40', '3', 'backend.access.role.unset-role', '解除角色授权', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('41', '3', 'backend.access.role.set-role.post', '更新角色授权', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('42', '3', 'backend.access.role.set-permission', '编辑访问授权', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('43', '3', 'backend.access.role.unset-permission', '解除访问授权', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('44', '3', 'backend.access.role.set-permission.post', '更新访问授权', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('45', '3', 'backend.access.permission.index', '查看权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('46', '3', 'backend.access.permission.show', '查看权限详情', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('47', '3', 'backend.access.permission.deleted', '查看权限回收站', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('48', '3', 'backend.access.permission.create', '添加权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('49', '3', 'backend.access.permission.store', '保存权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('50', '3', 'backend.access.permission.edit', '编辑权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('51', '3', 'backend.access.permission.update', '更新权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('52', '3', 'backend.access.permission.mark', '更改权限状态', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('53', '3', 'backend.access.permission.destroy', '删除权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('54', '3', 'backend.access.permission.restore', '恢复权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('55', '3', 'backend.access.permission.forcedelete', '永久删除权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('56', '3', 'backend.access.group.index', '查看权限分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('57', '3', 'backend.access.group.show', '查看权限分组详情', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('58', '3', 'backend.access.group.deleted', '查看权限分组回收站', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('59', '3', 'backend.access.group.create', '添加权限分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('60', '3', 'backend.access.group.store', '保存权限分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('61', '3', 'backend.access.group.edit', '编辑权限分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('62', '3', 'backend.access.group.update', '更新权限分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('63', '3', 'backend.access.group.mark', '更改权限分组状态', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('64', '3', 'backend.access.group.destroy', '删除权限分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('65', '3', 'backend.access.group.restore', '恢复权限分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('66', '3', 'backend.access.group.forcedelete', '永久删除权限分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('67', '5', 'backend.log.system.index', '查看系统日志', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('68', '5', 'backend.log.system.destroy', '删除系统日志', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('69', '5', 'backend.log.action.index', '查看操作日志', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('70', '5', 'backend.log.action.destroy', '删除操作日志', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('71', '6', 'backend.system.menu.index', '查看菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('72', '6', 'backend.system.menu.show', '查看菜单详情', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('73', '6', 'backend.system.menu.deleted', '查看菜单回收站', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('74', '6', 'backend.system.menu.create', '添加菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('75', '6', 'backend.system.menu.store', '保存菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('76', '6', 'backend.system.menu.edit', '编辑菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('77', '6', 'backend.system.menu.update', '更新菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('78', '6', 'backend.system.menu.mark', '更改菜单状态', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('79', '6', 'backend.system.menu.destroy', '删除菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('80', '6', 'backend.system.menu.restore', '恢复菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permissions` VALUES ('81', '6', 'backend.system.menu.forcedelete', '永久删除菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');

-- ----------------------------
-- Table structure for depu_permission_groups
-- ----------------------------
DROP TABLE IF EXISTS `depu_permission_groups`;
CREATE TABLE `depu_permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分组ID',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分组名称',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分组说明',
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '系统分组',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_groups_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_permission_groups
-- ----------------------------
INSERT INTO `depu_permission_groups` VALUES ('1', 'default', '默认分组', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permission_groups` VALUES ('2', 'account', '用户', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permission_groups` VALUES ('3', 'access', '权限', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permission_groups` VALUES ('4', 'categories', '分类', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permission_groups` VALUES ('5', 'log', '日志', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_permission_groups` VALUES ('6', 'menus', '菜单', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');

-- ----------------------------
-- Table structure for depu_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `depu_permission_role`;
CREATE TABLE `depu_permission_role` (
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限ID',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色ID',
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_permission_role
-- ----------------------------

-- ----------------------------
-- Table structure for depu_pictures
-- ----------------------------
DROP TABLE IF EXISTS `depu_pictures`;
CREATE TABLE `depu_pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '照片ID',
  `image_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片ID',
  `pictureable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '照片模型ID',
  `pictureable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '照片模型',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '照片名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_pictures
-- ----------------------------

-- ----------------------------
-- Table structure for depu_projects
-- ----------------------------
DROP TABLE IF EXISTS `depu_projects`;
CREATE TABLE `depu_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '项目封面',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务名称',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `price` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '费用',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_projects
-- ----------------------------
INSERT INTO `depu_projects` VALUES ('1', '26', '试管婴儿', '试管婴儿', '1000101', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');

-- ----------------------------
-- Table structure for depu_pushers
-- ----------------------------
DROP TABLE IF EXISTS `depu_pushers`;
CREATE TABLE `depu_pushers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '推送ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推送者UID',
  `event` tinyint(4) NOT NULL DEFAULT '0' COMMENT '推送事件',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推送对象ID',
  `role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '推送对象(0:全站用户 1:ios 2:安卓 3:某角色组 4:某个用户)',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '推送说明',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '推送内容',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pushers_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_pushers
-- ----------------------------

-- ----------------------------
-- Table structure for depu_records
-- ----------------------------
DROP TABLE IF EXISTS `depu_records`;
CREATE TABLE `depu_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '档案ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '症状名称',
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '症状描述',
  `image_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '症状图片',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `started_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `ended_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `records_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_records
-- ----------------------------

-- ----------------------------
-- Table structure for depu_replies
-- ----------------------------
DROP TABLE IF EXISTS `depu_replies`;
CREATE TABLE `depu_replies` (
  `comment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复用户ID',
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评论内容',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `replies_comment_id_index` (`comment_id`),
  KEY `replies_user_id_index` (`user_id`),
  KEY `replies_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_replies
-- ----------------------------

-- ----------------------------
-- Table structure for depu_roles
-- ----------------------------
DROP TABLE IF EXISTS `depu_roles`;
CREATE TABLE `depu_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `guard` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户类型(0:user 1:admin)',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色说明',
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '系统角色',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色表';

-- ----------------------------
-- Records of depu_roles
-- ----------------------------
INSERT INTO `depu_roles` VALUES ('1', '1', 'admin', '管理员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_roles` VALUES ('2', '0', 'user', '会员', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_roles` VALUES ('3', '1', 'own_admin', '专属客服', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');

-- ----------------------------
-- Table structure for depu_role_user
-- ----------------------------
DROP TABLE IF EXISTS `depu_role_user`;
CREATE TABLE `depu_role_user` (
  `role_id` int(10) unsigned NOT NULL COMMENT '角色ID',
  `user_id` int(10) unsigned NOT NULL COMMENT '权限ID',
  KEY `role_user_role_id_index` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户角色表';

-- ----------------------------
-- Records of depu_role_user
-- ----------------------------
INSERT INTO `depu_role_user` VALUES ('3', '1');

-- ----------------------------
-- Table structure for depu_running_accounts
-- ----------------------------
DROP TABLE IF EXISTS `depu_running_accounts`;
CREATE TABLE `depu_running_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '账号',
  `paid_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付账号',
  `ip` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'IP地址',
  `money` int(11) NOT NULL DEFAULT '0' COMMENT '金额',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付方式(1:支付宝 2:微信 3:银联 4:线下)',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态(0:已关闭 1:已完成 2: 已支付 3: 未支付)',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `paid_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `ended_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `running_accounts_order_id_index` (`order_id`),
  KEY `running_accounts_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_running_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for depu_services
-- ----------------------------
DROP TABLE IF EXISTS `depu_services`;
CREATE TABLE `depu_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '服务ID',
  `icon_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'icon图标',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务名称',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_services
-- ----------------------------
INSERT INTO `depu_services` VALUES ('1', '49', '医疗翻译', '服务描述', '', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_services` VALUES ('2', '49', '生活翻译', '服务描述', '', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_services` VALUES ('3', '4', '保姆', '服务描述', '', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_services` VALUES ('4', '8', '酒店', '服务描述', '', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_services` VALUES ('5', '36', '接机服务', '服务描述', '', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');
INSERT INTO `depu_services` VALUES ('6', '6', '游玩', '服务描述', '', '1', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');

-- ----------------------------
-- Table structure for depu_service_members
-- ----------------------------
DROP TABLE IF EXISTS `depu_service_members`;
CREATE TABLE `depu_service_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '服务者ID',
  `hospital_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '医院ID',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '服务类型(0:医疗翻译 1:生活翻译 2:保姆)',
  `avatar_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `country_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家ID',
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `price` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '费用',
  `service_content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务项目',
  `comment_starts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `comment_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论人数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_members_hospital_id_index` (`hospital_id`),
  KEY `service_members_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_service_members
-- ----------------------------

-- ----------------------------
-- Table structure for depu_spots
-- ----------------------------
DROP TABLE IF EXISTS `depu_spots`;
CREATE TABLE `depu_spots` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '景点ID',
  `tourism_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '景区ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '景点封面',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '景点名称',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `image_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '景点图片',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spots_tourism_id_index` (`tourism_id`),
  KEY `spots_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_spots
-- ----------------------------

-- ----------------------------
-- Table structure for depu_taxis
-- ----------------------------
DROP TABLE IF EXISTS `depu_taxis`;
CREATE TABLE `depu_taxis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '出租车ID',
  `hospital_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '医院ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '出租车图片',
  `avatar_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '司机头像',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '出租车名称',
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '司机姓名',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `members` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '载座',
  `price` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '费用',
  `image_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '出租车图片',
  `comment_starts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `comment_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论人数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taxis_hospital_id_index` (`hospital_id`),
  KEY `taxis_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_taxis
-- ----------------------------

-- ----------------------------
-- Table structure for depu_tourisms
-- ----------------------------
DROP TABLE IF EXISTS `depu_tourisms`;
CREATE TABLE `depu_tourisms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '景区ID',
  `hospital_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '医院ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '景区图片',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '景区名称',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '特色',
  `price` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '费用',
  `comment_starts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评分',
  `comment_numbers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论人数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tourisms_hospital_id_index` (`hospital_id`),
  KEY `tourisms_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_tourisms
-- ----------------------------

-- ----------------------------
-- Table structure for depu_trips
-- ----------------------------
DROP TABLE IF EXISTS `depu_trips`;
CREATE TABLE `depu_trips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '行程ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `hospital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '医院',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '服务费',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态(1:已确认 2:未确认)',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `started_at` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trips_user_id_index` (`user_id`),
  KEY `trips_order_id_index` (`order_id`),
  KEY `trips_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_trips
-- ----------------------------

-- ----------------------------
-- Table structure for depu_trip_infos
-- ----------------------------
DROP TABLE IF EXISTS `depu_trip_infos`;
CREATE TABLE `depu_trip_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '行程信息ID',
  `trip_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行程ID',
  `service_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '服务ID',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行程封面(客服填写)',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述(客服填写)',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介(客服填写)',
  `avatar_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '服务人员头像',
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务人员姓名',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务人员电话',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '服务人员性别',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务人员国家',
  `address_zh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中文地址',
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '英文地址',
  `baidu_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '百度坐标',
  `google_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '谷歌坐标',
  `image_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '行程图片(客服填写)',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行程类型(0:国内体检 1:行程准备 2:保姆 3:接机服务 4:入住酒店 5:前往医院 6:医生体检 7:促排期间 8:取卵取精 9:培植胚胎 10:游玩 11:胚胎移植 12:验孕 13:回国)',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态(1:已确认 2:未确认)',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `started_at` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trip_infos_trip_id_index` (`trip_id`),
  KEY `trip_infos_service_id_index` (`service_id`),
  KEY `trip_infos_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_trip_infos
-- ----------------------------

-- ----------------------------
-- Table structure for depu_users
-- ----------------------------
DROP TABLE IF EXISTS `depu_users`;
CREATE TABLE `depu_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'UID',
  `avatar_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `own_admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '专属客服',
  `guard` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户类型(0:user 1:admin)',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_avatar_id_index` (`avatar_id`),
  KEY `users_name_index` (`name`),
  KEY `users_own_admin_id_index` (`own_admin_id`),
  KEY `users_guard_index` (`guard`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of depu_users
-- ----------------------------
INSERT INTO `depu_users` VALUES ('1', '0', '欧尼', '0', '1', '1', null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');

-- ----------------------------
-- Table structure for depu_user_accounts
-- ----------------------------
DROP TABLE IF EXISTS `depu_user_accounts`;
CREATE TABLE `depu_user_accounts` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'UID',
  `guard` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户类型(0:user 1:admin)',
  `type` tinyint(3) unsigned NOT NULL COMMENT '登录类型',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '账号标识',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码凭证',
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'API票据',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自动登录',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `user_accounts_user_id_index` (`user_id`),
  KEY `user_accounts_guard_index` (`guard`),
  KEY `user_accounts_type_index` (`type`),
  KEY `user_accounts_name_index` (`name`),
  KEY `user_accounts_api_token_index` (`api_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户账户表';

-- ----------------------------
-- Records of depu_user_accounts
-- ----------------------------
INSERT INTO `depu_user_accounts` VALUES ('1', '1', '1', 'wosjohn', '$2y$10$Vg0F7XBc/41scP28il0ukeORJsnADlMFG1TjrZ98Z5XULo5TLQcmi', '7lYe5PcoYYCskRcPhHodSCSxDlcA26yimrRfShss6h1ZtKJNGbKIFuZ4OtiI', null, null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_user_accounts` VALUES ('1', '1', '2', 'wosjohn@foxmail.com', '$2y$10$CjOV0WY9n/CzhGkf.fUIg.gYol5gWbRYAwVq6PYIqFLUfndSmYysa', 'oK4pF3WulUSVFKJIKOZ1ohNDMuDvVbauO9wJbUibHRnAhL2gehOSY3mrhckg', null, null, '2017-07-25 14:51:57', '2017-07-25 14:51:57');
INSERT INTO `depu_user_accounts` VALUES ('1', '1', '3', '17612888261', '$2y$10$ASdSR.As.QQnP0yXmMIm8udzVqBK0Ao1uesq1LAbH1gJCgoRJ1veS', 'xkk7EYGSJvJXI7DhtA8Iq3lHOUNDbMrLc7tUZajJ7pqFGLrtfXCqm9hpJpfa', null, null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');

-- ----------------------------
-- Table structure for depu_user_auths
-- ----------------------------
DROP TABLE IF EXISTS `depu_user_auths`;
CREATE TABLE `depu_user_auths` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号标识',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '认证票据',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  KEY `user_auths_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_user_auths
-- ----------------------------

-- ----------------------------
-- Table structure for depu_user_extends
-- ----------------------------
DROP TABLE IF EXISTS `depu_user_extends`;
CREATE TABLE `depu_user_extends` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'UID',
  `last_logined_ip` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录IP',
  `logined_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '登录城市',
  `last_logined_at` timestamp NULL DEFAULT NULL COMMENT '上次登录时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `user_extends_user_id_index` (`user_id`),
  KEY `user_extends_last_logined_ip_index` (`last_logined_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户登录信息表';

-- ----------------------------
-- Records of depu_user_extends
-- ----------------------------
INSERT INTO `depu_user_extends` VALUES ('1', '0', '', null, null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');

-- ----------------------------
-- Table structure for depu_user_infos
-- ----------------------------
DROP TABLE IF EXISTS `depu_user_infos`;
CREATE TABLE `depu_user_infos` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'UID',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系方式',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '省',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '市',
  `area_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '区',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '详细住址',
  `attendant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '陪同人',
  `attendant_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '陪同人电话',
  `family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '紧急联系人',
  `family_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '紧急联系人电话',
  `person_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '护照号码',
  `birthday` int(10) unsigned DEFAULT NULL COMMENT '生日',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '隐藏',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `user_infos_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of depu_user_infos
-- ----------------------------
INSERT INTO `depu_user_infos` VALUES ('1', '1', '', '', '0', '0', '0', '', '', '', '', '', '', '19891001', '0', null, '2017-07-25 14:51:58', '2017-07-25 14:51:58');

-- ----------------------------
-- Table structure for depu_user_logs
-- ----------------------------
DROP TABLE IF EXISTS `depu_user_logs`;
CREATE TABLE `depu_user_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `user_id` int(10) unsigned NOT NULL COMMENT 'UID',
  `action_ip` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作IP',
  `action_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作城市',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作说明',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_logs_user_id_index` (`user_id`),
  KEY `user_logs_action_ip_index` (`action_ip`),
  KEY `user_logs_action_city_index` (`action_city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户日志表';

-- ----------------------------
-- Records of depu_user_logs
-- ----------------------------

-- ----------------------------
-- Table structure for depu_versions
-- ----------------------------
DROP TABLE IF EXISTS `depu_versions`;
CREATE TABLE `depu_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '版本ID',
  `code_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版本号',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '版本说明',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '更新描述',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '应用地址',
  `platform` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '终端',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '数据状态',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '假删除',
  `app_updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `versions_platform_index` (`platform`),
  KEY `versions_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of depu_versions
-- ----------------------------
