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

 Date: 22/09/2020 11:16:29
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
