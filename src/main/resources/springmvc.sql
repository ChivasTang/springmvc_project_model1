/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : springmvc

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-03-01 11:50:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `login_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `login_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('1', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:15:22');
INSERT INTO `t_login_log` VALUES ('2', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:16:54');
INSERT INTO `t_login_log` VALUES ('3', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:18:21');
INSERT INTO `t_login_log` VALUES ('4', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:18:39');
INSERT INTO `t_login_log` VALUES ('5', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:20:47');
INSERT INTO `t_login_log` VALUES ('6', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:22:46');
INSERT INTO `t_login_log` VALUES ('7', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:23:03');
INSERT INTO `t_login_log` VALUES ('8', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:24:11');
INSERT INTO `t_login_log` VALUES ('9', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:24:51');
INSERT INTO `t_login_log` VALUES ('10', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:27:28');
INSERT INTO `t_login_log` VALUES ('11', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:31:49');
INSERT INTO `t_login_log` VALUES ('12', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:32:45');
INSERT INTO `t_login_log` VALUES ('13', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:39:15');
INSERT INTO `t_login_log` VALUES ('14', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:39:54');
INSERT INTO `t_login_log` VALUES ('15', '1', '0:0:0:0:0:0:0:1', '2016-03-01 11:44:07');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `last_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '75', '123456', '2016-03-01 11:44:07', '0:0:0:0:0:0:0:1');
