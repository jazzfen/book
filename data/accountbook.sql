/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : accountbook

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-01-18 17:53:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `type` int(5) DEFAULT '1' COMMENT '类型：1 收入 、0 消费 ',
  `money` float(10,2) DEFAULT '0.00' COMMENT '金额',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `value` varchar(100) DEFAULT NULL COMMENT '值',
  `type` enum('checkbox','radio','input') DEFAULT 'input',
  `sort` int(5) DEFAULT '1' COMMENT '排序',
  `status` int(5) DEFAULT '1' COMMENT '状态:1正常、-1 删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', '消费', 'consume', 'radio', '1', '1');
INSERT INTO `category` VALUES ('2', '0', '收入', 'income', 'radio', '1', '1');
