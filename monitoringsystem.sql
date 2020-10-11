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

 Date: 11/10/2020 15:10:32
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
  `state` int(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of alarm
-- ----------------------------
BEGIN;
INSERT INTO `alarm` VALUES (1, 1, 1, '2020-06-07 17:27:32', 1, '40.1', 1);
INSERT INTO `alarm` VALUES (2, 2, 2, '2020-06-07 20:30:30', 2, '50', 1);
INSERT INTO `alarm` VALUES (3, 3, 1, '2020-06-07 20:32:09', 2, '50', 1);
INSERT INTO `alarm` VALUES (4, 4, 1, '2020-06-07 20:32:24', 3, '50', 1);
INSERT INTO `alarm` VALUES (5, 5, 1, '2020-06-07 20:32:27', 4, '50', 1);
INSERT INTO `alarm` VALUES (6, 6, 2, '2020-06-07 20:32:30', 2, '50', 1);
INSERT INTO `alarm` VALUES (7, 7, 2, '2020-06-07 20:32:37', 1, '50', 1);
INSERT INTO `alarm` VALUES (8, 8, 2, '2020-06-07 20:32:40', 4, '50', 1);
INSERT INTO `alarm` VALUES (9, 9, 1, '2020-06-07 20:32:42', 5, '50', 1);
INSERT INTO `alarm` VALUES (10, 10, 2, '2020-06-07 20:32:45', 6, '50', 1);
INSERT INTO `alarm` VALUES (11, 11, 2, '2020-06-07 20:32:48', 7, '50', 1);
INSERT INTO `alarm` VALUES (12, 12, 1, '2020-06-07 20:32:50', 3, '70', 1);
INSERT INTO `alarm` VALUES (13, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 1);
INSERT INTO `alarm` VALUES (14, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 1);
INSERT INTO `alarm` VALUES (15, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 1);
INSERT INTO `alarm` VALUES (16, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 1);
INSERT INTO `alarm` VALUES (117, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 1);
INSERT INTO `alarm` VALUES (118, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (119, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (120, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (121, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (122, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (123, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (124, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (125, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (126, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (127, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (128, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (129, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (130, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (131, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (132, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (133, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (134, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (135, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (136, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (137, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (138, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (139, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (140, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (141, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (142, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (143, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (144, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (145, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (146, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (147, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (148, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (149, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (150, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (151, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (152, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (153, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (154, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (155, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (156, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (157, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (158, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (159, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (160, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (161, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (162, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (163, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (164, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (165, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (166, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (167, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (168, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (169, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (170, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (171, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (172, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (173, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (174, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (175, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (176, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (177, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (178, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (179, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (180, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (181, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (182, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (183, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (184, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (185, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (186, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (187, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (188, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
INSERT INTO `alarm` VALUES (189, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 1);
INSERT INTO `alarm` VALUES (190, 36, 3, '2020-08-11 18:55:00', 3, '32.80', 0);
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
INSERT INTO `district` VALUES (5, 5, '兴宁区');
INSERT INTO `district` VALUES (6, 6, '武鸣区');
INSERT INTO `district` VALUES (7, 7, '邕宁区');
COMMIT;

-- ----------------------------
-- Table structure for host
-- ----------------------------
DROP TABLE IF EXISTS `host`;
CREATE TABLE `host` (
  `host_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `district_id` int(64) NOT NULL,
  `admin_id` int(64) NOT NULL,
  `host_state` int(64) NOT NULL,
  `last_alarm_time` datetime DEFAULT NULL,
  PRIMARY KEY (`host_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of host
-- ----------------------------
BEGIN;
INSERT INTO `host` VALUES (1, 1, 1, 1, '2020-06-04 20:41:20');
INSERT INTO `host` VALUES (2, 2, 1, 1, '2020-06-07 10:32:46');
INSERT INTO `host` VALUES (3, 3, 2, 1, '2020-06-07 10:33:20');
INSERT INTO `host` VALUES (4, 4, 1, 1, '2020-06-07 10:33:55');
INSERT INTO `host` VALUES (5, 5, 2, 1, '2020-06-07 10:34:39');
INSERT INTO `host` VALUES (6, 6, 2, 1, '2020-06-07 10:35:03');
INSERT INTO `host` VALUES (7, 7, 2, 1, '2020-06-07 10:35:18');
INSERT INTO `host` VALUES (8, 4, 2, 1, '2020-06-08 21:47:27');
INSERT INTO `host` VALUES (9, 2, 1, 1, '2020-06-08 21:55:15');
INSERT INTO `host` VALUES (10, 4, 2, 1, '2020-06-09 09:48:38');
INSERT INTO `host` VALUES (11, 3, 2, 1, '2020-06-09 10:05:07');
INSERT INTO `host` VALUES (12, 1, 1, 1, '2020-06-15 17:23:57');
INSERT INTO `host` VALUES (13, 1, 1, 1, '2020-09-24 17:01:54');
INSERT INTO `host` VALUES (14, 1, 1, 1, '2020-09-24 17:06:49');
INSERT INTO `host` VALUES (15, 1, 1, 0, '2020-09-26 18:47:00');
INSERT INTO `host` VALUES (33, 2, 1, 0, '2020-09-27 21:04:00');
INSERT INTO `host` VALUES (34, 2, 1, 1, '2020-09-27 21:04:00');
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
  `district_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
BEGIN;
INSERT INTO `message` VALUES (1, 1, '西乡塘区发现电缆故障', '2020-06-04 11:10:34', 1);
INSERT INTO `message` VALUES (2, 2, '兴宁区发现电缆故障', '2020-06-04 11:11:00', 1);
INSERT INTO `message` VALUES (3, 1, '青秀区发现电缆故障', '2020-06-04 11:11:16', 1);
INSERT INTO `message` VALUES (4, 1, '良庆区发现电缆故障', '2020-06-04 11:11:35', 1);
INSERT INTO `message` VALUES (5, 2, '武鸣区今日情况良好', '2020-06-04 11:12:04', 1);
INSERT INTO `message` VALUES (6, 2, '邕宁区发现电缆故障', '2020-06-07 10:35:59', 1);
INSERT INTO `message` VALUES (7, 1, 'test', '2020-09-25 17:46:26', 1);
INSERT INTO `message` VALUES (8, 1, 'test', '2020-09-25 17:47:44', 1);
INSERT INTO `message` VALUES (9, 1, 'test', '2020-09-25 18:03:22', 2);
INSERT INTO `message` VALUES (10, 1, 'test', '2020-09-25 18:07:03', 3);
INSERT INTO `message` VALUES (11, 1, 'ggg', '2020-09-25 18:07:46', 4);
INSERT INTO `message` VALUES (12, 1, 'hahahahah', '2020-09-26 16:25:23', 2);
INSERT INTO `message` VALUES (13, 1, '测试', '2020-09-27 12:14:58', 5);
COMMIT;

-- ----------------------------
-- Table structure for temperature
-- ----------------------------
DROP TABLE IF EXISTS `temperature`;
CREATE TABLE `temperature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `msg_id` int(11) DEFAULT NULL,
  `sensor_id` int(11) DEFAULT NULL,
  `temperature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of temperature
-- ----------------------------
BEGIN;
INSERT INTO `temperature` VALUES (1, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (2, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (3, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (4, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (5, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (6, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (7, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (8, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (9, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (10, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (11, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (12, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (13, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (14, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (15, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (16, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (17, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (18, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (19, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (20, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (21, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (22, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (23, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (24, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (25, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (26, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (27, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (28, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (29, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (30, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (31, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (32, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (33, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (34, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (35, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (36, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (37, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (38, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (39, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (40, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (41, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (42, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (43, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (44, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (45, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (46, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (47, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (48, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (49, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (50, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (51, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (52, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (53, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (54, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (55, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (56, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (57, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (58, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (59, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (60, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (61, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (62, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (63, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (64, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (65, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (66, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (67, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (68, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (69, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (70, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (71, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (72, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (73, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (74, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (75, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (76, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (77, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (78, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (79, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (80, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (81, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (82, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (83, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (84, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (85, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (86, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (87, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (88, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (89, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (90, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (91, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (92, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (93, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (94, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (95, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (96, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (97, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (98, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (99, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (100, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (101, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (102, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (103, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (104, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (105, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (106, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (107, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (108, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (109, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (110, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (111, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (112, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (113, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (114, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (115, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (116, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (117, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (118, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (119, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (120, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (121, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (122, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (123, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (124, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (125, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (126, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (127, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (128, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (129, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (130, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (131, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (132, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (133, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (134, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (135, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (136, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (137, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (138, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (139, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (140, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (141, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (142, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (143, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (144, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (145, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (146, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (147, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (148, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (149, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (150, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (151, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (152, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (153, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (154, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (155, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (156, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (157, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (158, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (159, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (160, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (161, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (162, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (163, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (164, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (165, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (166, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (167, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (168, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (169, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (170, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (171, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (172, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (173, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (174, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (175, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (176, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (177, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (178, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (179, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (180, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (181, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (182, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (183, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (184, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (185, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (186, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (187, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (188, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (189, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (190, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (191, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (192, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (193, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (194, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (195, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (196, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (197, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (198, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (199, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (200, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (201, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (202, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (203, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (204, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (205, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (206, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (207, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (208, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (209, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (210, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (211, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (212, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (213, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (214, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (215, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (216, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (217, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (218, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (219, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (220, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (221, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (222, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (223, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (224, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (225, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (226, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (227, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (228, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (229, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (230, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (231, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (232, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (233, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (234, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (235, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (236, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (237, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (238, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (239, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (240, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (241, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (242, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (243, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (244, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (245, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (246, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (247, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (248, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (249, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (250, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (251, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (252, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (253, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (254, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (255, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (256, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (257, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (258, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (259, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (260, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (261, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (262, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (263, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (264, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (265, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (266, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (267, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (268, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (269, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (270, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (271, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (272, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (273, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (274, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (275, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (276, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (277, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (278, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (279, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (280, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (281, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (282, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (283, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (284, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (285, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (286, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (287, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (288, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (289, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (290, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (291, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (292, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (293, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (294, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (295, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (296, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (297, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (298, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (299, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (300, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (301, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (302, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (303, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (304, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (305, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (306, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (307, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (308, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (309, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (310, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (311, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (312, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (313, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (314, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (315, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (316, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (317, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (318, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (319, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (320, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (321, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (322, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (323, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (324, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (325, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (326, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (327, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (328, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (329, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (330, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (331, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (332, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (333, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (334, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (335, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (336, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (337, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (338, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (339, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (340, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (341, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (342, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (343, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (344, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (345, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (346, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (347, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (348, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (349, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (350, '2020-08-11 18:55:00', 36, 3, '32.80');
INSERT INTO `temperature` VALUES (351, '2020-08-11 18:55:00', 36, 3, '32.80');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin1', '123456', 'PH7', '321@qq.com', '54321', 1);
INSERT INTO `user` VALUES (2, 'admin2', '123456', 'JayChou', '123@163.com', '123456', 1);
INSERT INTO `user` VALUES (3, 'admin3', '123456', 'AmyLee', '123@outlook.com', '1212121', 1);
INSERT INTO `user` VALUES (4, 'user1', '123456', 'LeoPang', '123@google.com', '123123', 2);
INSERT INTO `user` VALUES (5, 'user2', '123456', 'WinYoung', '123@126.com', '12345', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
