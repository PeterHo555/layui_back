/*
 Navicat Premium Data Transfer

 Source Server         : PeterHo
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : monitoringsystem

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 12/09/2020 16:56:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alarm
-- ----------------------------
DROP TABLE IF EXISTS `alarm`;
CREATE TABLE `alarm` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `alarm_id` int(64) DEFAULT NULL,
  `host_id` int(64) DEFAULT NULL,
  `alarm_time` datetime DEFAULT NULL,
  `district_id` int(64) DEFAULT NULL,
  `temperature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of alarm
-- ----------------------------
BEGIN;
INSERT INTO `alarm` VALUES (1, 1, 1, '2020-06-07 17:27:32', 1, '40.1');
INSERT INTO `alarm` VALUES (2, 2, 2, '2020-06-07 20:30:30', 2, '50');
INSERT INTO `alarm` VALUES (3, 3, 1, '2020-06-07 20:32:09', 2, '50');
INSERT INTO `alarm` VALUES (4, 4, 1, '2020-06-07 20:32:24', 3, '50');
INSERT INTO `alarm` VALUES (5, 5, 1, '2020-06-07 20:32:27', 4, '50');
INSERT INTO `alarm` VALUES (6, 6, 2, '2020-06-07 20:32:30', 2, '50');
INSERT INTO `alarm` VALUES (7, 7, 2, '2020-06-07 20:32:37', 1, '50');
INSERT INTO `alarm` VALUES (8, 8, 2, '2020-06-07 20:32:40', 4, '50');
INSERT INTO `alarm` VALUES (9, 9, 1, '2020-06-07 20:32:42', 5, '50');
INSERT INTO `alarm` VALUES (10, 10, 2, '2020-06-07 20:32:45', 6, '50');
INSERT INTO `alarm` VALUES (11, 11, 2, '2020-06-07 20:32:48', 7, '50');
INSERT INTO `alarm` VALUES (12, 12, 1, '2020-06-07 20:32:50', 3, '70');
COMMIT;

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `district_id` int(64) NOT NULL,
  `district_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of district
-- ----------------------------
BEGIN;
INSERT INTO `district` VALUES (1, 1, '西乡塘区');
INSERT INTO `district` VALUES (2, 2, '良庆区');
INSERT INTO `district` VALUES (3, 3, '江南区');
INSERT INTO `district` VALUES (4, 4, '青秀区');
INSERT INTO `district` VALUES (5, 5, '邕宁区');
INSERT INTO `district` VALUES (6, 6, '武鸣区');
INSERT INTO `district` VALUES (7, 7, '兴宁区');
COMMIT;

-- ----------------------------
-- Table structure for host
-- ----------------------------
DROP TABLE IF EXISTS `host`;
CREATE TABLE `host` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `host_id` int(64) NOT NULL,
  `district_id` int(64) NOT NULL,
  `admin_id` int(64) NOT NULL,
  `host_state` int(64) NOT NULL,
  `last_alarm_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of host
-- ----------------------------
BEGIN;
INSERT INTO `host` VALUES (1, 1, 1, 1, 1, '2020-06-04 20:41:20');
INSERT INTO `host` VALUES (2, 2, 2, 1, 1, '2020-06-07 10:32:46');
INSERT INTO `host` VALUES (3, 3, 3, 1, 1, '2020-06-07 10:33:20');
INSERT INTO `host` VALUES (4, 4, 4, 1, 1, '2020-06-07 10:33:55');
INSERT INTO `host` VALUES (5, 5, 5, 2, 1, '2020-06-07 10:34:39');
INSERT INTO `host` VALUES (6, 6, 6, 2, 1, '2020-06-07 10:35:03');
INSERT INTO `host` VALUES (7, 7, 7, 2, 0, '2020-06-07 10:35:18');
INSERT INTO `host` VALUES (8, 8, 4, 2, 1, '2020-06-08 21:47:27');
INSERT INTO `host` VALUES (9, 9, 2, 1, 1, '2020-06-08 21:55:15');
INSERT INTO `host` VALUES (10, 10, 4, 2, 1, '2020-06-09 09:48:38');
INSERT INTO `host` VALUES (11, 11, 3, 2, 1, '2020-06-09 10:05:07');
INSERT INTO `host` VALUES (12, 12, 1, 1, 1, '2020-06-15 17:23:57');
COMMIT;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `user_id` int(64) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
BEGIN;
INSERT INTO `message` VALUES (1, 1, '西乡塘区发现电缆故障', '2020-06-04 11:10:34');
INSERT INTO `message` VALUES (2, 2, '兴宁区发现电缆故障', '2020-06-04 11:11:00');
INSERT INTO `message` VALUES (3, 1, '青秀区发现电缆故障', '2020-06-04 11:11:16');
INSERT INTO `message` VALUES (4, 1, '良庆区发现电缆故障', '2020-06-04 11:11:35');
INSERT INTO `message` VALUES (5, 2, '武鸣区今日情况良好', '2020-06-04 11:12:04');
INSERT INTO `message` VALUES (6, 2, '邕宁区发现电缆故障', '2020-06-07 10:35:59');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_type` int(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin1', '123456', 'PeterHo', '123', '123', 2);
INSERT INTO `user` VALUES (2, 'admin2', '123456', 'JayChou', '123@163.com', '123456', 1);
INSERT INTO `user` VALUES (3, 'admin3', '123456', 'AmyLee', '123@outlook.com', '1212121', 1);
INSERT INTO `user` VALUES (4, 'user1', '123456', 'LeoPang', '123@google.com', '123123', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
