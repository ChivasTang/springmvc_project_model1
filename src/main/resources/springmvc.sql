/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : springmvc

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-03-02 09:54:21
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_login_log` VALUES ('16', '1', '0:0:0:0:0:0:0:1', '2016-03-01 12:03:11');
INSERT INTO `t_login_log` VALUES ('17', '1', '0:0:0:0:0:0:0:1', '2016-03-01 12:03:53');
INSERT INTO `t_login_log` VALUES ('18', '1', '0:0:0:0:0:0:0:1', '2016-03-01 12:33:02');
INSERT INTO `t_login_log` VALUES ('19', '1', '0:0:0:0:0:0:0:1', '2016-03-01 12:41:01');
INSERT INTO `t_login_log` VALUES ('20', '1', '0:0:0:0:0:0:0:1', '2016-03-01 12:43:37');
INSERT INTO `t_login_log` VALUES ('21', '1', '0:0:0:0:0:0:0:1', '2016-03-01 12:52:09');
INSERT INTO `t_login_log` VALUES ('22', '1', '0:0:0:0:0:0:0:1', '2016-03-01 12:53:59');
INSERT INTO `t_login_log` VALUES ('23', '1', '0:0:0:0:0:0:0:1', '2016-03-01 12:58:57');
INSERT INTO `t_login_log` VALUES ('24', '1', '0:0:0:0:0:0:0:1', '2016-03-01 13:00:02');
INSERT INTO `t_login_log` VALUES ('25', '1', '0:0:0:0:0:0:0:1', '2016-03-01 13:16:01');
INSERT INTO `t_login_log` VALUES ('26', '1', '0:0:0:0:0:0:0:1', '2016-03-01 13:37:17');
INSERT INTO `t_login_log` VALUES ('27', '1', '0:0:0:0:0:0:0:1', '2016-03-01 13:38:45');
INSERT INTO `t_login_log` VALUES ('28', '1', '0:0:0:0:0:0:0:1', '2016-03-01 13:40:43');
INSERT INTO `t_login_log` VALUES ('29', '1', '0:0:0:0:0:0:0:1', '2016-03-01 13:42:18');
INSERT INTO `t_login_log` VALUES ('30', '1', '0:0:0:0:0:0:0:1', '2016-03-01 13:43:10');
INSERT INTO `t_login_log` VALUES ('31', '1', '0:0:0:0:0:0:0:1', '2016-03-01 14:06:13');
INSERT INTO `t_login_log` VALUES ('32', '1', '0:0:0:0:0:0:0:1', '2016-03-01 14:07:59');
INSERT INTO `t_login_log` VALUES ('33', '1', '0:0:0:0:0:0:0:1', '2016-03-01 14:10:50');
INSERT INTO `t_login_log` VALUES ('34', '1', '0:0:0:0:0:0:0:1', '2016-03-01 14:17:30');
INSERT INTO `t_login_log` VALUES ('35', '1', '0:0:0:0:0:0:0:1', '2016-03-01 14:21:32');
INSERT INTO `t_login_log` VALUES ('36', '1', '0:0:0:0:0:0:0:1', '2016-03-01 14:27:10');
INSERT INTO `t_login_log` VALUES ('37', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:21:02');
INSERT INTO `t_login_log` VALUES ('38', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:23:07');
INSERT INTO `t_login_log` VALUES ('39', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:23:13');
INSERT INTO `t_login_log` VALUES ('40', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:23:23');
INSERT INTO `t_login_log` VALUES ('41', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:24:58');
INSERT INTO `t_login_log` VALUES ('42', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:25:50');
INSERT INTO `t_login_log` VALUES ('43', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:29:18');
INSERT INTO `t_login_log` VALUES ('44', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:29:56');
INSERT INTO `t_login_log` VALUES ('45', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:30:53');
INSERT INTO `t_login_log` VALUES ('46', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:31:09');
INSERT INTO `t_login_log` VALUES ('47', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:31:25');
INSERT INTO `t_login_log` VALUES ('48', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:31:37');
INSERT INTO `t_login_log` VALUES ('49', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:36:03');
INSERT INTO `t_login_log` VALUES ('50', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:44:09');
INSERT INTO `t_login_log` VALUES ('52', '1', '0:0:0:0:0:0:0:1', '2016-03-01 15:52:44');
INSERT INTO `t_login_log` VALUES ('53', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:01:47');
INSERT INTO `t_login_log` VALUES ('54', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:02:24');
INSERT INTO `t_login_log` VALUES ('55', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:03:22');
INSERT INTO `t_login_log` VALUES ('56', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:03:40');
INSERT INTO `t_login_log` VALUES ('57', '2', '0:0:0:0:0:0:0:1', '2016-03-01 16:03:49');
INSERT INTO `t_login_log` VALUES ('58', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:04:56');
INSERT INTO `t_login_log` VALUES ('59', '2', '0:0:0:0:0:0:0:1', '2016-03-01 16:05:06');
INSERT INTO `t_login_log` VALUES ('60', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:06:43');
INSERT INTO `t_login_log` VALUES ('61', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:06:57');
INSERT INTO `t_login_log` VALUES ('62', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:07:07');
INSERT INTO `t_login_log` VALUES ('63', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:07:27');
INSERT INTO `t_login_log` VALUES ('64', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:08:04');
INSERT INTO `t_login_log` VALUES ('65', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:08:18');
INSERT INTO `t_login_log` VALUES ('66', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:08:28');
INSERT INTO `t_login_log` VALUES ('67', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:08:42');
INSERT INTO `t_login_log` VALUES ('68', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:08:55');
INSERT INTO `t_login_log` VALUES ('69', '15', '0:0:0:0:0:0:0:1', '2016-03-01 16:10:44');
INSERT INTO `t_login_log` VALUES ('70', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:11:34');
INSERT INTO `t_login_log` VALUES ('71', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:12:03');
INSERT INTO `t_login_log` VALUES ('72', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:12:19');
INSERT INTO `t_login_log` VALUES ('73', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:13:03');
INSERT INTO `t_login_log` VALUES ('74', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:14:00');
INSERT INTO `t_login_log` VALUES ('75', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:15:02');
INSERT INTO `t_login_log` VALUES ('76', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:15:46');
INSERT INTO `t_login_log` VALUES ('77', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:16:27');
INSERT INTO `t_login_log` VALUES ('78', '15', '0:0:0:0:0:0:0:1', '2016-03-01 16:17:23');
INSERT INTO `t_login_log` VALUES ('79', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:17:55');
INSERT INTO `t_login_log` VALUES ('80', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:21:45');
INSERT INTO `t_login_log` VALUES ('81', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:22:11');
INSERT INTO `t_login_log` VALUES ('82', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:24:07');
INSERT INTO `t_login_log` VALUES ('83', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:33:25');
INSERT INTO `t_login_log` VALUES ('84', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:39:39');
INSERT INTO `t_login_log` VALUES ('85', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:42:03');
INSERT INTO `t_login_log` VALUES ('86', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:42:58');
INSERT INTO `t_login_log` VALUES ('87', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:44:39');
INSERT INTO `t_login_log` VALUES ('88', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:45:26');
INSERT INTO `t_login_log` VALUES ('89', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:48:28');
INSERT INTO `t_login_log` VALUES ('90', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:49:03');
INSERT INTO `t_login_log` VALUES ('91', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:51:26');
INSERT INTO `t_login_log` VALUES ('92', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:52:22');
INSERT INTO `t_login_log` VALUES ('93', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:53:19');
INSERT INTO `t_login_log` VALUES ('94', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:57:51');
INSERT INTO `t_login_log` VALUES ('95', '1', '0:0:0:0:0:0:0:1', '2016-03-01 16:58:52');
INSERT INTO `t_login_log` VALUES ('96', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:00:17');
INSERT INTO `t_login_log` VALUES ('97', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:06:51');
INSERT INTO `t_login_log` VALUES ('98', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:08:22');
INSERT INTO `t_login_log` VALUES ('99', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:14:22');
INSERT INTO `t_login_log` VALUES ('100', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:14:54');
INSERT INTO `t_login_log` VALUES ('101', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:18:45');
INSERT INTO `t_login_log` VALUES ('102', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:19:17');
INSERT INTO `t_login_log` VALUES ('103', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:24:43');
INSERT INTO `t_login_log` VALUES ('104', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:27:08');
INSERT INTO `t_login_log` VALUES ('105', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:30:43');
INSERT INTO `t_login_log` VALUES ('106', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:54:40');
INSERT INTO `t_login_log` VALUES ('107', '1', '0:0:0:0:0:0:0:1', '2016-03-01 17:56:23');
INSERT INTO `t_login_log` VALUES ('108', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:13:01');
INSERT INTO `t_login_log` VALUES ('109', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:22:47');
INSERT INTO `t_login_log` VALUES ('110', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:23:41');
INSERT INTO `t_login_log` VALUES ('111', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:37:30');
INSERT INTO `t_login_log` VALUES ('112', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:37:40');
INSERT INTO `t_login_log` VALUES ('113', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:39:04');
INSERT INTO `t_login_log` VALUES ('114', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:40:15');
INSERT INTO `t_login_log` VALUES ('115', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:40:37');
INSERT INTO `t_login_log` VALUES ('116', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:44:50');
INSERT INTO `t_login_log` VALUES ('117', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:45:27');
INSERT INTO `t_login_log` VALUES ('118', '1', '0:0:0:0:0:0:0:1', '2016-03-02 09:45:36');
INSERT INTO `t_login_log` VALUES ('119', '17', '0:0:0:0:0:0:0:1', '2016-03-02 09:45:43');
INSERT INTO `t_login_log` VALUES ('120', '17', '192.168.80.87', '2016-03-02 09:50:43');
INSERT INTO `t_login_log` VALUES ('121', '1', '192.168.80.20', '2016-03-02 09:51:27');
INSERT INTO `t_login_log` VALUES ('122', '19', '192.168.80.20', '2016-03-02 09:51:44');
INSERT INTO `t_login_log` VALUES ('123', '1', '192.168.80.20', '2016-03-02 09:52:31');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '575', '123', '2016-03-02 09:52:31', '192.168.80.20');
INSERT INTO `t_user` VALUES ('2', 'yansm', '10', '123', '2016-03-01 16:05:06', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES ('4', 'lixiang', '0', '123', null, null);
INSERT INTO `t_user` VALUES ('5', '2223', '0', '333', null, null);
INSERT INTO `t_user` VALUES ('6', 'liyi', '0', '3333', null, null);
INSERT INTO `t_user` VALUES ('15', 'zzz', '10', '222', '2016-03-01 16:17:23', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES ('17', '周杰伦', '10', '567', '2016-03-02 09:50:43', '192.168.80.87');
INSERT INTO `t_user` VALUES ('19', '李宇春', '5', '123', '2016-03-02 09:51:44', '192.168.80.20');
