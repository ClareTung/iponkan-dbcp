/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 50715
 Source Host           : localhost:3306
 Source Schema         : iponkan_dbcp

 Target Server Type    : MySQL
 Target Server Version : 50715
 File Encoding         : 65001

 Date: 01/09/2020 17:15:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('d14f8eec-ec1a-11ea-98de-00ffc575', '20200901000001', '单据1', NULL);
INSERT INTO `order` VALUES ('d14f8eec-ec1a-11ea-98de-1234567', '20200901000003', '单据3', NULL);
INSERT INTO `order` VALUES ('d14f8eec-ec1a-11ea-98de-sdfafdd', '20200901000002', '单据2', NULL);

SET FOREIGN_KEY_CHECKS = 1;
