/*
 Navicat Premium Data Transfer

 Source Server         : 101.34.255.125_13306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : 101.34.255.125:13306
 Source Schema         : jeecg-boot2

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 27/05/2022 21:50:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client_log
-- ----------------------------
DROP TABLE IF EXISTS `client_log`;
CREATE TABLE `client_log`  (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of client_log
-- ----------------------------
INSERT INTO `client_log` VALUES (2, 'test', 'test', '2022-05-08 18:39:36', 'Critical');
INSERT INTO `client_log` VALUES (4, 'AI', 'AI-test', '2022-05-08 18:41:51', 'Critical');
INSERT INTO `client_log` VALUES (5, 'AI', 'AI-test', '2022-05-08 18:46:28', 'Critical');
INSERT INTO `client_log` VALUES (6, 'AI', 'AI-test', '2022-05-08 19:19:40', 'Critical');
INSERT INTO `client_log` VALUES (7, 'AI_APP_Client', 'detectPic', '2022-05-08 19:19:52', 'Info');
INSERT INTO `client_log` VALUES (8, 'AI_APP_Client', 'detectPic', '2022-05-08 19:40:39', 'Info');
INSERT INTO `client_log` VALUES (9, 'AI_APP_Client', 'detectPic', '2022-05-08 19:41:00', 'Info');
INSERT INTO `client_log` VALUES (10, 'AI_APP_Client', 'detectPic', '2022-05-08 19:43:41', 'Info');
INSERT INTO `client_log` VALUES (11, 'AI_APP_Client', 'detectPic', '2022-05-08 19:47:57', 'Info');
INSERT INTO `client_log` VALUES (12, 'AI_APP_Client,AI_APP_Client', 'detectPic,detectPic', '2022-05-08 19:50:21', 'Info');
INSERT INTO `client_log` VALUES (13, 'AI_APP_Client,AI_APP_Client', 'detectPic Start,detectPic Start', '2022-05-08 19:53:46', 'Info');
INSERT INTO `client_log` VALUES (14, 'AI_APP_Client', 'detectPic Start', '2022-05-08 19:55:26', 'Info');
INSERT INTO `client_log` VALUES (15, 'AI_APP_Client', 'detectPic Start', '2022-05-08 19:55:46', 'Info');
INSERT INTO `client_log` VALUES (16, 'AI_APP_Client', 'detectPic Start', '2022-05-08 19:57:05', 'Info');
INSERT INTO `client_log` VALUES (17, 'AI_APP_Client', 'detectPic Start', '2022-05-08 20:06:39', 'Warning');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('4', 'test', 'test', 'test', 'test', '2022-05-07 19:08:33', 'Warning');
INSERT INTO `log` VALUES ('5', 'test', 'test', 'test', 'test', '2022-05-07 19:08:41', 'Error');
INSERT INTO `log` VALUES ('6', 'test', 'test', 'test', 'test', '2022-05-07 19:08:49', 'Critical');
INSERT INTO `log` VALUES ('7', 'test', 'test', 'test', 'test', '2022-05-07 21:57:59', 'Critical');

-- ----------------------------
-- Table structure for oss_file
-- ----------------------------
DROP TABLE IF EXISTS `oss_file`;
CREATE TABLE `oss_file`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件地址',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Oss File' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oss_file
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `SCHED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('quartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('MyScheduler', 'COMPUTER1635398117230', 1635398217722, 10000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `INT_PROP_1` int(11) NULL DEFAULT NULL,
  `INT_PROP_2` int(11) NULL DEFAULT NULL,
  `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
  `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) NULL DEFAULT NULL,
  `PRIORITY` int(11) NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint(6) NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `JOB_NAME` `JOB_GROUP`' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for rep_demo_dxtj
-- ----------------------------
DROP TABLE IF EXISTS `rep_demo_dxtj`;
CREATE TABLE `rep_demo_dxtj`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `gtime` datetime(0) NULL DEFAULT NULL COMMENT '雇佣日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职务',
  `jphone` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家庭电话',
  `birth` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `hukou` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '户口所在地',
  `laddress` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `jperson` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '紧急联系人',
  `sex` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'xingbie',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rep_demo_dxtj
-- ----------------------------
INSERT INTO `rep_demo_dxtj` VALUES ('1338808084247613441', '张三', '2019-11-06 00:00:00', '1', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809169074982920', '张小哲', '2019-11-06 00:00:00', '2', '18034596971', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809448658898952', '闫妮', '2019-11-06 00:00:00', '2', '18034596972', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809620973490184', '陌生', '2019-11-06 00:00:00', '2', '18034596973', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809652606930952', '贺江', '2019-11-06 00:00:00', '2', '18034596974', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '2');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809685200867336', '村子明', '2019-11-06 00:00:00', '3', '18034596975', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '2');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809710203113481', '尚德', '2019-11-06 00:00:00', '4', '18034596977', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809749470187528', '郑恺', '2019-11-06 00:00:00', '4', '18034596978', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809774971555849', '未名园', '2019-11-06 00:00:00', '4', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809805199904777', '韩寒', '2019-11-06 00:00:00', '5', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809830017601544', '迪丽热拉', '2019-11-06 00:00:00', '6', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1338809864356368393', '张一山', '2019-11-06 00:00:00', '6', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157602480137', '张三', '2019-11-06 00:00:00', '1', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157602480146', '张大大', '2019-11-06 00:00:00', '2', '18034596971', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674439', '郭美美', '2019-11-06 00:00:00', '2', '18034596972', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674448', '莫愁', '2019-11-06 00:00:00', '2', '18034596973', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674457', '鲁与', '2019-11-06 00:00:00', '2', '18034596974', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '2');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674466', '高尚', '2019-11-06 00:00:00', '3', '18034596975', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '2');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674475', '尚北京', '2019-11-06 00:00:00', '4', '18034596977', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674484', '杨颖花', '2019-11-06 00:00:00', '4', '18034596978', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674493', '李丽', '2019-11-06 00:00:00', '4', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674502', '韩露露', '2019-11-06 00:00:00', '5', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674511', '李凯泽', '2019-11-06 00:00:00', '6', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');
INSERT INTO `rep_demo_dxtj` VALUES ('1339160157606674520', '王明阳', '2019-11-06 00:00:00', '6', '18034596970', '1988-12-15 00:00:00', '北京市朝阳区奥运村街道亚运村小区', '18034596972', '王亮', '1');

-- ----------------------------
-- Table structure for rep_demo_employee
-- ----------------------------
DROP TABLE IF EXISTS `rep_demo_employee`;
CREATE TABLE `rep_demo_employee`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `nation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `political` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `native_place` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `height` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身高',
  `weight` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '体重',
  `health` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康状况',
  `id_card` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `education` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `school` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `major` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Email',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `foreign_language` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外语语种',
  `foreign_language_level` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外语水平',
  `computer_level` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计算机水平',
  `graduation_time` datetime(0) NULL DEFAULT NULL COMMENT '毕业时间',
  `arrival_time` datetime(0) NULL DEFAULT NULL COMMENT '到职时间',
  `positional_titles` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `education_experience` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '教育经历',
  `work_experience` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '工作经历',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除标识0-正常,1-已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rep_demo_employee
-- ----------------------------
INSERT INTO `rep_demo_employee` VALUES ('1', '001', '张三', '男', '2000-02-04 13:36:19', '汉族', '团员', '北京', '170', '65', '良好', '110101200002044853', '大专', '北京科技', '计算机', '北京朝阳区', '1001', 'zhang@163.com', '18011111111', '英语', '三级', '三级', '2019-02-04 13:41:17', '2020-02-04 13:41:31', '项目经理', '2018年9月—2019年7月：北京语言文化大学比较文学研究所攻读博士学位，获得比较文学博士学位', '2019年5月---至今 XX公司     网络系统工程师  \n2019年5月---至今 XX公司     网络系统工程师', NULL, '2020-02-04 15:18:03', NULL, NULL, NULL);
INSERT INTO `rep_demo_employee` VALUES ('2', '002', '王红', '女', '2000-02-04 13:36:19', '汉族', '团员', '北京', '170', '65', '良好', '110101200002044853', '大专', '北京科技', '计算机', '北京朝阳区', '1001', 'zhang@163.com', '18011111111', '英语', '三级', '三级', '2019-02-04 13:41:17', '2020-02-04 13:41:31', '项目经理', '2018年9月—2019年7月：北京语言文化大学比较文学研究所攻读博士学位，获得比较文学博士学位', '2019年5月---至今 XX公司     网络系统工程师  \n2019年5月---至今 XX公司     网络系统工程师', NULL, '2020-02-04 18:39:27', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rep_demo_gongsi
-- ----------------------------
DROP TABLE IF EXISTS `rep_demo_gongsi`;
CREATE TABLE `rep_demo_gongsi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货品名称',
  `gdata` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '返利',
  `tdata` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `didian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rep_demo_gongsi
-- ----------------------------
INSERT INTO `rep_demo_gongsi` VALUES (1, '北京天山海世界', '2020-02-30 11:12:25', '2020-02-25', '天山大厦', '1', '2399845661');
INSERT INTO `rep_demo_gongsi` VALUES (2, 'dd天山海世界', '2020-02-30 11:12:25', '2020-02-25', '天山大厦', '1', '2399845661');

-- ----------------------------
-- Table structure for rep_demo_jianpiao
-- ----------------------------
DROP TABLE IF EXISTS `rep_demo_jianpiao`;
CREATE TABLE `rep_demo_jianpiao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bnum` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ftime` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sfkong` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kaishi` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jieshu` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hezairen` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jpnum` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shihelv` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rep_demo_jianpiao
-- ----------------------------
INSERT INTO `rep_demo_jianpiao` VALUES (1, 'K7725', '21:13', '否', '秦皇岛', '邯郸', '300', '258', '86', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (2, 'k99', '16:55', '否', '包头', '广州', '800', '700', '88', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (3, 'G6737', '05:34', '否', '北京西', '邯郸东', '500', '256', '51', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (4, 'K7705', '07:03', '否', '北京', '邯郸', '400', '200', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (5, 'G437', '06:27', '否', '北京西', '兰州西', '800', '586', '73', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (6, 'G673', '06:32', '否', '北京西', '邯郸东', '300', '289', '87', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (7, 'G507', '06:43', '否', '北京西', '邯郸东', '300', '200', '67', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (8, 'G89', '06:53', '否', '北京西', '成都东', '800', '500', '62', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (9, 'K7712', '09:43', '否', '北京西', '西安北', '400', '200', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (10, 'G405', '10:05', '否', '北京西', '昆明南', '300', '200', '67', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (11, 'G6701', '10:38', '否', '北京西', '石家庄', '300', '200', '67', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (12, 'G487', '10:52', '否', '北京西', '南昌西', '800', '700', '88', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (13, 'G607', '11:14', '否', '北京西', '太原南', '400', '200', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (14, 'G667', '11:19', '否', '北京西', '西安北', '400', '200', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (15, 'Z49', '11:28', '否', '北京西', '成都', '400', '200', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (16, 'Z49', '11:28', '否', '北京西', '上海', '300', '200', '80', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (17, 'Z49', '11:56', '否', '北京西', '上海', '200', '180', '95', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (18, 'Z49', '11:36', '否', '北京南', '大晒', '200', '180', '96', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (19, 'Z123', '12:00', '否', '北京南', '重庆', '1000', '1000', '100', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (20, 'G78', '13:56', '否', '北京东', '厦门北', '800', '700', '90', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (21, 'G56', '18:36', '否', '上海西', '深圳', '800', '700', '90', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (22, 'H78', '12:00', '否', '上海', '北京西', '800', '700', '90', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (23, 'H78', '12:00', '否', '上海', '北京西', '800', '700', '90', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (24, 'H78', '12:00', '否', '上海', '北京西', '800', '700', '90', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (25, 'H78', '12:00', '否', '北京西', '南昌', '800', '700', '90', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (26, 'G70', '7:23', '是', '北京西', '厦门', '500', '450', '95', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (27, 'G14', '9:50', '是', '北京西', '上海', '800', '700', '95', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (28, 'G90', '8:30', '是', '北京南', '武昌', '1000', '1000', '100', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (29, 'G25', '7:56', '是', '厦门北', '福州', '500', '100', '20', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (30, 'G50', '14:23', '否', '北京西', '深圳', '500', '100', '20', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (31, 'G10', '13:00', '否', '北京西', '深圳', '500', '100', '20', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (32, 'G10', '13:00', '否', '北京西', '深圳', '500', '100', '20', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (33, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (34, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (35, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (36, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (37, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (38, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (39, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (40, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (41, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (42, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (43, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (44, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (45, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (46, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (47, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (48, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (49, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (50, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (51, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (52, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (53, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (54, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (55, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (56, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (57, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (58, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (59, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (60, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (61, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (62, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (63, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (64, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (65, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (66, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (67, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (68, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (69, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (70, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (71, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (72, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (73, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (74, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (75, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (76, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (77, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (78, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (79, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (80, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (81, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (82, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (83, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (84, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (85, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);
INSERT INTO `rep_demo_jianpiao` VALUES (86, 'G10', '13:00', '否', '北京西', '深圳', '200', '100', '50', 1);

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement`;
CREATE TABLE `sys_announcement`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `msg_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime(0) NULL DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `user_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '指定用户',
  `msg_abstract` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '摘要',
  `dt_task_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '钉钉task_id，用于撤回消息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统通告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_announcement
-- ----------------------------
INSERT INTO `sys_announcement` VALUES ('1256486502931722242', 'JeecgBoot 2.2.0版本发布', '<h5 id=\"h5_5\" style=\"box-sizing: inherit; font-family: \'PingFang SC\', \'Helvetica Neue\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', Sathu, EucrosiaUPC, Arial, Helvetica, sans-serif; line-height: 1.8; margin: 22px 0px 16px; padding: 0px; font-size: 18px; border: none; color: #333333; background-color: #ffffff;\">升级不兼容</h5>\n<ul style=\"box-sizing: inherit; margin: 0px 0px 20px; padding: 0px 0px 0px 20px; color: #333333; font-family: -apple-system, BlinkMacSystemFont, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-top: 0px;\">1、升级 ant-design-vue 到最新版本 1.5.2，会导致使用disabled的组件不可用（需要全局替换disabled 为readOnly；另外原来readOnly不允许全小写）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">2、JSearchSelectTag.vue行编辑的popup传参做了修改，需要全局替换 orgFieldse 为 orgFields</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">3、 项目删除了sass，全部换成 less，其中涉及/deep/语法得改造</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-bottom: 0px;\">4、 Online表单的填值规则用法修改了&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" href=\"http://doc.jeecg.com/1630378\">文档</a></li>\n</ul>\n<h5 id=\"h5_6\" style=\"box-sizing: inherit; font-family: \'PingFang SC\', \'Helvetica Neue\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', Sathu, EucrosiaUPC, Arial, Helvetica, sans-serif; line-height: 1.8; margin: 22px 0px 16px; padding: 0px; font-size: 18px; border: none; color: #333333; background-color: #ffffff;\">较大改造</h5>\n<ul style=\"box-sizing: inherit; margin: 0px 0px 20px; padding: 0px 0px 0px 20px; color: #333333; font-family: -apple-system, BlinkMacSystemFont, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-top: 0px;\">登录的时候一次性加载系统字典，进行前端缓存，减少ajax重复请求</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">修改定时任务quartz配置</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">logback-spring.xml配置不按照日期和大小生成新日志文件问题修复</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">vue-cli3 编译打包进行zip压缩优化</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">根据index.html页面window._CONFIG[\'domianURL\']，指定 axios的 baseURL（所以vue的代理没有用了）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JEditableTable重构，新增获取值时应该把临时id去掉、行编辑修改不直接更改数据源的ID</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-bottom: 0px;\">Online模块重点优化升级、Online代码生成器重点优化升级</li>\n</ul>\n<h5 id=\"h5_7\" style=\"box-sizing: inherit; font-family: \'PingFang SC\', \'Helvetica Neue\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', Sathu, EucrosiaUPC, Arial, Helvetica, sans-serif; line-height: 1.8; margin: 22px 0px 16px; padding: 0px; font-size: 18px; border: none; color: #333333; background-color: #ffffff;\">ONLINE升级</h5>\n<ul style=\"box-sizing: inherit; margin: 0px 0px 20px; padding: 0px 0px 0px 20px; color: #333333; font-family: -apple-system, BlinkMacSystemFont, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-top: 0px;\">Online访问权限控制实现，如果online表单配置了菜单，则用户需要授权才能访问此表单</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单新增组件： 省市区地域组件、开关组件、三级联动(级联下拉)组件、markdown组件</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单弹窗宽度，根据不同的列数显示不同的宽度，实现更好的效果</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 树表单功能一系列优化，比如数据列新增添加下级按钮功能、添加下级不自动展开列表等问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online JS增强编辑器支持放大，同时JS代码变更，增加版本记忆功能，方便追踪历史</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online JS增强支持lodash工具</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online控件 默认值表达式功能&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" href=\"http://doc.jeecg.com/1630378\">文档</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 增加Excel导入导出转换器配置，针对各种控件的导入导出做了统一处理</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 列表字段排序支持配置</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online同步数据库，数据库兼容性优化（mysql、oracle11g、SqlServer2017）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online功能列表，高级查询优化，丰富控件的支持（新增：用户选择、部门选择、时间等）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单配置，类型Text、date、Blob的字段长度默认设置为0</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online自定义button，支持位置自定义（支持右侧和下方）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单列表，列表显示那些字段，支持用户个性化设置</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单删除和移除逻辑优化，防止未同步情况下删除报错</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online上传逻辑重构，针对单表、一对多行操作，都支持图片和文件上传，同时支持三种模式（minio、阿里云、本地存储）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online上传逻辑重构， 行编辑模式，支持图片顺序修改</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online上传逻辑重构，在列表页面支持图片和文件的展示</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单索引同步逻辑重构，同时支持选择多个字段，组合索引设置</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单 excel导出实现数据权限逻辑</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单列表强制列不换行，自动出现超出滚定条，支持移动端自适应（单表、树和ERP等模型都已修改）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单管理列表，回车查询和列表左右拖动移动自适应问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单附表序号必填</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表名加校验不能全是数字，自动trim空格</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 一对多tab必填校验不通过，添加友好提醒</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单控件默认值示例</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online一对多内嵌子表风格，高级查询不好用，过滤不了数据处理</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单 自定义校验规则正则，录入不成功问题处理</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单设置不分页，排序后又分页了问题处理</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单，下拉搜索组件，表字典配置加条件，下拉值出不来问题处理</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单，一对一子表，下拉选择、时间等组件被遮挡问题处理</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online表单树模型和一对多ERP模板支持href</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 报表支持上下文变量表达式</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 报表实现数据权限逻辑</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 报表新增拖动字段顺序</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 报表列表，sql过长截取显示</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">Online 报表，popup回车查询</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-bottom: 0px;\">Online表单auto页面弹窗改成JModule；online表单移动自适应；</li>\n</ul>\n<h5 id=\"h5_8\" style=\"box-sizing: inherit; font-family: \'PingFang SC\', \'Helvetica Neue\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', Sathu, EucrosiaUPC, Arial, Helvetica, sans-serif; line-height: 1.8; margin: 22px 0px 16px; padding: 0px; font-size: 18px; border: none; color: #333333; background-color: #ffffff;\">Online代码生成器升级</h5>\n<blockquote style=\"box-sizing: inherit; position: relative; margin: 0px 0px 20px; padding: 20px; background-color: #f6f6f6; border-left: 6px solid #e6e6e6; word-break: break-word; color: #333333; font-family: -apple-system, BlinkMacSystemFont, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">\n<p style=\"box-sizing: inherit; margin: 0px; line-height: inherit;\">后期重点维护ONLINE模式的代码生成器，GUI模式逐步弃用。</p>\n</blockquote>\n<ul style=\"box-sizing: inherit; margin: 0px 0px 20px; padding: 0px 0px 0px 20px; color: #333333; font-family: -apple-system, BlinkMacSystemFont, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-top: 0px;\">新增内嵌Table代码生成器模板</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">升级代码生成器依赖，支持返回生成结果&amp;支持服务器端生成代码config</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">代码生成器列表，列表自适应优化，支持移动效果（强制列不换行，不过有弊端，<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" href=\"http://doc.jeecg.com/1607183\">见文档</a>）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">实体生成，自动带着swagger 注解（支持单表、一对多等模型）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">代码生成器，列表移动自适应样式修改</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">生成后的代码导入导出bug修复</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online树代码生成器模板，直接删除一级分类会导致列表乱</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">ERP代码生成器模板升级，子表支持导入导出</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">ERP风格代码生成器模板问题（导入导入路径错误、swagger注解问题）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">代码生成器，校验为空的话不生成，简化生成的代码</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">代码生成器，支持子表校验生成</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">树形列表代码生成器优化，添加子节点</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">修复bug： online字典未配置，代码生成器报错问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">生成的实体字段excel注解，针对系统标准字段，创建人、创建时间等字段不生成</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">生成的表单弹窗统一更换为j-modal，支持放大缩小全屏</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">代码生成，popup参数大小写 驼峰问题修复</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">生成的表单控件类型更丰富，新支持控件：markdown、省市区地域、密码、下拉搜索</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-bottom: 0px;\">生成的列表查询区域，控件支持加强，新支持控件：省市区地域、下拉搜索、popup、选择用户、选择部门</li>\n</ul>\n<h5 id=\"h5_9\" style=\"box-sizing: inherit; font-family: \'PingFang SC\', \'Helvetica Neue\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', Sathu, EucrosiaUPC, Arial, Helvetica, sans-serif; line-height: 1.8; margin: 22px 0px 16px; padding: 0px; font-size: 18px; border: none; color: #333333; background-color: #ffffff;\">平台基础升级</h5>\n<ul style=\"box-sizing: inherit; margin: 0px 0px 20px; padding: 0px 0px 0px 20px; color: #333333; font-family: -apple-system, BlinkMacSystemFont, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-top: 0px;\">针对auto隐藏路由菜单，实现自动授权，简化online菜单的授权</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">IDE中找不到sun.misc.BASE64Encoder jar包问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">删掉作废获取所有用户角色列表接口，接口有性能问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">在我的消息里点击已读以后，首页上面的通知红点并没有同步更改问题修复</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">用户与部门取消关联删除关联关系bug修改</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">部门导入未刷新redis缓存</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">修复SysPermissionMapper.xml 的SQL语句不兼容SQLServer的问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">在线动态数据源代码重构</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">【二级管理员】部门修改、删除权限时关联删除部门角色数据</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">【二级管理员】我的部门，选中部门只能看当前部门下的角色</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">我的消息支持模糊查询</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">常用示例-对象存储文件上传优化</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">用户相关功能，sql写法不兼容其他数据库问题修复</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">图片上传组件修改</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">导入功能优化，提示准确导入成功失败信息，涉及功能 用户、角色、部门、字典、定时任务等</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">增加生产环境禁用swagger-ui配置</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">第三方登录代码集成</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">系统公告优化</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">MockController 返回json数据，utf-8格式化，防止中文乱码</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">部门删除后删除部门角色等关联</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-bottom: 0px;\">分类字典支持选择数据，添加下级分类</li>\n</ul>\n<h5 id=\"h5_10\" style=\"box-sizing: inherit; font-family: \'PingFang SC\', \'Helvetica Neue\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', Sathu, EucrosiaUPC, Arial, Helvetica, sans-serif; line-height: 1.8; margin: 22px 0px 16px; padding: 0px; font-size: 18px; border: none; color: #333333; background-color: #ffffff;\">UI组件升级</h5>\n<ul style=\"box-sizing: inherit; margin: 0px 0px 20px; padding: 0px 0px 0px 20px; color: #333333; font-family: -apple-system, BlinkMacSystemFont, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-top: 0px;\">升级 ant-design-vue 为最新版本 1.5.2</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">登录验证码获取失败的时候，不显示空白</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">升级 ant-design-vue，JModal切换全屏按钮因ant升级错位问题修复</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">简化 j-modal 的相关代码</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">封装常用组件示例；JInput新增当 type 变化的时候重新计算值</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">markdown集成</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">富文本支持minio上传</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">选择用户组件列表样式错位；Ellipsis.vue 优化</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JModal移动端全屏效果</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">高级查询只有在 in 模式下才能多选</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">自定义选择用户组件JSelectMultiUser的宽度和截取显示长度</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">行编辑 JEditableTable移动自适应效果；</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JEditableTable重构 行编辑新增合计功能</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JEditableTable重构 行编辑Popup请求数量过多（加缓存机制）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JEditableTable重构,行编辑InputNumber扩展支持输入小数和负数</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JEditableTable.vue disable模式禁用添加删除按钮</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JEditableTable行编辑， popup返回值，时间赋值有问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JEditableTable行编辑，日期控件显示错位问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">高级查询移动自适应效果；</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">高级查询保存的同时也要保存匹配方式（支持and or）</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">高级查询混入统一修改</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">高级查询选择用户组件时，点开用户弹框不选择用户，直接关掉用户弹框，再次点击弹框时，无法点开问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">高级查询组件支持，新支持组件，选择人、选择部门、popup、时间等</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JPopup支持多选</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JPopup返回值null问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JPopup列表数据不刷新问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JSearchSelectTag.vue匹配不上数字值问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JSelectUserByDep 根据部门选择人组件bug</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">JTreeDict.vue 分类字典组件 清空不了问题</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">常用示例，新增搜索下拉 JSearchSelectTag.vue例子</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">常用示例，新增如何关闭当前页面例子</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">常用示例，省市区三级联动的例子</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">常用示例，增加字典下拉多选组件示例</li>\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-bottom: 0px;\">示例demo，关于图片的做统一优化</li>\n</ul>\n<h5 id=\"h5_11\" style=\"box-sizing: inherit; font-family: \'PingFang SC\', \'Helvetica Neue\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', Sathu, EucrosiaUPC, Arial, Helvetica, sans-serif; line-height: 1.8; margin: 22px 0px 16px; padding: 0px; font-size: 18px; border: none; color: #333333; background-color: #ffffff;\">Issues处理</h5>\n<ul style=\"box-sizing: inherit; margin: 0px 0px 20px; padding: 0px 0px 0px 20px; color: #333333; font-family: -apple-system, BlinkMacSystemFont, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-top: 0px;\">online form表单项能否支持配置有级联关系的内容&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#948\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/948\">#948</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">全局拦截异常错误的提醒文字&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#768\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/768\">#768</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">建议：城市级联选择组件&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#905\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/905\">#905</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">表单配置中检验字段配置href，报表中该配置字段无法看到链接&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#961\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/961\">#961</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">SysUserMapper.xml查询脚本数据兼容问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#962\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/962\">#962</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">在线表单 提示 ButtonExpHandler is not defined&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#957\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/957\">#957</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online表单中添加自定义按钮无法显示&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#973\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/973\">#973</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online报表不支持按照登录用户过滤数据&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#934\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/934\">#934</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">点击新增或者编辑按钮弹框宽度的设置问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#974\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/974\">#974</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online报表配置中使用系统参数，报错&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"I1AWNM\" href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1AWNM\">I1AWNM</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online增强SQL变量取数为null,#{sys.sys_date} 还有#{sys.sys_time}&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#999\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/999\">#999</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">一个主表，多个付表。1对多。保存后，某些从表行项目内容保存成功，单重新打开数据表现丢失。&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#997\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/997\">#997</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">/online/cgform/api/exportXls/{code}接口问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1012\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1012\">#1012</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">打成jar包，访问不到代码生成器模板&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1010\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1010\">#1010</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online表单开发，打包后模板找不到&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#865\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/865\">#865</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">已生成的代码，子表最下下行添加合计行底部固定问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#936\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/936\">#936</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">下拉搜索框在编辑时下拉name无法带过来&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#971\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/971\">#971</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">建议autoPoi升级，优化数据返回List Map格式下的复合表头导出excel的体验&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#873\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/873\">#873</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">配置 Href 跳转，并没有显示为超链接&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1020\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1020\">#1020</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">首次打开一对多表单，JEditableTable的addDefaultRowNum属性不生效&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1003\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1003\">#1003</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">autopoi 双表头问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#862\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/862\">#862</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">应该是权限管理bug&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#110\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/110\">#110</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">在线 的online报表报错&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1029\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1029\">#1029</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online代码生成器树形表单父节点字段名称问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"issues/I1ABGV \" href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1ABGV\">issues/I1ABGV</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">点击j-popup,里面有数据，如果选择同名的数据，文本框为空&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1044\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1044\">#1044</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">关于table列宽可拖动问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1054\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1054\">#1054</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">单表数据导出多表头 auto 的Excel注解 groupName属性<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\" #1053\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1053\">&nbsp;#1053</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">在线报表和在线online的问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1030\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1030\">#1030</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">J-pop组件&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1043\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1043\">#1043</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">2.1.4 日志管理---没有记录查询接口参数&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1070\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1070\">#1070</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">服务器日志超过设置的MaxFileSize时&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1130\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1130\">#1130</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online 表单中，在 附表中存在上传图片组件，点击上传图片并提交，显示提交失败&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1074\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1074\">#1074</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">online表单js增强修改从表控件值问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1051\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1051\">#1051</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">重复代理问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#994\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/994\">#994</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">系统使用的日志包有问题&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#887\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/887\">#887</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">使用sqlserver数据库,用户管理查询出错&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1140\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1140\">#1140</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">主表和从表 一对一关系表单 TypeError: Cannot read property \'getAll\' of undefined&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"#1129\" href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1129\">#1129</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">ERP表单附表数据编辑后消失&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"issues/I1DN3B\" href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1DN3B\">issues/I1DN3B</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">多表的erp模式生成的子表，表单没有导入导出功能&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"issues/I1BB2U\" href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1BB2U\">issues/I1BB2U</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">用edge打开首页，整个页面动不了，控制台console打出很多错误&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"issues/I189B5\" href=\"https://gitee.com/jeecg/jeecg-boot/issues/I189B5\">issues/I189B5</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">官方的快速开发平台主子表对IE11不兼容&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"issues/I17LEE\" href=\"https://gitee.com/jeecg/jeecg-boot/issues/I17LEE\">issues/I17LEE</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em;\">360兼容模式 修改为你说的js之后；单表的数据兼容可以；主子表的不加载；错误如下&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"issues/I17H8L\" href=\"https://gitee.com/jeecg/jeecg-boot/issues/I17H8L\">issues/I17H8L</a></li>\n<li style=\"box-sizing: inherit; line-height: 1.875em; margin-bottom: 0px;\">Online表单开发，点击&ldquo;新增&rdquo;按钮，是否树：选择是，页面控制台报错&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #4183c4; text-decoration-line: none;\" title=\"issues/I1BHXG\" href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1BHXG\">issues/I1BHXG</a></li>\n</ul>', '2020-05-01 15:30:56', '2020-05-30 15:31:00', 'admin', 'H', '1', 'ALL', '2', '2020-05-02 15:31:44', '2021-10-27 16:36:29', '1', NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:31:41', 'admin', '2021-10-27 16:36:37', NULL, '重磅版本发布', NULL);
INSERT INTO `sys_announcement` VALUES ('1256486817286418434', '放假通知', '<p>放假通知</p>', '2020-05-02 15:32:38', '2020-05-30 15:32:40', 'admin', 'M', '1', 'USER', '1', '2020-05-02 15:32:59', NULL, '0', NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:32:56', 'admin', '2020-05-02 15:32:59', 'e9ca23d68d884d4ebb19d07889727dae,a75d45a015c44384a04449ee80dc3503,', '放假通知', NULL);
INSERT INTO `sys_announcement` VALUES ('1256529336858685441', '1', '<p>22</p>', '2020-05-02 18:21:41', '2020-05-30 18:21:44', 'admin', 'M', '1', 'ALL', '2', '2020-05-02 18:21:57', '2020-05-02 18:22:07', '1', NULL, NULL, NULL, NULL, 'admin', '2020-05-02 18:21:54', 'admin', '2021-08-12 16:05:00', NULL, '22', NULL);
INSERT INTO `sys_announcement` VALUES ('1b714f8ebc3cc33f8b4f906103b6a18d', '5467567', NULL, NULL, NULL, 'admin', NULL, '2', NULL, '1', '2019-03-30 12:40:38', NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:23:26', 'admin', '2020-05-02 15:30:42', NULL, NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('3d11237ccdf62450d20bb8abdb331178', '111222', NULL, NULL, NULL, NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-03-29 17:19:47', 'admin', '2019-03-29 17:19:50', NULL, NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('7ef04e95f8de030b1d5f7a9144090dc6', '111', NULL, '2019-02-06 17:28:10', '2019-03-08 17:28:11', NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:28:17', 'admin', '2019-03-26 19:59:49', NULL, NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('93a9060a1c20e4bf98b3f768a02c2ff9', '111', '111', '2019-02-06 17:20:17', '2019-02-21 17:20:20', 'admin', 'M', '2', 'ALL', '1', '2019-02-26 17:24:29', NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:16:26', 'admin', '2020-05-02 15:30:42', NULL, NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('de1dc57f31037079e1e55c8347fe6ef7', '222', '2222', '2019-02-06 17:28:26', '2019-02-23 17:28:28', 'admin', 'M', '2', 'ALL', '1', '2019-03-29 17:19:56', NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:28:36', 'admin', '2019-02-26 17:28:40', NULL, NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('e52f3eb6215f139cb2224c52517af3bd', '334', '334', NULL, NULL, NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-03-30 12:40:28', 'admin', '2019-03-30 12:40:32', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_announcement_send
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement_send`;
CREATE TABLE `sys_announcement_send`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `annt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime(0) NULL DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户通告阅读标记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_announcement_send
-- ----------------------------
INSERT INTO `sys_announcement_send` VALUES ('646c0c405ec643d4dc4160db2446f8ff', '93a9060a1c20e4bf98b3f768a02c2ff9', 'e9ca23d68d884d4ebb19d07889727dae', '1', '2019-11-21 16:30:01', 'admin', '2019-05-17 11:50:56', 'admin', '2019-11-21 16:30:01');
INSERT INTO `sys_announcement_send` VALUES ('1197434450981543938', '93a9060a1c20e4bf98b3f768a02c2ff9', 'a75d45a015c44384a04449ee80dc3503', '0', NULL, 'jeecg', '2019-11-21 16:39:55', NULL, NULL);
INSERT INTO `sys_announcement_send` VALUES ('1256486817319972866', '1256486817286418434', 'e9ca23d68d884d4ebb19d07889727dae', '1', '2020-05-02 15:33:05', 'admin', '2020-05-02 15:32:56', 'admin', '2020-05-02 15:33:05');
INSERT INTO `sys_announcement_send` VALUES ('1256486817349332993', '1256486817286418434', 'a75d45a015c44384a04449ee80dc3503', '0', '2020-05-02 15:32:56', 'admin', '2020-05-02 15:32:56', NULL, NULL);
INSERT INTO `sys_announcement_send` VALUES ('1256527099214278657', '1256486502931722242', 'e9ca23d68d884d4ebb19d07889727dae', '1', '2020-05-02 18:22:00', 'admin', '2020-05-02 18:12:59', 'admin', '2020-05-02 18:22:00');
INSERT INTO `sys_announcement_send` VALUES ('1260927781673484290', '1256486502931722242', 'a75d45a015c44384a04449ee80dc3503', '0', NULL, 'jeecg', '2020-05-14 21:39:45', NULL, NULL);

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否有子节点',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_code`(`code`) USING BTREE,
  INDEX `idx_sc_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('1183693424827564034', '0', '物料树', 'B02', 'admin', '2019-10-14 18:37:59', 'admin', '2019-10-14 18:38:15', 'A01', '1');
INSERT INTO `sys_category` VALUES ('1183693491043041282', '1183693424827564034', '上衣', 'B02A01', 'admin', '2019-10-14 18:38:15', 'admin', '2019-10-14 18:38:43', 'A01', '1');
INSERT INTO `sys_category` VALUES ('1183693534173069314', '1183693424827564034', '裤子', 'B02A02', 'admin', '2019-10-14 18:38:25', NULL, NULL, 'A01', NULL);
INSERT INTO `sys_category` VALUES ('1183693610534567937', '1183693491043041282', '秋衣', 'B02A01A01', 'admin', '2019-10-14 18:38:43', NULL, NULL, 'A01', NULL);
INSERT INTO `sys_category` VALUES ('1183693700254924802', '1183693491043041282', '兵装', 'B02A01A02', 'admin', '2019-10-14 18:39:05', NULL, NULL, 'A01', NULL);
INSERT INTO `sys_category` VALUES ('1183693773974011906', '1183693491043041282', '女装', 'B02A01A03', 'admin', '2019-10-14 18:39:22', NULL, NULL, 'A01', NULL);
INSERT INTO `sys_category` VALUES ('1185039122143719425', '0', '电脑产品', 'A01', 'admin', '2019-10-18 11:45:18', 'admin', '2019-10-18 11:45:31', 'A01', '1');
INSERT INTO `sys_category` VALUES ('1185039176799694850', '1185039122143719425', 'thinkpad', 'A01A01', 'admin', '2019-10-18 11:45:31', NULL, NULL, 'A01', NULL);
INSERT INTO `sys_category` VALUES ('1185039255115739138', '1185039122143719425', 'mackbook', 'A01A02', 'admin', '2019-10-18 11:45:50', NULL, NULL, 'A01', NULL);
INSERT INTO `sys_category` VALUES ('1185039299051073537', '1185039122143719425', '华为电脑', 'A01A03', 'admin', '2019-10-18 11:46:01', NULL, NULL, 'A01', NULL);
INSERT INTO `sys_category` VALUES ('1230769196661510146', '0', '省', NULL, 'admin', '2020-02-21 16:20:16', 'admin', '2020-02-21 16:20:31', 'A01A03', '1');
INSERT INTO `sys_category` VALUES ('1230769253267836929', '1230769196661510146', '安徽省', NULL, 'admin', '2020-02-21 16:20:31', 'admin', '2020-02-21 16:20:53', 'A01A03', '1');
INSERT INTO `sys_category` VALUES ('1230769290609725441', '1230769196661510146', '山东省', NULL, 'admin', '2020-02-21 16:20:40', 'admin', '2020-02-21 16:21:23', 'A01A03', '1');
INSERT INTO `sys_category` VALUES ('1230769347157331969', '1230769253267836929', '合肥市', NULL, 'admin', '2020-02-21 16:20:53', 'admin', '2020-02-21 16:21:08', 'A01A03', '1');
INSERT INTO `sys_category` VALUES ('1230769407907631106', '1230769347157331969', '包河区', NULL, 'admin', '2020-02-21 16:21:08', NULL, NULL, 'A01A03', NULL);
INSERT INTO `sys_category` VALUES ('1230769470889299970', '1230769290609725441', '济南市', NULL, 'admin', '2020-02-21 16:21:23', 'admin', '2020-02-21 16:21:41', 'A01A03', '1');
INSERT INTO `sys_category` VALUES ('1230769547519234050', '1230769470889299970', 'A区', NULL, 'admin', '2020-02-21 16:21:41', NULL, NULL, 'A01A03', NULL);
INSERT INTO `sys_category` VALUES ('1230769620021972993', '1230769470889299970', 'B区', NULL, 'admin', '2020-02-21 16:21:58', NULL, NULL, 'A01A03', NULL);
INSERT INTO `sys_category` VALUES ('1230769769930592257', '1230769253267836929', '淮南市', NULL, 'admin', '2020-02-21 16:22:34', 'admin', '2020-02-21 16:22:54', 'A01A03', '1');
INSERT INTO `sys_category` VALUES ('1230769855347593217', '1230769769930592257', 'C区', NULL, 'admin', '2020-02-21 16:22:54', NULL, NULL, 'A01A03', NULL);
INSERT INTO `sys_category` VALUES ('22a50b413c5e1ef661fb8aea9469cf52', 'e9ded10fd33e5753face506f4f1564b5', 'MacBook', 'B01-2-1', 'admin', '2019-06-10 15:43:13', NULL, NULL, 'A01', NULL);
INSERT INTO `sys_category` VALUES ('5c8f68845e57f68ab93a2c8d82d26ae1', '0', '笔记本', 'B01', 'admin', '2019-06-10 15:34:11', 'admin', '2019-06-10 15:34:24', 'A01', '1');
INSERT INTO `sys_category` VALUES ('937fd2e9aa13b8bab1da1ca36d3fd344', 'e9ded10fd33e5753face506f4f1564b5', '台式机', 'B02-2-2', 'admin', '2019-06-10 15:43:32', 'admin', '2019-08-21 12:01:59', 'A01', NULL);
INSERT INTO `sys_category` VALUES ('e9ded10fd33e5753face506f4f1564b5', '5c8f68845e57f68ab93a2c8d82d26ae1', '苹果电脑', 'B01-2', 'admin', '2019-06-10 15:41:14', 'admin', '2019-06-10 15:43:13', 'A01', '1');
INSERT INTO `sys_category` VALUES ('f39a06bf9f390ba4a53d11bc4e0018d7', '5c8f68845e57f68ab93a2c8d82d26ae1', '华为', 'B01-1', 'admin', '2019-06-10 15:34:24', 'admin', '2019-08-21 12:01:56', 'A01', NULL);

-- ----------------------------
-- Table structure for sys_check_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_check_rule`;
CREATE TABLE `sys_check_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_sys_check_rule_code`(`rule_code`) USING BTREE,
  UNIQUE INDEX `uk_scr_rule_code`(`rule_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_check_rule
-- ----------------------------
INSERT INTO `sys_check_rule` VALUES ('1224980593992388610', '通用编码规则', 'common', '[{\"digits\":\"1\",\"pattern\":\"^[a-z|A-Z]$\",\"message\":\"第一位只能是字母\"},{\"digits\":\"*\",\"pattern\":\"^[0-9|a-z|A-Z|_]{0,}$\",\"message\":\"只能填写数字、大小写字母、下划线\"},{\"digits\":\"*\",\"pattern\":\"^.{3,}$\",\"message\":\"最少输入3位数\"},{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"最多输入12位数\"}]', '规则：1、首位只能是字母；2、只能填写数字、大小写字母、下划线；3、最少3位数，最多12位数。', 'admin', '2020-02-07 11:25:48', 'admin', '2020-02-05 16:58:27');
INSERT INTO `sys_check_rule` VALUES ('1225001845524004866', '负责的功能测试', 'test', '[{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"只能输入3-12位字符\"},{\"digits\":\"3\",\"pattern\":\"^\\\\d{3}$\",\"message\":\"前3位必须是数字\"},{\"digits\":\"*\",\"pattern\":\"^[^pP]*$\",\"message\":\"不能输入P\"},{\"digits\":\"4\",\"pattern\":\"^@{4}$\",\"message\":\"第4-7位必须都为 @\"},{\"digits\":\"2\",\"pattern\":\"^#=$\",\"message\":\"第8-9位必须是 #=\"},{\"digits\":\"1\",\"pattern\":\"^O$\",\"message\":\"第10位必须为大写的O\"},{\"digits\":\"*\",\"pattern\":\"^.*。$\",\"message\":\"必须以。结尾\"}]', '包含长度校验、特殊字符校验等', 'admin', '2020-02-07 11:57:31', 'admin', '2020-02-05 18:22:54');

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_log`;
CREATE TABLE `sys_data_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据ID',
  `data_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '数据内容',
  `data_version` int(11) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sindex`(`data_table`, `data_id`) USING BTREE,
  INDEX `idx_sdl_data_table_id`(`data_table`, `data_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_data_log
-- ----------------------------
INSERT INTO `sys_data_log` VALUES ('402880f05ab0d198015ab12274bf0006', 'admin', '2017-03-09 11:35:09', NULL, NULL, 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Jun 23, 2016 12:00:00 PM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"9001\",\"status\":\"1\",\"content\":\"111\",\"id\":\"4028ef81550c1a7901550c1cd6e70001\"}', 3);
INSERT INTO `sys_data_log` VALUES ('402880f05ab6d12b015ab700bead0009', 'admin', '2017-03-10 14:56:03', NULL, NULL, 'jeecg_demo', '402880f05ab6d12b015ab700be8d0008', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 10, 2017 2:56:03 PM\",\"sex\":\"0\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"111\",\"status\":\"0\",\"id\":\"402880f05ab6d12b015ab700be8d0008\"}', 1);
INSERT INTO `sys_data_log` VALUES ('402880f05ab6d12b015ab705a23f000d', 'admin', '2017-03-10 15:01:24', NULL, NULL, 'jeecg_demo', '402880f05ab6d12b015ab705a233000c', '{\"mobilePhone\":\"\",\"officePhone\":\"11\",\"email\":\"\",\"createDate\":\"Mar 10, 2017 3:01:24 PM\",\"sex\":\"0\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"11\",\"status\":\"0\",\"id\":\"402880f05ab6d12b015ab705a233000c\"}', 1);
INSERT INTO `sys_data_log` VALUES ('402880f05ab6d12b015ab712a6420013', 'admin', '2017-03-10 15:15:37', NULL, NULL, 'jeecg_demo', '402880f05ab6d12b015ab712a6360012', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 10, 2017 3:15:37 PM\",\"sex\":\"0\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"小王\",\"status\":\"0\",\"id\":\"402880f05ab6d12b015ab712a6360012\"}', 1);
INSERT INTO `sys_data_log` VALUES ('402880f05ab6d12b015ab712d0510015', 'admin', '2017-03-10 15:15:47', NULL, NULL, 'jeecg_demo', '402880f05ab6d12b015ab712a6360012', '{\"mobilePhone\":\"18611788525\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 10, 2017 3:15:37 AM\",\"sex\":\"0\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"小王\",\"status\":\"0\",\"id\":\"402880f05ab6d12b015ab712a6360012\"}', 2);
INSERT INTO `sys_data_log` VALUES ('402880f05ab6d12b015ab71308240018', 'admin', '2017-03-10 15:16:02', NULL, NULL, 'jeecg_demo', '8a8ab0b246dc81120146dc81860f016f', '{\"mobilePhone\":\"13111111111\",\"officePhone\":\"66666666\",\"email\":\"demo@jeecg.com\",\"age\":12,\"salary\":10.00,\"birthday\":\"Feb 14, 2014 12:00:00 AM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"小明\",\"status\":\"\",\"content\":\"\",\"id\":\"8a8ab0b246dc81120146dc81860f016f\"}', 1);
INSERT INTO `sys_data_log` VALUES ('402880f05ab6d12b015ab72806c3001b', 'admin', '2017-03-10 15:38:58', NULL, NULL, 'jeecg_demo', '8a8ab0b246dc81120146dc81860f016f', '{\"mobilePhone\":\"18611788888\",\"officePhone\":\"66666666\",\"email\":\"demo@jeecg.com\",\"age\":12,\"salary\":10.00,\"birthday\":\"Feb 14, 2014 12:00:00 AM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"小明\",\"status\":\"\",\"content\":\"\",\"id\":\"8a8ab0b246dc81120146dc81860f016f\"}', 2);
INSERT INTO `sys_data_log` VALUES ('4028ef815318148a0153181567690001', 'admin', '2016-02-25 18:59:29', NULL, NULL, 'jeecg_demo', '4028ef815318148a0153181566270000', '{\"mobilePhone\":\"13423423423\",\"officePhone\":\"1\",\"email\":\"\",\"age\":1,\"salary\":1,\"birthday\":\"Feb 25, 2016 12:00:00 AM\",\"createDate\":\"Feb 25, 2016 6:59:24 PM\",\"depId\":\"402880e447e9a9570147e9b6a3be0005\",\"userName\":\"1\",\"status\":\"0\",\"id\":\"4028ef815318148a0153181566270000\"}', 1);
INSERT INTO `sys_data_log` VALUES ('4028ef815318148a01531815ec5c0003', 'admin', '2016-02-25 19:00:03', NULL, NULL, 'jeecg_demo', '4028ef815318148a0153181566270000', '{\"mobilePhone\":\"13426498659\",\"officePhone\":\"1\",\"email\":\"\",\"age\":1,\"salary\":1.00,\"birthday\":\"Feb 25, 2016 12:00:00 AM\",\"createDate\":\"Feb 25, 2016 6:59:24 AM\",\"depId\":\"402880e447e9a9570147e9b6a3be0005\",\"userName\":\"1\",\"status\":\"0\",\"id\":\"4028ef815318148a0153181566270000\"}', 2);
INSERT INTO `sys_data_log` VALUES ('4028ef8153c028db0153c0502e6b0003', 'admin', '2016-03-29 10:59:53', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{\"mobilePhone\":\"18455477548\",\"officePhone\":\"123\",\"email\":\"\",\"createDate\":\"Mar 29, 2016 10:59:53 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"123\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0502d420002\"}', 1);
INSERT INTO `sys_data_log` VALUES ('4028ef8153c028db0153c0509aa40006', 'admin', '2016-03-29 11:00:21', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 29, 2016 11:00:21 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"22\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0509a3e0005\"}', 1);
INSERT INTO `sys_data_log` VALUES ('4028ef8153c028db0153c051c4a70008', 'admin', '2016-03-29 11:01:37', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Mar 29, 2016 11:00:21 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"22\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0509a3e0005\"}', 2);
INSERT INTO `sys_data_log` VALUES ('4028ef8153c028db0153c051d4b5000a', 'admin', '2016-03-29 11:01:41', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"123\",\"email\":\"\",\"createDate\":\"Mar 29, 2016 10:59:53 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"123\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0502d420002\"}', 2);
INSERT INTO `sys_data_log` VALUES ('4028ef8153c028db0153c07033d8000d', 'admin', '2016-03-29 11:34:52', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"123\",\"email\":\"\",\"age\":23,\"createDate\":\"Mar 29, 2016 10:59:53 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"123\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0502d420002\"}', 3);
INSERT INTO `sys_data_log` VALUES ('4028ef8153c028db0153c070492e000f', 'admin', '2016-03-29 11:34:57', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{\"mobilePhone\":\"13565486458\",\"officePhone\":\"\",\"email\":\"\",\"age\":22,\"createDate\":\"Mar 29, 2016 11:00:21 AM\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"22\",\"status\":\"0\",\"id\":\"4028ef8153c028db0153c0509a3e0005\"}', 3);
INSERT INTO `sys_data_log` VALUES ('4028ef81550c1a7901550c1cd7850002', 'admin', '2016-06-01 21:17:44', NULL, NULL, 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Jun 1, 2016 9:17:44 PM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"121221\",\"status\":\"0\",\"id\":\"4028ef81550c1a7901550c1cd6e70001\"}', 1);
INSERT INTO `sys_data_log` VALUES ('4028ef81568c31ec01568c3307080004', 'admin', '2016-08-15 11:16:09', NULL, NULL, 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{\"mobilePhone\":\"\",\"officePhone\":\"\",\"email\":\"\",\"createDate\":\"Jun 23, 2016 12:00:00 PM\",\"sex\":\"1\",\"depId\":\"402880e447e99cf10147e9a03b320003\",\"userName\":\"9001\",\"status\":\"1\",\"content\":\"111\",\"id\":\"4028ef81550c1a7901550c1cd6e70001\"}', 2);

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_data_source_code_uni`(`code`) USING BTREE,
  UNIQUE INDEX `uk_sdc_rule_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO `sys_data_source` VALUES ('1209779538310004737', 'local_mysql', 'MySQL5.7', '本地数据库MySQL5.7', '1', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false', 'jeecg-boot', 'root', 'f5b6775e8d1749483f2320627de0e706', 'admin', '2019-12-25 18:14:53', 'admin', '2020-07-10 16:54:42', 'A01');

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) NULL DEFAULT 0 COMMENT '排序',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '机构类别 1公司，2组织机构，2岗位',
  `org_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `qywx_identifier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对接企业微信的ID',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_depart_org_code`(`org_code`) USING BTREE,
  INDEX `index_depart_parent_id`(`parent_id`) USING BTREE,
  INDEX `index_depart_depart_order`(`depart_order`) USING BTREE,
  INDEX `index_depart_org_code`(`org_code`) USING BTREE,
  INDEX `idx_sd_parent_id`(`parent_id`) USING BTREE,
  INDEX `idx_sd_depart_order`(`depart_order`) USING BTREE,
  INDEX `idx_sd_org_code`(`org_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO `sys_depart` VALUES ('6d35e179cd814e3299bd588ea7daed3f', '', '我的公司', NULL, NULL, 0, NULL, '1', '1', 'A02', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'admin', '2019-02-26 16:36:39', 'admin', '2021-10-27 16:47:44');

-- ----------------------------
-- Table structure for sys_depart_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_permission`;
CREATE TABLE `sys_depart_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role`;
CREATE TABLE `sys_depart_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart_role
-- ----------------------------
INSERT INTO `sys_depart_role` VALUES ('1260925293226479618', '6d35e179cd814e3299bd588ea7daed3f', 'roless', 'ssss', NULL, 'admin', '2020-05-14 21:29:51', NULL, NULL);

-- ----------------------------
-- Table structure for sys_depart_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_permission`;
CREATE TABLE `sys_depart_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_group_role_per_id`(`role_id`, `permission_id`) USING BTREE,
  INDEX `index_group_role_id`(`role_id`) USING BTREE,
  INDEX `index_group_per_id`(`permission_id`) USING BTREE,
  INDEX `idx_sdrp_role_per_id`(`role_id`, `permission_id`) USING BTREE,
  INDEX `idx_sdrp_role_id`(`role_id`) USING BTREE,
  INDEX `idx_sdrp_per_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_user`;
CREATE TABLE `sys_depart_role_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_depart_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `dict_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `type` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `indextable_dict_code`(`dict_code`) USING BTREE,
  UNIQUE INDEX `uk_sd_dict_code`(`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0b5d19e1fce4b2e6647e6b4a17760c14', '通告类型', 'msg_category', '消息类型1:通知公告2:系统消息', 0, 'admin', '2019-04-22 18:01:35', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174509082208395266', '职务职级', 'position_rank', '职务表职级字典', 0, 'admin', '2019-09-19 10:22:41', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174511106530525185', '机构类型', 'org_category', '机构类型 1公司，2部门 3岗位', 0, 'admin', '2019-09-19 10:30:43', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1178295274528845826', '表单权限策略', 'form_perms_type', '', 0, 'admin', '2019-09-29 21:07:39', 'admin', '2019-09-29 21:08:26', NULL);
INSERT INTO `sys_dict` VALUES ('1199517671259906049', '紧急程度', 'urgent_level', '日程计划紧急程度', 0, 'admin', '2019-11-27 10:37:53', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1199518099888414722', '日程计划类型', 'eoa_plan_type', '', 0, 'admin', '2019-11-27 10:39:36', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1199520177767587841', '分类栏目类型', 'eoa_cms_menu_type', '', 0, 'admin', '2019-11-27 10:47:51', 'admin', '2019-11-27 10:49:35', 0);
INSERT INTO `sys_dict` VALUES ('1199525215290306561', '日程计划状态', 'eoa_plan_status', '', 0, 'admin', '2019-11-27 11:07:52', 'admin', '2019-11-27 11:10:11', 0);
INSERT INTO `sys_dict` VALUES ('1209733563293962241', '数据库类型', 'database_type', '', 0, 'admin', '2019-12-25 15:12:12', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1232913193820581889', 'Online表单业务分类', 'ol_form_biz_type', '', 0, 'admin', '2020-02-27 14:19:46', 'admin', '2020-02-27 14:20:23', 0);
INSERT INTO `sys_dict` VALUES ('1250687930947620866', '定时任务状态', 'quartz_status', '', 0, 'admin', '2020-04-16 15:30:14', '', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('1280401766745718786', '租户状态', 'tenant_status', '租户状态', 0, 'admin', '2020-07-07 15:22:25', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1356445645198135298', '开关', 'is_open', '', 0, 'admin', '2021-02-02 11:33:38', 'admin', '2021-02-02 15:28:12', 0);
INSERT INTO `sys_dict` VALUES ('236e8a4baff0db8c62c00dd95632834f', '同步工作流引擎', 'activiti_sync', '同步工作流引擎', 0, 'admin', '2019-05-15 15:27:33', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2e02df51611a4b9632828ab7e5338f00', '权限策略', 'perms_type', '权限策略', 0, 'admin', '2019-04-26 18:26:55', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2f0320997ade5dd147c90130f7218c3e', '推送类别', 'msg_type', '', 0, 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', 0);
INSERT INTO `sys_dict` VALUES ('3486f32803bb953e7155dab3513dc68b', '删除状态', 'del_flag', NULL, 0, 'admin', '2019-01-18 21:46:26', 'admin', '2019-03-30 11:17:11', 0);
INSERT INTO `sys_dict` VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'sex', NULL, 0, NULL, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', 1);
INSERT INTO `sys_dict` VALUES ('4274efc2292239b6f000b153f50823ff', '全局权限策略', 'global_perms_type', '全局权限策略', 0, 'admin', '2019-05-10 17:54:05', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c03fca6bf1f0299c381213961566349', 'Online图表展示模板', 'online_graph_display_template', 'Online图表展示模板', 0, 'admin', '2019-04-12 17:28:50', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c753b5293304e7a445fd2741b46529d', '字典状态', 'dict_item_status', NULL, 0, 'admin', '2020-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', 1);
INSERT INTO `sys_dict` VALUES ('4d7fec1a7799a436d26d02325eff295e', '优先级', 'priority', '优先级', 0, 'admin', '2019-03-16 17:03:34', 'admin', '2019-04-16 17:39:23', 0);
INSERT INTO `sys_dict` VALUES ('4e4602b3e3686f0911384e188dc7efb4', '条件规则', 'rule_conditions', '', 0, 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', 0);
INSERT INTO `sys_dict` VALUES ('4f69be5f507accea8d5df5f11346181a', '发送消息类型', 'msgType', NULL, 0, 'admin', '2019-04-11 14:27:09', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('68168534ff5065a152bfab275c2136f8', '有效无效状态', 'valid_status', '有效无效状态', 0, 'admin', '2020-09-26 19:21:14', 'admin', '2019-04-26 19:21:23', 0);
INSERT INTO `sys_dict` VALUES ('6b78e3f59faec1a4750acff08030a79b', '用户类型', 'user_type', NULL, 0, NULL, '2019-01-04 14:59:01', 'admin', '2019-03-18 23:28:18', 0);
INSERT INTO `sys_dict` VALUES ('72cce0989df68887546746d8f09811aa', 'Online表单类型', 'cgform_table_type', '', 0, 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', 0);
INSERT INTO `sys_dict` VALUES ('78bda155fe380b1b3f175f1e88c284c6', '流程状态', 'bpm_status', '流程状态', 0, 'admin', '2019-05-09 16:31:52', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('83bfb33147013cc81640d5fd9eda030c', '日志类型', 'log_type', NULL, 0, 'admin', '2019-03-18 23:22:19', NULL, NULL, 1);
INSERT INTO `sys_dict` VALUES ('845da5006c97754728bf48b6a10f79cc', '状态', 'status', NULL, 0, 'admin', '2019-03-18 21:45:25', 'admin', '2019-03-18 21:58:25', 0);
INSERT INTO `sys_dict` VALUES ('880a895c98afeca9d9ac39f29e67c13e', '操作类型', 'operate_type', '操作类型', 0, 'admin', '2019-07-22 10:54:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('8dfe32e2d29ea9430a988b3b558bf233', '发布状态', 'send_status', '发布状态', 0, 'admin', '2019-04-16 17:40:42', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a7adbcd86c37f7dbc9b66945c82ef9e6', '1是0否', 'yn', '', 0, 'admin', '2019-05-22 19:29:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'msgSendStatus', NULL, 0, 'admin', '2019-04-12 18:18:17', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'menu_type', NULL, 0, 'admin', '2020-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', 1);
INSERT INTO `sys_dict` VALUES ('ad7c65ba97c20a6805d5dcdf13cdaf36', 'onlineT类型', 'ceshi_online', NULL, 0, 'admin', '2019-03-22 16:31:49', 'admin', '2019-03-22 16:34:16', 0);
INSERT INTO `sys_dict` VALUES ('bd1b8bc28e65d6feefefb6f3c79f42fd', 'Online图表数据类型', 'online_graph_data_type', 'Online图表数据类型', 0, 'admin', '2019-04-12 17:24:24', 'admin', '2019-04-12 17:24:57', 0);
INSERT INTO `sys_dict` VALUES ('c36169beb12de8a71c8683ee7c28a503', '部门状态', 'depart_status', NULL, 0, 'admin', '2019-03-18 21:59:51', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('c5a14c75172783d72cbee6ee7f5df5d1', 'Online图表类型', 'online_graph_type', 'Online图表类型', 0, 'admin', '2019-04-12 17:04:06', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('d6e1152968b02d69ff358c75b48a6ee1', '流程类型', 'bpm_process_type', NULL, 0, 'admin', '2021-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', 0);
INSERT INTO `sys_dict` VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'user_status', NULL, 0, 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典项文本',
  `item_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典项值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `sort_order` int(11) NULL DEFAULT NULL COMMENT '排序',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_dict_id`(`dict_id`) USING BTREE,
  INDEX `index_table_sort_order`(`sort_order`) USING BTREE,
  INDEX `index_table_dict_status`(`status`) USING BTREE,
  INDEX `idx_sdi_role_dict_id`(`dict_id`) USING BTREE,
  INDEX `idx_sdi_role_sort_order`(`sort_order`) USING BTREE,
  INDEX `idx_sdi_status`(`status`) USING BTREE,
  INDEX `idx_sdi_dict_val`(`dict_id`, `item_value`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c875d76c9b022e2179128', '4d7fec1a7799a436d26d02325eff295e', '低', 'L', '低', 3, 1, 'admin', '2019-04-16 17:04:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '已删除', '1', NULL, NULL, 1, 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20');
INSERT INTO `sys_dict_item` VALUES ('096c2e758d823def3855f6376bc736fb', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'SQL', 'sql', NULL, 1, 1, 'admin', '2019-04-12 17:26:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '指定用户', 'USER', NULL, NULL, 1, 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28');
INSERT INTO `sys_dict_item` VALUES ('0ca4beba9efc4f9dd54af0911a946d5c', '72cce0989df68887546746d8f09811aa', '附表', '3', NULL, 3, 1, 'admin', '2019-03-27 10:13:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1030a2652608f5eac3b49d70458b8532', '2e02df51611a4b9632828ab7e5338f00', '禁用', '2', '禁用', 2, 1, 'admin', '2021-03-26 18:27:28', 'admin', '2019-04-26 18:39:11');
INSERT INTO `sys_dict_item` VALUES ('1174509082208395266', '1174511106530525185', '岗位', '3', '岗位', 1, 1, 'admin', '2019-09-19 10:31:16', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1174509601047994369', '1174509082208395266', '员级', '1', '', 1, 1, 'admin', '2019-09-19 10:24:45', 'admin', '2019-09-23 11:46:39');
INSERT INTO `sys_dict_item` VALUES ('1174509667297026049', '1174509082208395266', '助级', '2', '', 2, 1, 'admin', '2019-09-19 10:25:01', 'admin', '2019-09-23 11:46:47');
INSERT INTO `sys_dict_item` VALUES ('1174509713568587777', '1174509082208395266', '中级', '3', '', 3, 1, 'admin', '2019-09-19 10:25:12', 'admin', '2019-09-23 11:46:56');
INSERT INTO `sys_dict_item` VALUES ('1174509788361416705', '1174509082208395266', '副高级', '4', '', 4, 1, 'admin', '2019-09-19 10:25:30', 'admin', '2019-09-23 11:47:06');
INSERT INTO `sys_dict_item` VALUES ('1174509835803189250', '1174509082208395266', '正高级', '5', '', 5, 1, 'admin', '2019-09-19 10:25:41', 'admin', '2019-09-23 11:47:12');
INSERT INTO `sys_dict_item` VALUES ('1174511197735665665', '1174511106530525185', '公司', '1', '公司', 1, 1, 'admin', '2019-09-19 10:31:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1174511244036587521', '1174511106530525185', '部门', '2', '部门', 1, 1, 'admin', '2019-09-19 10:31:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1178295553450061826', '1178295274528845826', '可编辑(未授权禁用)', '2', '', 2, 1, 'admin', '2019-09-29 21:08:46', 'admin', '2019-09-29 21:09:18');
INSERT INTO `sys_dict_item` VALUES ('1178295639554928641', '1178295274528845826', '可见(未授权不可见)', '1', '', 1, 1, 'admin', '2019-09-29 21:09:06', 'admin', '2019-09-29 21:09:24');
INSERT INTO `sys_dict_item` VALUES ('1199517884758368257', '1199517671259906049', '一般', '1', '', 1, 1, 'admin', '2019-11-27 10:38:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517914017832962', '1199517671259906049', '重要', '2', '', 1, 1, 'admin', '2019-11-27 10:38:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517941339529217', '1199517671259906049', '紧急', '3', '', 1, 1, 'admin', '2019-11-27 10:38:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518186144276482', '1199518099888414722', '日常记录', '1', '', 1, 1, 'admin', '2019-11-27 10:39:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518214858481666', '1199518099888414722', '本周工作', '2', '', 1, 1, 'admin', '2019-11-27 10:40:03', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518235943247874', '1199518099888414722', '下周计划', '3', '', 1, 1, 'admin', '2019-11-27 10:40:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199520817285701634', '1199520177767587841', '列表', '1', '', 1, 1, 'admin', '2019-11-27 10:50:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199520835035996161', '1199520177767587841', '链接', '2', '', 1, 1, 'admin', '2019-11-27 10:50:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525468672405505', '1199525215290306561', '未开始', '0', '', 1, 1, 'admin', '2019-11-27 11:08:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525490575060993', '1199525215290306561', '进行中', '1', '', 1, 1, 'admin', '2019-11-27 11:08:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525506429530114', '1199525215290306561', '已完成', '2', '', 1, 1, 'admin', '2019-11-27 11:09:02', 'admin', '2019-11-27 11:10:02');
INSERT INTO `sys_dict_item` VALUES ('1199607547704647681', '4f69be5f507accea8d5df5f11346181a', '系统', '4', '', 1, 1, 'admin', '2019-11-27 16:35:02', 'admin', '2019-11-27 19:37:46');
INSERT INTO `sys_dict_item` VALUES ('1209733775114702850', '1209733563293962241', 'MySQL5.5', '1', '', 1, 1, 'admin', '2019-12-25 15:13:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733839933476865', '1209733563293962241', 'Oracle', '2', '', 3, 1, 'admin', '2019-12-25 15:13:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733903020003330', '1209733563293962241', 'SQLServer', '3', '', 4, 1, 'admin', '2019-12-25 15:13:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1232913424813486081', '1232913193820581889', '官方示例', 'demo', '', 1, 1, 'admin', '2020-02-27 14:20:42', 'admin', '2020-02-27 14:21:37');
INSERT INTO `sys_dict_item` VALUES ('1232913493717512194', '1232913193820581889', '流程表单', 'bpm', '', 2, 1, 'admin', '2020-02-27 14:20:58', 'admin', '2020-02-27 14:22:20');
INSERT INTO `sys_dict_item` VALUES ('1232913605382467585', '1232913193820581889', '测试表单', 'temp', '', 4, 1, 'admin', '2020-02-27 14:21:25', 'admin', '2020-02-27 14:22:16');
INSERT INTO `sys_dict_item` VALUES ('1232914232372195330', '1232913193820581889', '导入表单', 'bdfl_include', '', 5, 1, 'admin', '2020-02-27 14:23:54', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1234371726545010689', '4e4602b3e3686f0911384e188dc7efb4', '左模糊', 'LEFT_LIKE', '左模糊', 7, 1, 'admin', '2020-03-02 14:55:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1234371809495760898', '4e4602b3e3686f0911384e188dc7efb4', '右模糊', 'RIGHT_LIKE', '右模糊', 7, 1, 'admin', '2020-03-02 14:55:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688147579228161', '1250687930947620866', '正常', '0', '', 1, 1, 'admin', '2020-04-16 15:31:05', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688201064992770', '1250687930947620866', '停止', '-1', '', 1, 1, 'admin', '2020-04-16 15:31:18', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401815068295170', '1280401766745718786', '正常', '1', '', 1, 1, 'admin', '2020-07-07 15:22:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401847607705602', '1280401766745718786', '冻结', '0', '', 1, 1, 'admin', '2020-07-07 15:22:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1305827309355302914', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'API', 'api', '', 3, 1, 'admin', '2020-09-15 19:14:26', 'admin', '2020-09-15 19:14:41');
INSERT INTO `sys_dict_item` VALUES ('1334440962954936321', '1209733563293962241', 'MYSQL5.7', '6', NULL, 1, 1, 'admin', '2020-12-03 18:16:02', 'admin', '2020-12-03 18:16:02');
INSERT INTO `sys_dict_item` VALUES ('1356445705549975553', '1356445645198135298', '是', 'Y', '', 1, 1, 'admin', '2021-02-02 11:33:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1356445754212290561', '1356445645198135298', '否', 'N', '', 1, 1, 'admin', '2021-02-02 11:34:04', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1414837074500976641', '1209733563293962241', 'Postgresql', '6', '', 5, 1, 'admin', '2021-07-13 14:40:20', 'admin', '2021-07-15 13:44:15');
INSERT INTO `sys_dict_item` VALUES ('1415547541091504129', '1209733563293962241', 'MarialDB', '5', '', 6, 1, 'admin', '2021-07-15 13:43:28', 'admin', '2021-07-15 13:44:23');
INSERT INTO `sys_dict_item` VALUES ('1418049969003089922', '1209733563293962241', '达梦', '7', '', 7, 1, 'admin', '2021-07-22 11:27:13', 'admin', '2021-07-22 11:27:30');
INSERT INTO `sys_dict_item` VALUES ('1418050017053036545', '1209733563293962241', '人大金仓', '8', '', 8, 1, 'admin', '2021-07-22 11:27:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418050075555188737', '1209733563293962241', '神通', '9', '', 9, 1, 'admin', '2021-07-22 11:27:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418050110669901826', '1209733563293962241', 'SQLite', '10', '', 10, 1, 'admin', '2021-07-22 11:27:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418050149475602434', '1209733563293962241', 'DB2', '11', '', 11, 1, 'admin', '2021-07-22 11:27:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418050209823248385', '1209733563293962241', 'Hsqldb', '12', '', 12, 1, 'admin', '2021-07-22 11:28:11', 'admin', '2021-07-22 11:28:27');
INSERT INTO `sys_dict_item` VALUES ('1418050323111399425', '1209733563293962241', 'Derby', '13', '', 13, 1, 'admin', '2021-07-22 11:28:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418117316707590146', '1209733563293962241', 'H2', '14', '', 14, 1, 'admin', '2021-07-22 15:54:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1418491604048449537', '1209733563293962241', '其他数据库', '15', '', 15, 1, 'admin', '2021-07-23 16:42:07', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('147c48ff4b51545032a9119d13f3222a', 'd6e1152968b02d69ff358c75b48a6ee1', '测试流程', 'test', NULL, 1, 1, 'admin', '2019-03-22 19:27:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1543fe7e5e26fb97cdafe4981bedc0c8', '4c03fca6bf1f0299c381213961566349', '单排布局', 'single', NULL, 2, 1, 'admin', '2022-07-12 17:43:39', 'admin', '2019-04-12 17:43:57');
INSERT INTO `sys_dict_item` VALUES ('1ce390c52453891f93514c1bd2795d44', 'ad7c65ba97c20a6805d5dcdf13cdaf36', '000', '00', NULL, 1, 1, 'admin', '2019-03-22 16:34:34', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1db531bcff19649fa82a644c8a939dc4', '4c03fca6bf1f0299c381213961566349', '组合布局', 'combination', '', 4, 1, 'admin', '2019-05-11 16:07:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('222705e11ef0264d4214affff1fb4ff9', '4f69be5f507accea8d5df5f11346181a', '短信', '1', '', 1, 1, 'admin', '2023-02-28 10:50:36', 'admin', '2019-04-28 10:58:11');
INSERT INTO `sys_dict_item` VALUES ('23a5bb76004ed0e39414e928c4cde155', '4e4602b3e3686f0911384e188dc7efb4', '不等于', '!=', '不等于', 3, 1, 'admin', '2019-04-01 16:46:15', 'admin', '2019-04-01 17:48:40');
INSERT INTO `sys_dict_item` VALUES ('25847e9cb661a7c711f9998452dc09e6', '4e4602b3e3686f0911384e188dc7efb4', '小于等于', '<=', '小于等于', 6, 1, 'admin', '2019-04-01 16:44:34', 'admin', '2019-04-01 17:49:10');
INSERT INTO `sys_dict_item` VALUES ('2d51376643f220afdeb6d216a8ac2c01', '68168534ff5065a152bfab275c2136f8', '有效', '1', '有效', 2, 1, 'admin', '2019-04-26 19:22:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('308c8aadf0c37ecdde188b97ca9833f5', '8dfe32e2d29ea9430a988b3b558bf233', '已发布', '1', '已发布', 2, 1, 'admin', '2019-04-16 17:41:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('333e6b2196e01ef9a5f76d74e86a6e33', '8dfe32e2d29ea9430a988b3b558bf233', '未发布', '0', '未发布', 1, 1, 'admin', '2019-04-16 17:41:12', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('337ea1e401bda7233f6258c284ce4f50', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'JSON', 'json', NULL, 1, 1, 'admin', '2019-04-12 17:26:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送失败', '2', NULL, 3, 1, 'admin', '2019-04-12 18:20:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('3fbc03d6c994ae06d083751248037c0e', '78bda155fe380b1b3f175f1e88c284c6', '已完成', '3', '已完成', 3, 1, 'admin', '2019-05-09 16:33:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41d7aaa40c9b61756ffb1f28da5ead8e', '0b5d19e1fce4b2e6647e6b4a17760c14', '通知公告', '1', NULL, 1, 1, 'admin', '2019-04-22 18:01:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41fa1e9571505d643aea87aeb83d4d76', '4e4602b3e3686f0911384e188dc7efb4', '等于', '=', '等于', 4, 1, 'admin', '2019-04-01 16:45:24', 'admin', '2019-04-01 17:49:00');
INSERT INTO `sys_dict_item` VALUES ('43d2295b8610adce9510ff196a49c6e9', '845da5006c97754728bf48b6a10f79cc', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 21:45:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('4f05fb5376f4c61502c5105f52e4dd2b', '83bfb33147013cc81640d5fd9eda030c', '操作日志', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:22:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('50223341bfb5ba30bf6319789d8d17fe', 'd6e1152968b02d69ff358c75b48a6ee1', '业务办理', 'business', NULL, 3, 1, 'admin', '2023-04-22 19:28:05', 'admin', '2019-03-22 23:24:39');
INSERT INTO `sys_dict_item` VALUES ('51222413e5906cdaf160bb5c86fb827c', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '是', '1', '', 1, 1, 'admin', '2019-05-22 19:29:45', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('538fca35afe004972c5f3947c039e766', '2e02df51611a4b9632828ab7e5338f00', '显示', '1', '显示', 1, 1, 'admin', '2025-03-26 18:27:13', 'admin', '2019-04-26 18:39:07');
INSERT INTO `sys_dict_item` VALUES ('5584c21993bde231bbde2b966f2633ac', '4e4602b3e3686f0911384e188dc7efb4', '自定义SQL表达式', 'USE_SQL_RULES', '自定义SQL表达式', 9, 1, 'admin', '2019-04-01 10:45:24', 'admin', '2019-04-01 17:49:27');
INSERT INTO `sys_dict_item` VALUES ('58b73b344305c99b9d8db0fc056bbc0a', '72cce0989df68887546746d8f09811aa', '主表', '2', NULL, 2, 1, 'admin', '2019-03-27 10:13:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '全体用户', 'ALL', NULL, NULL, 1, 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09');
INSERT INTO `sys_dict_item` VALUES ('5d833f69296f691843ccdd0c91212b6b', '880a895c98afeca9d9ac39f29e67c13e', '修改', '3', '', 3, 1, 'admin', '2019-07-22 10:55:07', 'admin', '2019-07-22 10:55:41');
INSERT INTO `sys_dict_item` VALUES ('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '女', '2', NULL, 2, 1, NULL, '2019-01-04 14:56:56', NULL, '2019-01-04 17:38:12');
INSERT INTO `sys_dict_item` VALUES ('66c952ae2c3701a993e7db58f3baf55e', '4e4602b3e3686f0911384e188dc7efb4', '大于', '>', '大于', 1, 1, 'admin', '2019-04-01 10:45:46', 'admin', '2019-04-01 17:48:29');
INSERT INTO `sys_dict_item` VALUES ('6937c5dde8f92e9a00d4e2ded9198694', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'easyui', '3', NULL, 1, 1, 'admin', '2019-03-22 16:32:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '未发送', '0', NULL, 1, 1, 'admin', '2019-04-12 18:19:23', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6a7a9e1403a7943aba69e54ebeff9762', '4f69be5f507accea8d5df5f11346181a', '邮件', '2', '', 2, 1, 'admin', '2031-02-28 10:50:44', 'admin', '2019-04-28 10:59:03');
INSERT INTO `sys_dict_item` VALUES ('6c682d78ddf1715baf79a1d52d2aa8c2', '72cce0989df68887546746d8f09811aa', '单表', '1', NULL, 1, 1, 'admin', '2019-03-27 10:13:29', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6d404fd2d82311fbc87722cd302a28bc', '4e4602b3e3686f0911384e188dc7efb4', '模糊', 'LIKE', '模糊', 7, 1, 'admin', '2019-04-01 16:46:02', 'admin', '2019-04-01 17:49:20');
INSERT INTO `sys_dict_item` VALUES ('6d4e26e78e1a09699182e08516c49fc4', '4d7fec1a7799a436d26d02325eff295e', '高', 'H', '高', 1, 1, 'admin', '2019-04-16 17:04:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('700e9f030654f3f90e9ba76ab0713551', '6b78e3f59faec1a4750acff08030a79b', '333', '333', NULL, NULL, 1, 'admin', '2019-02-21 19:59:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7050c1522702bac3be40e3b7d2e1dfd8', 'c5a14c75172783d72cbee6ee7f5df5d1', '柱状图', 'bar', NULL, 1, 1, 'admin', '2019-04-12 17:05:17', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('71b924faa93805c5c1579f12e001c809', 'd6e1152968b02d69ff358c75b48a6ee1', 'OA办公', 'oa', NULL, 2, 1, 'admin', '2021-03-22 19:27:17', 'admin', '2019-03-22 23:24:36');
INSERT INTO `sys_dict_item` VALUES ('75b260d7db45a39fc7f21badeabdb0ed', 'c36169beb12de8a71c8683ee7c28a503', '不启用', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:29:41', 'admin', '2019-03-18 23:29:54');
INSERT INTO `sys_dict_item` VALUES ('7688469db4a3eba61e6e35578dc7c2e5', 'c36169beb12de8a71c8683ee7c28a503', '启用', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:29:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:30:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '按钮权限', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:25:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:30:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('83250269359855501ec4e9c0b7e21596', '4274efc2292239b6f000b153f50823ff', '可见/可访问(授权后可见/可访问)', '1', '', 1, 1, 'admin', '2019-05-10 17:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84778d7e928bc843ad4756db1322301f', '4e4602b3e3686f0911384e188dc7efb4', '大于等于', '>=', '大于等于', 5, 1, 'admin', '2019-04-01 10:46:02', 'admin', '2019-04-01 17:49:05');
INSERT INTO `sys_dict_item` VALUES ('848d4da35ebd93782029c57b103e5b36', 'c5a14c75172783d72cbee6ee7f5df5d1', '饼图', 'pie', NULL, 3, 1, 'admin', '2019-04-12 17:05:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84dfc178dd61b95a72900fcdd624c471', '78bda155fe380b1b3f175f1e88c284c6', '处理中', '2', '处理中', 2, 1, 'admin', '2019-05-09 16:33:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '子菜单', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:25:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '微信', '3', NULL, 3, 1, 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31');
INSERT INTO `sys_dict_item` VALUES ('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '启用', '1', '', 0, 1, 'admin', '2020-07-18 23:19:27', 'admin', '2019-05-17 14:51:18');
INSERT INTO `sys_dict_item` VALUES ('8cdf08045056671efd10677b8456c999', '4274efc2292239b6f000b153f50823ff', '可编辑(未授权时禁用)', '2', '', 2, 1, 'admin', '2019-05-10 17:55:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8ff48e657a7c5090d4f2a59b37d1b878', '4d7fec1a7799a436d26d02325eff295e', '中', 'M', '中', 2, 1, 'admin', '2019-04-16 17:04:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('948923658baa330319e59b2213cda97c', '880a895c98afeca9d9ac39f29e67c13e', '添加', '2', '', 2, 1, 'admin', '2019-07-22 10:54:59', 'admin', '2019-07-22 10:55:36');
INSERT INTO `sys_dict_item` VALUES ('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '不启用', '0', NULL, 1, 1, 'admin', '2019-03-18 23:19:53', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a1e7d1ca507cff4a480c8caba7c1339e', '880a895c98afeca9d9ac39f29e67c13e', '导出', '6', '', 6, 1, 'admin', '2019-07-22 12:06:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a2be752dd4ec980afaec1efd1fb589af', '8dfe32e2d29ea9430a988b3b558bf233', '已撤销', '2', '已撤销', 3, 1, 'admin', '2019-04-16 17:41:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '一级菜单', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:24:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('adcf2a1fe93bb99a84833043f475fe0b', '4e4602b3e3686f0911384e188dc7efb4', '包含', 'IN', '包含', 8, 1, 'admin', '2019-04-01 16:45:47', 'admin', '2019-04-01 17:49:24');
INSERT INTO `sys_dict_item` VALUES ('b029a41a851465332ee4ee69dcf0a4c2', '0b5d19e1fce4b2e6647e6b4a17760c14', '系统消息', '2', NULL, 1, 1, 'admin', '2019-02-22 18:02:08', 'admin', '2019-04-22 18:02:13');
INSERT INTO `sys_dict_item` VALUES ('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '正常', '0', NULL, NULL, 1, 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20');
INSERT INTO `sys_dict_item` VALUES ('b57f98b88363188daf38d42f25991956', '6b78e3f59faec1a4750acff08030a79b', '22', '222', NULL, NULL, 0, 'admin', '2019-02-21 19:59:43', 'admin', '2019-03-11 21:23:27');
INSERT INTO `sys_dict_item` VALUES ('b5f3bd5f66bb9a83fecd89228c0d93d1', '68168534ff5065a152bfab275c2136f8', '无效', '0', '无效', 1, 1, 'admin', '2019-04-26 19:21:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('b9fbe2a3602d4a27b45c100ac5328484', '78bda155fe380b1b3f175f1e88c284c6', '待提交', '1', '待提交', 1, 1, 'admin', '2019-05-09 16:32:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('ba27737829c6e0e582e334832703d75e', '236e8a4baff0db8c62c00dd95632834f', '同步', '1', '同步', 1, 1, 'admin', '2019-05-15 15:28:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('bcec04526b04307e24a005d6dcd27fd6', '880a895c98afeca9d9ac39f29e67c13e', '导入', '5', '', 5, 1, 'admin', '2019-07-22 12:06:41', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c53da022b9912e0aed691bbec3c78473', '880a895c98afeca9d9ac39f29e67c13e', '查询', '1', '', 1, 1, 'admin', '2019-07-22 10:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c5700a71ad08994d18ad1dacc37a71a9', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '否', '0', '', 1, 1, 'admin', '2019-05-22 19:29:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('cbfcc5b88fc3a90975df23ffc8cbe29c', 'c5a14c75172783d72cbee6ee7f5df5d1', '曲线图', 'line', NULL, 2, 1, 'admin', '2019-05-12 17:05:30', 'admin', '2019-04-12 17:06:06');
INSERT INTO `sys_dict_item` VALUES ('d217592908ea3e00ff986ce97f24fb98', 'c5a14c75172783d72cbee6ee7f5df5d1', '数据列表', 'table', NULL, 4, 1, 'admin', '2019-04-12 17:05:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '男', '1', NULL, 1, 1, NULL, '2027-08-04 14:56:49', 'admin', '2019-03-23 22:44:44');
INSERT INTO `sys_dict_item` VALUES ('e6329e3a66a003819e2eb830b0ca2ea0', '4e4602b3e3686f0911384e188dc7efb4', '小于', '<', '小于', 2, 1, 'admin', '2019-04-01 16:44:15', 'admin', '2019-04-01 17:48:34');
INSERT INTO `sys_dict_item` VALUES ('e94eb7af89f1dbfa0d823580a7a6e66a', '236e8a4baff0db8c62c00dd95632834f', '不同步', '0', '不同步', 2, 1, 'admin', '2019-05-15 15:28:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f0162f4cc572c9273f3e26b2b4d8c082', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'booostrap', '1', NULL, 1, 1, 'admin', '2021-08-22 16:32:04', 'admin', '2019-03-22 16:33:57');
INSERT INTO `sys_dict_item` VALUES ('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送成功', '1', NULL, 2, 1, 'admin', '2019-04-12 18:19:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f2a7920421f3335afdf6ad2b342f6b5d', '845da5006c97754728bf48b6a10f79cc', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 21:46:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f37f90c496ec9841c4c326b065e00bb2', '83bfb33147013cc81640d5fd9eda030c', '登录日志', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:22:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f753aff60ff3931c0ecb4812d8b5e643', '4c03fca6bf1f0299c381213961566349', '双排布局', 'double', NULL, 3, 1, 'admin', '2019-04-12 17:43:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f80a8f6838215753b05e1a5ba3346d22', '880a895c98afeca9d9ac39f29e67c13e', '删除', '4', '', 4, 1, 'admin', '2019-07-22 10:55:14', 'admin', '2019-07-22 10:55:30');
INSERT INTO `sys_dict_item` VALUES ('fcec03570f68a175e1964808dc3f1c91', '4c03fca6bf1f0299c381213961566349', 'Tab风格', 'tab', NULL, 1, 1, 'admin', '2019-04-12 17:43:31', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('fe50b23ae5e68434def76f67cef35d2d', '78bda155fe380b1b3f175f1e88c284c6', '已作废', '4', '已作废', 4, 1, 'admin', '2021-09-09 16:33:43', 'admin', '2019-05-09 16:34:40');

-- ----------------------------
-- Table structure for sys_fill_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_fill_rule`;
CREATE TABLE `sys_fill_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_sys_fill_rule_code`(`rule_code`) USING BTREE,
  UNIQUE INDEX `uk_sfr_rule_code`(`rule_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_fill_rule
-- ----------------------------
INSERT INTO `sys_fill_rule` VALUES ('1202551334738382850', '机构编码生成', 'org_num_role', 'org.jeecg.modules.system.rule.OrgCodeRule', '{\"parentId\":\"c6d7cb4deeac411cb3384b1b31278596\"}', 'admin', '2019-12-09 10:37:06', 'admin', '2019-12-05 19:32:35');
INSERT INTO `sys_fill_rule` VALUES ('1202787623203065858', '分类字典编码生成', 'category_code_rule', 'org.jeecg.modules.system.rule.CategoryCodeRule', '{\"pid\":\"\"}', 'admin', '2019-12-09 10:36:54', 'admin', '2019-12-06 11:11:31');
INSERT INTO `sys_fill_rule` VALUES ('1260134137920090113', '订单流水号', 'shop_order_num', 'org.jeecg.modules.online.cgform.rule.OrderNumberRule', '{}', 'admin', '2020-12-07 18:29:50', 'admin', '2020-05-12 17:06:05');

-- ----------------------------
-- Table structure for sys_gateway_route
-- ----------------------------
DROP TABLE IF EXISTS `sys_gateway_route`;
CREATE TABLE `sys_gateway_route`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `router_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务名',
  `uri` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务地址',
  `predicates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '断言',
  `filters` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '过滤器',
  `retryable` int(11) NULL DEFAULT NULL COMMENT '是否重试:0-否 1-是',
  `strip_prefix` int(11) NULL DEFAULT NULL COMMENT '是否忽略前缀0-否 1-是',
  `persistable` int(11) NULL DEFAULT NULL COMMENT '是否为保留数据:0-否 1-是',
  `show_api` int(11) NULL DEFAULT NULL COMMENT '是否在接口文档中展示:0-否 1-是',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态:0-无效 1-有效',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_gateway_route
-- ----------------------------
INSERT INTO `sys_gateway_route` VALUES ('1331051599401857026', 'jeecg-demo-websocket', 'jeecg-demo-websocket', 'lb:ws://jeecg-demo', '[{\"args\":[\"/vxeSocket/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-24 09:46:46', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-cloud-websocket', 'jeecg-system-websocket', 'jeecg-system-websocket', 'lb:ws://jeecg-system', '[{\"args\":[\"/websocket/**\",\"/eoaSocket/**\",\"/newsWebsocket/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-demo', 'jeecg-demo', 'jeecg-demo', 'lb://jeecg-demo', '[{\"args\":[\"/mock/**\",\"/test/**\",\"/bigscreen/template1/**\",\"/bigscreen/template2/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);
INSERT INTO `sys_gateway_route` VALUES ('jeecg-system', 'jeecg-system', 'jeecg-system', 'lb://jeecg-system', '[{\"args\":[\"/sys/**\",\"/eoa/**\",\"/joa/**\",\"/online/**\",\"/bigscreen/**\",\"/jmreport/**\",\"/desform/**\",\"/process/**\",\"/act/**\",\"/plug-in/***/\",\"/druid/**\",\"/generic/**\"],\"name\":\"Path\"}]', '[]', NULL, NULL, NULL, NULL, 1, 'admin', '2020-11-16 19:41:51', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_type` int(11) NULL DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(11) NULL DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `request_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) NULL DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_userid`(`userid`) USING BTREE,
  INDEX `index_logt_ype`(`log_type`) USING BTREE,
  INDEX `index_operate_type`(`operate_type`) USING BTREE,
  INDEX `index_log_type`(`log_type`) USING BTREE,
  INDEX `idx_sl_userid`(`userid`) USING BTREE,
  INDEX `idx_sl_log_type`(`log_type`) USING BTREE,
  INDEX `idx_sl_operate_type`(`operate_type`) USING BTREE,
  INDEX `idx_sl_create_time`(`create_time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('b09ccd219a1ce5c7270bb659748b8330', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 15:34:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a22ddd4b5b0b84bd7794edd24b25fc64', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1547883299809,\"email\":\"zhangdaiscott@163.com\",\"id\":\"7eac655877842eb39dc2f0469f3964ec\",\"name\":\"zhang daihao\"}]', NULL, 25, 'admin', '2019-01-19 15:34:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('07a0b3f8b4140a7a586305c2f40a2310', 2, '删除测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '[\"7eac655877842eb39dc2f0469f3964ec\"]', NULL, 14, 'admin', '2019-01-19 15:38:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d7902eeab2c34611fad046a79bff1c1b', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1547883544104,\"email\":\"zhangdaiscott@163.com\",\"id\":\"4436302a0de50bb83025286bc414d6a9\",\"name\":\"zhang daihao\"}]', NULL, 1682, 'admin', '2019-01-19 15:39:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a68160f37cace166fedd299c4ca0be10', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 15:40:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c6c0316b6989bf1eea0a3803f593bf69', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 15:47:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4b1341863a8fffeccda8bbe413bd815f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 15:59:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ed50b1fbc80c3b953f4551081b10335e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 16:19:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dabdcb8e15ea9215a1af22f7567ff73d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 16:48:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('446724ea6dd41f4a03111c42e00d80cd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 16:56:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0e41fe3a34d5715bf4c88e220663583a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 17:04:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9f2db1ffaf89518a25cc6701da0c5858', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 17:05:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('954f1ccb8b230d2d7d4858eec3aba0a4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 17:08:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7374f3a2ccb20216cf8eecb26037ce0a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 18:08:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('130de55edac71aab730786307cc65936', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 20:22:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0bc44e2d682c9f28525d203589a90b43', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 20:31:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('122edcafd54dd06e12838f41123d9d5d', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"age\":28,\"birthday\":1546617600000,\"createBy\":\"admin\",\"createTime\":1547901234989,\"id\":\"42c08b1a2e5b2a96ffa4cc88383d4b11\",\"name\":\"秦500\",\"punchTime\":1546691611000}]', NULL, 21387, 'admin', '2019-01-19 20:34:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1a570aac0c30ac2955b59e2dc7a6204c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 20:58:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c18db091677ec01d55e913662b9028a9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:19:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('88d8b4b50bdab58c52fe25fa711fbbef', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:21:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6b876be6e384337b36ad28a4a5868be8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:22:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cb6b52fbbdd4c5698c17edaf9960e11e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:22:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fea8e1e2d229557185be0d9a10ebce17', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:55:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c1842fc83cdf0b0cc0264bf093e9c55d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:56:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('543970eba4d1c522e3cb597b0fd4ad13', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 22:53:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e9ce2b3f7ac1fa3f5f7fd247207ca5c0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 22:53:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0e365a21c60e4460813bdc4e3cb320a3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 23:01:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d3df1a4057b6d7fb4dab073a727ba21f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 23:14:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8f616500d666a5a67bc98e7ccd73c2e2', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1547912194199,\"id\":\"ffa9da1ad40632dfcabac51d766865bd\",\"name\":\"秦999\"}]', NULL, 386, 'admin', '2019-01-19 23:36:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('055cf35c8865761b479c7f289dc36616', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1547912238787,\"email\":\"zhangdaiscott@163.com\",\"id\":\"c2c0d49e3c01913067cf8d1fb3c971d2\",\"name\":\"zhang daihao\"}]', NULL, 16, 'admin', '2019-01-19 23:37:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('69e3164d007be2b9834e4fb398186f39', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 23:38:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('92e514fee917a1a459c4ffdb0ca42516', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 10:20:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d3f08843a9b2b3284711e376fb785beb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 10:58:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('76bea561f662ec0ccf05bc370f1ffe35', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 11:08:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('273081678d85acebaa6615973bff31db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b26369680b41d581649cf865e88331e9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:03:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7313b43ff53015d79a58b4dc7c660721', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:03:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f99912c5ff252594f14d31b768f8ad15', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:03:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dcec1957987abbe6658f1f2c96980366', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:05:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c7b6156c4f42b70c562b507766f4546c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:14:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('52673feae24ea5bc3ca111f19c9a85d4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:16:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('507b55d3b5ddc487fb40ca1f716a1253', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:43:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7351132f4f5f65e5bf157dd7ad5344a4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:51:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('961992e05772bc7ad2ca927cf7649440', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:55:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3b07fda32423a5696b2097e1c23c00d4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:04:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8447099784da63b3b2cd2fbbc5eabcea', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:04:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b20ff98a10af3c25c1991741fd59ea64', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:07:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9acebd2d37c9078f9568125fb9696976', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:07:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d70c2847d8d0936a2a761f745a84aa48', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:39:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('279e519d647f1a4e1f85f9b90ab370b9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 17:01:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b605a83a9b5f3cdaaa1b3f4f41a5f12d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 17:04:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0a24b1f04f79a2bcb83c4cd12d077cbc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 17:34:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('661c4792f00b0814e486c3d623d7259f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 18:06:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d1746c5c937fcb650bd835ff74dabdff', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 18:06:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8ec3a287a37d155047e80a80769d5226', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 18:37:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6cbd2a9257fae1cb7ff7bc2eb264b3ab', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 19:08:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f06e8fa83b408be905b4dc7caeaf9a80', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 19:40:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f84e86c9a21149134b1f2599a424164b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 20:12:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('88bfc5b77b4be0d6d0f7c8661cf24853', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:25:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b9bf472a12fc25a9d4b500421b08b025', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:53:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dbbcfb7f59311637a613ec9a6c63f04a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:53:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('69ea2322f72b41bcdc7f235889132703', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:54:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('62d197757e2cb40f9e8cb57fa6a207f7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:54:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ccad29843623a6c3ca59548b1d533b15', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:56:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4d9299e2daac1f49eac0cec75a90c32e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 11:28:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('43848099c1e70910ba1572868ee40415', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 11:28:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6fb7db45b11bc22347b234fda07700c8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 12:00:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e8cde8dcd6253b249d67a05aaf10f968', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 12:30:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6a4231540c73ad67128d5a24e6a877ff', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 12:54:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2b3be3da6ba9d1ee49f378d729d69c50', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 13:24:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('78f519b618f82a39adad391fbf6b9c7a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 13:49:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1487d69ff97888f3a899e2ababb5ae48', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 14:21:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cc7fa5567e7833a3475b29b7441a2976', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 14:21:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('52e36d72cd04bea2604747e006b038ec', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 19:47:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('523a54948d5edaf421566014b66f9465', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 19:50:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('48e4e10ac7e583050fd85734f0676a7c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 19:58:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dee4d42c439b51b228ab5db5d0723fc0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 20:02:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('965c74ffe09d8a06bb817efa6d62254b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 10:01:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('059bac84373e9dae94363ea18802d70f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 10:06:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9ef3f1ed07003e3abec3445920b062f1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:17:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0169622dcd4e89b177a0917778ac7f9c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:17:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f8960d64e93606fa52220cc9c4ae35a2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:21:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4261867172d0fd5c04c993638661ac0b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:24:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('32464c6f7f772ddda0a963b19ad2fd70', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:30:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d29cf7aae44523bf2f3d187e91356fe8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 12:20:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0e9c0d0d26ddc652a7277912e0784d11', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 12:27:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('25f8b1b345b1c8a070fe81d715540c85', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 15:39:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8327cced60486bad4009276e14403502', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 09:56:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('515c28df59f07478339b61ca5b1b54a8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 10:34:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fa0612372b332b6c3ce787d9ca6dd2cc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 11:48:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8300e85a2c2f16c2358d31e8b364edf7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 11:55:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3d9874f248a984608ca98c36c21c5a7a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 13:05:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cc8ab347f332c55570830c5fc39bbf9f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 13:08:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8742a458bf166fd5f134ac65fa8903f9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 13:09:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bbe2e637bafa0d7f465dc9e1266cff3d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 11:16:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b3474fc5aad9ec2f36ccbbf7bf864a69', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 11:17:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('260bb025d91b59d0135d635ef85eeb82', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 11:40:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1a5b71c9458c17f9bcb19a5747fd47dd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 11:56:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e720278084b0d4316448ec59d4e3399d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 15:52:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f6646950c8465da1d1219b7a7a209fc2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 19:14:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('36358cacfc5eb3ba7e85cfe156218b71', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 19:14:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ee2bb63c47c868d59a45503b3d2f34ea', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 19:16:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b0d11dfec52e02f504c63e2f8224b00d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 19:27:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4acfbc327681d89dab861c77401f8992', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 10:54:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('96ada57ac17c4477f4e4c8d596d4cc1a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 10:54:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e4e40e21437b23b74324e0402cceb71a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 11:34:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d92d9e003666c6b020f079eaee721f9f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 12:08:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('68f7394ca53c59438b2b41e7bb9f3094', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:09:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a9b34565c6460dc9cede00ad150393f9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:17:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fa427f74dc6bd9cca3db478b5842f7f7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:19:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8b66ec251e3107765768dbd0590eeb29', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:25:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e42a38382fce916909d6d09f66147006', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:28:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ed0bbe9047a7471ae1cdc1c2941eccb1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-29 17:52:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('36fd54ce8bc1ee4aac9e3ea4bfdcd5a8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-29 18:49:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('40b3a9bee45b23548250936310b273f4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 14:42:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c9be887c9292153e39861c91243b7432', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 15:12:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e40823376fa8c0e74a4e760de695e824', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 15:36:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('993010965223b8e3a7a784409f7e377e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 15:50:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('aa47c8cf2a4f2de16f415b9d9d3dbf05', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 16:14:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4a0020835a71fc6dcaefd01968d21f81', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 18:46:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fa9cebbb6af23d2830584b3aacd51e46', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-31 13:59:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('60a975067f02cf05e74fa7b71e8e862a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-31 14:31:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fbb8834e9736bdd4b6d3baee895c4ca4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-31 18:05:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('623e4bc7c098f368abcc368227235caf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 09:48:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9f31eedbe3f3c5c431b490d5fec0094c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 09:56:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b945fe8b63e0fc26d02c85466f36ebd9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 09:57:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('968d434c45aae64c9ad0e86d18238065', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 10:02:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('732a1015057fde25d81ee12a7fbf66b2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 10:05:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d9a0bb9fe6d2c675aa84f9441c0bd8bb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 10:56:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9c64406daa2b6e7ad1f6776789d61e43', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 10:56:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1912a44dd4a6ffa1636d2dde9c2f1ab7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 11:01:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d19b6e77ab1b6d6aa58996a93918754c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 11:33:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('81f7a606359aff9f97f95c15ce8e7c69', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 11:33:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7da063020a42db99e0f3bb9500498828', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 13:45:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b6ee157afd006ceddc8c7558c251192e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 14:20:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('65ace1ae98891f48ab4121d9258e4f1e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 10:45:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e2af7674bb716a7c0b703c7c7e20b906', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 11:38:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('60d4f59974170c67826e64480533d793', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 13:25:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('775e987a2ca37edc4f21e022b265a84a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 13:36:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dd6fbb9b6224c927c0923c16b9285525', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 13:37:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f3d371d6f71409ea2fe52405b725db4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 13:38:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c33b4e0bbf998330e44fad65e9d0029e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 15:54:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('189842bf681338dc99dfa66d366a0e6f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 15:55:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e14cd21cf5eaad9ea3689730a824a50c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 16:12:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5cf2431447eab30fd3623e831033eea0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 19:17:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9bfe7312f2951503082a28c2cc966ce4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 10:24:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('da9a15efcf4e1e4f24647db7e2143238', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 11:19:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8317a81bce60a10afeb44af6ef6c807a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 11:27:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0a6eb1fa998b749012216542a2447ae7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 11:29:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e5a9b045449136719d4c19c429c2dd56', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 13:08:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('aaf10eab9c2b6ed6af1d7a9ce844d146', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 13:08:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b4ccdfc1280e73439eb1ad183076675b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 14:10:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('018fe8d3f049a32fb8b541c893058713', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 15:17:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f3aab8f9dff7bf705aa29c6dcce49011', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 15:18:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('efa591832b375b4609a5890b0c6f3250', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:00:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2c6822927334eb0810b71465fd9c4945', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:02:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7289cf420ac87ea0538bde81435b1aaa', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:03:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('db8adca4aa7972fdc283be96d877efe0', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:04:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c5e541648bab341230c93377b4d4e262', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:05:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e261674e2640fe6d0a3cd86df631537d', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:05:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('406e79995e3340d052d85a74a5d40d1b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:23:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4de1ed55165f7086f1a425a26a2f56ec', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:26:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d8eed69045aae6cedbff402b4e35f495', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 18:22:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bbf4fb593d6918cc767bb50c9b6c16c5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 10:44:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('506ce2d73a038b6e491a35a6c74a7343', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 13:44:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4303dbb3e502f11a3c4078f899bb3070', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 17:28:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2de252a92b59ebfbf16860cc563e3865', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 22:04:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e4c330b381e2fbfde49f1d4dd43e68b7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 22:22:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('22735c059b01949a87cb918f5ef3be76', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 22:41:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c5954beca75d6a0c014e2de3b621275a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 22:41:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('db8c89112bf4706fb558664dd741aa46', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 09:33:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fa0ce422c12a565461eca56006052891', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 10:13:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a34ed4c6fef2b9f07a20e54ef4501b99', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 10:48:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b55cc05e8dd4279c0fa145833db19ba8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 11:37:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5c675eeb69795180eee2c1069efc114b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 12:59:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5dee273feb8dd12989b40c2c92ce8c4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 13:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('994efef0ebca19292e14a39b385b0e21', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 16:22:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fc22aaf9660e66558689a58dfa443074', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 16:30:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2c6ede513b83fbc23aaedb89dbfa868a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 18:03:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('13c1e763e9d624a69727a38b85411352', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 18:39:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fadb32d678346ee4bab02997988ff3bc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 22:55:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0aa792eadeae39a1ed2a98ea5d2f6d27', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-16 09:11:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0aa9272c0581e1d7f62b1293375b4574', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-16 17:26:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('81c9056ac38e6f881d60f3d41df1845e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-17 11:44:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('eb4536aa50a58985baf0a763a1ce2ebf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-17 19:48:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f9062582881b42f6b139c313d8ab0463', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-17 20:47:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('22d8a2fbd53eafb21f6f62ae073c0fc1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-17 22:28:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7bc7b1ff923dbb19fb0ecd800cd690bd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-18 09:34:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('faea0dbfb7f86b571fed0dd270623831', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-18 14:12:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('063baad688535096d2ed906ae6f3a128', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-18 22:09:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('528baecc596a66eaadc8887bff911f55', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 10:08:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e540ca989819c54baefffbc3d05e8b58', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 10:10:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0643f3ad4394de9fb3c491080c6a7a03', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 10:18:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('eb0b8a7cdf77df133566d7bd5a5f1fc0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 11:02:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0913bb0e92715892c470cf538726dfbc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 16:17:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5034aec34f0b79da510e66008dbf2fcc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 16:18:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e4afd66ac249dde9c3bd9da50f9c2469', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 17:41:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('07132c1228b1c165f62ea35f4ff1cbe9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 18:15:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4f7f587bec68ed5bf9f68b0ccd76d62b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 21:01:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('12709e62742056aa4a57fa8c2c82d84a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 09:13:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('680b3e6e4768d80d6ea0ce8ba71bdd0e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 09:14:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a6e323785535592ee208aa7e53554644', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 09:15:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3a4a0e27d77aa8b624180e5fd5e4004e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 09:51:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b98b7ac9e890657aa86a900763afbe2a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 11:49:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d1eb2a8ebed28d34199c5fc4a1579c4c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 12:55:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('85949de2d54078e6b8f3df0a3c79c43d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:08:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('77579d78a903635cc4942882f568e9e5', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:13:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('679e12ba247575749e03aa8f67347ac6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:14:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5c35117cbeb39428fcc2ddd90ce96a2b', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:18:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7225200c3cec4789af4f1da2c46b129d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:19:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('22ad9f87788506456c774801389d6a01', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:20:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('81c95e1c8805fa191753fc99ba54c3e9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:01:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7285730e2644f49def0937dc99bfbe3d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:07:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4922f2f1173a1edc11dfd11cb2a100ae', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:08:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e37cce529d0c98c47b4977d7ddf963c0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:17:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('66493cd0347eeb6ee2ef5ee923604683', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:29:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f04910792a74c563d057c4fcb345f963', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:30:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('210a01dcb34302eaed0d1e95820655d0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:30:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('48929ec94226d9ccff9fae4ff48e95e3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:32:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d2ac19a709ea08f7259286df28efd635', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:35:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d8fd478e6ceb03a575719e1a54342333', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:43:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a35a476c303983701045507c9af3fa03', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:44:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7e41208e29d412d586fc39375628b0d0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-21 15:34:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1f33d11e1833ae497e3ef65a3f02dd5b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-21 19:51:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dae0658783324c81fa6909b6e4a25a65', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 11:46:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a77d29673cfe97c9e03cfb879b934f62', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 12:41:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('baaf37e5937f938ac92856bc74cc2b86', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 13:48:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3f47afcdce94596494746ac34eebf13b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 13:59:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b99fc7c53d4e3edc0c618edc11d3a073', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 15:58:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('024a4c5ba78538d05373dac650b227d1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 15:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('873f425879ef9ca7ced982acda19ea58', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 16:35:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1b05434820cbcb038028da9f5cda31bb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 17:45:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5f314fc45492d7f90b74d1ca74d1d392', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 17:45:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('20751803c1e5b2d758b981ba22f61fcd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 18:11:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('50e8de3e6b45f8625b8fd5590c9fd834', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 18:23:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6737424e01b38f2273e9728bf39f3e37', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 19:43:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0473dedf4aa653b253b008dacff2937c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 13:04:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a95192071de908f37f4998af4c269bcb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 14:26:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3569ada5c43a4022d3d13ac801aff40e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 14:50:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('562092eb81561ee0f63be5dd9367d298', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:20:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('131ccd390401b6e3894a37e4d1d195d3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:26:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c12e3d7655a5a8b192bb9964a2a66946', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:35:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6bc98b7dc91a3924f794202867367aca', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:50:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('002b7112a147edeb6149a891494577d0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:52:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('202344b08b69ad70754e6adaa777eae0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:54:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('eeb1f2e2c1b480e0bb62533848cbb176', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:55:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('94fe4465d779e0438cfe6f0cb1a1aa7e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:57:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d03aaee882d13b796db860cb95f27724', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1db82f78233c120c6ec7648ca1177986', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 23:07:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7dc448f04edf4b9655362ad1a1c58753', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 23:10:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fce1553149aea9bfd93e089f387199c8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 23:11:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e713a89e753cbecf1e10247b2112c3f8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 23:14:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0a634ed086442afa7a5fc9aa000b898a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:10:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bfa0766f53dbd3a0fe4043f57bd9bbee', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:35:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e3b531fa12e47ac19a2ab0c883dee595', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:40:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('18eafaeec588403245269a41732d1a74', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:45:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('99357d793f2507cfb7b270677b4fe56c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:46:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b38f42f4e15ee72e494bdf6f6feb0ae7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:49:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bfe758860662ae07a15598396a12cfaa', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:50:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('69a7a5b960d6aedda5c4bd8b877be0a8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:50:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4084f184160940a96e47d7be1fab4ea3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1241cf8e9fd0e28478a07bf755f528c5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e0da357be27d66de1c9e9b8ecb22f9f9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9f4960f89a10d7fdcf22d1ea46143fff', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ab8a71b7565d356d12e12c6730b0ceb0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('35fdedc363d9fe514b44095da40f170b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7126b35521cd0dba932e6f04b0dac88f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:52:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9bd6e11c5a2f0bb70215cfa097a4b29c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:57:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7e2edea80050d2e46aa2e8faef8e29ce', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:01:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('190eb7b4d493eb01b13c5b97916eeb13', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:09:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ea268ad02db29012b2f1bd3d4aea1419', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:10:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7dc498b45fbf25c59686d9dda0d3eb66', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:12:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('583d3aa445d408f4ecd19ee0a85514af', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:18:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9cea908c7a78dc77fdaed975819983bd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:20:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d70329497664391dabc25effe7406c50', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:25:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0b9940fc5487026a3f16cade73efead5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:28:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f21f9f700bf4f5bd9edda7a16ed338f8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:30:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f5c08b45885d248c422a5d406cd5f223', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:41:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e9a31bfc128b3f5ae01656916c605ddb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:44:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6baccd034e970c6f109791cff43bc327', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:46:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d2b516c5d834bd0fca91cda416fe499e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:46:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f9abb524e0dc3571571dc6e50ec6db75', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:47:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d1111594fef195980370c5f91ccf9212', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:48:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9174fe77fe8ba69243f72d5577b391d3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:48:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2ab9cf95ac35fdbb8fe976e13c404c41', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:49:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9be945480d69038865279f02df5cee45', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:49:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c2bfe3b92e6bfb7016cc82e95419a602', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:54:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7c310b99a84411798a2aaf4074a28e7e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b23293288a84ba965509f466ed0e7e2f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:43:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cf590576a5f6a42b347e6b5bf5ebf5bd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:43:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b5df1807f08af5db640da11affec24d3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:49:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2746af3dd0309cdeeff7d27999fbcda1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:52:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2a383edf5445dc8493f5240144ca72f5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:56:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d2910961a0ff046cc3ef6cf8d33a8094', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 15:38:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('00f763e007e5a6bddf4cb8e562a53005', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 15:41:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8ab131214232450ca202103ef81f0a2d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 15:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('606cb4f81f9bb412e2b2bdaa0f3e5dda', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 16:27:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7b85fba62bc001773fff1a54e1609aef', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 16:28:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b3127e34f395e1f1790450da5689a4a1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 16:28:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fb2871cda1421b766f8e68cb36a22bf3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:35:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('29fb5d4297748af3cd1c7f2611b7a2d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:38:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('580256f7c7ea658786dba919009451b6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:39:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8802209912ca66d56f2ea241ffd0cc13', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:52:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4778fe2992fd5efd65f86cb0e00e338e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:53:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d68957c067fb27e80a23babebdb1591f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:55:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('472c34745b8f86a46efa28f408465a63', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:56:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('26975f09c66025d1c8d87a6894a3c262', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 18:29:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e4a166fcd0fc4037cb26e35cc1fb87b2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 18:32:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('286af82485388bfcd3bb9821ff1a4727', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 18:34:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('eaf74cd1489b02d39c470eed131fc918', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 18:37:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e48a6bd82c92a8005c80c5ef36746117', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 19:32:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('10922e0d030960e6b026c67c6179247b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 20:07:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b53c9e8ce1e129a09a3cda8c01fe644c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:38:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('65be8e015c9f2c493bd0a4e405dd8221', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:40:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8ff27392165c8c707ee10ec0010c7bb8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:44:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('337b647a4085e48f61c7832e6527517d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:45:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('caee69e55ec929f7ba904280cac971e6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:49:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bdeae62057ae9858b6a546c1bdb6efc7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:49:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ea66ed22fde49640cee5d73c6ef69718', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:50:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('47c5a5b799e10255c96ccd65286541ef', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:50:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cfba34db2d7fbb15a2971212f09b59ec', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:51:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('faad055dd212ed9506b444f8f1a920b9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:00:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ef7219725c4b84cc71f56f97a8eab01a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:08:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2811e224e4e8d70f2946c815988b9b7c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:08:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7feae2fb5001ca0095c05a8b08270317', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:17:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b4c3c7af9899b9af3f42f730cfabc9b2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:17:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('28e8a7ed786eaced3182c70f68c7ea78', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:18:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3a76114e431912ff9a19a4b6eb795112', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:19:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('557b3c346d9bc8f7a83fac9f5b12dc1b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:20:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e92544c6102243e7908e0cbb217f5198', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:48:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('61445cc950f5d04d91339089b18edef9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:13:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('776c2e546c9ab0375d97590b048b8a9d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:13:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ef7669ac0350730d198f59b8411b19d1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:28:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b3cceb535fa5577cc21b12502535ad29', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:29:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('18a51a5f04eeaad6530665f6b0883f0c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:34:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8a13971104d70e35111d10dd99de392e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:34:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6d93d5667245ef8e5d6eafdbc9113f51', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:34:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7ba3df5d2612ac3dd724e07a55411386', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:35:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7148b3d58f121ef04bcbea5dd2e5fe3b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:35:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('709b0f2bf8cb8f785f883509e54ace28', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:37:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4114145795da30b34545e9e39b7822d9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:39:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f543c25bdd741055aeb4f77c5b5acf58', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:40:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bc594b8921a0bcdb26d4a93916316092', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('11f511eeeb2e91af86b9d5e05132fc89', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 15:13:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('810deb9fd39fa2f0a8e30e3db42f7c2b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 18:51:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d5b9e5d9bfbbd8e6d651087ead76d9f7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 20:17:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('016510fc662d9bb24d0186c5478df268', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-02-26 20:27:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('eb6f5196de91dd2e8316696bddd61345', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 22:26:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d762a1cba3dc23068f352323d98909e0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 22:26:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('69fc2407b46abad64fa44482c0dca59f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-01 12:04:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0d6cd835072c83f46d1d2a3cf13225d3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-01 12:04:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e78f8832d61c1603c17767ee2b78ef07', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-01 19:50:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0475b4445d5f58f29212258c1644f339', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-01 20:20:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2b5a76869a7d1900487cd220de378dba', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-05 16:32:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('21b8493a05050584d9bb06cfc2a05a6b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-05 17:29:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a61d9db83888d42b0d24621de48a880d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-05 22:49:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('097be3e8fdf77a245f5c85884e97b88c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-05 22:52:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7b2b322a47e1ce131d71c50b46d7d29e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-06 15:55:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cedf399271592c27dcb6f6ce3312e77d', 2, '删除测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '[\"7501\"]', NULL, 24, 'admin', '2019-03-06 16:03:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('efe77038e00cfff98d6931c3e7a4c3d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-06 16:20:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ffac84fff3c65bb17aa1bda3a0d2029e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-06 20:10:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('45819fe1b96af820575a12e9f973014e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 09:19:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('87885bc889d23c7c208614da8e021fb0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 10:23:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('54c2bad38dafd9e636ce992aa93b26af', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 11:57:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d3c4f120d8a23b62ec9e24b431a58496', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 14:17:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d01d658731dac4b580a879d986b03456', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 15:00:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ab550d09101a88bc999ea57cbb05aa5a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 17:59:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('aeb738ab880c262772453d35fc98f2f2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 18:50:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('375aadb2833e57a0d5a2ce0546a65ca4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 20:38:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('96d7fe922f46123e0497e22dedf89328', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 23:10:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('636d37d423199e15b4030f35c60859fe', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 10:07:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a7d1f4a774eb8644e2b1d37ca5f93641', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 10:16:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('017e9596f489951f1cc7d978085adc00', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 10:58:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0b42292a532c796495a34d8d9c633afa', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 12:58:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b428718441be738cf8b5ce92109068c3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 16:21:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('89d2bc84e056f327291c53821d421034', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 16:57:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e09bb0a74c268a9aaf1f94edcc2eb65a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 18:26:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0dc22e52c9173e4e880728bc7734ff65', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 11:14:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5358b182eab53a79eec236a9cee1e0fc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 13:01:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('23176e4b29c3d2f3abadd99ebeffa347', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 16:37:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('703fbcb7e198e8e64978ec0518971420', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 17:53:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9e9d01c430b72703ce3a94589be54bbe', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 18:26:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ef54197116da89bf091c0ed58321eea4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 19:22:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('111156480d4d18ebf40427083f25830f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 19:48:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a9bd713f975bfbff87638432a104b715', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:04:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('06fbb85b34f518cd211b948552de72f8', 1, '登录失败，用户名:null不存在！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:08:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9b568a868e57f24c5ba146848061613f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:09:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('02026841bf8a9204db2c500c86a4a9be', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:44:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c1a68605bee6b3d1264390c1cfe7a9fa', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:49:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cbd720f20fc090c7350a98be0738816a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:55:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2676be4ffc66f83221fd95e23d494827', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 21:31:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e9d3202c14f7f2812346fb4c2b781c67', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d9e0150666b69cced93eb4defb19788b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 23:11:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1f0b36f7e021aa5d059ffb0a74ef6de4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 23:11:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('326b2df4ab05a8dbb03a0a0087e82a25', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-10 11:53:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7ae9cad197aee3d50e93bc3a242d68ec', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-10 13:12:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('78caf9e97aedfb8c7feef0fc8fdb4fb5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-10 17:04:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d00964eee24c6f9a8609a42eeebef957', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-10 17:04:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('04f97d7f906c1e97384a94f3728606a4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 12:08:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2b433e88db411bef115bc9357ba6a78b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.105', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 12:09:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('63ccf8dda5d9bf825ecdbfb9ff9f456c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.105', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 12:14:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('404d5fb6cce1001c3553a69089a618c8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 12:29:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9ed114408a130e69c0de4c91b2d6bf7e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 13:03:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2eb964935df6f3a4d2f3af6ac5f2ded1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.200', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 13:27:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e864c0007983211026d6987bd0cd4dc8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.114', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 13:37:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8b2ad448021fbb5509ea04c9a780b165', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 14:35:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('69a9dfb2fb02e4537b86c9c5c05184ae', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 15:22:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('98b7fc431e4654f403e27ec9af845c7b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 17:31:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('42bf42af90d4df949ad0a6cd1b39805e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.200', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 17:39:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e234abc35a52f0dd2512b0ce2ea0e4f2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 20:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('69baa4f883fe881f401ea063ddfd0079', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-12 20:51:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a867c282a8d97f7758235f881804bb48', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-13 18:28:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1aa593c64062f0137c0691eabac07521', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 10:45:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('de978382f59685babf3684d1c090d136', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 12:55:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('75c7fa1a7d3639be1b112e263561e43a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 17:07:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7a9d307d22fb2301d6a9396094afc82f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 18:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('28dbc8d16f98fb4b1f481462fcaba48b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 20:56:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f1186792c6584729a0f6da4432d951f9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 21:45:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4f31f3ebaf5d1a159d2bb11dd9984909', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 11:14:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9a5c1fbf3543880af6461182e24b75db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 13:51:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b86958d773b2c2bd79baa2e8c3c84050', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 16:49:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a052befb699ee69b3197b139fd9263f0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 17:34:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6836a652dc96246c028577e510695c6f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 20:47:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8fe913a5b037943c6667ee4908f88bea', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 11:18:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9410b7974fbc9df415867095b210e572', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 11:18:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('98d4b573769af6d9c10cd5c509bfb7af', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 11:21:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('18b16a451fec0fe7bf491ab348c65e30', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 11:55:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0d85728028ed67da696137c0e82ab2f6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 12:58:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4aa770f37a7de0039ba0f720c5246486', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:26:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2fecb508d344c5b3a40f471d7b110f14', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:36:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('61aac4cfe67ec6437cd901f95fbd6f45', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:40:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('62e208389a400e37250cfa51c204bdc8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:44:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('eb9a522fd947c7a706c5a106ca32b8c9', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:50:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bd9167a87aee4574a30d67825acaad0a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:51:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('49f1ec54eb16af2001ff6809a089e940', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:59:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bdfd95b4d4c271d7d8d38f89f4a55da9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:59:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('95063e0bdfa5c9817cc0f66e96baad93', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:59:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('30da94dd068a5a57f3cece2ca5ac1a25', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 18:01:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8fde5f89e8ad30cf3811b8683a9a77b1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 18:02:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2ebe7f0432f01788d69d39bc6df04a1a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 18:05:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('beb9ef68b586f05bd7cf43058e01ad4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 22:29:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('befbcf5a27ef8d2ca8e6234077f9413d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 16:01:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('378b44af9c1042c1438450b11c707fcf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 16:07:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0571e5730ee624d0dd1b095ad7101738', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 16:10:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3ec2023daa4a7d6a542bf28b11acf586', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 16:18:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('64c00f27ddc93fda22f91b38d2b828b5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:34:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('21bad1470a40da8336294ca7330f443d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:35:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('72ee87d0637fb3365fdff9ccbf286c4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:36:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d8c43edd685431ab3ef7b867efc29214', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:37:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0ad51ba59da2c8763a4e6ed6e0a292b2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:37:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d916bd1d956418e569549ee1c7220576', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 19:18:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('917dbb5db85d1a6f142135827e259bbf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 20:21:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('db2b518e7086a0561f936d327a0ab522', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 22:39:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('61d2d2fd3e9e23f67c23b893a1ae1e72', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 22:44:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('671a44fd91bf267549d407e0c2a680ee', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 22:45:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('586e8244eff6d6761077ef15ab9a82d9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 23:03:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2b4d33d9be98e1e4cdd408a55f731050', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 10:32:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3267222d9387284b864792531b450bfe', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 10:33:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a28de45f52c027a3348a557efab6f430', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 10:34:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9db7e7d214dbe9fe8fff5ff20634e282', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 11:19:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('74209dfc97285eb7919868545fc2c649', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 11:23:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('49d48fda33126595f6936a5d64e47af0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 13:17:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fe0dc06eaef69047131f39052fcce5c4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 13:56:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f540eff3f6e86c1e0beccd300efd357f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 15:15:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3fd0d771bbdd34fae8b48690ddd57799', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 17:17:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('27e8812c9a16889f14935eecacf188eb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 18:52:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('88bab180edf685549c7344ec8db7d954', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 19:07:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ed9b4ffc8afab10732aac2d0f84c567b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 19:10:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ad97829fe7fefcd38c80d1eb1328e40f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 09:28:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3d25a4cdd75b9c4c137394ce68e67154', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 09:59:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5c7e834e089ef86555d8c2627b1b29b5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:25:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b3adf055f54878657611ef430f85803e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:33:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8d105ea6c89691bc8ee7d4fd568aa690', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:39:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('445436e800d306ec1d7763c0fe28ad38', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:43:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7f9c3d539030049a39756208670be394', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:44:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('feaf7c377abc5824c1757d280dd3c164', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:58:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c72bb25acd132303788699834ae039b4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:06:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e4c06405615399d6b1ebea45c8112b4d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:07:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f95d517f43ba2229c80c14c1883a4ee9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:11:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d18bff297a5c2fa54d708f25a7d790d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:13:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b5f6636c6e24e559ddf1feb3e1a77fd5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:14:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('aeca30df24ce26f008a7e2101f7c513c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:27:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cd7a7c49e02ca9613b6879fda4e563cf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:29:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a7ee4b4c236bc0e8f56db5fdf1e5ac38', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 13:21:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6d45672f99bbfd01d6385153e9c3ad91', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 13:49:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('905d2cf4308f70a3a2121a3476e38ed0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 14:00:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('27d23027dc320175d22391d06f50082f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 15:50:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('52fde989fb8bb78d03fb9c14242f5613', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-20 17:04:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('952947331f8f3379494c4742be797fc3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 18:42:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('39caf3d5d308001aeb0a18e15ae480b9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 10:31:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('772f238d46531a75fff31bae5841057c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 11:31:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f79af48e6aeb150432640483f3bb7f2a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:09:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('20fc3263762c80ab9268ddd3d4b06500', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:36:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e8b37ad67ef15925352a4ac3342cef07', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:38:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d6aaf0f8e2428bf3c957becbf4bcedb4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:38:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3bc73699a9fd3245b87336787422729b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('862aa0e6e101a794715174eef96f7847', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a6209166e1e9b224cca09de1e9ea1ed7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b954f7c34dfbe9f6a1fc12244e0a7d59', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('64711edfb8c4eb24517d86baca005c96', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0efc9df0d52c65ec318e7b46db21655f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:42:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c03985d6e038b5d8ebdeec27fce249ba', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:43:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('69e6fd7891d4b42b0cccdc0874a43752', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:45:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9b23981621d5265a55681883ec19fa91', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:46:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('37ca8ff7098b9d118adb0a586bdc0d13', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:46:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ea5f9191b0f593a1d6cb585538caa815', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:46:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8e03def9e0283005161d062d4c0a5a80', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:46:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f78e24f5e841acac2a720f46f6c554bc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:47:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f93279c6899dc5e6cec975906f8bf811', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:47:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cd5af66a87bb40026c72a748155b47e8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:47:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5902fb4ba61ccf7ff4d2dd97072b7e5b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e1d1fc464cf48ec26b7412585bdded1a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:49:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5ea258e1f478d27e0879e2f4bcb89ecd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 14:01:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2e44c368eda5a7f7a23305b61d82cddb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 18:14:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('34a6b86424857a63159f0e8254e238c2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 18:22:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ffc6178ffa099bb90b9a4d0a64dae42b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 18:28:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3612f8d40add5a7754ea3d54de0b5f20', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 19:59:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7a511b225189342b778647db3db385cd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 20:50:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b7085f003b4336af4d4ba18147f8e5ae', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 22:29:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c66e22782dd3916d1361c76b0cc4ec8a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 22:44:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c6cbe54fcb194d025a081e5f91a7e3f0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 10:26:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1ab7c74d217152081f4fa59e4a56cc7b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 12:03:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5f00b5514a11cd2fe240c131e9ddd136', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 16:30:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('82cee1c403025fc1db514c60fc7d8d29', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 16:41:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('af5869701738a6f4c2c58fe8dfe02726', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 16:42:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('233e39d8b7aa90459ebef23587c25448', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 17:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b0cebd174565a88bb850a2475ce14625', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 18:19:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('26529d5753ceebbd0d774542ec83a43e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 20:17:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f3e1f7fb81004ccd64df12d94ef1e695', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 21:30:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a2e0435673b17f4fb848eecdf8ecacd6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 21:32:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5323f848cddbb80ba4f0d19c0580eba9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 22:58:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5858f2f8436460a94a517904c0bfcacb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 23:42:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8d9ce65020320d46882be43b22b12a62', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 10:56:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('11802c7a3644af411bc4e085553cfd4f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 14:46:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fc69a1640a4772c8edf2548d053fa6de', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-23 14:55:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e3031f999984909f9048d8ec15543ad0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 18:43:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f43e38800d779422c75075448af738d1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 18:47:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dcfe23b155d5c6fa9a302c063b19451e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 18:47:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('802cec0efbe9d862b7cea29fefc5448b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 18:58:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f58e160e97d13a851f59b70bf54e0d06', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 20:11:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b8bd2a9de3fb917dfb6b435e58389901', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 20:13:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e01ed1516e8ae3a2180acbd4e4508fa5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 20:28:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b7f33b5a514045878447fc64636ac3e6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:00:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d0ce9bfc790a573d48d49d3bbbf1a1cb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:09:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('74c991568d8bcb2049a0dbff53f72875', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:12:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0251bbee51c28f83459f4a57eeb61777', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:14:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a5848ab4e8d0fb6ecf71ee1d99165468', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:14:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('79a1737fcc199c8262f344e48afb000d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 23:25:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6cfeaf6a6be5bb993b9578667999c354', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-24 11:43:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c5d4597b38275dcb890c6568a7c113f2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-24 12:18:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0f173ec7e8819358819aa14aafc724c0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:15:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ce9893f4d0dd163e900fcd537f2c292d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:55:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('90711ddb861e28bd8774631c98f3edb9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:57:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fb73d58bf6503270025972f99e50335d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:57:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3a290289b4b30a1caaac2d03ad3161cd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:58:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('716f9f5f066a6f75a58b7b05f2f7f861', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:59:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('151a9f1b01e4e749124d274313cd138c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:59:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0ef3e7ae8c073a7e3bdd736068f86c84', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:02:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d7e7cb4c21372e48b8e0ec7e679466e3', 1, '用户名: null,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:02:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('15b9599cb02b49a62fb4a1a71ccebc18', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ecfee5b948602a274093b8890e5e7f3f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:05:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cbf83d11486a8d57814ae38c9822b022', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:05:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f2ce8024e62740f63c134c3cfb3cae23', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:07:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c665d704539483630cc9ed5715ed57a8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:10:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e93f1a170e3cd33f90dd132540c7a39b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:12:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fded8eb5d78d13791baec769019fee54', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:15:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('03ec66b6b6d17c007ec2f918efe5b898', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:16:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5e8bac7831de49146d568c9a8477ddad', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:16:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cd064a2f6cb6c640cb97a74aaa6041d7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:17:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a521d9f2a0087daa37923fa704dea85b', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:45:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4816854636129e31c2a5f9d38af842ef', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:45:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('90b4bad7939233a1e0d7935f079ea0fa', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:45:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('aec0817ecc0063bde76c1f6b6889d117', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:47:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e169938510c9320cb1495ddb9aabb9d1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:47:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b7478d917ab6f663e03d458f0bb022a3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:50:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('642e48f2e5ac8fe64f1bfacf4d234dc8', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:51:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ed2740de487c684be9fa3cf72113ae30', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:51:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b1e9797721dbfcc51bbe7182142cbdcd', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:52:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6a67bf2ff924548dee04aa97e1d64d38', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:52:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a56661bbc72b8586778513c71f4764f5', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:53:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ae61be664d2f30d4f2248347c5998a45', 1, '用户名: jeecg,退出成功！', NULL, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-03-25 12:53:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4ab79469ba556fa890258a532623d1dc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:54:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3a0330033a8d3b51ffbfb2e0a7db9bba', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:54:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b972484d206b36420efac466fae1c53f', 1, '用户名: jeecg,退出成功！', NULL, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-03-25 12:54:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7e92abdc0c1f54596df499a5a2d11683', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:59:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fa9b4d7d42bc9d1ba058455b4afedbfb', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:59:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1d970c0e396ffc869e3a723d51f88b46', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 13:01:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('88d7136ed5c7630057451816dbaff183', 1, '用户名: jeecg,退出成功！', NULL, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-03-25 13:01:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('48eac0dd1c11fe8f0cb49f1bd14529c2', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 13:01:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a8c7ba2d11315b171940def2cbeb0e8f', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 13:01:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('20fea778f4e1ac5c01b5a5a58e3805be', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 19:01:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('48e5faf2d21ead650422dc2eaf1bb6c5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 22:08:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f74f759b43afa639fd1c4f215c984ae0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 22:08:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d82b170459d99fc05eb8aa1774e1a1c9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-26 18:45:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e088a2607864d3e6aadf239874d51756', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-26 18:46:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('95d906e6f048c3e71ddbcc0c9448cf49', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-26 19:23:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3767186b722b7fefd465e147d3170ad1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-26 21:57:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f21e30d73c337ea913849ed65808525c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 10:23:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('189e3428e35e27dfe92ece2848b10ba8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 15:52:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e2b6d0e751f130d35c0c3b8c6bd2a77e', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-27 16:18:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('586002e1fb4e60902735070bab48afe3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 16:18:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('611fa74c70bd5a7a8af376464a2133e8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 17:48:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('90555a39c0b02180df74752e4d33f253', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 18:26:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('217aa2f713b0903e6be699136e374012', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 20:07:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5554869b3475770046602061775e0e57', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 14:38:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bfec8c8c88868391041667d924e3af7f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 14:38:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('675153568c479d8b7c6fe63327066c9f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 15:29:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4930e32672465979adbc592e116226a6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 16:53:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9a1456ef58a2b1fb63cdc54b723f2539', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 17:26:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('484cdb8db40e3f76ef686552f57d8099', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 18:14:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('02d4447c9d97ac4fc1c3a9a4c789c2a8', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-28 18:24:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('59558082e1b1d754fa3def125ed4db3c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 18:24:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c434dc5172dc993ee7cd96187ca58653', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-28 19:46:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a6261bbbf8e964324935722ea1384a5d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 19:46:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f0748a25728348591c7b73a66f273457', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-28 19:46:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('14f447d9b60725cc86b3100a5cb20b75', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 19:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7c88e9cf6018a1b97b420b8cb6122815', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-28 19:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cb7c6178101ef049d3f1820ee41df539', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 19:59:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('21fed0f2d080e04cf0901436721a77a6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 21:53:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4ba055970859a6f1afcc01227cb82a2d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 09:43:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3ba1e54aa9aa760b59dfe1d1259459bc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 09:44:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7b44138c1b80b67da13b89db756a22b0', 2, '添加测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"jeecg-boot\",\"createTime\":1553824172062,\"id\":\"5fce01cb7f0457746c97d8ca05628f81\",\"name\":\"1212\"}]', NULL, 25, 'jeecg-boot', '2019-03-29 09:49:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d7e8a7f14967c70d68f5569cb4d11d0a', 2, '删除测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '[\"5fce01cb7f0457746c97d8ca05628f81\"]', NULL, 9, 'jeecg-boot', '2019-03-29 09:49:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e7f2b0a7493e7858c5db1f1595fa54b1', 2, '添加测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"jeecg-boot\",\"createTime\":1553824376817,\"id\":\"e771211b77cd3b326d3e61edfd9a5a19\",\"keyWord\":\"222\",\"name\":\"222\"}]', NULL, 7, 'jeecg-boot', '2019-03-29 09:52:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('997bb4cb1ad24439b6f7656222af0710', 2, '添加测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"jeecg-boot\",\"createTime\":1553824768819,\"id\":\"ee84471f0dff5ae88c45e852bfa0280f\",\"keyWord\":\"22\",\"name\":\"222\"}]', NULL, 5, 'jeecg-boot', '2019-03-29 09:59:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a6c3b28530416dace21371abe8cae00b', 2, '删除测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '[\"ee84471f0dff5ae88c45e852bfa0280f\"]', NULL, 9, 'jeecg-boot', '2019-03-29 09:59:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d2fe98d661f1651b639bf74499f124db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 10:16:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2186244ae450e83d1487aa01fbeae664', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 14:47:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a5daa58b078cb8b3653af869aeecebd0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 17:14:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f29f3b7b7e14b1389a0c53d263c0b26b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 17:44:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2659c59136fb1a284ab0642361b10cdd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 18:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a42e5cd05566ea226c2e2fc201860f2c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 11:15:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f06048c147c5bcdbed672e32b2c86b1c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 14:07:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('13c83c56a0de8a702aeb2aa0c330e42c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 14:53:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ab1d707bbfdf44aa17307d30ca872403', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 15:50:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5d8ed15778aa7d99224ee62c606589fb', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-30 15:51:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('42aef93749cc6222d5debe3fb31ba41b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 15:51:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5c04e3d9429e3bcff4d55f6205c4aa83', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 18:14:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('af8fe96a9f0b325e4833fc0d9c4721bf', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-30 18:14:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('21910e350c9083e107d39ff4278f51d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 18:14:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('636309eec5e750bc94ce06fb98526fb2', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-30 18:15:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9d0416e09fae7aeeeefc8511a61650c2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 18:15:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2e63fd1b3b6a6145bc04b2a1df18d2f5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 19:01:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2966ed2bdf67c9f3306b058d13bef301', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 21:25:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3683743d1936d06f3aaa03d6470e5178', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 22:40:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0ba24c5f61ff53f93134cf932dd486db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-31 21:06:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bbd3e1f27e025502a67cf54945b0b269', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-31 22:13:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1f8f46118336b2cacf854c1abf8ae144', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 11:02:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ac8cf22c2f10a38c7a631fc590551c40', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 12:04:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7d11535270734de80bd52ec0daa4fc1f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.105', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 12:20:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6b4cdd499885ccba43b40f10abf64a78', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 13:04:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('77a329e5eb85754075165b06b7d877fd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 13:25:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0e754ee377033067f7b2f10b56b8784c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 17:17:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9b7a830914668881335da1b0ce2274b1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 17:19:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a1b870eee811cfa4960f577b667b0973', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 18:23:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('85b3106d757d136b48172a9ab1f35bb6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 18:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7f31435ca2f5a4ef998a4152b2433dec', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 18:36:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f20cf3fe228ba6196a48015b98d0d354', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 19:25:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('65771bce3f5786dfb4d84570df61a47a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 22:07:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c98a6367b152cf5311d0eec98fab390c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 22:13:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('93b4d26f60d7fb45a60524760bf053e4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 22:20:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3087ac4988a961fa1ec0b4713615c719', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 22:54:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a69f4ff4e48754de96ae6fa4fabc1579', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:18:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a63147887c6ca54ce31f6c9e6279a714', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:19:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a2950ae3b86f786a6a6c1ce996823b53', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:47:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('615625178b01fc20c60184cd28e64a70', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:47:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('89fbc93e77defb34c609c84a7fe83039', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:47:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('432067d777447423f1ce3db11a273f6f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:47:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7d8539ff876aad698fba235a1c467fb8', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:47:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('689b8f2110f99c52e18268cbaf05bbb6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:58:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2919d2f18db064978a619707bde4d613', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0dc6d04b99e76ad400eef1ded2d3d97c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:59:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('45f0309632984f5f7c70b3d40dbafe8b', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:59:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d869534109332e770c70fad65ef37998', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:02:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c21422fa08f8480a53367fda7ddddf12', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:02:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1e4533a02fb9c739a3555fa7be6e7899', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:04:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('03c0ab177bd7d840b778713b37daf86f', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:04:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('60886d5de8a18935824faf8b0bed489e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:11:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4218b30015501ee966548c139c14f43f', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:11:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('de938485a45097d1bf3fa311d0216ed4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:15:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e1d0b1fd3be59e465b740e32346e85b0', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:16:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4234117751af62ac87343cbf8a6f1e0f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:17:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('845f732f6a0f0d575debc4103e92bea2', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:17:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('cc39057ae0a8a996fb0b3a8ad5b8f341', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:20:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('155d2991204d541388d837d1457e56ab', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 11:32:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2312c2693d6b50ca06799fee0ad2554a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 12:11:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d98115c02c0ac478a16d6c35de35053d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 12:50:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('55e906361eeabb6ec16d66c7196a06f0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 12:50:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3836dc3f91d072e838092bc8d3143906', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 12:50:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('add13f513772a63f8ca8bf85634bb72c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 13:09:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a6971e63e3d9158020e0186cda81467d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 14:59:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2eb75cb6ca5bc60241e01fa7471c0ccf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:34:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3e69108be63179550afe424330a8a9e4', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 18:38:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6c558d70dc5794f9f473d8826485727a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:38:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('687810e7fea7e480962c58db515a5e1c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:42:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d23e6766cecf911fb2e593eeee354e18', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:42:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0819ea9729ddf70f64ace59370a62cf1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:59:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('939b3ff4733247a47efe1352157b1f27', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 19:01:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6cf638853ef5384bf81ed84572a6445d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 19:25:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bc28d4275c7c7fcd067e1aef40ec1dd4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 10:53:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('43536edd8aa99f9b120872e2c768206c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 10:53:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7268539fbe77c5cc572fb46d71d838f1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 13:22:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f0409312093beb563ac4016f2b2c6dfd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 13:24:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a710ed2de7e31fd72b1efb1b54ba5a87', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 15:30:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b01c3f89bcfd263de7cb1a9b0210a7af', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 17:53:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e1fa52ecbcc0970622cc5a0c06de9317', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-03 18:33:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('790b722fa99a8f3a0bc38f61e13c1cf4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 18:34:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('20e5887d0c9c7981159fe91a51961141', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 20:12:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ce6aa822166b97a78b0bbea62366f8e0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 20:14:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3e6116220fa8d4808175738c6de51b12', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 21:04:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('10a434c326e39b1d046defddc8c57f4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 21:18:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('317e3ae1b6ccdfb5db6940789e12d300', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-03 21:44:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2b801129457c05d23653ecaca88f1711', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 21:44:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7a99cf653439ca82ac3b0d189ddaad4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 10:41:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('68e90e08a866de748e9901e923406959', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 12:37:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2942a12521ac8e3d441429e6c4b04207', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 14:12:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dfacaa7c01ccf0bade680044cced3f11', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 15:25:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f3cafb545e5693e446f641fa0b5ac8cd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 17:07:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('060d541a9571ca2b0d24790a98d170a6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 19:28:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9df97c1b3213aa64eda81c6bf818b02b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:42:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('43079866b75ee6a031835795bb681e16', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-04 22:44:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('55d649432efa7eaecd750b4b6b883f83', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:44:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ca737885d9034f71f70c4ae7986fafa8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:47:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1534f0c50e67c5682e91af5160a67a80', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:47:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('93bb98ba996dacebfb4f61503067352e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:47:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5c48703e3a2d4f81ee5227f0e2245990', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-04 23:12:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('70849167f54fd50d8906647176d90fdf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 23:12:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('310bb368795f4985ed4eada030a435a0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 23:22:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('477592ab95cd219a2ccad79de2f69f51', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 10:38:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e39f051ba6fdb7447f975421f3b090a7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 12:49:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4d1be4b4991a5c2d4d17d0275e4209cf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 20:47:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9eb3fb6d9d45e3847a88f65ed47da935', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '192.168.3.22', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 20:52:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6664dc299f547f6702f93e2358810cc1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.3.22', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 21:04:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9c32ec437d8f8d407b1bd1165fc0305d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-08 15:01:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('68df65639e82cc6a889282fbef53afbb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-08 15:01:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('79e76353faffd0beb0544c0aede8564f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-08 17:28:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('da3fda67aea2e565574ec2bcfab5b750', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-08 22:36:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('de37620b6921abcfe642606a0358d30f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-09 15:42:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b0e6b3a0ec5d8c73166fb8129d21a834', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-09 16:56:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('01075aa535274735e0df0a8bc44f62f9', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-09 16:56:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('01ebe1cbeae916a9228770f63130fdac', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-09 16:56:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('baa53d6a534e669f6150ea47565fa5b9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-09 17:27:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e232f89df26cc9e5eced10476c4e4a2b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 10:05:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('335956cbad23d1974138752199bf1d84', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 10:05:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('bd6d7d720b9dd803f8ad26e2d40870f3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 11:04:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ff3f7dbda20cd2734b1238fa5ba17fcf', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-10 11:26:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('672b527c49dc349689288ebf2c43ed4d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 11:26:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('21510ebaa4eca640852420ed6f6cbe01', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 11:41:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3e2574b7b723fbc9c712b8e200ea0c84', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 14:24:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0d4582c6b7719b0bfc0260939d97274f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 21:48:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('3e64011b4bea7cdb76953bfbf57135ce', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 23:09:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a83e37b55a07fe48272b0005a193dee6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 09:17:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('30ec2dc50347240f131c1004ee9b3a40', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 10:19:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7ce1934fb542a406e92867aec5b7254d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 14:53:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5ee6d5fe1e6adcc4ad441b230fae802d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 15:56:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d4ef00700436645680657f72445d38db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 18:05:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('aa49341b29865b45588ad2f9b89c47ea', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-11 19:42:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d3b54be0510db6a6da27bf30becb5335', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 19:42:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dd4e1ab492e59719173d8ae0f5dbc9a2', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-11 19:47:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('056dd4466f4ed51de26c535fd9864828', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 19:47:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('89bfd8b9d6fa57a8e7017a2345ec1534', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-12 09:27:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('51aeabed335ab4e238640a4d17dd51a3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-12 10:12:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('67181c36b55b06047a16a031fd1262c1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-17 13:55:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2d5af41d2df82b316ba31fcdf6168d6a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-17 14:43:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e2f703771f64b1bcd709204669ae3d93', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-05-17 14:48:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8143ce0b35bfe6e7b8113e1ecc066acd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-17 14:48:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2bca2d6666c1f6630225252c7b31326c', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-05-17 18:30:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('11695a9dcf44859cda97a4226bebe21b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-17 18:30:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('40209016cadff6b571a8150c6218cfa8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-18 11:33:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('23a314588249752842447e4f98783be4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-19 18:28:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5f0a5e85efbe9c79645ffc0c15fcee1a', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1558261833637,\"id\":\"94f78b1c9753dfb1202d731f540666e1\",\"keyWord\":\"1\",\"name\":\"1\",\"sysOrgCode\":\"A01\"}]', NULL, 30, 'admin', '2019-05-19 18:30:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('57264fff74c4f857bddf5d766951f3c9', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1558262155067,\"id\":\"dcb45a2fc661e5cdc341b806e5914873\",\"name\":\"111\",\"sysOrgCode\":\"A01\"}]', NULL, 5, 'admin', '2019-05-19 18:35:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('eef5b90eea8e7394193443cfd7476529', 2, '删除测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '[\"dcb45a2fc661e5cdc341b806e5914873\"]', NULL, 9, 'admin', '2019-05-19 18:36:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('488fc8f3d040fa75c6802898ea88f7d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 11:38:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6c99cfe2774c15ad030b83723f81d70d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 14:07:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1bf5c5603b79f749d4ee75965b3698db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 14:54:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5bca377b50c362009738d612cac82006', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 14:54:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2255d6f5e2a3d0839b8b9cfc67816c5c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 15:01:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c7384ed6a6b09ff6704a6b1c1e378cee', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-07-05 14:45:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('63c998d68b4d0d1529d86b4c0628e072', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-07-05 14:45:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b096a9e76395f1a52d8c260c4eb811fd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 18:51:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('da7d2236f6f9e0f61897e5ea9b968d4d', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 20:02:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6ee846271a3d4b9e576b5a0749c49d12', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 20:02:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f6b0f562257bf02c983b9e3998ff864e', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 22:43:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9e1da5d8758f2681543971ee43ee14e2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 22:43:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dd9b2cfffb798a22d90dada4fdbbbc61', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 23:39:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b99f5b6975350d86db4c5dd91de9f608', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 23:40:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185035214331654145', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 11:29:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185035238713143298', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 11:29:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185035239463923713', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 11:29:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185037047527714817', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 11:37:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185037216109375490', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 133, 'admin', '2019-10-18 11:37:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185037734533738497', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 24, 'admin', '2019-10-18 11:39:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185037756142792705', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-10-18 11:39:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185037829144653825', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 12, 'admin', '2019-10-18 11:40:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185039907581669377', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 6, 'admin', '2019-10-18 11:48:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185039947956039681', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 5, 'admin', '2019-10-18 11:48:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185040064834514945', 2, '职务表-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.add()', NULL, '[{\"code\":\"devleader\",\"createBy\":\"admin\",\"createTime\":1571370543072,\"id\":\"1185040064792571906\",\"name\":\"研发部经理\",\"rank\":\"3\",\"sysOrgCode\":\"A01\"}]', NULL, 22, 'admin', '2019-10-18 11:49:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185040066562568193', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 26, 'admin', '2019-10-18 11:49:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185129808478158850', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 17:45:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185452151318528001', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-19 15:06:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1185452231589117953', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-19 15:06:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197430985244905474', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:26:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197431068325679105', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:26:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197431850395602945', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 41, 'admin', '2019-11-21 16:29:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197431872520556545', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 65, 'admin', '2019-11-21 16:29:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197431893076840450', 2, '职务表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.edit()', NULL, '[{\"code\":\"devleader\",\"createBy\":\"admin\",\"createTime\":1571370543000,\"id\":\"1185040064792571906\",\"name\":\"研发部经理\",\"postRank\":\"2\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1574324985161}]', NULL, 19, 'admin', '2019-11-21 16:29:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197431893756317697', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 42, 'admin', '2019-11-21 16:29:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197433172830294018', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 22, 'admin', '2019-11-21 16:34:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197433546278539266', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 16, 'admin', '2019-11-21 16:36:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197433566151151618', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:36:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197434320656130049', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:39:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197434360204222466', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 240, 'admin', '2019-11-21 16:39:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197434364826345474', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-11-21 16:39:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197434403829178369', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:39:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197434443708620802', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:39:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197434470036267009', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 45, 'jeecg', '2019-11-21 16:40:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197434579583098881', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 46, 'jeecg', '2019-11-21 16:40:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197448449475338242', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 17:35:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197448475219976193', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 17:35:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197448491221245953', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 98, 'admin', '2019-11-21 17:35:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197449269478547458', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 43, 'admin', '2019-11-21 17:38:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197450304582443009', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 27, 'admin', '2019-11-21 17:42:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197453216322797569', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 526, 'admin', '2019-11-21 17:54:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197454357987155969', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 329, 'admin', '2019-11-21 17:59:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197792320302452738', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-22 16:21:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197792369866543106', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-22 16:22:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1197793164787802113', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 381, 'admin', '2019-11-22 16:25:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209402348671193089', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-24 17:16:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209402408473579521', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-24 17:16:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209402471128092673', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 472, 'admin', '2019-12-24 17:16:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209417003212853250', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 42, 'admin', '2019-12-24 18:14:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209646296664756226', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-25 09:25:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209646643298816001', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-25 09:26:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209648067323744257', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 28, 'admin', '2019-12-25 09:32:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209648217823760385', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 21, 'admin', '2019-12-25 09:33:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209648344894394369', 2, '填值规则-批量删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.deleteBatch()', NULL, '[\"1192350056519323649,1192349918153428994,\"]', NULL, 23, 'admin', '2019-12-25 09:33:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209648345854889985', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2019-12-25 09:33:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209648456588709890', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 122, 'admin', '2019-12-25 09:34:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209648997351936002', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 24, 'admin', '2019-12-25 09:36:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209649005795069954', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 25, 'admin', '2019-12-25 09:36:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209649012203966466', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2019-12-25 09:36:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209653324963500034', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 19, 'admin', '2019-12-25 09:53:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209653453917376513', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 15, 'admin', '2019-12-25 09:53:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209660332378755073', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 126, 'admin', '2019-12-25 10:21:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209660342411530241', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 26, 'admin', '2019-12-25 10:21:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209672160353783810', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 170, 'admin', '2019-12-25 11:08:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209672431796555778', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 42, 'admin', '2019-12-25 11:09:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1209847153045913602', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-25 22:43:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231582569151074306', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 22:12:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231582603032662018', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 22:12:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231582605322752002', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 22:12:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231586195961556994', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 22:26:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231586370448797697', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 540, 'admin', '2020-02-23 22:27:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231589034586804226', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 37, 'admin', '2020-02-23 22:38:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231589059643576321', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-02-23 22:38:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590342991548417', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 26, 'admin', '2020-02-23 22:43:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590348280565761', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, NULL, NULL, 27, 'admin', '2020-02-23 22:43:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590455747022850', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 6, 'admin', '2020-02-23 22:43:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590510293946370', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 15, 'admin', '2020-02-23 22:43:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590533404561410', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-02-23 22:44:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590588148617218', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 45, 'admin', '2020-02-23 22:44:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590598588239874', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 8, 'admin', '2020-02-23 22:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590600106577921', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 11, 'admin', '2020-02-23 22:44:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231590978101448705', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2020-02-23 22:45:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231591017582432257', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, NULL, NULL, 41, 'admin', '2020-02-23 22:45:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231593459988566017', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 22, 'admin', '2020-02-23 22:55:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231593466594594817', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 13, 'admin', '2020-02-23 22:55:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231593479697600513', 2, '职务表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.edit()', NULL, '[{\"code\":\"devleader\",\"createBy\":\"admin\",\"createTime\":1571370543000,\"id\":\"1185040064792571906\",\"name\":\"研发部经理\",\"postRank\":\"2\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1582469742105}]', NULL, 16, 'admin', '2020-02-23 22:55:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231593480725204994', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 16, 'admin', '2020-02-23 22:55:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231596465543032834', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:07:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231596468936224769', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:07:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231596595327381506', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:08:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231596596799582209', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:08:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231596742199324674', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:08:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231596743692496897', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:08:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231597287962157057', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:10:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231597290327744513', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:10:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231598580457857025', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:15:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231599446049009666', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 62, 'admin', '2020-02-23 23:19:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231599453611339778', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2020-02-23 23:19:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231599534171336706', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 25, 'admin', '2020-02-23 23:19:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231599542991958018', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 23, 'admin', '2020-02-23 23:19:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231615277050998786', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 00:22:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231615300820119553', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 00:22:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231645918777962498', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 02:24:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231660660535951362', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 03:22:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231772559046967297', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 10:47:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231772634972258306', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 10:47:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231872139147202561', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 294, 'admin', '2020-02-24 17:23:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231872145841311746', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, NULL, NULL, 98, 'admin', '2020-02-24 17:23:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231872154540298242', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, NULL, NULL, 334, 'admin', '2020-02-24 17:23:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1231888100260655106', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 18:26:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232120592192311297', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 09:50:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232121930921873409', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 09:55:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232123986592206850', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 48, 'admin', '2020-02-25 10:03:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232124039033589761', 2, '编辑用户，id： a75d45a015c44384a04449ee80dc3503', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-02-25 10:03:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232124050710532098', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:04:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232124114992435202', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:04:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232124523609919489', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:05:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232124588416110593', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:06:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232125009155133442', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:07:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232125087760584706', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:08:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232125284058206209', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:08:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232125346289094658', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:09:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232125555614224385', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:09:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232125615475331073', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:10:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232125831045779457', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 10:11:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232230001392308226', 1, '用户名: jeecg测试,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 17:05:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232230077393096705', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 17:05:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232231182843883522', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 17:09:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1232231223797067777', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 17:09:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1235143593301209090', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-04 18:02:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1235170990046130178', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-04 19:51:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1235202803376402433', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-04 21:57:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1235202873094123522', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-04 21:58:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256482167137071106', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 15:14:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256483667833794561', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 15:20:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256484419314659330', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@38dd4fee', NULL, 55, 'admin', '2020-05-02 15:23:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256484434414153729', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1edaf52d', NULL, 25, 'admin', '2020-05-02 15:23:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485080102170625', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@20123ff4', NULL, 53, 'admin', '2020-05-02 15:26:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485085294718978', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:26:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485469157421057', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:27:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485494486822914', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3773cfae', NULL, 25, 'admin', '2020-05-02 15:27:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485574329593858', 2, '职务表-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.add()', NULL, '[{\"code\":\"总经理\",\"createBy\":\"admin\",\"createTime\":1588404479920,\"id\":\"1256485574212153345\",\"name\":\"laozong\",\"postRank\":\"5\",\"sysOrgCode\":\"北京国炬公司\"}]', NULL, 12, 'admin', '2020-05-02 15:28:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485574790967298', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4df33d14', NULL, 59, 'admin', '2020-05-02 15:28:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485587097055234', 2, '职务表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.edit()', NULL, '[{\"code\":\"总经理\",\"createBy\":\"admin\",\"createTime\":1588404480000,\"id\":\"1256485574212153345\",\"name\":\"laozong\",\"postRank\":\"5\",\"sysOrgCode\":\"北京国炬公司\",\"updateBy\":\"admin\",\"updateTime\":1588404482983}]', NULL, 17, 'admin', '2020-05-02 15:28:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485587436793858', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@34437d6a', NULL, 20, 'admin', '2020-05-02 15:28:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485616851447809', 2, '职务表-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.add()', NULL, '[{\"code\":\"1\",\"createBy\":\"admin\",\"createTime\":1588404490080,\"id\":\"1256485616817893378\",\"name\":\"1\",\"postRank\":\"1\",\"sysOrgCode\":\"北京国炬公司\"}]', NULL, 8, 'admin', '2020-05-02 15:28:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485617317015554', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@65ab758f', NULL, 34, 'admin', '2020-05-02 15:28:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485628339646465', 2, '职务表-通过id删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.delete()', NULL, '  id: 1256485616817893378', NULL, 8, 'admin', '2020-05-02 15:28:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485628721328129', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@63ed8b8', NULL, 19, 'admin', '2020-05-02 15:28:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485878894784514', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5eee71e7', NULL, 25, 'admin', '2020-05-02 15:29:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256485915808854017', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@55d170fd', NULL, 21, 'admin', '2020-05-02 15:29:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256487060673490946', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@70eaa8bc', NULL, 20, 'admin', '2020-05-02 15:33:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256487125404184577', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3bc7b343', NULL, 14, 'admin', '2020-05-02 15:34:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256487161898823682', 2, '编辑用户，id： a75d45a015c44384a04449ee80dc3503', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:34:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256487210473058305', 2, '编辑用户，id： a75d45a015c44384a04449ee80dc3503', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:34:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256487242727256066', 2, '删除用户，id： 42d153bffeea74f72a9c1697874fa4a7', 3, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:34:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256487299895619585', 2, '编辑用户，id： f0019fdebedb443c98dcb17d88222c38', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:34:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256488477320638466', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7a60531e', NULL, 25, 'admin', '2020-05-02 15:39:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256488490658525186', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2d83211b', NULL, 17, 'admin', '2020-05-02 15:39:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256489011385561089', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4c2899e6', NULL, 13, 'admin', '2020-05-02 15:41:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256489680158945281', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@e1ab519', NULL, 24, 'admin', '2020-05-02 15:44:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256489882299232258', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4694c325', NULL, 13, 'admin', '2020-05-02 15:45:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256490012620451841', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@612705a8', NULL, 16, 'admin', '2020-05-02 15:45:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256490056123772929', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@57f572e8', NULL, 14, 'admin', '2020-05-02 15:45:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256490157718204417', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@534d6ebf', NULL, 16, 'admin', '2020-05-02 15:46:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256490172926750722', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@351222f2', NULL, 19, 'admin', '2020-05-02 15:46:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256490193340428289', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@52a9a2e6', NULL, 20, 'admin', '2020-05-02 15:46:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256490829935112194', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6d54e7ee', NULL, 12, 'admin', '2020-05-02 15:48:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256490944309587970', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@62629cc6', NULL, 16, 'admin', '2020-05-02 15:49:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256490967088852994', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@8c9d2b1', NULL, 11, 'admin', '2020-05-02 15:49:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256491122944995330', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3732988a', NULL, 15, 'admin', '2020-05-02 15:50:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256491834928099329', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@431d17a8', NULL, 13, 'admin', '2020-05-02 15:52:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256491996039704578', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5f5721f1', NULL, 12, 'admin', '2020-05-02 15:53:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256492339301543938', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2dd65164', NULL, 22, 'admin', '2020-05-02 15:54:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256492360629579778', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@739b8264', NULL, 25, 'admin', '2020-05-02 15:54:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256492389415088130', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@16b523ad', NULL, 18, 'admin', '2020-05-02 15:55:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256493213293834242', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4467f24e', NULL, 15, 'admin', '2020-05-02 15:58:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256493329329254401', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@e0ddd58', NULL, 18, 'admin', '2020-05-02 15:58:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256493354331500545', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@441b74f0', NULL, 15, 'admin', '2020-05-02 15:58:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256493373541412866', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@57c50dd7', NULL, 12, 'admin', '2020-05-02 15:58:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256527132428972033', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e667652', NULL, 541, 'admin', '2020-05-02 18:13:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256527391850868737', 2, '编辑DEMO', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"createBy\":\"jeecg-boot\",\"createTime\":1553768199000,\"id\":\"73bc58611012617ca446d8999379e4ac\",\"keyWord\":\"777\",\"name\":\"郭靖\",\"punchTime\":1544112000000,\"updateBy\":\"admin\",\"updateTime\":1588414449977}]', NULL, 11, 'admin', '2020-05-02 18:14:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256527408170905601', 2, '编辑DEMO', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"createBy\":\"jeecg-boot\",\"createTime\":1553768199000,\"id\":\"73bc58611012617ca446d8999379e4ac\",\"keyWord\":\"777\",\"name\":\"郭靖\",\"punchTime\":1544112000000,\"sex\":\"1\",\"updateBy\":\"admin\",\"updateTime\":1588414453907}]', NULL, 7, 'admin', '2020-05-02 18:14:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256527447572197378', 2, '删除测试DEMO', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '  id: c0b7c3de7c62a295ab715943de8a315d', NULL, 7, 'admin', '2020-05-02 18:14:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256527487334199297', 2, '编辑DEMO', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"createBy\":\"scott\",\"createTime\":1547873698000,\"id\":\"94420c5d8fc4420dde1e7196154b3a24\",\"name\":\"秦风\",\"sex\":\"2\",\"updateBy\":\"admin\",\"updateTime\":1588414472782}]', NULL, 6, 'admin', '2020-05-02 18:14:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256528708895879170', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3ec5357c', NULL, 24, 'admin', '2020-05-02 18:19:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256528740931973122', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@20a782a2', NULL, 16, 'admin', '2020-05-02 18:19:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256528778097700866', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-02 18:19:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256529143853592577', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@53b67601', NULL, 15, 'admin', '2020-05-02 18:21:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256529179186409473', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4034ff3d', NULL, 14, 'admin', '2020-05-02 18:21:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256529242847555585', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@300c18c2', NULL, 15, 'admin', '2020-05-02 18:21:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256529251169054721', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5cbc1ed0', NULL, 14, 'admin', '2020-05-02 18:21:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256538346588590082', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 18:57:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256538366448619522', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 18:57:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256538504642547713', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6e768567', NULL, 73, 'admin', '2020-05-02 18:58:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256538902770077698', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@74d2b870', NULL, 17, 'admin', '2020-05-02 18:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256548329908609025', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5e32c585', NULL, 181, 'admin', '2020-05-02 19:37:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256548333775757314', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4f008a7d', NULL, 41, 'admin', '2020-05-02 19:37:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256548338318188545', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7827b492', NULL, 31, 'admin', '2020-05-02 19:37:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256548342671876097', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@25cfa316', NULL, 27, 'admin', '2020-05-02 19:37:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256548345805021186', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@39541cd2', NULL, 26, 'admin', '2020-05-02 19:37:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256548524465594370', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@51a7dbe', NULL, 15, 'admin', '2020-05-02 19:38:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256550098638217218', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 19:44:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256572017869594626', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 21:11:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256572334438883329', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 21:12:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256572347516723201', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 21:12:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256572526244405249', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 21:13:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256599302815461378', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 22:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256600609391489025', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:05:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256600722662862849', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:05:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256600723023572993', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:05:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256601173458268161', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:07:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256601320892248066', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6703cc80', NULL, 44, 'admin', '2020-05-02 23:07:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256604650926354434', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:21:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256604684468203522', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:21:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256604684845690882', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:21:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256604994200776706', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:22:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256604994595041282', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:22:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256605284085903361', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:23:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256609868795719682', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:41:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256610665751228417', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256611419610263553', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:48:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256611628176224257', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:48:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256611628545323010', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:48:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256611717628145666', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 23:49:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256627765207216130', 2, 'Online报表，sql解析：select DATE_FORMAT(create_time,  \'%Y-%m-%d\') as date,count(*) as num from sys_log group by DATE_FORMAT(create_time, \'%Y-%m-%d\')', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-03 00:53:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256628324886753282', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@51bbe048', NULL, 17, 'admin', '2020-05-03 00:55:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256628328594518018', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@13b6b967', NULL, 59, 'admin', '2020-05-03 00:55:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256628331551502337', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@478b2fb3', NULL, 12, 'admin', '2020-05-03 00:55:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256630123769212929', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7fc037db', NULL, 25, 'admin', '2020-05-03 01:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256630125769895938', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@67b1d09a', NULL, 10, 'admin', '2020-05-03 01:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256630127565058049', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e3105cb', NULL, 11, 'admin', '2020-05-03 01:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256630191603691522', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@406d0b25', NULL, 12, 'admin', '2020-05-03 01:02:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256630197496688641', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5d746f1c', NULL, 9, 'admin', '2020-05-03 01:02:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256630200965378050', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@771a0535', NULL, 9, 'admin', '2020-05-03 01:02:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256631022684057602', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@552e978f', NULL, 177, 'admin', '2020-05-03 01:05:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256631095019024385', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7b8d5eda', NULL, 25, 'admin', '2020-05-03 01:06:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256631629037809666', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@719fa12f', NULL, 14, 'admin', '2020-05-03 01:08:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256631703578980354', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@22c83dfe', NULL, 17, 'admin', '2020-05-03 01:08:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256631875029544961', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@73bbad53', NULL, 18, 'admin', '2020-05-03 01:09:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256632739672731649', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@36f7e6ea', NULL, 15, 'admin', '2020-05-03 01:12:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256632995709825025', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@668f45b1', NULL, 63, 'admin', '2020-05-03 01:13:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256633330130071553', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@735e4fde', NULL, 24, 'admin', '2020-05-03 01:15:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256633509134577666', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6c495862', NULL, 17, 'admin', '2020-05-03 01:15:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256633551425744897', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6908d196', NULL, 13, 'admin', '2020-05-03 01:16:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256633599651852289', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5bfb2ada', NULL, 14, 'admin', '2020-05-03 01:16:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256633656652443650', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@549ef5f1', NULL, 15, 'admin', '2020-05-03 01:16:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256636582515027970', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4264deb1', NULL, 10, 'admin', '2020-05-03 01:28:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256644151597969409', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2218706b', NULL, 9, 'admin', '2020-05-03 01:58:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256644154894692354', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5b4819a1', NULL, 15, 'admin', '2020-05-03 01:58:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256644156803100673', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@115ba167', NULL, 9, 'admin', '2020-05-03 01:58:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256650558405681153', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-03 02:23:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256650629201338370', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-03 02:23:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256850951899271170', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-03 15:39:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256851006488137730', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-03 15:40:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256851131646169089', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7ddaff5a', NULL, 31, 'admin', '2020-05-03 15:40:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256851193189191682', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3a38dd17', NULL, 62, 'admin', '2020-05-03 15:40:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256851237241966594', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1db9a865', NULL, 26, 'admin', '2020-05-03 15:41:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256954649484783618', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-03 22:31:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256954712244154370', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7167fb28', NULL, 139, 'admin', '2020-05-03 22:32:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256954715616374785', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@30987eb8', NULL, 44, 'admin', '2020-05-03 22:32:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256963818271121409', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-03 23:08:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256963898537517057', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-03 23:08:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1256963981236609026', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-03 23:09:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257318577708576770', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-04 22:38:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257318617923563522', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-04 22:38:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257318643861139458', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5880023d', NULL, 158, 'admin', '2020-05-04 22:38:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257318651620601857', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2944d5ae', NULL, 45, 'admin', '2020-05-04 22:38:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257318654309150721', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@44651e7c', NULL, 60, 'admin', '2020-05-04 22:38:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257318671023452161', 2, '多数据源管理-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1577268893000,\"dbDriver\":\"com.mysql.jdbc.Driver\",\"dbName\":\"jeecg-boot\",\"dbPassword\":\"root\",\"dbType\":\"1\",\"dbUrl\":\"jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false\",\"dbUsername\":\"root\",\"id\":\"1209779538310004737\",\"name\":\"MySQL5.7\",\"remark\":\"本地数据库MySQL5.7\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1588603105614}]', NULL, 34, 'admin', '2020-05-04 22:38:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257318671723900930', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@915482d', NULL, 16, 'admin', '2020-05-04 22:38:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257875756186411010', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-06 11:32:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257875844212269057', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-06 11:32:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257938142477946882', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-06 15:39:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1257938291824529410', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-06 15:40:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1258208763409596417', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-07 09:35:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1258212272427237377', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-07 09:49:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1258212331801804802', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@43287270', NULL, 50, 'admin', '2020-05-07 09:49:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1258214389946843137', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@30a633b3', NULL, 307, 'admin', '2020-05-07 09:57:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1258214526047813634', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@718b221e', NULL, 23, 'admin', '2020-05-07 09:58:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1258404623636557825', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-07 22:33:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1258407358662504450', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-07 22:44:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260128353211510785', 2, '填值规则-分页列表查询', 1, 'admin', '管理员5555', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@599b461e', NULL, 249, 'admin', '2020-05-12 16:43:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260133438385680385', 2, '填值规则-分页列表查询', 1, 'admin', '管理员5555', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@18824c76', NULL, 25, 'admin', '2020-05-12 17:03:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260134029069512706', 2, '填值规则-分页列表查询', 1, 'admin', '管理员5555', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1c05f633', NULL, 15, 'admin', '2020-05-12 17:05:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260134137966227458', 2, '填值规则-添加', 2, 'admin', '管理员5555', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1589274365295,\"id\":\"1260134137920090113\",\"ruleClass\":\"111\",\"ruleCode\":\"shop_order_num\",\"ruleName\":\"商城订单流水号\",\"ruleParams\":\"{}\"}]', NULL, 13, 'admin', '2020-05-12 17:06:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260134138352103426', 2, '填值规则-分页列表查询', 1, 'admin', '管理员5555', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2b0e5b57', NULL, 17, 'admin', '2020-05-12 17:06:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260134973303812097', 2, '填值规则-编辑', 3, 'admin', '管理员5555', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1589274365000,\"id\":\"1260134137920090113\",\"ruleClass\":\"org.jeecg.modules.system.rule.ShopOrderNumberRule\",\"ruleCode\":\"shop_order_num\",\"ruleName\":\"商城订单流水号\",\"ruleParams\":\"{}\",\"updateBy\":\"admin\",\"updateTime\":1589274564451}]', NULL, 14, 'admin', '2020-05-12 17:09:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260134974104924162', 2, '填值规则-分页列表查询', 1, 'admin', '管理员5555', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5a6e3f1e', NULL, 26, 'admin', '2020-05-12 17:09:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260176104158744577', 1, '用户名: 管理员5555,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-12 19:52:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260176137037893633', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-12 19:52:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260179881074970625', 2, 'Online报表，sql解析：select * from sys_user', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-12 20:07:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260182306150240257', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@323563d5', NULL, 84, 'admin', '2020-05-12 20:17:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260182306187988994', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@203796', NULL, 93, 'admin', '2020-05-12 20:17:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260204301495652353', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-12 21:44:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260208581728382977', 2, 'OA请假单-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.bpmbiz.controller.TestNoteController.queryPageList()', NULL, '  testNote: TestNote(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, age=null, sex=null, birthday=null, contents=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3932c070', NULL, 43, 'admin', '2020-05-12 22:01:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260208600535642114', 2, 'OA请假单-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.bpmbiz.controller.TestNoteController.queryPageList()', NULL, '  testNote: TestNote(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, age=null, sex=null, birthday=null, contents=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@497c4e7', NULL, 31, 'admin', '2020-05-12 22:01:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260208702692110337', 2, 'OA请假单-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.bpmbiz.controller.TestNoteController.add()', NULL, '[{\"age\":222,\"birthday\":1589212800000,\"contents\":\"sss\",\"createBy\":\"admin\",\"createTime\":1589292142877,\"id\":\"1260208702503366657\",\"name\":\"jeecg\",\"sex\":\"1\",\"sysOrgCode\":\"A01\"}]', NULL, 8, 'admin', '2020-05-12 22:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260208703333838849', 2, 'OA请假单-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.bpmbiz.controller.TestNoteController.queryPageList()', NULL, '  testNote: TestNote(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, age=null, sex=null, birthday=null, contents=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@527b2951', NULL, 30, 'admin', '2020-05-12 22:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260208730487762946', 2, 'OA请假单-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.bpmbiz.controller.TestNoteController.edit()', NULL, '[{\"age\":22233,\"birthday\":1589212800000,\"contents\":\"sss\",\"createBy\":\"admin\",\"createTime\":1589292143000,\"id\":\"1260208702503366657\",\"name\":\"jeecg\",\"sex\":\"2\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1589292149543}]', NULL, 9, 'admin', '2020-05-12 22:02:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260208731171434498', 2, 'OA请假单-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.bpmbiz.controller.TestNoteController.queryPageList()', NULL, '  testNote: TestNote(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, age=null, sex=null, birthday=null, contents=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4493c410', NULL, 26, 'admin', '2020-05-12 22:02:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260209236593455105', 2, 'OA请假单-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.bpmbiz.controller.TestNoteController.queryPageList()', NULL, '  testNote: TestNote(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, age=null, sex=null, birthday=null, contents=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@59f11e3c', NULL, 30, 'admin', '2020-05-12 22:04:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260213921761009665', 2, '商品分类-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.tree.controller.TreeCesShopTypeController.queryPageList()', NULL, '  treeCesShopType: TreeCesShopType(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, content=null, pics=null, pid=null, hasChild=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2af56c61', NULL, 389, 'admin', '2020-05-12 22:23:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214009073836033', 2, 'Erp商城订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.ErpCesOrderMainController.queryPageList()', NULL, '  erpCesOrderMain: ErpCesOrderMain(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, orderCode=null, xdDate=null, money=null, remark=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@f0ec00b', NULL, 71, 'admin', '2020-05-12 22:23:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214016074129410', 2, 'Erp订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.ErpCesOrderMainController.listErpCesOrderGoodsByMainId()', NULL, '  erpCesOrderGoods: ErpCesOrderGoods(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, goodName=null, price=null, num=null, zongPrice=null, orderMainId=1260135645520654338)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@17b89f30', NULL, 43, 'admin', '2020-05-12 22:23:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214016208347138', 2, 'Erp订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.ErpCesOrderMainController.listErpCesOrderCustomerByMainId()', NULL, '  erpCesOrderCustomer: ErpCesOrderCustomer(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, sex=null, birthday=null, age=null, address=null, orderMainId=1260135645520654338)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2cae5b0f', NULL, 75, 'admin', '2020-05-12 22:23:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214028015312897', 2, 'Erp订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.ErpCesOrderMainController.listErpCesOrderGoodsByMainId()', NULL, '  erpCesOrderGoods: ErpCesOrderGoods(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, goodName=null, price=null, num=null, zongPrice=null, orderMainId=1260133243631562754)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1c3f5fb3', NULL, 59, 'admin', '2020-05-12 22:23:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214028183085058', 2, 'Erp订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.ErpCesOrderMainController.listErpCesOrderCustomerByMainId()', NULL, '  erpCesOrderCustomer: ErpCesOrderCustomer(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, sex=null, birthday=null, age=null, address=null, orderMainId=1260133243631562754)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@d08718d', NULL, 71, 'admin', '2020-05-12 22:23:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214054716252161', 2, 'Nei商城订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryPageList()', NULL, '  neiCesOrderMain: NeiCesOrderMain(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, orderCode=null, xdDate=null, money=null, remark=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@53cb7593', NULL, 36, 'admin', '2020-05-12 22:23:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214059946549249', 2, 'Nei订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderGoodsListByMainId()', NULL, '  id: 1260133243631562754', NULL, 24, 'admin', '2020-05-12 22:23:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214059971715074', 2, 'Nei订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderCustomerListByMainId()', NULL, '  id: 1260133243631562754', NULL, 33, 'admin', '2020-05-12 22:23:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214061351641089', 2, 'Nei订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderGoodsListByMainId()', NULL, '  id: 1260135645520654338', NULL, 8, 'admin', '2020-05-12 22:23:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214061460692994', 2, 'Nei订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderCustomerListByMainId()', NULL, '  id: 1260135645520654338', NULL, 31, 'admin', '2020-05-12 22:23:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214073515122690', 2, 'Nei订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderGoodsListByMainId()', NULL, '  id: 1260135645520654338', NULL, 8, 'admin', '2020-05-12 22:23:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214073603203073', 2, 'Nei订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderCustomerListByMainId()', NULL, '  id: 1260135645520654338', NULL, 29, 'admin', '2020-05-12 22:23:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214096332136450', 2, 'Nei订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderGoodsListByMainId()', NULL, '  id: 1260135645520654338', NULL, 5, 'admin', '2020-05-12 22:23:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214096407633921', 2, 'Nei订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderCustomerListByMainId()', NULL, '  id: 1260135645520654338', NULL, 22, 'admin', '2020-05-12 22:23:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214101705039874', 2, 'Nei商城订单表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1589274724000,\"id\":\"1260135645520654338\",\"neiCesOrderCustomerList\":[{\"address\":\"\",\"birthday\":1549641600000,\"createBy\":\"admin\",\"createTime\":1589293430012,\"id\":\"15892747207990547016\",\"name\":\"23232\",\"orderMainId\":\"1260135645520654338\",\"sex\":\"1\",\"sysOrgCode\":\"A01\"},{\"address\":\"\",\"birthday\":1543939200000,\"createBy\":\"admin\",\"createTime\":1589293430032,\"id\":\"15892859831531205492\",\"name\":\"管理员\",\"orderMainId\":\"1260135645520654338\",\"sysOrgCode\":\"A01\"},{\"address\":\"\",\"birthday\":1589212800000,\"createBy\":\"admin\",\"createTime\":1589293430039,\"id\":\"15892859955132352429\",\"name\":\"张小红\",\"orderMainId\":\"1260135645520654338\",\"sex\":\"1\",\"sysOrgCode\":\"A01\"},{\"address\":\"\",\"birthday\":1549641600000,\"createBy\":\"admin\",\"createTime\":1589293430044,\"id\":\"15892860112563612499\",\"name\":\"23232\",\"orderMainId\":\"1260135645520654338\",\"sysOrgCode\":\"A01\"}],\"neiCesOrderGoodsList\":[{\"createBy\":\"admin\",\"createTime\":1589293429992,\"goodName\":\"11\",\"id\":\"15892747180850346324\",\"orderMainId\":\"1260135645520654338\",\"price\":11.0,\"sysOrgCode\":\"A01\"}],\"orderCode\":\"JDFX2020051217115656\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1589286019000}]', NULL, 134, 'admin', '2020-05-12 22:23:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214102422265857', 2, 'Nei商城订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryPageList()', NULL, '  neiCesOrderMain: NeiCesOrderMain(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, orderCode=null, xdDate=null, money=null, remark=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@449ed1df', NULL, 13, 'admin', '2020-05-12 22:23:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214103319846914', 2, 'Nei订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderGoodsListByMainId()', NULL, '  id: 1260133243631562754', NULL, 9, 'admin', '2020-05-12 22:23:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214103345012737', 2, 'Nei订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderGoodsListByMainId()', NULL, '  id: 1260135645520654338', NULL, 17, 'admin', '2020-05-12 22:23:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214103361789953', 2, 'Nei订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderCustomerListByMainId()', NULL, '  id: 1260133243631562754', NULL, 21, 'admin', '2020-05-12 22:23:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214103395344385', 2, 'Nei订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderCustomerListByMainId()', NULL, '  id: 1260135645520654338', NULL, 28, 'admin', '2020-05-12 22:23:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214167018741761', 2, 'Nei商城订单表-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.add()', NULL, '[{\"money\":11.0,\"neiCesOrderCustomerList\":[{\"address\":\"\",\"createBy\":\"admin\",\"createTime\":1589293445703,\"id\":\"15892934319910270427\",\"name\":\"jeecg\",\"orderMainId\":\"1260214166825803778\",\"sysOrgCode\":\"A01\"},{\"address\":\"\",\"birthday\":1543939200000,\"createBy\":\"admin\",\"createTime\":1589293445710,\"id\":\"15892934399261429301\",\"name\":\"管理员\",\"orderMainId\":\"1260214166825803778\",\"sysOrgCode\":\"A01\"}],\"neiCesOrderGoodsList\":[{\"createBy\":\"admin\",\"createTime\":1589293445684,\"goodName\":\"11\",\"id\":\"15892934319760656799\",\"orderMainId\":\"1260214166825803778\",\"sysOrgCode\":\"A01\"},{\"createBy\":\"admin\",\"createTime\":1589293445694,\"goodName\":\"11\",\"id\":\"15892934330741505462\",\"orderMainId\":\"1260214166825803778\",\"price\":11.0,\"sysOrgCode\":\"A01\"}],\"orderCode\":\"11\",\"xdDate\":1589293423000}]', NULL, 52, 'admin', '2020-05-12 22:24:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214167920517122', 2, 'Nei商城订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryPageList()', NULL, '  neiCesOrderMain: NeiCesOrderMain(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, orderCode=null, xdDate=null, money=null, remark=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2e911ba', NULL, 23, 'admin', '2020-05-12 22:24:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214169191391233', 2, 'Nei订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderGoodsListByMainId()', NULL, '  id: 1260133243631562754', NULL, 14, 'admin', '2020-05-12 22:24:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214169199779842', 2, 'Nei订单商品-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderGoodsListByMainId()', NULL, '  id: 1260135645520654338', NULL, 18, 'admin', '2020-05-12 22:24:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214169220751361', 2, 'Nei订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderCustomerListByMainId()', NULL, '  id: 1260135645520654338', NULL, 24, 'admin', '2020-05-12 22:24:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214169220751362', 2, 'Nei订单客户-通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.NeiCesOrderMainController.queryNeiCesOrderCustomerListByMainId()', NULL, '  id: 1260133243631562754', NULL, 25, 'admin', '2020-05-12 22:24:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214201449783298', 2, '商城订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.CesOrderMainController.queryPageList()', NULL, '  cesOrderMain: CesOrderMain(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, orderCode=null, xdDate=null, money=null, remark=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@10d34a8e', NULL, 25, 'admin', '2020-05-12 22:24:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214210438176769', 2, '订单商品通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.CesOrderMainController.queryCesOrderGoodsListByMainId()', NULL, '  id: 1260135645520654338', NULL, 14, 'admin', '2020-05-12 22:24:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214210513674242', 2, '订单客户通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.CesOrderMainController.queryCesOrderCustomerListByMainId()', NULL, '  id: 1260135645520654338', NULL, 24, 'admin', '2020-05-12 22:24:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214235960516610', 2, '商城订单表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.CesOrderMainController.edit()', NULL, '[{\"cesOrderCustomerList\":[{\"address\":\"\",\"birthday\":1549641600000,\"createBy\":\"admin\",\"createTime\":1589293462116,\"id\":\"15892747207990547016\",\"name\":\"23232\",\"orderMainId\":\"1260135645520654338\",\"sex\":\"1\",\"sysOrgCode\":\"A01\"},{\"address\":\"\",\"birthday\":1543939200000,\"createBy\":\"admin\",\"createTime\":1589293462118,\"id\":\"15892859831531205492\",\"name\":\"管理员\",\"orderMainId\":\"1260135645520654338\",\"sysOrgCode\":\"A01\"},{\"address\":\"\",\"birthday\":1589212800000,\"createBy\":\"admin\",\"createTime\":1589293462122,\"id\":\"15892859955132352429\",\"name\":\"张小红\",\"orderMainId\":\"1260135645520654338\",\"sex\":\"1\",\"sysOrgCode\":\"A01\"},{\"address\":\"\",\"birthday\":1549641600000,\"createBy\":\"admin\",\"createTime\":1589293462126,\"id\":\"15892860112563612499\",\"name\":\"23232\",\"orderMainId\":\"1260135645520654338\",\"sysOrgCode\":\"A01\"},{\"address\":\"\",\"createBy\":\"admin\",\"createTime\":1589293462131,\"id\":\"15892934577934970755\",\"orderMainId\":\"1260135645520654338\",\"sysOrgCode\":\"A01\"}],\"cesOrderGoodsList\":[{\"createBy\":\"admin\",\"createTime\":1589293462106,\"goodName\":\"11\",\"id\":\"15892747180850346324\",\"orderMainId\":\"1260135645520654338\",\"price\":11.0,\"sysOrgCode\":\"A01\"},{\"createBy\":\"admin\",\"createTime\":1589293462109,\"goodName\":\"\",\"id\":\"15892934593221167669\",\"orderMainId\":\"1260135645520654338\",\"sysOrgCode\":\"A01\"},{\"createBy\":\"admin\",\"createTime\":1589293462113,\"goodName\":\"\",\"id\":\"15892934594762635052\",\"orderMainId\":\"1260135645520654338\",\"sysOrgCode\":\"A01\"}],\"createBy\":\"admin\",\"createTime\":1589274724000,\"id\":\"1260135645520654338\",\"orderCode\":\"JDFX2020051217115656\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1589293430000}]', NULL, 59, 'admin', '2020-05-12 22:24:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214236723879937', 2, '商城订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.CesOrderMainController.queryPageList()', NULL, '  cesOrderMain: CesOrderMain(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, orderCode=null, xdDate=null, money=null, remark=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7b7d405b', NULL, 35, 'admin', '2020-05-12 22:24:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214242285527041', 2, '订单客户通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.CesOrderMainController.queryCesOrderCustomerListByMainId()', NULL, '  id: 1260214166825803778', NULL, 4, 'admin', '2020-05-12 22:24:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214242285527042', 2, '订单商品通过主表ID查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.main.controller.CesOrderMainController.queryCesOrderGoodsListByMainId()', NULL, '  id: 1260214166825803778', NULL, 4, 'admin', '2020-05-12 22:24:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214259842883586', 2, '商品分类-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.tree.controller.TreeCesShopTypeController.queryPageList()', NULL, '  treeCesShopType: TreeCesShopType(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, content=null, pics=null, pid=null, hasChild=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@61c42e6', NULL, 17, 'admin', '2020-05-12 22:24:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214266037870593', 2, '商品分类-获取子数据', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.tree.controller.TreeCesShopTypeController.queryPageList()', NULL, '  treeCesShopType: TreeCesShopType(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, name=null, content=null, pics=null, pid=1258408044439597058, hasChild=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@46fa8676', NULL, 10, 'admin', '2020-05-12 22:24:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260214291413409794', 2, '商品分类-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.oa.tree.controller.TreeCesShopTypeController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1588862847000,\"hasChild\":\"0\",\"id\":\"1258408105487691777\",\"name\":\"阿迪\",\"pics\":\"temp/20180607175028Fn1Lq7zw_1589293474710.png\",\"pid\":\"1258408044439597058\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1589293475358}]', NULL, 20, 'admin', '2020-05-12 22:24:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260475513035649025', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-13 15:42:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260475564281655298', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-13 15:42:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260922222828179457', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:17:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260924202157985793', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@731a5dea', NULL, 122, 'admin', '2020-05-14 21:25:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925184577228802', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1db75eaf', NULL, 38, 'admin', '2020-05-14 21:29:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925184577228801', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@192abfa0', NULL, 33, 'admin', '2020-05-14 21:29:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925222376296450', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-14 21:29:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925780143230978', 2, '部门角色-批量删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.deleteBatch()', NULL, '  ids: 1260925743396933633,', NULL, 9, 'admin', '2020-05-14 21:31:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925839089979393', 2, '部门角色-批量删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.deleteBatch()', NULL, '  ids: 1260925806189858818,', NULL, 9, 'admin', '2020-05-14 21:32:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925911680798721', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@190feffa', NULL, 25, 'admin', '2020-05-14 21:32:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925911689187329', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@78b7f293', NULL, 27, 'admin', '2020-05-14 21:32:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925926549606401', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:32:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260925959411978241', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:32:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260926982906036225', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:36:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927020524748801', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:36:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927070814453761', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7b2de828', NULL, 67, 'admin', '2020-05-14 21:36:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927070814453762', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@41231cfa', NULL, 62, 'admin', '2020-05-14 21:36:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927093472083970', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-14 21:37:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927434087317506', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:38:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927465343270913', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:38:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927505818304514', 2, '批量删除用户， ids： 1260927230919426050,', 3, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-14 21:38:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927511149264898', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2cabc777', NULL, 37, 'admin', '2020-05-14 21:38:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927686529892353', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4ab7a24f', NULL, 24, 'admin', '2020-05-14 21:39:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927687171620865', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@69480323', NULL, 97, 'admin', '2020-05-14 21:39:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927717332860929', 2, '编辑用户，id： 3d464b4ea0d2491aab8a7bde74c57e95', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-14 21:39:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927736362418177', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:39:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927772173385730', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:39:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927799134371843', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2ac4e089', NULL, 19, 'jeecg', '2020-05-14 21:39:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927799134371842', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@70185f96', NULL, 19, 'jeecg', '2020-05-14 21:39:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927831044636674', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:39:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260927864892669953', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:40:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260928418456911873', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:42:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260928448987250689', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:42:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260928481014956033', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2338564f', NULL, 25, 'admin', '2020-05-14 21:42:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260928555405131778', 2, '删除用户，id： 1260928527571730433', 3, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-05-14 21:42:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260929134214889473', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:45:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260929271406379009', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@70c0bdfc', NULL, 28, 'jeecg', '2020-05-14 21:45:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260929271427350530', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@525bea80', NULL, 32, 'jeecg', '2020-05-14 21:45:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260929371243397122', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=devleader,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@e5f81d', NULL, 18, 'admin', '2020-05-14 21:46:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260929371260174338', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@400b70bc', NULL, 19, 'admin', '2020-05-14 21:46:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260929762320302082', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:47:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260929810957451265', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:47:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260929836681117697', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@cb51343', NULL, 24, 'jeecg', '2020-05-14 21:47:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260930724300701698', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@610afa2c', NULL, 21, 'admin', '2020-05-14 21:51:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931207094452225', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2ace1f73', NULL, 22, 'jeecg', '2020-05-14 21:53:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931476662370305', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7a31b732', NULL, 35, 'jeecg', '2020-05-14 21:54:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931476674953218', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@10a5aacb', NULL, 40, 'jeecg', '2020-05-14 21:54:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931514486603778', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:54:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931555641114626', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:54:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931582723735554', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@22cf7c0d', NULL, 23, 'jeecg', '2020-05-14 21:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931582874730497', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@12d7128d', NULL, 46, 'jeecg', '2020-05-14 21:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931781227560962', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@498c141f', NULL, 16, 'jeecg', '2020-05-14 21:55:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931806921867266', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:55:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931842166603778', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 21:55:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260931866350960641', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@31490538', NULL, 18, 'jeecg', '2020-05-14 21:55:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260932190738432001', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1d88fafd', NULL, 14, 'jeecg', '2020-05-14 21:57:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260932814867644418', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1e366b7f', NULL, 16, 'jeecg', '2020-05-14 21:59:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260932814867644419', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@45e3c142', NULL, 18, 'jeecg', '2020-05-14 21:59:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260932881045372930', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@31e69524', NULL, 17, 'jeecg', '2020-05-14 22:00:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260932881062150145', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3144a4a4', NULL, 19, 'jeecg', '2020-05-14 22:00:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260933064055439361', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@553714fa', NULL, 10, 'jeecg', '2020-05-14 22:00:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260933064063827969', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@35a8516d', NULL, 12, 'jeecg', '2020-05-14 22:00:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260933576796520450', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@65f9e0cd', NULL, 17, 'jeecg', '2020-05-14 22:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260933576830074882', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@a53f5e6', NULL, 23, 'jeecg', '2020-05-14 22:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260933611194007554', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:02:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260933659902459905', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:03:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260933693624664065', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@19141940', NULL, 11, 'jeecg', '2020-05-14 22:03:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260933693641441282', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4e9b247f', NULL, 16, 'jeecg', '2020-05-14 22:03:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260935385174884354', 2, '添加测试DEMO', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"jeecg\",\"createTime\":1589465397495,\"id\":\"1260935385049055234\",\"keyWord\":\"111\",\"name\":\"111\",\"sysOrgCode\":\"A02A01\"}]', NULL, 9, 'jeecg', '2020-05-14 22:09:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260935402375725058', 2, '添加测试DEMO', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"jeecg\",\"createTime\":1589465401622,\"id\":\"1260935402346364930\",\"keyWord\":\"222\",\"name\":\"22\",\"sysOrgCode\":\"A02A01\"}]', NULL, 8, 'jeecg', '2020-05-14 22:10:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260935773085089793', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:11:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260935890966003713', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:11:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260936567268163586', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:14:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260936615301332993', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:14:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260937288600371202', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:17:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1260937337363349505', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:17:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269526314186010625', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-07 15:07:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269526344632463362', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-07 15:07:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269526384084086785', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-07 15:07:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269526453491429377', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-07 15:07:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529372324347906', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3e746bc5', NULL, 248, NULL, '2020-06-07 15:19:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529477710430210', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@639dd34c', NULL, 5, NULL, '2020-06-07 15:19:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529479002275841', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4b7da72', NULL, 5, NULL, '2020-06-07 15:19:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529505921318914', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1afa5dd1', NULL, 7, NULL, '2020-06-07 15:19:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529537403764737', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2cde2b7b', NULL, 6, NULL, '2020-06-07 15:20:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529540046176257', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@56641abe', NULL, 8, NULL, '2020-06-07 15:20:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529905445552130', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@65e678fa', NULL, 4, NULL, '2020-06-07 15:21:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529907685310466', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@b91dcdb', NULL, 6, NULL, '2020-06-07 15:21:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529910176727041', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2328834f', NULL, 26, NULL, '2020-06-07 15:21:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529921128054785', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@166f41b6', NULL, 4, NULL, '2020-06-07 15:21:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529926677118978', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2e47359e', NULL, 15, NULL, '2020-06-07 15:21:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529928140931074', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@e20aecf', NULL, 3, NULL, '2020-06-07 15:21:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529931215355906', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4a7c8e41', NULL, 7, NULL, '2020-06-07 15:21:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529933291536385', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4c306be8', NULL, 3, NULL, '2020-06-07 15:21:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529938567970817', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@45d74f23', NULL, 7, NULL, '2020-06-07 15:21:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529941281685506', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@332b1baf', NULL, 4, NULL, '2020-06-07 15:21:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529960181219329', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@66ba2b37', NULL, 12, NULL, '2020-06-07 15:21:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529962420977666', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@680c8550', NULL, 82, NULL, '2020-06-07 15:21:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529962844602370', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@13dcf53d', NULL, 60, NULL, '2020-06-07 15:21:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269529987452583938', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3fe5b0c7', NULL, 13, NULL, '2020-06-07 15:21:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530012907814913', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4fcb2fdc', NULL, 6, NULL, '2020-06-07 15:21:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530255577661441', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@251885bc', NULL, 2, NULL, '2020-06-07 15:22:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530259541278722', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7690986', NULL, 4, NULL, '2020-06-07 15:22:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530267229437954', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3f61745a', NULL, 3, NULL, '2020-06-07 15:22:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530577163337730', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4895716', NULL, 4, NULL, '2020-06-07 15:24:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530608071163905', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@53c1d397', NULL, 21, NULL, '2020-06-07 15:24:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530610474500098', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@766cf2cd', NULL, 6, NULL, '2020-06-07 15:24:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530628828774401', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5202e822', NULL, 3, NULL, '2020-06-07 15:24:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530652081995777', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2167830', NULL, 12, NULL, '2020-06-07 15:24:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530652203630594', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@cf63a9f', NULL, 7, NULL, '2020-06-07 15:24:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530652287516674', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1cb1f9ff', NULL, 5, NULL, '2020-06-07 15:24:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530653856186370', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@fe85c4c', NULL, 12, NULL, '2020-06-07 15:24:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530657131937793', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2ecdc439', NULL, 44, NULL, '2020-06-07 15:24:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530658931294210', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7c68d268', NULL, 43, NULL, '2020-06-07 15:24:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530660491575298', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5a5fca5', NULL, 52, NULL, '2020-06-07 15:24:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530694935199746', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6e58e571', NULL, 9, NULL, '2020-06-07 15:24:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530697749577730', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@ec412cf', NULL, 54, NULL, '2020-06-07 15:24:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530943460294658', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@28e544cf', NULL, 7, NULL, '2020-06-07 15:25:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530944877969410', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4aa6f5ef', NULL, 58, NULL, '2020-06-07 15:25:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530959629336578', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3fa6f1af', NULL, 4, NULL, '2020-06-07 15:25:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269530975924207617', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@b486077', NULL, 36, NULL, '2020-06-07 15:25:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531024246784001', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@13a76ba5', NULL, 2, NULL, '2020-06-07 15:25:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531027107299329', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@47f0c335', NULL, 5, NULL, '2020-06-07 15:25:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531029519024130', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1d966d60', NULL, 3, NULL, '2020-06-07 15:25:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531101421977602', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@61563159', NULL, 4, NULL, '2020-06-07 15:26:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531108581654529', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@279b08a5', NULL, 2, NULL, '2020-06-07 15:26:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531129112772610', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@daaa5bf', NULL, 5, NULL, '2020-06-07 15:26:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531194757824513', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@39dd3c58', NULL, 2, NULL, '2020-06-07 15:26:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531217054744577', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2013c4a', NULL, 6, NULL, '2020-06-07 15:26:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531227943157762', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@107e22b1', NULL, 6, NULL, '2020-06-07 15:26:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531236797333506', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@23026104', NULL, 6, NULL, '2020-06-07 15:26:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531248570744834', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3d076b55', NULL, 4, NULL, '2020-06-07 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531274336354305', 2, '地图-通过id查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryById()', NULL, '  id: 1235103352843448322  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6f620f5c', NULL, 36, NULL, '2020-06-07 15:26:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531289783975937', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@42db9645', NULL, 5, NULL, '2020-06-07 15:27:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531322390495233', 2, '地图-分页列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.VisualMapController.queryPageList()', NULL, '  visualMap: VisualMap(id=null, name=null, data=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  pageNo: 1  pageSize: 100  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6c6faa4d', NULL, 4, NULL, '2020-06-07 15:27:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531325586554882', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@178d166a', NULL, 3, NULL, '2020-06-07 15:27:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1269531327910199298', 2, '大屏分类列表查询', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.jmreport.visual.controller.BigScreenCategoryController.queryPageList()', NULL, '  bigScreenCategory: BigScreenCategory(id=null, categoryKey=null, categoryValue=null, isDeleted=null, createBy=null, createTime=null, updateBy=null, updateTime=null, delFlag=null)  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@37772193', NULL, 2, NULL, '2020-06-07 15:27:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281463660984672257', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10 13:42:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281463692681027586', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@388569c3', NULL, 128, 'admin', '2020-07-10 13:42:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281463692722970626', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4358bb54', NULL, 138, 'admin', '2020-07-10 13:42:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281463724180250626', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5fc7ad92', NULL, 21, 'admin', '2020-07-10 13:42:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281466185779511298', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5edfc1ec', NULL, 56, 'admin', '2020-07-10 13:52:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281466185821454338', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@297e419b', NULL, 105, 'admin', '2020-07-10 13:52:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281470275754393601', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@48b03d65', NULL, 49, 'admin', '2020-07-10 14:08:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281490121686900739', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@c2689e6', NULL, 137, 'admin', '2020-07-10 15:27:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281490121686900738', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@495980d', NULL, 56, 'admin', '2020-07-10 15:27:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281490127785418753', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-10 15:27:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281490460796379138', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@42664396', NULL, 24, 'admin', '2020-07-10 15:28:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281490464818716674', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@72b8f1e4', NULL, 32, 'admin', '2020-07-10 15:28:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281494695797710850', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1f1e744e', NULL, 17, 'admin', '2020-07-10 15:45:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281511287809978369', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@46ca6657', NULL, 38, 'admin', '2020-07-10 16:51:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281511305329586178', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3a9bbc8f', NULL, 17, 'admin', '2020-07-10 16:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281511309553250306', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@43bfe5e4', NULL, 39, 'admin', '2020-07-10 16:51:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281511313403621377', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@374f394a', NULL, 57, 'admin', '2020-07-10 16:51:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281511318214488065', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2053432a', NULL, 15, 'admin', '2020-07-10 16:51:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281511321653817345', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@141a2c36', NULL, 16, 'admin', '2020-07-10 16:51:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281511330424107009', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2801528a', NULL, 12, 'admin', '2020-07-10 16:51:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281512143234084865', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@e82dbcc', NULL, 21, 'admin', '2020-07-10 16:54:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281512154952970241', 2, '多数据源管理-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1577268893000,\"dbDriver\":\"com.mysql.jdbc.Driver\",\"dbName\":\"jeecg-boot\",\"dbPassword\":\"root\",\"dbType\":\"1\",\"dbUrl\":\"jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false\",\"dbUsername\":\"root\",\"id\":\"1209779538310004737\",\"name\":\"MySQL5.7\",\"remark\":\"本地数据库MySQL5.7\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1594371281682}]', NULL, 27, 'admin', '2020-07-10 16:54:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281512155624058882', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@469013ef', NULL, 17, 'admin', '2020-07-10 16:54:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281512163014422530', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2d8cfe34', NULL, 14, 'admin', '2020-07-10 16:54:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281512167053537281', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@350a614e', NULL, 12, 'admin', '2020-07-10 16:54:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281516925944410113', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10 17:13:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281518641905479681', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4d73d74b', NULL, 22, 'admin', '2020-07-10 17:20:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281518645130899458', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@39d7de59', NULL, 17, 'admin', '2020-07-10 17:20:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281563453585215489', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10 20:18:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281563506332782593', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10 20:18:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281634474623356929', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-11 01:00:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281653329143910402', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-11 02:15:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281782848886525953', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-11 10:50:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281782852653010945', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-11 10:50:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281782935767339010', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-11 10:50:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281792846681182210', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1790aa50', NULL, 31, 'admin', '2020-07-11 11:30:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281792861646458882', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=shop_order_num, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@34810a0f', NULL, 7, 'admin', '2020-07-11 11:30:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281792866222444546', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@68240471', NULL, 17, 'admin', '2020-07-11 11:30:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281792871658262530', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=shop_order_num, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4ec76a80', NULL, 17, 'admin', '2020-07-11 11:30:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281793269345390594', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@20e6313d', NULL, 13, 'admin', '2020-07-11 11:31:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281793915574390785', 2, '填值规则-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1589274365000,\"id\":\"1260134137920090113\",\"ruleClass\":\"org.jeecg.modules.rule.OrderNumberRule\",\"ruleCode\":\"shop_order_num\",\"ruleName\":\"商城订单流水号\",\"ruleParams\":\"{}\",\"updateBy\":\"admin\",\"updateTime\":1594438458695}]', NULL, 12, 'admin', '2020-07-11 11:34:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281793915922518017', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7ceee797', NULL, 12, 'admin', '2020-07-11 11:34:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794052098985986', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@36c48e02', NULL, 17, 'admin', '2020-07-11 11:34:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794089126301697', 2, '填值规则-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1589274365000,\"id\":\"1260134137920090113\",\"ruleClass\":\"org.jeecg.modules.system.rule.OrderNumberRule\",\"ruleCode\":\"shop_order_num\",\"ruleName\":\"商城订单流水号\",\"ruleParams\":\"{}\",\"updateBy\":\"admin\",\"updateTime\":1594438500079}]', NULL, 8, 'admin', '2020-07-11 11:35:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794089512177666', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@302729ee', NULL, 16, 'admin', '2020-07-11 11:35:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794654736564225', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5a8c5a9a', NULL, 26, 'admin', '2020-07-11 11:37:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794658578546689', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@725088fe', NULL, 32, 'admin', '2020-07-11 11:37:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794663301332994', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4189e173', NULL, 61, 'admin', '2020-07-11 11:37:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794665633366018', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@fafd1bd', NULL, 20, 'admin', '2020-07-11 11:37:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794667516608513', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@264761c3', NULL, 14, 'admin', '2020-07-11 11:37:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794670893023234', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@445cd090', NULL, 12, 'admin', '2020-07-11 11:37:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281794672625270785', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@d8473bc', NULL, 16, 'admin', '2020-07-11 11:37:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281795543228563458', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6fda764a', NULL, 15, 'admin', '2020-07-11 11:40:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281795545476710402', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6881005e', NULL, 12, 'admin', '2020-07-11 11:40:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281795548324642817', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@59fa83d0', NULL, 15, 'admin', '2020-07-11 11:40:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281795552816742402', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@55a0b7c', NULL, 14, 'admin', '2020-07-11 11:40:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281795555513679873', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@59736cc4', NULL, 9, 'admin', '2020-07-11 11:40:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281800098691514370', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-11 11:58:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281800338509234177', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@78f6b224', NULL, 229, 'admin', '2020-07-11 11:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281801356038995969', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@73cccdb5', NULL, 42, 'admin', '2020-07-11 12:03:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1281801511580565505', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6bf19c8c', NULL, 28, 'admin', '2020-07-11 12:04:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1284024845240168450', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-17 15:19:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1284024892098932737', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-17 15:19:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1284377638777974786', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-18 14:41:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1285106808533385218', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 14:58:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1285107423695175682', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 15:01:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1285107460613439489', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 15:01:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1285107518352228353', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 15:01:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1285138414073647105', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 17:04:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1285138459669925890', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 17:04:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303583688781516801', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 14:39:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303584123403685889', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 14:40:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303584582709334018', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@266f996e', NULL, 88, NULL, '2020-09-09 14:42:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303584582747082753', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@35d3b3fd', NULL, 95, NULL, '2020-09-09 14:42:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303584633527521281', 2, '编辑用户，id： 3d464b4ea0d2491aab8a7bde74c57e95', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 14:42:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303584929985122306', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@572aa945', NULL, 51, NULL, '2020-09-09 14:44:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303584934108123137', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@64486094', NULL, 48, NULL, '2020-09-09 14:44:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303584937023164418', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@14ab41e3', NULL, 55, NULL, '2020-09-09 14:44:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303585451299360769', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@78644da8', NULL, 23, NULL, '2020-09-09 14:46:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303585453941772290', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1980d3ae', NULL, 24, NULL, '2020-09-09 14:46:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612674161065986', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 264, NULL, '2020-09-09 16:34:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612674161065987', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 243, NULL, '2020-09-09 16:34:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612675339665409', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 148, NULL, '2020-09-09 16:34:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612703399559169', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 80, NULL, '2020-09-09 16:34:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612703496028161', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 98, NULL, '2020-09-09 16:34:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612704506855425', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 107, NULL, '2020-09-09 16:34:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612713012903938', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 78, NULL, '2020-09-09 16:34:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612713138733058', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 103, NULL, '2020-09-09 16:34:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303612714103422978', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 98, NULL, '2020-09-09 16:34:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623650910482433', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 17:17:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623737740963842', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 207, NULL, '2020-09-09 17:18:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623737728380929', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 195, NULL, '2020-09-09 17:18:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623738856648706', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 133, NULL, '2020-09-09 17:18:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623744451850242', 2, 'online表单数据查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 24, NULL, '2020-09-09 17:18:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623768380354562', 2, 'online修改数据,表名:ces_field_kongj,修改成功！', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"18f064d1ef424c93ba7a16148851664f\",{\"birthday\":\"\",\"sel_mut\":\"\",\"remakr\":\"\",\"user_sel\":\"\",\"ddd\":\"\",\"fuwenb\":\"\",\"sex\":\"\",\"sel_search\":\"\",\"pic\":\"\",\"radio\":\"2\",\"update_time\":\"2020-09-09 17:18:21\",\"dep_sel\":\"\",\"checkbox\":\"\",\"name\":\"张三2\",\"files\":\"\",\"id\":\"1285112866127577089\",\"update_by\":\"admin\"}]', NULL, 117, NULL, '2020-09-09 17:18:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623769382793218', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 87, NULL, '2020-09-09 17:18:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623805579636738', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@e09a928', NULL, 71, NULL, '2020-09-09 17:18:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303623811887869954', 2, '编辑用户，id： f0019fdebedb443c98dcb17d88222c38', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 17:18:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303629650698809345', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 17:41:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303629755246030850', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-09 17:42:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303635656849752066', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@198b7d28', NULL, 218, NULL, '2020-09-09 18:05:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303641687692673026', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1b1a7342', NULL, 35, NULL, '2020-09-09 18:29:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303940170840666113', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 14:15:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303972940572897282', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 16:25:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303972986232090626', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 16:26:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303979706157117441', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 16:52:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303986485096157185', 2, '编辑DEMO', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"age\":19,\"createBy\":\"jeecg\",\"createTime\":1589465402000,\"id\":\"1260935402346364930\",\"keyWord\":\"222\",\"name\":\"22\",\"sysOrgCode\":\"A02A01\",\"updateBy\":\"admin\",\"updateTime\":1599729579362}]', NULL, 34, NULL, '2020-09-10 17:19:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1303986503559483393', 2, '编辑DEMO', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"age\":20,\"createBy\":\"jeecg\",\"createTime\":1589465397000,\"id\":\"1260935385049055234\",\"keyWord\":\"111\",\"name\":\"111\",\"sysOrgCode\":\"A02A01\",\"updateBy\":\"admin\",\"updateTime\":1599729583991}]', NULL, 11, NULL, '2020-09-10 17:19:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300437101395970', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 14:07:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300467673677825', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 214, NULL, '2020-09-11 14:07:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300467744980993', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 238, NULL, '2020-09-11 14:07:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300468831305729', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 98, NULL, '2020-09-11 14:07:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300474145488898', 2, 'online表单数据查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 27, NULL, '2020-09-11 14:07:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300481636515842', 2, 'online修改数据,表名:ces_field_kongj,修改成功！', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"18f064d1ef424c93ba7a16148851664f\",{\"birthday\":\"\",\"sel_mut\":\"\",\"remakr\":\"\",\"user_sel\":\"\",\"ddd\":\"\",\"fuwenb\":\"\",\"sex\":\"\",\"sel_search\":\"\",\"pic\":\"\",\"radio\":\"2\",\"update_time\":\"2020-09-11 14:07:22\",\"dep_sel\":\"\",\"checkbox\":\"\",\"name\":\"张三2\",\"files\":\"\",\"id\":\"1285112866127577089\",\"update_by\":\"admin\"}]', NULL, 76, NULL, '2020-09-11 14:07:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300482647343105', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 51, NULL, '2020-09-11 14:07:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300552046297090', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@f562013', NULL, 31, NULL, '2020-09-11 14:07:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300683625807874', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5fee2100', NULL, 35, NULL, '2020-09-11 14:08:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304300686897364994', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@507f3d79', NULL, 38, NULL, '2020-09-11 14:08:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301024350093313', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 82, NULL, '2020-09-11 14:09:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301024366870530', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 70, NULL, '2020-09-11 14:09:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301025348337665', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 54, NULL, '2020-09-11 14:09:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301343381438466', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 49, NULL, '2020-09-11 14:10:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301343394021377', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 68, NULL, '2020-09-11 14:10:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301344367099906', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 70, NULL, '2020-09-11 14:10:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301368681480194', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 43, NULL, '2020-09-11 14:10:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301368731811842', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 55, NULL, '2020-09-11 14:10:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301379687333890', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 55, NULL, '2020-09-11 14:10:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301393297850369', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 36, NULL, '2020-09-11 14:11:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301393373347841', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 52, NULL, '2020-09-11 14:11:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304301395285950466', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 71, NULL, '2020-09-11 14:11:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304307438242066434', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 14:35:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304307486547865602', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 168, NULL, '2020-09-11 14:35:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304307486573031426', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 187, NULL, '2020-09-11 14:35:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304307487785185281', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 97, NULL, '2020-09-11 14:35:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304307637521838081', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 61, NULL, '2020-09-11 14:35:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304307637593141249', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 78, NULL, '2020-09-11 14:35:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304307638536859650', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 54, NULL, '2020-09-11 14:35:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309349380878338', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 39, NULL, '2020-09-11 14:42:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309349477347330', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 56, NULL, '2020-09-11 14:42:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309350190379009', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 60, NULL, '2020-09-11 14:42:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309384843718658', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 52, NULL, '2020-09-11 14:42:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309384902438914', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 64, NULL, '2020-09-11 14:42:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309385657413633', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 56, NULL, '2020-09-11 14:42:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309821428822018', 2, 'online列表加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2020-09-11 14:44:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309821428822019', 2, 'online表单加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 32, NULL, '2020-09-11 14:44:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309822292848641', 2, 'online列表数据查询,表名:test_note,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 58, NULL, '2020-09-11 14:44:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309860846891009', 2, 'online新增数据,表名:test_note,操作成功！', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"05a3a30dada7411c9109306aa4117068\",{\"birthday\":\"2020-09-11\",\"create_by\":\"admin\",\"sys_org_code\":\"A01\",\"create_time\":\"2020-09-11 14:44:38\",\"contents\":\"222\",\"sex\":\"1\",\"name\":\"zhangsan\",\"id\":\"1304309860578455553\",\"age\":222},null]', NULL, 49, NULL, '2020-09-11 14:44:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304309861371179010', 2, 'online列表数据查询,表名:test_note,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 44, NULL, '2020-09-11 14:44:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304315837088362497', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 50, NULL, '2020-09-11 15:08:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304315837243551746', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 89, NULL, '2020-09-11 15:08:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304315838115966978', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 63, NULL, '2020-09-11 15:08:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344410935336962', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 17:01:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344457320144898', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 17:02:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344520830296065', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 187, NULL, '2020-09-11 17:02:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344520838684674', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 194, NULL, '2020-09-11 17:02:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344521925009410', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 85, NULL, '2020-09-11 17:02:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344529269235714', 2, 'online表单数据查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 21, NULL, '2020-09-11 17:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344558134435842', 2, 'online修改数据,表名:ces_field_kongj,修改成功！', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"18f064d1ef424c93ba7a16148851664f\",{\"birthday\":\"\",\"sel_mut\":\"\",\"remakr\":\"\",\"user_sel\":\"zhagnxiao\",\"ddd\":\"\",\"fuwenb\":\"\",\"sex\":\"2\",\"sel_search\":\"\",\"pic\":\"\",\"radio\":\"2\",\"update_time\":\"2020-09-11 17:02:30\",\"dep_sel\":\"A01\",\"checkbox\":\"1,2\",\"name\":\"A011\",\"files\":\"\",\"id\":\"1260185893546840066\",\"update_by\":\"admin\"}]', NULL, 64, NULL, '2020-09-11 17:02:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344558771970049', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 52, NULL, '2020-09-11 17:02:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344622290509825', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@64d4432', NULL, 88, NULL, '2020-09-11 17:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304344842973814786', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@13264596', NULL, 53, NULL, '2020-09-11 17:03:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1304345125841870849', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@b95b5eb', NULL, 61, NULL, '2020-09-11 17:04:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331628155054120961', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-25 23:57:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331629242167386113', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e2df107', NULL, 58, NULL, '2020-11-26 00:02:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331629494840647681', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@34cdfa27', NULL, 23, NULL, '2020-11-26 00:03:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331629507163512834', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4a170a0b', NULL, 21, NULL, '2020-11-26 00:03:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331629511211016193', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@67fa85ab', NULL, 109, NULL, '2020-11-26 00:03:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331779428617396226', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 09:58:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331779509525520386', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 09:59:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331779559471292417', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@77d99e87', NULL, 76, NULL, '2020-11-26 09:59:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331779564135358465', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6ee88b1c', NULL, 28, NULL, '2020-11-26 09:59:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331779568749092865', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@775caa75', NULL, 101, NULL, '2020-11-26 09:59:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331788116962930690', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5f578949', NULL, 49, NULL, '2020-11-26 10:33:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331789156961579009', 2, 'online列表加载,表名:ces_field_kongj$0,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 176, NULL, '2020-11-26 10:37:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331789156961579010', 2, 'online表单加载,表名:ces_field_kongj$0,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 169, NULL, '2020-11-26 10:37:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331789158203092993', 2, 'online列表数据查询,表名:ces_field_kongj$0,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 111, NULL, '2020-11-26 10:37:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331852481070186497', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 14:49:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331852523273273346', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 14:49:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331852555292590081', 2, 'online列表加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 115, NULL, '2020-11-26 14:49:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331852555292590082', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 124, NULL, '2020-11-26 14:49:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331852556345360385', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 78, NULL, '2020-11-26 14:49:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331852563479871489', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 22, NULL, '2020-11-26 14:49:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331852625689788417', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4b12f291', NULL, 40, NULL, '2020-11-26 14:49:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858089433448450', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7c95ac25', NULL, 13, NULL, '2020-11-26 15:11:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858101047476226', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 47, NULL, '2020-11-26 15:11:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858101047476225', 2, 'online列表加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 42, NULL, '2020-11-26 15:11:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858101840199682', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 51, NULL, '2020-11-26 15:11:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858164125614082', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7dc765c', NULL, 17, NULL, '2020-11-26 15:11:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858167585914882', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1a09690b', NULL, 31, NULL, '2020-11-26 15:11:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858170131857410', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2eaa6c4d', NULL, 85, NULL, '2020-11-26 15:11:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858852108910594', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@40d241c9', NULL, 41, NULL, '2020-11-26 15:14:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858852142465025', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3b501747', NULL, 50, NULL, '2020-11-26 15:14:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858984380481538', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@d832d7a', NULL, 14, NULL, '2020-11-26 15:15:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331858984380481537', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5d2fbc27', NULL, 12, NULL, '2020-11-26 15:15:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331859295614615553', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@8846ec3', NULL, 16, NULL, '2020-11-26 15:16:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331859304317796353', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4105b715', NULL, 23, NULL, '2020-11-26 15:16:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331859331341697026', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2d6dd06e', NULL, 13, NULL, '2020-11-26 15:16:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331859334491619330', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@475d6a9f', NULL, 15, NULL, '2020-11-26 15:16:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331859337998057474', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7786a668', NULL, 18, NULL, '2020-11-26 15:16:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860598747119618', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5cb1af5f', NULL, 10, NULL, '2020-11-26 15:21:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860638672699393', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7012fd1e', NULL, 21, NULL, '2020-11-26 15:21:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860643001221121', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@23b5b240', NULL, 11, NULL, '2020-11-26 15:21:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860646755123202', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7aaeebe', NULL, 18, NULL, '2020-11-26 15:21:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860660046872577', 2, 'online列表加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 45, NULL, '2020-11-26 15:21:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860660046872578', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 45, NULL, '2020-11-26 15:21:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860660722155521', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 41, NULL, '2020-11-26 15:21:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860665738543106', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 14, NULL, '2020-11-26 15:21:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860673229570050', 2, 'online修改数据,表名:demo,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"402881e6760269a20176026d25650002\",{\"birthday\":\"\",\"sys_org_code\":\"A02A01\",\"create_time\":\"2020-05-14 22:10:02\",\"punch_time\":\"\",\"sex\":\"\",\"key_word\":\"222\",\"salary_money\":\"\",\"content\":\"\",\"create_by\":\"jeecg\",\"bonus_money\":\"\",\"update_time\":\"2020-09-10 17:19:39\",\"name\":\"22\",\"id\":\"1260935402346364930\",\"update_by\":\"admin\",\"email\":\"\",\"age\":19}]', NULL, 86, NULL, '2020-11-26 15:21:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860674076819458', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2020-11-26 15:21:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860717068435457', 2, 'online列表加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 46, NULL, '2020-11-26 15:21:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860717143932930', 2, 'online表单加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 57, NULL, '2020-11-26 15:21:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860717659832322', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 48, NULL, '2020-11-26 15:21:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860722646859777', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 33, NULL, '2020-11-26 15:21:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860727537418242', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2020-11-26 15:21:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860731383595010', 2, 'online修改数据,表名:ces_shop_type,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"8d66ea41c7cc4ef9ab3aab9055657fc9\",{\"update_time\":\"2020-11-26 15:21:57\",\"name\":\"阿迪\",\"pid\":\"1258408044439597058\",\"id\":\"1258408105487691777\",\"update_by\":\"admin\",\"pics\":\"temp/20180607175028Fn1Lq7zw_1589293474710.png\",\"content\":\"\"}]', NULL, 44, NULL, '2020-11-26 15:21:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860731786248194', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 36, NULL, '2020-11-26 15:21:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860732226650113', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 50, NULL, '2020-11-26 15:21:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860762232700930', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2020-11-26 15:22:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860762312392706', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 59, NULL, '2020-11-26 15:22:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860762811514882', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 42, NULL, '2020-11-26 15:22:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860768087949314', 2, 'online列表加载,表名:test_order_product,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 25, NULL, '2020-11-26 15:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860768087949315', 2, 'online列表加载,表名:test_order_product,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 24, NULL, '2020-11-26 15:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860786874236930', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 19, NULL, '2020-11-26 15:22:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860837314936834', 2, 'online修改数据,表名:test_order_main,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"56870166aba54ebfacb20ba6c770bd73\",{\"order_code\":\"鼠标\",\"order_date\":\"2020-05-03 00:00:00\",\"descc\":\"15\",\"update_time\":\"2020-11-26 15:22:23\",\"id\":\"1256629667445714946\",\"update_by\":\"admin\"}]', NULL, 59, NULL, '2020-11-26 15:22:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860837805670402', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2020-11-26 15:22:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860855375609858', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 17, NULL, '2020-11-26 15:22:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860890863616002', 2, 'online修改数据,表名:test_order_main,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"56870166aba54ebfacb20ba6c770bd73\",{\"order_code\":\"鼠标\",\"order_date\":\"2020-05-03 00:00:00\",\"descc\":\"15\",\"update_time\":\"2020-11-26 15:22:35\",\"id\":\"1256629667445714946\",\"update_by\":\"admin\"}]', NULL, 48, NULL, '2020-11-26 15:22:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860891341766658', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2020-11-26 15:22:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860939920195587', 2, 'online表单加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 25, NULL, '2020-11-26 15:22:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860939920195586', 2, 'online列表加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 22, NULL, '2020-11-26 15:22:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860940314460161', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 41, NULL, '2020-11-26 15:22:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331860946291343362', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 32, NULL, '2020-11-26 15:22:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861025186201602', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2020-11-26 15:23:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861025202978817', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 29, NULL, '2020-11-26 15:23:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861026025062401', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 51, NULL, '2020-11-26 15:23:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861089468104706', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 19, NULL, '2020-11-26 15:23:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861089560379393', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 42, NULL, '2020-11-26 15:23:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861090009169921', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2020-11-26 15:23:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861166920122370', 2, 'online新增数据,表名:test_order_main,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"56870166aba54ebfacb20ba6c770bd73\",{\"test_order_product\":[{\"undefined\":false,\"product_name\":\"44\",\"price\":44,\"num\":4,\"pro_type\":\"2\",\"descc\":\"444\",\"order_fk_id\":\"1331861164286099457\",\"create_by\":\"admin\",\"create_time\":\"2020-11-26 15:23:41\"},{\"undefined\":false,\"product_name\":\"44\",\"price\":44,\"num\":4,\"pro_type\":\"\",\"descc\":\"44\",\"order_fk_id\":\"1331861164286099457\",\"create_by\":\"admin\",\"create_time\":\"2020-11-26 15:23:41\"},{\"undefined\":false,\"product_name\":\"44\",\"price\":44,\"num\":4,\"pro_type\":\"\",\"descc\":\"44\",\"order_fk_id\":\"1331861164286099457\",\"create_by\":\"admin\",\"create_time\":\"2020-11-26 15:23:41\"}],\"create_by\":\"admin\",\"create_time\":\"2020-11-26 15:23:41\",\"id\":\"1331861164286099457\"},null]', NULL, 623, NULL, '2020-11-26 15:23:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861167490547714', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2020-11-26 15:23:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861175740743681', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 19, NULL, '2020-11-26 15:23:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861199023325185', 2, 'online修改数据,表名:test_order_main,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"56870166aba54ebfacb20ba6c770bd73\",{\"order_code\":\"33\",\"order_date\":\"2020-11-21\",\"descc\":\"44\",\"update_time\":\"2020-11-26 15:23:49\",\"id\":\"1331861164286099457\",\"update_by\":\"admin\"}]', NULL, 39, NULL, '2020-11-26 15:23:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861199430172674', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2020-11-26 15:23:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861422122549249', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@22dc6a60', NULL, 12, NULL, '2020-11-26 15:24:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861425234722818', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@49409c83', NULL, 9, NULL, '2020-11-26 15:24:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861430314024961', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5db9465d', NULL, 17, NULL, '2020-11-26 15:24:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861470277353474', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2b5c75fe', NULL, 15, NULL, '2020-11-26 15:24:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861470285742081', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@50b3291b', NULL, 15, NULL, '2020-11-26 15:24:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861646220017665', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@48019f50', NULL, 11, NULL, '2020-11-26 15:25:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861650187829250', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6c5d2dda', NULL, 13, NULL, '2020-11-26 15:25:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861722967392257', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2020-11-26 15:25:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861723101609985', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 60, NULL, '2020-11-26 15:25:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331861723554594817', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2020-11-26 15:25:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331865704381104130', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 36, NULL, '2020-11-26 15:41:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331865704456601601', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 57, NULL, '2020-11-26 15:41:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331865704968306690', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2020-11-26 15:41:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331865710135689218', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 20, NULL, '2020-11-26 15:41:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866837715599362', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 80, NULL, '2020-11-26 15:46:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866837799485442', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 100, NULL, '2020-11-26 15:46:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866838634151937', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 46, NULL, '2020-11-26 15:46:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866873333628930', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2020-11-26 15:46:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866873342017537', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 32, NULL, '2020-11-26 15:46:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866874000523266', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 30, NULL, '2020-11-26 15:46:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866906628014082', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2020-11-26 15:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866906737065985', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 53, NULL, '2020-11-26 15:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331866907315879937', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2020-11-26 15:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873344125485057', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 51, NULL, '2020-11-26 16:12:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873345442496514', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 20, NULL, '2020-11-26 16:12:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873346029699073', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 40, NULL, '2020-11-26 16:12:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873468755034113', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2020-11-26 16:12:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873468763422722', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 29, NULL, '2020-11-26 16:12:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873469468065794', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 36, NULL, '2020-11-26 16:12:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873915339358210', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 25, NULL, '2020-11-26 16:14:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873915339358209', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 30, NULL, '2020-11-26 16:14:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873916169830401', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2020-11-26 16:14:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873960184856578', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2020-11-26 16:14:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873960226799618', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 31, NULL, '2020-11-26 16:14:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331873961145352194', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2020-11-26 16:14:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874271637094402', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 19, NULL, '2020-11-26 16:15:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874271653871618', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 23, NULL, '2020-11-26 16:15:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874272241074177', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2020-11-26 16:15:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874340700504066', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 21, NULL, '2020-11-26 16:16:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874340729864194', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2020-11-26 16:16:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874341283512321', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 22, NULL, '2020-11-26 16:16:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874925533282305', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2020-11-26 16:18:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874925545865217', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 33, NULL, '2020-11-26 16:18:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874926288257026', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 43, NULL, '2020-11-26 16:18:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331874980394778625', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@aef65e1', NULL, 21, NULL, '2020-11-26 16:18:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331877274972667905', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@75ebf684', NULL, 40, NULL, '2020-11-26 16:27:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331877829925224450', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 31, NULL, '2020-11-26 16:29:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331877829925224451', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2020-11-26 16:29:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331877830759890945', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 55, NULL, '2020-11-26 16:29:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331882279578451969', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 171, NULL, '2020-11-26 16:47:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331882280207597569', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 354, NULL, '2020-11-26 16:47:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331882280979349505', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 60, NULL, '2020-11-26 16:47:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331883456235913217', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2020-11-26 16:52:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331883456412073985', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 41, NULL, '2020-11-26 16:52:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331883457284489218', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 44, NULL, '2020-11-26 16:52:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331884105455452161', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2020-11-26 16:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331884105472229377', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 36, NULL, '2020-11-26 16:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331884106264952833', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 55, NULL, '2020-11-26 16:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331884149185265666', 2, 'online新增数据,表名:test_demo,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"d35109c3632c4952a19ecc094943dd71\",{\"create_by\":\"admin\",\"top_pic\":\"\",\"create_time\":\"2020-11-26 16:55:01\",\"sex\":\"1\",\"name\":\"张三\",\"chegnshi\":\"130304\",\"file_kk\":\"\",\"id\":\"1331884149004910593\"},null]', NULL, 39, NULL, '2020-11-26 16:55:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331884149826994178', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 38, NULL, '2020-11-26 16:55:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892087207575554', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 46, NULL, '2020-11-26 17:26:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892087215964161', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 50, NULL, '2020-11-26 17:26:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892087912218626', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 49, NULL, '2020-11-26 17:26:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892093503225858', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 22, NULL, '2020-11-26 17:26:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892573457432578', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2020-11-26 17:28:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892573457432577', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 27, NULL, '2020-11-26 17:28:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892574220795906', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 59, NULL, '2020-11-26 17:28:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892703111757825', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 24, NULL, '2020-11-26 17:29:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892703120146434', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 31, NULL, '2020-11-26 17:29:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892703938035713', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 53, NULL, '2020-11-26 17:29:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892801132642305', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2020-11-26 17:29:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892801170391042', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 36, NULL, '2020-11-26 17:29:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331892801870839810', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 39, NULL, '2020-11-26 17:29:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331893073523326978', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 37, NULL, '2020-11-26 17:30:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331893073619795970', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 30, NULL, '2020-11-26 17:30:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331893077029765121', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 49, NULL, '2020-11-26 17:30:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331893098760454145', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 45, NULL, '2020-11-26 17:30:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331893113214025730', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 42, NULL, '2020-11-26 17:30:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331893129701834753', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 40, NULL, '2020-11-26 17:30:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331893140191789058', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 37, NULL, '2020-11-26 17:30:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331894822015418370', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 37, NULL, '2020-11-26 17:37:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331894822090915841', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 47, NULL, '2020-11-26 17:37:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331894823458258946', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 62, NULL, '2020-11-26 17:37:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331900310186704898', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 36, NULL, '2020-11-26 17:59:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331900310186704899', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 41, NULL, '2020-11-26 17:59:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331900311298195457', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 51, NULL, '2020-11-26 17:59:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901117145628673', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 46, NULL, '2020-11-26 18:02:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901117200154625', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 47, NULL, '2020-11-26 18:02:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901118210981889', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 67, NULL, '2020-11-26 18:02:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901486433124353', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 39, NULL, '2020-11-26 18:03:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901486454095874', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 49, NULL, '2020-11-26 18:03:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901487271985154', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2020-11-26 18:03:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901553957224450', 2, 'online新增数据,表名:test_demo,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"d35109c3632c4952a19ecc094943dd71\",{\"create_by\":\"admin\",\"top_pic\":\"\",\"ceck\":\"1,2\",\"create_time\":\"2020-11-26 18:04:10\",\"name\":\"张三\",\"file_kk\":\"\",\"id\":\"1331901553776869377\",\"xiamuti\":\"1\",\"search_sel\":\"admin\"},null]', NULL, 40, NULL, '2020-11-26 18:04:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901554540232705', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2020-11-26 18:04:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901562056425474', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 14, NULL, '2020-11-26 18:04:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901610865541121', 2, 'online修改数据,表名:test_demo,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"d35109c3632c4952a19ecc094943dd71\",{\"birthday\":\"\",\"descc\":\"\",\"ceck\":\"1\",\"sex\":\"2\",\"file_kk\":\"\",\"search_sel\":\"hr\",\"xiamuti\":\"1,2\",\"pop\":\"\",\"update_time\":\"2020-11-26 18:04:24\",\"top_pic\":\"\",\"user_code\":\"\",\"chegnshi\":\"\",\"name\":\"张三\",\"id\":\"1331901553776869377\",\"update_by\":\"admin\",\"age\":\"\"}]', NULL, 28, NULL, '2020-11-26 18:04:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901611452743682', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2020-11-26 18:04:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331901620013318146', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 13, NULL, '2020-11-26 18:04:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331906679853891586', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 39, NULL, '2020-11-26 18:24:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331906679870668801', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 44, NULL, '2020-11-26 18:24:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331906680793415682', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 47, NULL, '2020-11-26 18:24:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331906689773420545', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2020-11-26 18:24:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920846384111618', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 19:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920876104949762', 2, 'online列表加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 146, NULL, '2020-11-26 19:20:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920876104949761', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 125, NULL, '2020-11-26 19:20:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920877103194114', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 90, NULL, '2020-11-26 19:20:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920883755360257', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 30, NULL, '2020-11-26 19:20:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920913430061057', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2020-11-26 19:21:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920913627193346', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 86, NULL, '2020-11-26 19:21:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920914243756034', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 55, NULL, '2020-11-26 19:21:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920968685821953', 2, 'online新增数据,表名:test_order_main,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"56870166aba54ebfacb20ba6c770bd73\",{\"test_order_product\":[{\"undefined\":false,\"product_name\":\"\",\"price\":\"\",\"num\":\"\",\"pro_type\":\"2\",\"descc\":\"\",\"order_fk_id\":\"1331920968207671298\",\"create_by\":\"admin\",\"create_time\":\"2020-11-26 19:21:19\"},{\"undefined\":false,\"product_name\":\"\",\"price\":\"\",\"num\":\"\",\"pro_type\":\"2\",\"descc\":\"\",\"order_fk_id\":\"1331920968207671298\",\"create_by\":\"admin\",\"create_time\":\"2020-11-26 19:21:19\"},{\"undefined\":false,\"product_name\":\"\",\"price\":\"\",\"num\":\"\",\"pro_type\":\"1\",\"descc\":\"\",\"order_fk_id\":\"1331920968207671298\",\"create_by\":\"admin\",\"create_time\":\"2020-11-26 19:21:19\"}],\"create_by\":\"admin\",\"create_time\":\"2020-11-26 19:21:19\",\"id\":\"1331920968207671298\"},null]', NULL, 106, NULL, '2020-11-26 19:21:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920969218498562', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 38, NULL, '2020-11-26 19:21:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920980975132674', 2, 'online删除数据,表名:test_order_main,删除成功!', 4, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.f()', NULL, '', NULL, 63, NULL, '2020-11-26 19:21:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920981545558017', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 48, NULL, '2020-11-26 19:21:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331920994384322561', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 21, NULL, '2020-11-26 19:21:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921005398564866', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 24, NULL, '2020-11-26 19:21:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921023702507522', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 31, NULL, '2020-11-26 19:21:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921023702507523', 2, 'online列表加载,表名:demo,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2020-11-26 19:21:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921023849308161', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 68, NULL, '2020-11-26 19:21:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921025346674690', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 49, NULL, '2020-11-26 19:21:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921041398276098', 2, 'online表单数据查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 13, NULL, '2020-11-26 19:21:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921385196986369', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2020-11-26 19:22:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921385343787009', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 68, NULL, '2020-11-26 19:22:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331921386010681345', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 41, NULL, '2020-11-26 19:22:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331927950411014146', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 19:49:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928011287142401', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 35, NULL, '2020-11-26 19:49:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928011291336705', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 38, NULL, '2020-11-26 19:49:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928014218960898', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 45, NULL, '2020-11-26 19:49:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928031788900353', 2, 'online表单数据查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 16, NULL, '2020-11-26 19:49:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928110436294658', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2020-11-26 19:49:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928110562123778', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 52, NULL, '2020-11-26 19:49:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928111560368130', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 24, NULL, '2020-11-26 19:49:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928120091582466', 2, 'online表单数据查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 24, NULL, '2020-11-26 19:49:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928171241119745', 2, 'online修改数据,表名:test_order_main,修改成功！', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"56870166aba54ebfacb20ba6c770bd73\",{\"order_code\":\"33\",\"order_date\":\"2020-11-21 00:00:00\",\"descc\":\"44\",\"update_time\":\"2020-11-26 19:49:56\",\"id\":\"1331861164286099457\",\"update_by\":\"admin\"}]', NULL, 73, NULL, '2020-11-26 19:49:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928172704931842', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2020-11-26 19:49:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928181613633537', 2, 'online表单数据查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 19, NULL, '2020-11-26 19:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928346579804162', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 18, NULL, '2020-11-26 19:50:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928346642718722', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 34, NULL, '2020-11-26 19:50:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1331928347850678274', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 36, NULL, '2020-11-26 19:50:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332353835924557825', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-28 00:01:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332353876202459138', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-28 00:01:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354013557526529', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 113, NULL, '2020-11-28 00:02:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354013800796162', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 189, NULL, '2020-11-28 00:02:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354014903898113', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 94, NULL, '2020-11-28 00:02:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354142150692866', 2, 'online新增数据,表名:test_order_main,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"56870166aba54ebfacb20ba6c770bd73\",{\"order_code\":\"11\",\"create_by\":\"admin\",\"order_date\":\"2020-11-28\",\"descc\":\"2\",\"create_time\":\"2020-11-28 00:02:36\",\"id\":\"1332354141651570690\"},null]', NULL, 115, NULL, '2020-11-28 00:02:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354142846947330', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 45, NULL, '2020-11-28 00:02:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354149398450177', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 37, NULL, '2020-11-28 00:02:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354277777707009', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 50, NULL, '2020-11-28 00:03:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354277798678529', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 58, NULL, '2020-11-28 00:03:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332354279077941250', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 41, NULL, '2020-11-28 00:03:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332937567593144322', 1, '用户名: jeecg,退出成功！', NULL, 'jeecg', 'jeecg', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 14:40:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332937596093440002', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 14:41:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332937664603201537', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5e0ad5e6', NULL, 62, NULL, '2020-11-29 14:41:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332937664661921794', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@54fca482', NULL, 77, NULL, '2020-11-29 14:41:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332937907080110082', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@13da8b9f', NULL, 16, NULL, '2020-11-29 14:42:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332937907117858818', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@f7965f5', NULL, 23, NULL, '2020-11-29 14:42:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332938526612365313', 2, 'online列表加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 105, NULL, '2020-11-29 14:44:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332938527056961537', 2, 'online表单加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 215, NULL, '2020-11-29 14:44:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332938528680157186', 2, 'online列表数据查询,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 126, NULL, '2020-11-29 14:44:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332942942459502593', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 15:02:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332943215340920833', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 15:03:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1332946314008829953', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 15:15:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333396966136700930', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-30 21:06:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397068335112193', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 104, NULL, '2020-11-30 21:06:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397068540633090', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 162, NULL, '2020-11-30 21:06:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397069505323009', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 166, NULL, '2020-11-30 21:06:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397157724119042', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 25, NULL, '2020-11-30 21:07:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397157837365249', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 55, NULL, '2020-11-30 21:07:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397158391013377', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 46, NULL, '2020-11-30 21:07:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397500155486209', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2020-11-30 21:08:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397500419727362', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 69, NULL, '2020-11-30 21:08:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397500977569794', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 49, NULL, '2020-11-30 21:08:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397637699297282', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 30, NULL, '2020-11-30 21:09:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397637825126402', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 57, NULL, '2020-11-30 21:09:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397638122921986', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2020-11-30 21:09:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397728002662401', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2020-11-30 21:09:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397728115908610', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 60, NULL, '2020-11-30 21:09:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333397728644390913', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2020-11-30 21:09:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333398223115083778', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 23, NULL, '2020-11-30 21:11:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333398223245107201', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 45, NULL, '2020-11-30 21:11:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333398224058802178', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 40, NULL, '2020-11-30 21:11:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399196256526337', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 34, NULL, '2020-11-30 21:15:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399196323635202', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 58, NULL, '2020-11-30 21:15:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399197070221313', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 43, NULL, '2020-11-30 21:15:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399210592657410', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 23, NULL, '2020-11-30 21:15:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399210668154882', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 37, NULL, '2020-11-30 21:15:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399211221803009', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2020-11-30 21:15:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399280973078529', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 23, NULL, '2020-11-30 21:15:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399281061158913', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 42, NULL, '2020-11-30 21:15:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399281564475393', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2020-11-30 21:15:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399372912222210', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 19, NULL, '2020-11-30 21:15:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399373017079809', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 42, NULL, '2020-11-30 21:15:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399373595893761', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 39, NULL, '2020-11-30 21:15:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399583998959618', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 20, NULL, '2020-11-30 21:16:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399583998959619', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 46, NULL, '2020-11-30 21:16:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1333399585450188802', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 43, NULL, '2020-11-30 21:16:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335522846266961922', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getColumns()', NULL, '  code: d35109c3632c4952a19ecc094943dd71', NULL, 281, NULL, '2020-12-06 17:53:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335522846338265089', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getFormItem()', NULL, '  code: d35109c3632c4952a19ecc094943dd71  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3b4a250c', NULL, 347, NULL, '2020-12-06 17:53:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335522849127477249', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getData()', NULL, '  code: d35109c3632c4952a19ecc094943dd71  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1403acff', NULL, 192, NULL, '2020-12-06 17:53:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335522992492982274', 2, 'online新增数据,表名:test_demo,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.formAdd()', NULL, '[\"d35109c3632c4952a19ecc094943dd71\",{\"create_by\":\"admin\",\"top_pic\":\"jeecgcloudweifuwujiagoutu-fuben_1607248465493.png\",\"create_time\":\"2020-12-06 17:54:28\",\"name\":\"333\",\"file_kk\":\"Javagongzuoliuxuqiu-20200703_1607248465493.docx\",\"id\":\"1335522992002248706\"},null]', NULL, 111, NULL, '2020-12-06 17:54:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335522994162315265', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getData()', NULL, '  code: d35109c3632c4952a19ecc094943dd71  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4dfcff8', NULL, 85, NULL, '2020-12-06 17:54:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335523138052108289', 2, 'online新增数据,表名:test_demo,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.formAdd()', NULL, '[\"d35109c3632c4952a19ecc094943dd71\",{\"create_by\":\"admin\",\"top_pic\":\"jeecgcloudweifuwujiagoutu-fuben_1607248485629.png,jeecg_cloud_project_ref_1607248495491.png\",\"ceck\":\"2\",\"create_time\":\"2020-12-06 17:55:03\",\"name\":\"张三66778888\",\"file_kk\":\"Javagongzuoliuxuqiu-20200703_1607248489440.docx\",\"id\":\"1335523137875947522\"},null]', NULL, 40, NULL, '2020-12-06 17:55:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335523139071324162', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getData()', NULL, '  code: d35109c3632c4952a19ecc094943dd71  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3d95e92a', NULL, 48, NULL, '2020-12-06 17:55:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335523159384338433', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getFormData()', NULL, '  code: d35109c3632c4952a19ecc094943dd71  id: 1335523137875947522', NULL, 24, NULL, '2020-12-06 17:55:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335523302842118146', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getFormData()', NULL, '  code: d35109c3632c4952a19ecc094943dd71  id: 1335523137875947522', NULL, 12, NULL, '2020-12-06 17:55:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335585587283468289', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-06 22:03:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335585610050150401', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-06 22:03:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335892973273489409', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@53996065', NULL, 472, NULL, '2020-12-07 18:24:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335893022153908225', 2, 'online列表加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getColumns()', NULL, '  code: 56efb74326e74064b60933f6f8af30ea', NULL, 153, NULL, '2020-12-07 18:24:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335893023932293121', 2, 'online表单加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getFormItem()', NULL, '  code: 56efb74326e74064b60933f6f8af30ea  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@31a25b26', NULL, 578, NULL, '2020-12-07 18:24:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335893025165418498', 2, 'online列表数据查询,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getData()', NULL, '  code: 56efb74326e74064b60933f6f8af30ea  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3cf41dc3', NULL, 291, NULL, '2020-12-07 18:24:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335893476728381441', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@408eadca', NULL, 19, NULL, '2020-12-07 18:26:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335893490900934657', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=order_num_rule, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@67cf4c45', NULL, 8, NULL, '2020-12-07 18:26:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335893496496136193', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@49dece22', NULL, 12, NULL, '2020-12-07 18:26:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894244743192578', 2, '填值规则-编辑', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1589274365000,\"id\":\"1260134137920090113\",\"ruleClass\":\"org.jeecg.modules.online.cgform.rule.OrderNumberRule\",\"ruleCode\":\"shop_order_num\",\"ruleName\":\"商城订单流水号\",\"ruleParams\":\"{}\",\"updateBy\":\"admin\",\"updateTime\":1607336982309}]', NULL, 8, NULL, '2020-12-07 18:29:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894245099708418', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@539049a2', NULL, 14, NULL, '2020-12-07 18:29:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894278796746753', 2, '填值规则-编辑', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1589274365000,\"id\":\"1260134137920090113\",\"ruleClass\":\"org.jeecg.modules.online.cgform.rule.OrderNumberRule\",\"ruleCode\":\"shop_order_num\",\"ruleName\":\"订单流水号\",\"ruleParams\":\"{}\",\"updateBy\":\"admin\",\"updateTime\":1607336990431}]', NULL, 6, NULL, '2020-12-07 18:29:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894279144873985', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7d1ccf40', NULL, 17, NULL, '2020-12-07 18:29:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894383901810690', 2, 'online列表加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getColumns()', NULL, '  code: 56870166aba54ebfacb20ba6c770bd73', NULL, 38, NULL, '2020-12-07 18:30:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894384111525890', 2, 'online表单加载,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getFormItem()', NULL, '  code: 56870166aba54ebfacb20ba6c770bd73  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3cd159e4', NULL, 68, NULL, '2020-12-07 18:30:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894384723894273', 2, 'online列表数据查询,表名:test_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getData()', NULL, '  code: 56870166aba54ebfacb20ba6c770bd73  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@39c35ad2', NULL, 55, NULL, '2020-12-07 18:30:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894448548618242', 2, 'online列表加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getColumns()', NULL, '  code: 56efb74326e74064b60933f6f8af30ea', NULL, 34, NULL, '2020-12-07 18:30:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894448812859393', 2, 'online表单加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getFormItem()', NULL, '  code: 56efb74326e74064b60933f6f8af30ea  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@16f7508e', NULL, 92, NULL, '2020-12-07 18:30:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894450306031618', 2, 'online列表数据查询,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getData()', NULL, '  code: 56efb74326e74064b60933f6f8af30ea  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5a9143bc', NULL, 56, NULL, '2020-12-07 18:30:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894538117980161', 2, 'online新增数据,表名:ces_order_main,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.formAdd()', NULL, '[\"56efb74326e74064b60933f6f8af30ea\",{\"order_code\":\"CN2020120718303277\",\"create_by\":\"admin\",\"ces_order_goods\":[{\"undefined\":false,\"good_name\":\"11\",\"price\":\"\",\"num\":\"\",\"zong_price\":\"\",\"order_main_id\":\"1335894537597886465\",\"sys_org_code\":\"A01\",\"create_time\":\"2020-12-07 18:30:52\",\"create_by\":\"admin\"},{\"undefined\":false,\"good_name\":\"22\",\"price\":\"\",\"num\":\"\",\"zong_price\":\"\",\"order_main_id\":\"1335894537597886465\",\"sys_org_code\":\"A01\",\"create_time\":\"2020-12-07 18:30:52\",\"create_by\":\"admin\"},{\"undefined\":false,\"good_name\":\"22\",\"price\":\"\",\"num\":\"\",\"zong_price\":\"\",\"order_main_id\":\"1335894537597886465\",\"sys_org_code\":\"A01\",\"create_time\":\"2020-12-07 18:30:52\",\"create_by\":\"admin\"}],\"ces_order_customer\":[{\"name\":\"张三\",\"sex\":\"\",\"birthday\":\"\",\"order_main_id\":\"1335894537597886465\",\"create_by\":\"admin\",\"sys_org_code\":\"A01\",\"create_time\":\"2020-12-07 18:30:52\"}],\"sys_org_code\":\"A01\",\"create_time\":\"2020-12-07 18:30:52\",\"xd_date\":\"2020-12-16 18:30:32\",\"id\":\"1335894537597886465\"},null]', NULL, 121, NULL, '2020-12-07 18:30:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894539065892866', 2, 'online列表数据查询,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getData()', NULL, '  code: 56efb74326e74064b60933f6f8af30ea  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7abdf1f8', NULL, 32, NULL, '2020-12-07 18:30:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894548792483842', 2, 'online列表加载,表名:ces_order_goods,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getColumns()', NULL, '  code: 86bf17839a904636b7ed96201b2fa6ea', NULL, 29, NULL, '2020-12-07 18:30:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894548805066753', 2, 'online列表加载,表名:ces_order_customer,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getColumns()', NULL, '  code: 09fd28e4b7184c1a9668496a5c496450', NULL, 33, NULL, '2020-12-07 18:30:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894549086085121', 2, 'online列表加载,表名:ces_order_goods,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getColumns()', NULL, '  code: 86bf17839a904636b7ed96201b2fa6ea', NULL, 27, NULL, '2020-12-07 18:30:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335894549086085122', 2, 'online列表加载,表名:ces_order_customer,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.controller.OnlCgformApiController.getColumns()', NULL, '  code: 09fd28e4b7184c1a9668496a5c496450', NULL, 35, NULL, '2020-12-07 18:30:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335960406097240066', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-07 22:52:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1335960440675082242', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-07 22:52:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1336120153056227330', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-08 09:27:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1336120187961225217', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-08 09:27:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1336608561994211329', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@344f760c', NULL, 222, NULL, '2020-12-09 17:48:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1339522563900510209', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-17 18:47:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1339522614873886721', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-17 18:47:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1339572940029079554', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-17 22:07:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1339572983163301890', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-17 22:07:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352545765681606658', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 17:16:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352545802985746434', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 17:17:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352547102209159170', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 17:22:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352547129367277570', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 17:22:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352568407906058242', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 18:46:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352568487660748801', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 18:47:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352588679765921794', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 20:07:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352588691220566017', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1f0951', NULL, 409, NULL, '2021-01-22 20:07:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352588749148098561', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 160, NULL, '2021-01-22 20:07:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352590335224156162', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 42, NULL, '2021-01-22 20:14:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352590374549950465', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 51, NULL, '2021-01-22 20:14:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352590395865403394', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 34, NULL, '2021-01-22 20:14:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352590516472614913', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 38, NULL, '2021-01-22 20:14:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593212344729601', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 196, NULL, '2021-01-22 20:25:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593212344729602', 2, 'online列表加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 204, NULL, '2021-01-22 20:25:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593213921787905', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 138, NULL, '2021-01-22 20:25:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593226152378370', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 29, NULL, '2021-01-22 20:25:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593235233046530', 2, 'online修改数据,表名:demo,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"402881e6760269a20176026d25650002\",{\"birthday\":\"\",\"sys_org_code\":\"\",\"create_time\":\"2019-01-19 23:37:18\",\"punch_time\":\"\",\"sex\":\"2\",\"key_word\":\"\",\"salary_money\":\"\",\"content\":\"\",\"create_by\":\"admin\",\"bonus_money\":\"\",\"update_time\":\"2019-01-21 16:49:06\",\"name\":\"zhang daihao\",\"id\":\"c2c0d49e3c01913067cf8d1fb3c971d2\",\"update_by\":\"admin\",\"email\":\"zhangdaiscott@163.com\",\"age\":\"\"}]', NULL, 72, NULL, '2021-01-22 20:25:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593236445200385', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 70, NULL, '2021-01-22 20:25:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593341562847233', 2, 'online表单加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 55, NULL, '2021-01-22 20:25:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593341583818753', 2, 'online列表加载,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 77, NULL, '2021-01-22 20:25:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593343794216961', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 88, NULL, '2021-01-22 20:25:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352593388694241281', 2, 'online列表数据查询,表名:demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 62, NULL, '2021-01-22 20:26:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352839717089562625', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 12:44:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352937202013294594', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 19:12:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352937267385716738', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 19:12:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352975311996289025', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 21:43:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352975537217830913', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 21:44:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352991156688465922', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 22:46:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1352991208265822210', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 22:46:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353028569330737153', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 01:15:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353028605561135106', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 01:15:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353224697061953537', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 14:14:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353224723947442178', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 14:14:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353224852720963586', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 14:15:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353224903472041985', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 14:15:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230837409763329', 2, 'online列表加载,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 94, NULL, '2021-01-24 14:39:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230837430734849', 2, 'online表单加载,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 72, NULL, '2021-01-24 14:39:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230838244429825', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 70, NULL, '2021-01-24 14:39:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230868057542657', 2, 'online新增数据,表名:aaa,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"a2ca0c7297a8491ca849fc1a06c9efbf\",{\"create_by\":\"admin\",\"sys_org_code\":\"A01\",\"create_time\":\"2021-01-24 14:39:15\",\"sex\":\"男\",\"name\":\"11\",\"dated\":\"2021-01-31\",\"id\":\"1353230867860410370\",\"age\":22},null]', NULL, 45, NULL, '2021-01-24 14:39:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230868435030017', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 37, NULL, '2021-01-24 14:39:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230874734874625', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 13, NULL, '2021-01-24 14:39:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230880971804674', 2, 'online修改数据,表名:aaa,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"a2ca0c7297a8491ca849fc1a06c9efbf\",{\"update_time\":\"2021-01-24 14:39:18\",\"sex\":\"男\",\"name\":\"1111\",\"dated\":\"2021-01-31 00:00:00\",\"id\":\"1353230867860410370\",\"update_by\":\"admin\",\"age\":22}]', NULL, 27, NULL, '2021-01-24 14:39:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230881340903425', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 24, NULL, '2021-01-24 14:39:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230892556472322', 2, 'online删除数据,表名:aaa,删除成功!', 4, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.f()', NULL, '', NULL, 22, NULL, '2021-01-24 14:39:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230892887822338', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 24, NULL, '2021-01-24 14:39:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230967189917699', 2, 'online表单加载,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 36, NULL, '2021-01-24 14:39:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230967189917698', 2, 'online列表加载,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 36, NULL, '2021-01-24 14:39:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353230967970058242', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 40, NULL, '2021-01-24 14:39:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353231001658707969', 2, 'online新增数据,表名:aaa,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"a2ca0c7297a8491ca849fc1a06c9efbf\",{\"create_by\":\"admin\",\"sys_org_code\":\"A01\",\"create_time\":\"2021-01-24 14:39:47\",\"sex\":\"1\",\"name\":\"张三\",\"dated\":\"2021-01-24\",\"id\":\"1353231001579016193\",\"age\":11},null]', NULL, 18, NULL, '2021-01-24 14:39:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353231001998446594', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2021-01-24 14:39:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353231745619185666', 2, 'online列表加载,实体不存在', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 1, NULL, '2021-01-24 14:42:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1353563050617651201', 2, '添加测试DEMO', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"age\":22,\"birthday\":1611504000000,\"createBy\":\"admin\",\"createTime\":1611549553854,\"id\":\"1353563050407936002\",\"name\":\"小红帽\",\"punchTime\":1611635944000,\"sex\":\"2\",\"sysOrgCode\":\"A01\"}]', NULL, 19, NULL, '2021-01-25 12:39:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290629135777793', 2, 'online列表加载,实体不存在', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-03-09 22:15:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290660014243842', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 239, NULL, '2021-03-09 22:15:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290660077158401', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 211, NULL, '2021-03-09 22:15:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290660844716033', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 82, NULL, '2021-03-09 22:15:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290709100183554', 2, 'online新增数据,表名:ces_field_kongj,操作成功！', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"18f064d1ef424c93ba7a16148851664f\",{\"remakr\":\"\",\"user_sel\":\"admin\",\"create_time\":\"2021-03-09 22:15:19\",\"sys_org_code\":\"A01\",\"sex\":\"1\",\"sel_search\":\"jeecg\",\"pic\":\"\",\"radio\":\"2\",\"create_by\":\"admin\",\"dep_sel\":\"A01\",\"name\":\"admin\",\"checkbox\":\"2\",\"files\":\"\",\"id\":\"1369290708802387969\"},null]', NULL, 58, NULL, '2021-03-09 22:15:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290709892907010', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 36, NULL, '2021-03-09 22:15:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290716972892162', 2, 'online表单数据查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 22, NULL, '2021-03-09 22:15:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290767489089538', 2, 'online修改数据,表名:ces_field_kongj,修改成功！', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"18f064d1ef424c93ba7a16148851664f\",{\"birthday\":\"\",\"sel_mut\":\"2\",\"remakr\":\"\",\"user_sel\":\"admin\",\"ddd\":\"\",\"fuwenb\":\"\",\"sex\":\"1\",\"sel_search\":\"jeecg\",\"pic\":\"20180607175028Fn1Lq7zw_1615299331700.png\",\"radio\":\"2\",\"update_time\":\"2021-03-09 22:15:33\",\"dep_sel\":\"A01\",\"checkbox\":\"2\",\"name\":\"admin44\",\"files\":\"\",\"id\":\"1369290708802387969\",\"update_by\":\"admin\"}]', NULL, 35, NULL, '2021-03-09 22:15:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1369290768080486401', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-03-09 22:15:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372092147572436994', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-17 15:47:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372092618236260354', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-17 15:49:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372092640017281025', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-17 15:49:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372092694396432385', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-17 15:49:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372111965637865474', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-17 17:06:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372111999926300674', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-17 17:06:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112034822909953', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 240, NULL, '2021-03-17 17:06:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112034869047298', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 208, NULL, '2021-03-17 17:06:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112036261556226', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 76, NULL, '2021-03-17 17:06:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112044478197761', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 23, NULL, '2021-03-17 17:06:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112160207433729', 2, 'online修改数据,表名:test_demo,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"d35109c3632c4952a19ecc094943dd71\",{\"birthday\":\"2021-03-04\",\"descc\":\"<p>111</p>\",\"ceck\":\"2\",\"sex\":\"2\",\"file_kk\":\"banner(1)_1615971995355.jpg\",\"search_sel\":\"hr\",\"xiamuti\":\"1,2\",\"pop\":\"111\",\"update_time\":\"2021-03-17 17:06:46\",\"top_pic\":\"appdev_1615971991731.png\",\"user_code\":\"1111\",\"chegnshi\":\"130203\",\"name\":\"战三1\",\"id\":\"fa1d1c249461498d90f405b94f60aae0\",\"update_by\":\"admin\",\"age\":2221}]', NULL, 63, NULL, '2021-03-17 17:06:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112161163735041', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-03-17 17:06:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112169325850625', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 14, NULL, '2021-03-17 17:06:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112187365552129', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 21, NULL, '2021-03-17 17:06:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112187382329346', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 25, NULL, '2021-03-17 17:06:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112188401545217', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 51, NULL, '2021-03-17 17:06:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112194193879041', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 7, NULL, '2021-03-17 17:06:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112194206461953', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 11, NULL, '2021-03-17 17:06:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372112195410227201', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 58, NULL, '2021-03-17 17:06:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372128614600491009', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@58d16469', NULL, 79, NULL, '2021-03-17 18:12:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372128619704958978', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3d2959c4', NULL, 56, NULL, '2021-03-17 18:12:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372128737153859586', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3acb10d7', NULL, 85, NULL, '2021-03-17 18:12:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129522566643714', 2, 'online表单加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 231, NULL, '2021-03-17 18:15:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129522600198146', 2, 'online列表加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 239, NULL, '2021-03-17 18:15:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129523292258305', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 97, NULL, '2021-03-17 18:15:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129533647994882', 2, 'online新增数据,表名:ces_shop_type,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"8d66ea41c7cc4ef9ab3aab9055657fc9\",{\"create_by\":\"admin\",\"create_time\":\"2021-03-17 18:15:48\",\"sys_org_code\":\"A01\",\"pid\":\"0\",\"id\":\"1372129533253730305\",\"has_child\":\"0\",\"pics\":\"\"},null]', NULL, 91, NULL, '2021-03-17 18:15:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129534117756929', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 47, NULL, '2021-03-17 18:15:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129555995246593', 2, 'online删除数据,表名:ces_shop_type,删除成功!', 4, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.f()', NULL, '', NULL, 53, NULL, '2021-03-17 18:15:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129556402094081', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 51, NULL, '2021-03-17 18:15:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129560357322753', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 40, NULL, '2021-03-17 18:15:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129942949150722', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 45, NULL, '2021-03-17 18:17:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129942949150723', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 37, NULL, '2021-03-17 18:17:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372129944220024833', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 63, NULL, '2021-03-17 18:17:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130053276123138', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@9f1d866', NULL, 29, NULL, '2021-03-17 18:17:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130306301706241', 2, 'online列表加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 48, NULL, '2021-03-17 18:18:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130306641444866', 2, 'online表单加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 137, NULL, '2021-03-17 18:18:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130307681632258', 2, 'online列表数据查询,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 55, NULL, '2021-03-17 18:18:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130315621449730', 2, 'online列表加载,表名:ces_order_customer,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2021-03-17 18:18:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130315613061122', 2, 'online列表加载,表名:ces_order_goods,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-03-17 18:18:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130315805999106', 2, 'online列表加载,表名:ces_order_customer,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 15, NULL, '2021-03-17 18:18:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130315805999105', 2, 'online列表加载,表名:ces_order_goods,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 11, NULL, '2021-03-17 18:18:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1372130325553561601', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 45, NULL, '2021-03-17 18:18:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379664659864989697', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:17:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379665698341105665', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:21:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379665741534048258', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:22:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379666371124252674', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:24:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379666399830069250', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:24:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379666562204160002', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:25:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379666669129551873', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:25:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379666774037483521', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:26:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379666820384542721', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:26:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379667572012208129', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:29:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379667606564884482', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:29:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379668753430204417', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:33:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379668783247511554', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:34:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379668859470598146', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:34:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379668910129401857', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:34:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379668994871119874', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:34:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379669021387509761', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:35:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379671319987736578', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:44:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379671364380250114', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:44:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379671538687135745', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:45:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379671568647049217', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:45:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379671592047071234', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:45:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379671624162856962', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:45:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379673533254848513', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:52:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379673640826163202', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:53:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379673675873767425', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:53:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379673707289104386', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:53:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379673858678312961', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:54:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379673887220551682', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 13:54:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379675562018721794', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 14:01:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1379675602279845890', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 14:01:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399687332468129794', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 19:20:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399687392790609921', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 19:20:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399687590795313154', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4cbf7865', NULL, 162, NULL, '2021-06-01 19:21:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399687594553409538', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@71796207', NULL, 34, NULL, '2021-06-01 19:21:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399687598932262913', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@65f537d4', NULL, 123, NULL, '2021-06-01 19:21:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399687660353650689', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@184b12a4', NULL, 98, NULL, '2021-06-01 19:21:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399701518262788097', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 172, NULL, '2021-06-01 20:17:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399701518262788098', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 151, NULL, '2021-06-01 20:17:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399701519139397633', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 76, NULL, '2021-06-01 20:17:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399702461880524801', 2, 'Online报表，sql解析：select * from sys_userA', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 20:20:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399702739514089474', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 45, NULL, '2021-06-01 20:21:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399702739614752769', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 64, NULL, '2021-06-01 20:21:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399702740399087618', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 62, NULL, '2021-06-01 20:21:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399704355143188481', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@149c0d8f', NULL, 114, NULL, '2021-06-01 20:28:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399704359270383618', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@50305240', NULL, 53, NULL, '2021-06-01 20:28:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399704362860707841', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6eb3c258', NULL, 62, NULL, '2021-06-01 20:28:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399903916054822913', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02 09:41:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399903957238693890', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02 09:41:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399986538042970114', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02 15:09:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399986585157586946', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02 15:09:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399986654434906113', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 110, NULL, '2021-06-02 15:10:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399986654476849154', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 143, NULL, '2021-06-02 15:10:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399986655357652993', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 80, NULL, '2021-06-02 15:10:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399987724489936898', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@165786dd', NULL, 29, NULL, '2021-06-02 15:14:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1399987743121035265', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@450700c1', NULL, 70, NULL, '2021-06-02 15:14:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627233439678466', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 09:35:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627265052147713', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 09:35:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627288418615298', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 313, NULL, '2021-06-04 09:35:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627288489918466', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 343, NULL, '2021-06-04 09:35:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627289483968514', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 100, NULL, '2021-06-04 09:35:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627310061223937', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 25, NULL, '2021-06-04 09:35:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627574918938625', 2, 'online列表加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-06-04 09:36:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627575279648769', 2, 'online表单加载,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 142, NULL, '2021-06-04 09:36:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400627575527112706', 2, 'online列表数据查询,表名:ces_order_main,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 39, NULL, '2021-06-04 09:36:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726074486755329', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 16:08:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726140186333186', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 16:08:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726175414292481', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@29f13d66', NULL, 70, NULL, '2021-06-04 16:08:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726317248876545', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@45581523', NULL, 50, NULL, '2021-06-04 16:09:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726515085807618', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2428e9dc', NULL, 20, NULL, '2021-06-04 16:10:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726658124177409', 2, '编辑DEMO', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"age\":22,\"birthday\":1611504000000,\"createBy\":\"admin\",\"createTime\":1611549554000,\"id\":\"1353563050407936002\",\"keyWord\":\"44\",\"name\":\"小红帽\",\"punchTime\":1611635944000,\"sex\":\"2\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1622794234140}]', NULL, 16, NULL, '2021-06-04 16:10:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726674771369986', 2, '编辑DEMO', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"age\":22,\"birthday\":1611504000000,\"createBy\":\"admin\",\"createTime\":1611549554000,\"id\":\"1353563050407936002\",\"keyWord\":\"44\",\"name\":\"小红帽4\",\"punchTime\":1611635944000,\"sex\":\"2\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1622794238159}]', NULL, 6, NULL, '2021-06-04 16:10:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726937250893826', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 16:11:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400726994914185217', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 16:11:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400727037813547009', 2, '添加测试DEMO', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1622794324711,\"id\":\"1400727037779992577\",\"name\":\"222\",\"sysOrgCode\":\"A01\"}]', NULL, 11, NULL, '2021-06-04 16:12:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400730175928922114', 2, '编辑DEMO', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1622794325000,\"id\":\"1400727037779992577\",\"name\":\"22233\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1622795072846}]', NULL, 16, NULL, '2021-06-04 16:24:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400730201396736001', 2, '添加测试DEMO', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1622795078970,\"id\":\"1400730201371570177\",\"name\":\"小王多对对\",\"sysOrgCode\":\"A01\"}]', NULL, 9, NULL, '2021-06-04 16:24:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400730228139618306', 2, '删除测试DEMO', 4, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '  id: 1400730201371570177', NULL, 5, NULL, '2021-06-04 16:24:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400730236737941506', 2, '删除测试DEMO', 4, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '  id: 1400727037779992577', NULL, 6, NULL, '2021-06-04 16:24:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400733912760119298', 2, '编辑DEMO', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.edit()', NULL, '[{\"age\":22,\"birthday\":1611504000000,\"createBy\":\"admin\",\"createTime\":1611549554000,\"id\":\"1353563050407936002\",\"keyWord\":\"44\",\"name\":\"小红帽4\",\"punchTime\":1611635944000,\"sex\":\"2\",\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1622795963573}]', NULL, 123, NULL, '2021-06-04 16:39:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400733931269582850', 2, '添加测试DEMO', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1622795968239,\"id\":\"1400733931236028417\",\"name\":\"dd\",\"sysOrgCode\":\"A01\"}]', NULL, 10, NULL, '2021-06-04 16:39:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400734007870124033', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 16:39:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400734078741278722', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 16:40:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400734750899466241', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 16:42:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400734798911664130', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-04 16:42:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400734829664333825', 2, '添加测试DEMO', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1622796182434,\"id\":\"1400734829626585090\",\"name\":\"aaa\",\"sysOrgCode\":\"A01\"}]', NULL, 8, NULL, '2021-06-04 16:43:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1400734875436773378', 2, '添加测试DEMO', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1622796193346,\"id\":\"1400734875399024641\",\"name\":\"aaa\",\"sysOrgCode\":\"A01\"}]', NULL, 10, NULL, '2021-06-04 16:43:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844353271975937', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-07 18:11:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844409878302721', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-07 18:12:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844444867186689', 2, 'online列表加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 248, NULL, '2021-06-07 18:12:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844444900741121', 2, 'online表单加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 257, NULL, '2021-06-07 18:12:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844445710241793', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 136, NULL, '2021-06-07 18:12:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844563008147458', 2, 'online列表加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 50, NULL, '2021-06-07 18:12:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844563146559490', 2, 'online表单加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 83, NULL, '2021-06-07 18:12:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844564023169025', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 112, NULL, '2021-06-07 18:12:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844597896368130', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 123, NULL, '2021-06-07 18:12:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844597896368131', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 128, NULL, '2021-06-07 18:12:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844599066578945', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 84, NULL, '2021-06-07 18:12:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844839681216514', 2, 'online列表加载,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 34, NULL, '2021-06-07 18:13:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844839744131073', 2, 'online表单加载,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 49, NULL, '2021-06-07 18:13:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844840532660225', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 67, NULL, '2021-06-07 18:13:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844856303243265', 2, 'online新增数据,表名:aaa,操作成功！', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"b493c5fd4fa64a3a84e74ee171763e37\",{\"aa\":\"2\",\"dd\":\"3\",\"create_by\":\"admin\",\"create_time\":\"2021-06-07 18:13:53\",\"sys_org_code\":\"A01\",\"id\":\"1401844855833481217\"},null]', NULL, 70, NULL, '2021-06-07 18:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844856739450881', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 56, NULL, '2021-06-07 18:13:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844862464675841', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 27, NULL, '2021-06-07 18:13:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844870001840130', 2, 'online修改数据,表名:aaa,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"b493c5fd4fa64a3a84e74ee171763e37\",{\"dd\":\"34\",\"aa\":\"24\",\"update_time\":\"2021-06-07 18:13:56\",\"id\":\"1401844855833481217\",\"update_by\":\"admin\"}]', NULL, 28, NULL, '2021-06-07 18:13:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844870517739522', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 60, NULL, '2021-06-07 18:13:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844879862648833', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 31, NULL, '2021-06-07 18:13:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844879988477954', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 73, NULL, '2021-06-07 18:13:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844880017838082', 2, 'online列表数据查询,表名:aaa,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 78, NULL, '2021-06-07 18:13:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401844880953167874', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 55, NULL, '2021-06-07 18:13:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401848284244987905', 2, 'online表单加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 33, NULL, '2021-06-07 18:27:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401848284358234114', 2, 'online列表加载,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 62, NULL, '2021-06-07 18:27:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401848285973041154', 2, 'online列表数据查询,表名:ces_shop_type,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.d()', NULL, '', NULL, 169, NULL, '2021-06-07 18:27:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401848309956071425', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5ae917ab', NULL, 121, NULL, '2021-06-07 18:27:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401848318827024385', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 53, NULL, '2021-06-07 18:27:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401848319074488322', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 122, NULL, '2021-06-07 18:27:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1401848320018206721', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 66, NULL, '2021-06-07 18:27:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406941167165476865', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-21 19:44:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406941202536042498', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-21 19:44:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406941232550481922', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 78, NULL, '2021-06-21 19:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406941232802140162', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 158, NULL, '2021-06-21 19:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406941233980739585', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 105, NULL, '2021-06-21 19:45:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406941357549129730', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 24, NULL, '2021-06-21 19:45:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406955792506392577', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 13, NULL, '2021-06-21 20:42:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406955792611250177', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2021-06-21 20:42:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1406955793622077441', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 43, NULL, '2021-06-21 20:42:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410454704817713154', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01 12:26:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410454828394491906', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 57, NULL, '2021-07-01 12:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410454828604207105', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 127, NULL, '2021-07-01 12:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410454830030270466', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 122, NULL, '2021-07-01 12:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455064902905858', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 70, NULL, '2021-07-01 12:27:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455064944848898', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 48, NULL, '2021-07-01 12:27:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455065708212225', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 47, NULL, '2021-07-01 12:27:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455441668845570', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 46, NULL, '2021-07-01 12:29:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455441702400001', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 47, NULL, '2021-07-01 12:29:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455442537066497', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 45, NULL, '2021-07-01 12:29:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455709739397122', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 18, NULL, '2021-07-01 12:30:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455840547155969', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 30, NULL, '2021-07-01 12:30:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455840547155970', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2021-07-01 12:30:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455841339879426', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-07-01 12:30:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410455993840578562', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-01 12:31:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410456746223218689', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 13, NULL, '2021-07-01 12:34:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410456746248384514', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-07-01 12:34:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410456747183714306', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2021-07-01 12:34:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410457025115074562', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 13, NULL, '2021-07-01 12:35:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410457025169600513', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2021-07-01 12:35:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410457026184622081', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 24, NULL, '2021-07-01 12:35:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458622364758018', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-01 12:41:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458622448644098', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2021-07-01 12:41:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458623325253634', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 25, NULL, '2021-07-01 12:41:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458766019670017', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-01 12:42:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458766187442178', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 51, NULL, '2021-07-01 12:42:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458767416373250', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2021-07-01 12:42:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458799637016578', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-01 12:42:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458799712514049', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 30, NULL, '2021-07-01 12:42:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458800387796994', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 25, NULL, '2021-07-01 12:42:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458990427516929', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-01 12:43:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458990503014402', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-07-01 12:43:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410458992306565121', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 23, NULL, '2021-07-01 12:43:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410459313267290113', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@12bb2b45', NULL, 69, NULL, '2021-07-01 12:44:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1410459327095910402', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5f3db766', NULL, 14, NULL, '2021-07-01 12:44:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418139621981716482', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 162, NULL, '2021-07-22 17:23:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418139623395196930', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 119, NULL, '2021-07-22 17:23:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418139650008055810', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 69, NULL, '2021-07-22 17:23:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418139651551559681', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 64, NULL, '2021-07-22 17:23:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418139705054101505', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 38, NULL, '2021-07-22 17:23:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418139706048151553', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 37, NULL, '2021-07-22 17:23:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418139977126019073', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 42, NULL, '2021-07-22 17:24:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418139978426253314', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 37, NULL, '2021-07-22 17:24:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140009535406081', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 79, NULL, '2021-07-22 17:25:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140009610903554', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 97, NULL, '2021-07-22 17:25:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140010252632066', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 46, NULL, '2021-07-22 17:25:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140020776140801', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 18, NULL, '2021-07-22 17:25:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140043219861505', 2, 'online修改数据,表名:ces_field_kongj,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"18f064d1ef424c93ba7a16148851664f\",{\"update_time\":\"2021-07-22 17:25:08\",\"remakr\":\"11\",\"name\":\"11\",\"files\":\"\",\"pic\":\"\",\"id\":\"1285112866127577089\",\"update_by\":\"admin\",\"radio\":\"2\"}]', NULL, 49, NULL, '2021-07-22 17:25:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140043815452673', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 41, NULL, '2021-07-22 17:25:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140051780435970', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 8, NULL, '2021-07-22 17:25:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140064019415042', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 17:25:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418140103194214402', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 12, NULL, '2021-07-22 17:25:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141098225729537', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 16, NULL, '2021-07-22 17:29:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141098288644098', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 42, NULL, '2021-07-22 17:29:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141098959732738', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 55, NULL, '2021-07-22 17:29:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141145516507137', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 17, NULL, '2021-07-22 17:29:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141145604587521', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 37, NULL, '2021-07-22 17:29:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141146028212226', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-07-22 17:29:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141184024412162', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 13, NULL, '2021-07-22 17:29:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141184095715329', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2021-07-22 17:29:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141184506757122', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2021-07-22 17:29:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418141431727423490', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 17:30:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418144928829046786', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 14, NULL, '2021-07-22 17:44:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418144928900349953', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 34, NULL, '2021-07-22 17:44:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418144929365917698', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-07-22 17:44:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418144934910787585', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 17:44:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418150302080598018', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 12, NULL, '2021-07-22 18:05:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418150302168678401', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2021-07-22 18:05:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418150302546165762', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 25, NULL, '2021-07-22 18:05:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418150307071819777', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 18:05:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418152524654870529', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 18:14:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418152544770752513', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 44, NULL, '2021-07-22 18:14:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418152544821084161', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 56, NULL, '2021-07-22 18:14:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418152545320206338', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 34, NULL, '2021-07-22 18:14:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418152551812988929', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 18:14:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418152563288604674', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 12, NULL, '2021-07-22 18:14:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418152563355713538', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2021-07-22 18:14:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418152563699646465', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 22, NULL, '2021-07-22 18:14:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154487400398849', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 18:22:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154491821195265', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 30, NULL, '2021-07-22 18:22:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154491863138305', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 39, NULL, '2021-07-22 18:22:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154492337094658', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2021-07-22 18:22:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154498053931009', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 9, NULL, '2021-07-22 18:22:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154506643865602', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 18:22:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154515443515393', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 18:22:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154515514818562', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 30, NULL, '2021-07-22 18:22:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154515892305921', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2021-07-22 18:22:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154519927226370', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 18:22:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154558208638977', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 18:22:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154558284136450', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2021-07-22 18:22:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154558703566849', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2021-07-22 18:22:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418154568631484418', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 18:22:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418155477063204865', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 18:26:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418155477134508034', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2021-07-22 18:26:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418155477558132737', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 23, NULL, '2021-07-22 18:26:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418155481853100034', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 18:26:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418155493605539841', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 9, NULL, '2021-07-22 18:26:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418155892689371138', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 18:28:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418155892748091393', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2021-07-22 18:28:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418155893247213570', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 34, NULL, '2021-07-22 18:28:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156068673978370', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 18:28:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156068736892929', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-07-22 18:28:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156069378621441', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 34, NULL, '2021-07-22 18:28:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156184604540929', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 18:29:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156192879902722', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 13, NULL, '2021-07-22 18:29:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156192938622978', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-07-22 18:29:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156194054307842', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2021-07-22 18:29:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156223519293441', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@527ba929', NULL, 27, NULL, '2021-07-22 18:29:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156716287098882', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 15, NULL, '2021-07-22 18:31:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156716358402050', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 37, NULL, '2021-07-22 18:31:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156716878495745', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 24, NULL, '2021-07-22 18:31:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156765716971522', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 30, NULL, '2021-07-22 18:31:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156765725360130', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2021-07-22 18:31:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418156766576803841', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2021-07-22 18:31:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418157616330211330', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 9, NULL, '2021-07-22 18:34:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418157616464429058', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2021-07-22 18:34:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418157618020515842', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-07-22 18:34:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418157673137864705', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 9, NULL, '2021-07-22 18:35:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418157673200779265', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2021-07-22 18:35:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418157674693951490', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2021-07-22 18:35:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418158935388487681', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 15, NULL, '2021-07-22 18:40:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418158935493345282', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 36, NULL, '2021-07-22 18:40:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418158936801968129', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2021-07-22 18:40:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418158954845863938', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2021-07-22 18:40:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418158954850058242', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 8, NULL, '2021-07-22 18:40:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418158955600838657', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2021-07-22 18:40:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160043313889282', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 18:44:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160043372609538', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 30, NULL, '2021-07-22 18:44:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160044643483650', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2021-07-22 18:44:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160057146703874', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 8, NULL, '2021-07-22 18:44:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160091376418818', 2, 'online表单加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 9, NULL, '2021-07-22 18:44:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160091443527681', 2, 'online列表加载,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2021-07-22 18:44:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160092219473922', 2, 'online列表数据查询,表名:test_demo,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 26, NULL, '2021-07-22 18:44:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160129641054209', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 12, NULL, '2021-07-22 18:44:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160129733328898', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-07-22 18:44:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160130274394113', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-07-22 18:44:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160605510008834', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 10, NULL, '2021-07-22 18:46:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160605577117697', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 30, NULL, '2021-07-22 18:46:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418160606147543041', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 25, NULL, '2021-07-22 18:46:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418162369915289601', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 18:53:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418162406107938818', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 18:54:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418162406191824898', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2021-07-22 18:54:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418162406799998977', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 41, NULL, '2021-07-22 18:54:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418163248181575682', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 18:57:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418163248257073153', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 31, NULL, '2021-07-22 18:57:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418163248911384577', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 39, NULL, '2021-07-22 18:57:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418163429748801537', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 14, NULL, '2021-07-22 18:58:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418163429828493313', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 36, NULL, '2021-07-22 18:58:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418163430998704130', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2021-07-22 18:58:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165896020525058', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 19:07:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165896108605442', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 35, NULL, '2021-07-22 19:07:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165896637087745', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2021-07-22 19:07:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165921832271874', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 12, NULL, '2021-07-22 19:07:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165921911963649', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 28, NULL, '2021-07-22 19:07:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165922364948481', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 34, NULL, '2021-07-22 19:07:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165930636115970', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 12, NULL, '2021-07-22 19:08:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165930694836225', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-07-22 19:08:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418165931353341954', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 34, NULL, '2021-07-22 19:08:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166642489196545', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 19:10:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166834697371650', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 19:11:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166867165478913', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 19:11:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166867249364994', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-07-22 19:11:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166867744292865', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 24, NULL, '2021-07-22 19:11:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166873029115906', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 19:11:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166915605495810', 2, 'online列表加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 23, NULL, '2021-07-22 19:11:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166915651633153', 2, 'online表单加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 35, NULL, '2021-07-22 19:11:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418166916310138881', 2, 'online列表数据查询,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 38, NULL, '2021-07-22 19:11:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170876144156674', 2, 'online表单加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 7, NULL, '2021-07-22 19:27:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170876207071233', 2, 'online列表加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 21, NULL, '2021-07-22 19:27:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170876790079489', 2, 'online列表数据查询,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 30, NULL, '2021-07-22 19:27:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170906494140418', 2, 'online表单加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 6, NULL, '2021-07-22 19:27:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170906548666369', 2, 'online列表加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 18, NULL, '2021-07-22 19:27:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170907144257537', 2, 'online列表数据查询,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2021-07-22 19:27:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170985011511298', 2, 'online表单加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 7, NULL, '2021-07-22 19:28:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170985057648642', 2, 'online列表加载,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 18, NULL, '2021-07-22 19:28:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418170985640656897', 2, 'online列表数据查询,表名:test_note,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2021-07-22 19:28:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173413547081730', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 19:37:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173413622579202', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 29, NULL, '2021-07-22 19:37:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173414000066561', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 25, NULL, '2021-07-22 19:37:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173419351998466', 2, 'online表单数据查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 19:37:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173430756311041', 2, 'online修改数据,表名:ces_field_kongj,修改成功！', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '[\"18f064d1ef424c93ba7a16148851664f\",{\"birthday\":\"\",\"sel_mut\":\"2\",\"remakr\":\"\",\"user_sel\":\"admin\",\"ddd\":\"\",\"fuwenb\":\"\",\"sex\":\"1\",\"sel_search\":\"jeecg\",\"pic\":\"20180607175028Fn1Lq7zw_1615299331700.png\",\"radio\":\"2\",\"update_time\":\"2021-07-22 19:37:48\",\"dep_sel\":\"A01\",\"checkbox\":\"2\",\"name\":\"admin44\",\"files\":\"\",\"id\":\"1369290708802387969\",\"update_by\":\"admin\"}]', NULL, 46, NULL, '2021-07-22 19:37:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173431343513602', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 33, NULL, '2021-07-22 19:37:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173462142287874', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 12, NULL, '2021-07-22 19:37:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173462234562561', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 32, NULL, '2021-07-22 19:37:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173462943399937', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 27, NULL, '2021-07-22 19:37:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173556929363970', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 19:38:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173587153518594', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 19:38:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173596548759553', 2, 'online表单加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.b()', NULL, '', NULL, 11, NULL, '2021-07-22 19:38:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173596599091201', 2, 'online列表加载,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 30, NULL, '2021-07-22 19:38:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1418173597668638722', 2, 'online列表数据查询,表名:ces_field_kongj,操作成功！', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.online.cgform.b.a.a()', NULL, '', NULL, 22, NULL, '2021-07-22 19:38:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425729506033643522', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 16:02:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425729541500678146', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 16:03:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425729673222795265', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 16:03:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425729900541489154', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 16:04:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425731926247653378', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@44e1d273', NULL, 36, NULL, '2021-08-12 16:12:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425731930571980802', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2f077560', NULL, 33, NULL, '2021-08-12 16:12:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425731935504482306', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2e500d75', NULL, 251, NULL, '2021-08-12 16:12:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425731941049352194', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4e1529d9', NULL, 14, NULL, '2021-08-12 16:12:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425731975262289921', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1cf1e65a', NULL, 60, NULL, '2021-08-12 16:12:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425737404881129473', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 16:34:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425737415043928065', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2afa6d79', NULL, 44, NULL, '2021-08-12 16:34:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425737428377620482', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@44009d58', NULL, 35, NULL, '2021-08-12 16:34:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425737474334609410', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@11b0f3ec', NULL, 19, NULL, '2021-08-12 16:34:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425737481922105345', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@47e18656', NULL, 37, NULL, '2021-08-12 16:34:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425757864465362945', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 17:55:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425758007457574914', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 17:56:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425758990996697089', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@277b68ed', NULL, 45, NULL, '2021-08-12 18:00:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425758997720166401', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@55742033', NULL, 33, NULL, '2021-08-12 18:00:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425789682132508673', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 20:02:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425789718723616770', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 20:02:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425789742220107777', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6bf5ece4', NULL, 32, NULL, '2021-08-12 20:02:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425789745353252866', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, '  sysCheckRule: SysCheckRule(id=null, ruleName=null, ruleCode=null, ruleJson=null, ruleDescription=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@697e1f13', NULL, 26, NULL, '2021-08-12 20:02:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425789750034096130', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, '  sysDataSource: SysDataSource(id=null, code=null, name=null, remark=null, dbType=null, dbDriver=null, dbUrl=null, dbName=null, dbUsername=null, dbPassword=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@32107f37', NULL, 321, NULL, '2021-08-12 20:02:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425823124578377729', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 22:14:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1425823161031073794', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-12 22:15:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451861529339076610', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 18:42:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451861696628891650', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4ae3cdb5', NULL, 63, NULL, '2021-10-23 18:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451862320837795842', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=devleader,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@105f2fed', NULL, 18, NULL, '2021-10-23 18:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451862320846184450', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@179c9b76', NULL, 19, NULL, '2021-10-23 18:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451862505131319297', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=devleader,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5273cba3', NULL, 12, NULL, '2021-10-23 18:46:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451862505139707905', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@74007d29', NULL, 14, NULL, '2021-10-23 18:46:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451862571476819970', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 18:46:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451862747734056962', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 18:47:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451863012688240642', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 18:48:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451863090840707073', 1, '用户名: jeecg,登录成功！', NULL, 'jeecg', 'jeecg', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 18:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451863244138323969', 1, '用户名: jeecg,退出成功！', NULL, 'jeecg', 'jeecg', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 18:49:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451863294251868161', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 18:49:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451863482974576642', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, '  sysFillRule: SysFillRule(id=null, ruleName=null, ruleCode=null, ruleClass=null, ruleParams=null, updateBy=null, updateTime=null, createBy=null, createTime=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4eb5b802', NULL, 20, NULL, '2021-10-23 18:50:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451865112050638850', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5055c2f2', NULL, 10, NULL, '2021-10-23 18:56:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451865461293555713', 2, '批量删除用户， ids： 1400726588175749122,f0019fdebedb443c98dcb17d88222c38,3d464b4ea0d2491aab8a7bde74c57e95,a75d45a015c44384a04449ee80dc3503,', 3, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 18:57:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451865533750157313', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@33a4c318', NULL, 10, NULL, '2021-10-23 18:58:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451865643347320834', 2, '职务表-通过id删除', 4, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.delete()', NULL, '  id: 1185040064792571906', NULL, 6, NULL, '2021-10-23 18:58:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451865643515092993', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@11ea05e', NULL, 8, NULL, '2021-10-23 18:58:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451865680349470721', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@60d7ec86', NULL, 10, NULL, '2021-10-23 18:58:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451866347810037762', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 19:01:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451866391862812673', 1, '用户名: test,登录成功！', NULL, 'test', '测试', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 19:01:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451866513032060929', 1, '用户名: 测试,退出成功！', NULL, 'test', '测试', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 19:02:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451866594598690817', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 19:02:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451866777390653441', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 19:03:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1451866848886759425', 1, '用户名: test,登录成功！', NULL, 'test', '测试', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-23 19:03:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453278360901754882', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 16:32:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453278998305939458', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7a7d2952', NULL, 31, NULL, '2021-10-27 16:34:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453279471868026881', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@235e4754', NULL, 13, NULL, '2021-10-27 16:36:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453279477777801217', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7dc29adf', NULL, 9, NULL, '2021-10-27 16:36:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453281428527620098', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 16:44:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453281506726223874', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 16:44:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453282266687971329', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@556e0ba5', NULL, 7, NULL, '2021-10-27 16:47:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453282299730698242', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@34ab257', NULL, 8, NULL, '2021-10-27 16:47:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453282552982773762', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6acc3d68', NULL, 8, NULL, '2021-10-27 16:48:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453284873275940866', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2bd59608', NULL, 9, NULL, '2021-10-27 16:58:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453284873389187073', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@39089d92', NULL, 36, NULL, '2021-10-27 16:58:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453284926833008642', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 16:58:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453284998006153217', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 16:58:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453285762342559745', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:01:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453285845825986561', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:02:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453291894784106498', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:26:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453293044522524674', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-27 17:30:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453611674032394241', 1, '用户名: 测试,退出成功！', NULL, 'test', '测试', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 14:36:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453611734925299713', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 14:36:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453660526571663361', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 17:50:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453660678078312449', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 17:51:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453660748542619649', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 17:51:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453666022334640130', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 18:12:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453666074167848962', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 18:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453667083766181890', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 18:16:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453667146366169090', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-28 18:17:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453968069353254913', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 14:12:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453968160252211202', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 14:13:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453968190937739266', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 14:13:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453968245685989378', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 14:13:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1453968271053139970', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-29 14:13:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1454736909172109314', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-31 17:08:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1454736948577595394', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-31 17:08:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1454743888088100865', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-31 17:35:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1454775924429516802', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-31 19:43:03', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1454777215599865857', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-31 19:48:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1454831369894576130', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-31 23:23:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1454833658185203714', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3ed35af1', NULL, 108, NULL, '2021-10-31 23:32:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1454858013795500034', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6b8a7913', NULL, 57, NULL, '2021-11-01 01:09:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455001968671539201', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 10:41:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455002004310540290', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 10:41:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455094938519289857', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 16:50:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455094969326452738', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 16:50:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455153282344894466', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:42:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455153322954145793', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-01 20:42:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455351906932703234', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-02 09:51:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455351972934270977', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-02 09:52:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1455357698276671490', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@39331c1d', NULL, 104, NULL, '2021-11-02 10:14:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1456089038521450498', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-04 10:40:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1456089081508872193', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-04 10:41:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1456093122133573634', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3dd54090', NULL, 17, NULL, '2021-11-04 10:57:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1456093122133573635', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@76c69339', NULL, 54, NULL, '2021-11-04 10:57:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1456094182784974849', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=总经理,, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 1  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@54bfdeee', NULL, 16, NULL, '2021-11-04 11:01:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1456094182852083713', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '0:0:0:0:0:0:0:1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2d004a3b', NULL, 18, NULL, '2021-11-04 11:01:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1458331020681175041', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 15:09:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1458331068550766593', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 15:09:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1458349692116164610', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 16:23:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1459044186614702081', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 14:23:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1459088246779957249', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 17:18:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1459088287515037698', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 17:18:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1459120270853033985', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 19:25:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1459120308014567425', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 19:26:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1459178116827336706', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 23:15:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1459178190156353538', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 23:16:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1461966983659552769', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-20 15:57:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1462028794849165313', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-20 20:03:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1462028829418618882', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-20 20:03:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1462267790309228546', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-21 11:53:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1462267956823097345', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-21 11:53:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1462316018157256706', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-21 15:04:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1462316042144481282', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-21 15:04:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1468451807745835010', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 13:26:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1468813889955794946', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 13:24:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1468813919181705217', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 13:25:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1468847253463076866', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 15:37:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1468847323298238466', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 15:37:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1468856667070877698', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 16:14:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1468888040305414146', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 18:19:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1468888083578048513', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 18:19:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1469217453570048001', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-10 16:08:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1469217470414372865', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-10 16:08:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1469544483407036417', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-11 13:48:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1469544572510830593', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-11 13:48:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1470027127899062274', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-12 21:45:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1470027325387866113', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-12 21:46:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1470225696442621953', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-13 10:54:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1471376021362933762', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-16 15:05:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1471376046436483074', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-16 15:06:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1471384747599822849', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-16 15:40:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1471384771498967042', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-16 15:40:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1471384822489120770', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-16 15:40:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1471384846824472578', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-16 15:40:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1471384993218265089', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-16 15:41:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1471385010356191234', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-16 15:41:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517122019949297666', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 20:44:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517122411365941249', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 20:45:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517122411433050113', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 20:45:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517155242494410753', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 22:56:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517155275700715521', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 22:56:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517334394870767617', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 10:48:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517334471538450433', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 10:48:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517412801839185921', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 15:59:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517412838698729473', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 15:59:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517448371114188802', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 18:20:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517448410641309697', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 18:21:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517471392394747905', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 19:52:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517471430571302914', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 19:52:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1518507004916785154', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 16:27:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1518507036319539201', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 16:27:45', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1518544510051803138', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 18:56:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1518544547175587842', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 18:56:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1518544547444023298', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 18:56:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1518859332140163074', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-26 15:47:38', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1518859373487611906', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-26 15:47:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1519179949200760833', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27 13:01:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1519179997032603649', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27 13:01:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1519241832461025282', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27 17:07:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1519241871849734146', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27 17:07:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1519241871849734147', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27 17:07:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1519287158341419009', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27 20:07:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1519287191430283265', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27 20:07:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1520330924833656833', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30 17:15:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1520331035768803329', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30 17:15:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1520339213516615682', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30 17:48:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1521754773345316866', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 15:33:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1521754820464128001', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 15:33:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1521810926930608130', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 19:16:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1521811104383221762', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 19:16:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1521831975676133377', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 20:39:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1521832004755243009', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 20:39:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1522780687839584258', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-07 11:29:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1522780733305839617', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-07 11:29:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1522907831370604545', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-07 19:54:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1522907878241951745', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-07 19:55:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1523225820527689729', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-08 16:58:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1523225872927129601', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-08 16:58:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1523225872927129602', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-08 16:58:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1523252162310295554', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-08 18:43:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1523252187417399297', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-08 18:43:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1523269566482370561', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-08 19:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1523852044597846018', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 10:26:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1523852096540106754', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 10:27:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524172972653404162', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 07:42:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524173006883119106', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 07:42:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524188753113923586', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 08:44:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524367436449665025', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 20:34:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524367563595796482', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 20:35:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524367563595796483', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 20:35:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524376314939789314', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 21:10:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524376394577039362', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 21:10:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524376565847248898', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 21:11:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1524377717322108930', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 21:15:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525443544129503234', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 19:50:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525443579688812546', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 19:51:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525798138546278401', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:19:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525798181374316545', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:20:09', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525798602230779906', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:21:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525798816119312385', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:22:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525801149536456706', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:31:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525802972473249794', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:39:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525805297363374081', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:48:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525808067709554689', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:59:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1525808098005012481', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 19:59:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527258983029571586', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 20:04:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527269614168342530', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 20:47:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527271643729133570', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 20:55:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527458039244836865', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 09:15:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527459206054072322', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 09:20:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527459270038179842', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 09:20:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527546023994511362', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 15:05:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527548662304002049', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 15:15:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527584970892169218', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 17:40:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527586025520623617', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 17:44:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527586262704320514', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 17:45:21', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1527586341485932545', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 17:45:40', NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8, 2) NULL DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) NULL DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) NULL DEFAULT 1 COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) NULL DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `keep_alive` tinyint(1) NULL DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(11) NULL DEFAULT 0 COMMENT '是否隐藏路由: 0否,1是',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) NULL DEFAULT 0 COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(11) NULL DEFAULT 0 COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) NULL DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_prem_pid`(`parent_id`) USING BTREE,
  INDEX `index_prem_is_route`(`is_route`) USING BTREE,
  INDEX `index_prem_is_leaf`(`is_leaf`) USING BTREE,
  INDEX `index_prem_sort_no`(`sort_no`) USING BTREE,
  INDEX `index_prem_del_flag`(`del_flag`) USING BTREE,
  INDEX `index_menu_type`(`menu_type`) USING BTREE,
  INDEX `index_menu_hidden`(`hidden`) USING BTREE,
  INDEX `index_menu_status`(`status`) USING BTREE,
  INDEX `idx_sp_parent_id`(`parent_id`) USING BTREE,
  INDEX `idx_sp_is_route`(`is_route`) USING BTREE,
  INDEX `idx_sp_is_leaf`(`is_leaf`) USING BTREE,
  INDEX `idx_sp_sort_no`(`sort_no`) USING BTREE,
  INDEX `idx_sp_del_flag`(`del_flag`) USING BTREE,
  INDEX `idx_sp_menu_type`(`menu_type`) USING BTREE,
  INDEX `idx_sp_hidden`(`hidden`) USING BTREE,
  INDEX `idx_sp_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1260928341675982849', '3f915b2769fc80648e92d04e84ca059d', '添加按钮', NULL, NULL, NULL, NULL, 2, 'user:add', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-05-14 21:41:58', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1260929666434318338', '3f915b2769fc80648e92d04e84ca059d', '用户编辑', NULL, NULL, NULL, NULL, 2, 'user:edit', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-05-14 21:47:14', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1260931366557696001', '3f915b2769fc80648e92d04e84ca059d', '表单性别可见', '', NULL, NULL, NULL, 2, 'user:sex', '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-05-14 21:53:59', 'admin', '2020-05-14 21:57:00', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1260933542969458689', '3f915b2769fc80648e92d04e84ca059d', '禁用生日字段', NULL, NULL, NULL, NULL, 2, 'user:form:birthday', '2', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-05-14 22:02:38', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1454857957914787841', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '代码框架管理', '/frameworks', 'demo/CodeFrameworkList', NULL, NULL, 1, NULL, '1', 1.00, 0, '', 1, 1, 0, 0, NULL, 'admin', '2021-11-01 01:09:02', 'admin', '2021-11-12 17:35:20', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1456106013054287874', '', '框架管理', '/frameworks/:id', 'demo/FrameworkView', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2021-11-04 11:48:21', 'admin', '2021-11-04 12:52:59', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1456110903352705026', '', '框架管理1', '/frameworks/randomCode', 'demo/FrameworkView', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 0, 1, 0, 1, NULL, 'admin', '2021-11-04 12:07:47', 'admin', '2021-11-04 12:51:18', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1461971889300733954', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '模型列表', '/ai/models', 'ai/AIModelList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2021-11-20 16:17:15', 'admin', '2021-11-20 16:22:09', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1461981771882070017', '', '模型详情', '/ai/models/:modelname', 'ai/AIModelDetail', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2021-11-20 16:56:31', 'admin', '2021-11-20 16:57:17', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1461981929822781442', NULL, '模型详情1', '/ai/models/randomName', 'ai/AIModelDetail', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 0, 1, 0, 1, NULL, 'admin', '2021-11-20 16:57:09', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1462269392277504001', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '模型转换工具', '/develop/model-conversion', 'service/ModelConversion', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2021-11-21 11:59:25', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1468857730175946754', NULL, '状态数据管理', '/stateData', 'state/StateDataList', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2021-12-09 16:19:08', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1517057258565943298', '', '服务运行管理系统', '/serviceManage', 'serviceManage/ServiceManage', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-04-21 16:26:51', 'admin', '2022-04-21 16:33:55', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1522786972001689602', '', '代码框架管理', '/code-manage', 'codeframe-manage/CodeframeManage', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-05-07 11:54:41', 'admin', '2022-05-07 12:16:49', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1522790065439301634', '', '应用建模', '/app-modeling', 'app-modeling/AppModeling', NULL, NULL, 0, NULL, '1', 4.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-05-07 12:06:58', 'admin', '2022-05-07 12:16:59', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1522790363687870465', '', '服务代码生成', '/codegen', 'codegen/ServiceCodeGen', NULL, NULL, 0, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-05-07 12:08:09', 'admin', '2022-05-07 12:16:42', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1522790667212873730', '', '服务建模', '/service-modeling', 'service-modeling/ServiceModeling', NULL, NULL, 0, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-05-07 12:09:22', 'admin', '2022-05-07 12:17:11', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1522792258540199938', '', '应用代码生成', '/AppCodeGen', 'codegen/AppCodeGen', NULL, NULL, 0, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-05-07 12:15:41', 'admin', '2022-05-07 12:16:30', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1522792887740325890', '', '服务部署', '/service-deploy', 'service-deploy/ServiceDeploy', NULL, NULL, 0, NULL, '1', 6.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-05-07 12:18:11', 'admin', '2022-05-07 12:18:32', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('190c2b43bec6a5f7a4194a85db67d96a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '角色管理', '/isystem/roleUserList', 'system/RoleUserList', NULL, NULL, 1, NULL, NULL, 1.20, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:13:56', 'admin', '2019-12-25 09:36:31', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('1a0811914300741f4e11838ff37a1d3a', '3f915b2769fc80648e92d04e84ca059d', '手机号禁用', NULL, NULL, NULL, NULL, 2, 'user:form:phone', '2', 1.00, 0, NULL, 0, 1, NULL, 0, NULL, 'admin', '2019-05-11 17:19:30', 'admin', '2019-05-11 18:00:22', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('3f915b2769fc80648e92d04e84ca059d', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '用户管理', '/isystem/user', 'system/UserList', NULL, NULL, 1, NULL, NULL, 1.10, 0, NULL, 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:24', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理', '/isystem/permission', 'system/PermissionList', NULL, NULL, 1, NULL, NULL, 1.30, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:39', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('9502685863ab87f0ad1134142788a385', '', '首页', '/dashboard/home', 'dashboard/Home', NULL, NULL, 0, NULL, NULL, 0.00, 0, 'home', 1, 1, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2021-12-16 15:41:24', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '我的任务表单', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 16:49:05', 'admin', '2019-03-08 18:37:56', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b6bcee2ccc854052d3cc3e9c96d90197', '71102b3b87fb07e5527bbd2c530dd90a', '加班申请', '/modules/extbpm/joa/JoaOvertimeList', 'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 15:33:10', 'admin', '2019-04-03 15:34:48', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d7d6e2e4e2934f2c9385a623fd98c6f3', '', '系统管理', '/isystem', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 100.00, 0, 'setting', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-05-07 12:19:13', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('e08cb190ef230d5d4f03824198773950', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '系统通告', '/isystem/annountCement', 'system/SysAnnouncementList', NULL, NULL, 1, 'annountCement', NULL, 6.00, 0, '', 1, 1, 0, 0, NULL, NULL, '2019-01-02 17:23:01', 'admin', '2021-11-01 20:51:38', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('f1cb187abf927c88b89470d08615f5ac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '数据字典', '/isystem/dict', 'system/DictList', NULL, NULL, 1, NULL, NULL, 5.00, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-28 13:54:43', 'admin', '2021-11-01 20:51:33', 0, 0, NULL, 0);

-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_data_rule`;
CREATE TABLE `sys_permission_data_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_fucntionid`(`permission_id`) USING BTREE,
  INDEX `idx_spdr_permission_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission_data_rule
-- ----------------------------
INSERT INTO `sys_permission_data_rule` VALUES ('40283181614231d401614234fe670003', '40283181614231d401614232cd1c0001', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 21:57:04', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('4028318161424e730161424fca6f0004', '4028318161424e730161424f61510002', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 22:26:20', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e732c020005', '402889fb486e848101486e93a7c80014', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '1', '2014-09-16 20:32:30', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e8153ee0007', '402889fb486e848101486e93a7c80014', 'create_by', 'create_by', '', '#{SYS_USER_CODE}', '1', '2014-09-16 20:47:57', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddec439015ddf9225060038', '40288088481d019401481d2fcebf000d', '复杂关系', '', 'USE_SQL_RULES', 'name like \'%张%\' or age > 10', '1', NULL, NULL, '2017-08-14 15:10:25', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddfdd26015ddfe3e0570011', '4028ab775dca0d1b015dca3fccb60016', '复杂sql配置', '', 'USE_SQL_RULES', 'table_name like \'%test%\' or is_tree = \'Y\'', '1', NULL, NULL, '2017-08-14 16:38:55', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880f25b1e2ac7015b1e5fdebc0012', '402880f25b1e2ac7015b1e5cdc340010', '只能看自己数据', 'create_by', '=', '#{sys_user_code}', '1', '2017-03-30 16:40:51', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881875b19f141015b19f8125e0014', '40288088481d019401481d2fcebf000d', '可看下属业务数据', 'sys_org_code', 'LIKE', '#{sys_org_code}', '1', NULL, NULL, '2017-08-14 15:04:32', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d66901539500a4450001', '402881e54df73c73014df75ab670000f', 'sysCompanyCode', 'sysCompanyCode', '=', '#{SYS_COMPANY_CODE}', '1', '2016-03-21 01:09:21', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d6690153950177cb0003', '402881e54df73c73014df75ab670000f', 'sysOrgCode', 'sysOrgCode', '=', '#{SYS_ORG_CODE}', '1', '2016-03-21 01:10:15', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f43101626727aff60067', '402881e56266f43101626724eb730065', '销售自己看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2018-03-27 19:11:16', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f4310162672fb1a70082', '402881e56266f43101626724eb730065', '销售经理看所有下级数据', 'sysOrgCode', 'LIKE', '#{sys_org_code}', '1', '2018-03-27 19:20:01', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f431016267387c9f0088', '402881e56266f43101626724eb730065', '只看金额大于1000的数据', 'money', '>=', '1000', '1', '2018-03-27 19:29:37', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881f3650de25101650dfb5a3a0010', '402881e56266f4310162671d62050044', '22', '', 'USE_SQL_RULES', '22', '1', '2018-08-06 14:45:01', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e913cd6000b', '402889fb486e848101486e8e2e8b0007', 'userName', 'userName', '=', 'admin', '1', '2014-09-13 18:31:25', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e98d20d0016', '402889fb486e848101486e93a7c80014', 'title', 'title', '=', '12', '1', NULL, NULL, '2014-09-13 22:18:22', 'scott');
INSERT INTO `sys_permission_data_rule` VALUES ('402889fe47fcb29c0147fcb6b6220001', '8a8ab0b246dc81120146dc8180fe002b', '12', '12', '>', '12', '1', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('4028ab775dca0d1b015dca4183530018', '4028ab775dca0d1b015dca3fccb60016', '表名限制', 'isDbSynch', '=', 'Y', '1', NULL, NULL, '2017-08-14 16:43:45', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef815595a881015595b0ccb60001', '40288088481d019401481d2fcebf000d', '限只能看自己', 'create_by', '=', '#{sys_user_code}', '1', NULL, NULL, '2017-08-14 15:03:56', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef81574ae99701574aed26530005', '4028ef81574ae99701574aeb97bd0003', '用户名', 'userName', '!=', 'admin', '1', '2016-09-21 12:07:18', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', NULL, '小于', 'test', '<=', '11', '1', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_position
-- ----------------------------
INSERT INTO `sys_position` VALUES ('1256485574212153345', '总经理', 'laozong', '5', NULL, 'admin', '2020-05-02 15:28:00', 'admin', '2020-05-02 15:28:03', '北京国炬公司');

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES ('5b3d2c087ad41aa755fc4f89697b01e7', 'admin', '2019-04-11 19:04:21', 0, 'admin', '2020-05-02 15:48:48', 'org.jeecg.modules.message.job.SendMsgJob', '0/50 * * * * ? *', NULL, NULL, -1);
INSERT INTO `sys_quartz_job` VALUES ('a253cdfc811d69fa0efc70d052bc8128', 'admin', '2019-03-30 12:44:48', 0, 'admin', '2020-05-02 15:48:49', 'org.jeecg.modules.quartz.job.SampleJob', '0/1 * * * * ?', NULL, NULL, -1);
INSERT INTO `sys_quartz_job` VALUES ('df26ecacf0f75d219d746750fe84bbee', NULL, NULL, 0, 'admin', '2020-05-02 15:40:35', 'org.jeecg.modules.quartz.job.SampleParamJob', '0/1 * * * * ?', 'scott', '带参测试 后台将每隔1秒执行输出日志', -1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_sys_role_role_code`(`role_code`) USING BTREE,
  INDEX `idx_sr_role_code`(`role_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1169504891467464705', '第三方登录角色', 'third_role', '第三方登录角色', 'admin', '2019-09-05 14:57:49', 'admin', '2020-05-02 18:20:58');
INSERT INTO `sys_role` VALUES ('ee8626f80f7c2619917b6236f3a7f02b', '临时角色', 'test', '这是新建的临时角色123', NULL, '2018-12-20 10:59:04', 'admin', '2019-02-19 15:08:37');
INSERT INTO `sys_role` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '管理员', 'admin', '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2019-05-20 11:40:26');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_group_role_per_id`(`role_id`, `permission_id`) USING BTREE,
  INDEX `index_group_role_id`(`role_id`) USING BTREE,
  INDEX `index_group_per_id`(`permission_id`) USING BTREE,
  INDEX `idx_srp_role_per_id`(`role_id`, `permission_id`) USING BTREE,
  INDEX `idx_srp_role_id`(`role_id`) USING BTREE,
  INDEX `idx_srp_permission_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('00b0748f04d3ea52c8cfa179c1c9d384', '52b0cf022ac4187b2a70dfa4f8b2d940', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('115a6673ae6c0816d3f60de221520274', '21c5a3187763729408b40afb0d0fdfa8', '63b551e81c5956d5c861593d366d8c57', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1209423580355481602', 'f6817f48af4fb3af11b9e8bf182f618b', '190c2b43bec6a5f7a4194a85db67d96a', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1260928399955836929', 'f6817f48af4fb3af11b9e8bf182f618b', '1260928341675982849', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1269526122208522241', 'f6817f48af4fb3af11b9e8bf182f618b', '1267412134208319489', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('126ea9faebeec2b914d6d9bef957afb6', 'f6817f48af4fb3af11b9e8bf182f618b', 'f1cb187abf927c88b89470d08615f5ac', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1456111051508105217', 'f6817f48af4fb3af11b9e8bf182f618b', '1456106013054287874', NULL, '2021-11-04 12:08:23', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1456111051508105218', 'f6817f48af4fb3af11b9e8bf182f618b', '1456110903352705026', NULL, '2021-11-04 12:08:23', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1461982028447645697', 'f6817f48af4fb3af11b9e8bf182f618b', '1461981771882070017', NULL, '2021-11-20 16:57:33', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1461982028447645698', 'f6817f48af4fb3af11b9e8bf182f618b', '1461981929822781442', NULL, '2021-11-20 16:57:33', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1469544644829020161', 'f6817f48af4fb3af11b9e8bf182f618b', '1454857957914787841', NULL, '2021-12-11 13:48:41', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1469544644896129025', 'f6817f48af4fb3af11b9e8bf182f618b', '1461971889300733954', NULL, '2021-12-11 13:48:41', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1469544644896129026', 'f6817f48af4fb3af11b9e8bf182f618b', '1462269392277504001', NULL, '2021-12-11 13:48:41', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('1522907946802044930', 'f6817f48af4fb3af11b9e8bf182f618b', '1468857730175946754', NULL, '2022-05-07 19:55:23', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_permission` VALUES ('16ef8ed3865ccc6f6306200760896c50', 'ee8626f80f7c2619917b6236f3a7f02b', 'e8af452d8948ea49d37c934f5100ae6a', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('17ead5b7d97ed365398ab20009a69ea3', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e08cb190ef230d5d4f03824198773950', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1ac1688ef8456f384091a03d88a89ab1', '52b0cf022ac4187b2a70dfa4f8b2d940', '693ce69af3432bd00be13c3971a57961', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1e47db875601fd97723254046b5bba90', 'f6817f48af4fb3af11b9e8bf182f618b', 'baf16b7174bd821b6bab23fa9abb200d', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('1fe4d408b85f19618c15bcb768f0ec22', '1750a8fb3e6d90cb7957c02de1dc8e59', '9502685863ab87f0ad1134142788a385', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('248d288586c6ff3bd14381565df84163', '52b0cf022ac4187b2a70dfa4f8b2d940', '3f915b2769fc80648e92d04e84ca059d', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('27489816708b18859768dfed5945c405', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9502685863ab87f0ad1134142788a385', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('2779cdea8367fff37db26a42c1a1f531', 'f6817f48af4fb3af11b9e8bf182f618b', 'fef097f3903caf3a3c3a6efa8de43fbb', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('296f9c75ca0e172ae5ce4c1022c996df', '646c628b2b8295fbdab2d34044de0354', '732d48f8e0abe99fe6a23d18a3171cd1', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('2c462293cbb0eab7e8ae0a3600361b5f', '52b0cf022ac4187b2a70dfa4f8b2d940', '9502685863ab87f0ad1134142788a385', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('3de2a60c7e42a521fecf6fcc5cb54978', 'f6817f48af4fb3af11b9e8bf182f618b', '2d83d62bd2544b8994c8f38cf17b0ddf', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('412e2de37a35b3442d68db8dd2f3c190', '52b0cf022ac4187b2a70dfa4f8b2d940', 'f1cb187abf927c88b89470d08615f5ac', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('4204f91fb61911ba8ce40afa7c02369f', 'f6817f48af4fb3af11b9e8bf182f618b', '3f915b2769fc80648e92d04e84ca059d', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('4dab5a06acc8ef3297889872caa74747', 'f6817f48af4fb3af11b9e8bf182f618b', 'ffb423d25cc59dcd0532213c4a518261', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('4f254549d9498f06f4cc9b23f3e2c070', 'f6817f48af4fb3af11b9e8bf182f618b', '93d5cfb4448f11e9916698e7f462b4b6', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('4faad8ff93cb2b5607cd3d07c1b624ee', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '70b8f33da5f39de1981bf89cf6c99792', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('504e326de3f03562cdd186748b48a8c7', 'f6817f48af4fb3af11b9e8bf182f618b', '027aee69baee98a0ed2e01806e89c891', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('57c0b3a547b815ea3ec8e509b08948b3', '1750a8fb3e6d90cb7957c02de1dc8e59', '3f915b2769fc80648e92d04e84ca059d', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('5de6871fadb4fe1cdd28989da0126b07', 'f6817f48af4fb3af11b9e8bf182f618b', 'a400e4f4d54f79bf5ce160a3432231af', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('5fc194b709336d354640fe29fefd65a3', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9ba60e626bf2882c31c488aba62b89f0', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('6daddafacd7eccb91309530c17c5855d', 'f6817f48af4fb3af11b9e8bf182f618b', 'edfa74d66e8ea63ea432c2910837b150', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('7413acf23b56c906aedb5a36fb75bd3a', 'f6817f48af4fb3af11b9e8bf182f618b', 'a4fc7b64b01a224da066bb16230f9c5a', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588591820806', '16457350655250432', '5129710648430592', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588604403712', '16457350655250432', '5129710648430593', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588612792320', '16457350655250432', '40238597734928384', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588625375232', '16457350655250432', '57009744761589760', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588633763840', '16457350655250432', '16392452747300864', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588637958144', '16457350655250432', '16392767785668608', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588650541056', '16457350655250432', '16439068543946752', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277779875336192', '496138616573952', '5129710648430592', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780043108352', '496138616573952', '5129710648430593', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780055691264', '496138616573952', '15701400130424832', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780064079872', '496138616573952', '16678126574637056', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780072468480', '496138616573952', '15701915807518720', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780076662784', '496138616573952', '15708892205944832', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780085051392', '496138616573952', '16678447719911424', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780089245696', '496138616573952', '25014528525733888', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780097634304', '496138616573952', '56898976661639168', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780135383040', '496138616573952', '40238597734928384', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780139577344', '496138616573952', '45235621697949696', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780147965952', '496138616573952', '45235787867885568', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780156354560', '496138616573952', '45235939278065664', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780164743168', '496138616573952', '43117268627886080', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780168937472', '496138616573952', '45236734832676864', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780181520384', '496138616573952', '45237010692050944', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780189908992', '496138616573952', '45237170029465600', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780198297600', '496138616573952', '57009544286441472', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780206686208', '496138616573952', '57009744761589760', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780215074816', '496138616573952', '57009981228060672', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780219269120', '496138616573952', '56309618086776832', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780227657728', '496138616573952', '57212882168844288', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780236046336', '496138616573952', '61560041605435392', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780244434944', '496138616573952', '61560275261722624', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780257017856', '496138616573952', '61560480518377472', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780265406464', '496138616573952', '44986029924421632', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780324126720', '496138616573952', '45235228800716800', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780332515328', '496138616573952', '45069342940860416', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780340903937', '496138616573952', '5129710648430594', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780349292544', '496138616573952', '16687383932047360', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780357681152', '496138616573952', '16689632049631232', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780366069760', '496138616573952', '16689745006432256', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780370264064', '496138616573952', '16689883993083904', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780374458369', '496138616573952', '16690313745666048', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780387041280', '496138616573952', '5129710648430595', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780395429888', '496138616573952', '16694861252005888', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780403818496', '496138616573952', '16695107491205120', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780412207104', '496138616573952', '16695243126607872', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780420595712', '496138616573952', '75002207560273920', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780428984320', '496138616573952', '76215889006956544', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780433178624', '496138616573952', '76216071333351424', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780441567232', '496138616573952', '76216264070008832', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780449955840', '496138616573952', '76216459709124608', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780458344448', '496138616573952', '76216594207870976', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780466733056', '496138616573952', '76216702639017984', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780475121664', '496138616573952', '58480609315524608', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780483510272', '496138616573952', '61394706252173312', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780491898880', '496138616573952', '61417744146370560', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780496093184', '496138616573952', '76606430504816640', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780504481792', '496138616573952', '76914082455752704', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780508676097', '496138616573952', '76607201262702592', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780517064704', '496138616573952', '39915540965232640', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780525453312', '496138616573952', '41370251991977984', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780538036224', '496138616573952', '45264987354042368', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780546424832', '496138616573952', '45265487029866496', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780554813440', '496138616573952', '45265762415284224', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780559007744', '496138616573952', '45265886315024384', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780567396352', '496138616573952', '45266070000373760', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780571590656', '496138616573952', '41363147411427328', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780579979264', '496138616573952', '41363537456533504', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780588367872', '496138616573952', '41364927394353152', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780596756480', '496138616573952', '41371711400054784', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780605145088', '496138616573952', '41469219249852416', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780613533696', '496138616573952', '39916171171991552', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780621922304', '496138616573952', '39918482854252544', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780630310912', '496138616573952', '41373430515240960', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780718391296', '496138616573952', '41375330996326400', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780722585600', '496138616573952', '63741744973352960', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780730974208', '496138616573952', '42082442672082944', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780739362816', '496138616573952', '41376192166629376', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780747751424', '496138616573952', '41377034236071936', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780756140032', '496138616573952', '56911328312299520', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780764528640', '496138616573952', '41378916912336896', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780768722944', '496138616573952', '63482475359244288', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780772917249', '496138616573952', '64290663792906240', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780785500160', '496138616573952', '66790433014943744', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780789694464', '496138616573952', '42087054753927168', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780798083072', '496138616573952', '67027338952445952', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780806471680', '496138616573952', '67027909637836800', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780810665985', '496138616573952', '67042515441684480', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780823248896', '496138616573952', '67082402312228864', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780827443200', '496138616573952', '16392452747300864', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780835831808', '496138616573952', '16392767785668608', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780840026112', '496138616573952', '16438800255291392', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780844220417', '496138616573952', '16438962738434048', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780852609024', '496138616573952', '16439068543946752', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860062040064', '496138616573953', '5129710648430592', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860070428672', '496138616573953', '5129710648430593', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860078817280', '496138616573953', '40238597734928384', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860091400192', '496138616573953', '43117268627886080', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860099788800', '496138616573953', '57009744761589760', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860112371712', '496138616573953', '56309618086776832', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860120760320', '496138616573953', '44986029924421632', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860129148928', '496138616573953', '5129710648430594', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860141731840', '496138616573953', '5129710648430595', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860150120448', '496138616573953', '75002207560273920', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860158509056', '496138616573953', '58480609315524608', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860162703360', '496138616573953', '76606430504816640', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860171091968', '496138616573953', '76914082455752704', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860179480576', '496138616573953', '76607201262702592', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860187869184', '496138616573953', '39915540965232640', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860196257792', '496138616573953', '41370251991977984', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860204646400', '496138616573953', '41363147411427328', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860208840704', '496138616573953', '41371711400054784', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860213035009', '496138616573953', '39916171171991552', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860221423616', '496138616573953', '39918482854252544', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860225617920', '496138616573953', '41373430515240960', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860234006528', '496138616573953', '41375330996326400', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860242395136', '496138616573953', '63741744973352960', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860250783744', '496138616573953', '42082442672082944', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860254978048', '496138616573953', '41376192166629376', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860263366656', '496138616573953', '41377034236071936', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860271755264', '496138616573953', '56911328312299520', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860313698304', '496138616573953', '41378916912336896', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860322086912', '496138616573953', '63482475359244288', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860326281216', '496138616573953', '64290663792906240', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860334669824', '496138616573953', '66790433014943744', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860343058432', '496138616573953', '42087054753927168', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860347252736', '496138616573953', '67027338952445952', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860351447041', '496138616573953', '67027909637836800', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860359835648', '496138616573953', '67042515441684480', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860364029952', '496138616573953', '67082402312228864', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860368224256', '496138616573953', '16392452747300864', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860372418560', '496138616573953', '16392767785668608', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860376612865', '496138616573953', '16438800255291392', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860385001472', '496138616573953', '16438962738434048', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860389195776', '496138616573953', '16439068543946752', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('7de42bdc0b8c5446b7d428c66a7abc12', '52b0cf022ac4187b2a70dfa4f8b2d940', '54dd5457a3190740005c1bfec55b1c34', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('7e19d90cec0dd87aaef351b9ff8f4902', '646c628b2b8295fbdab2d34044de0354', 'f9d3f4f27653a71c52faa9fb8070fbe7', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('84eac2f113c23737128fb099d1d1da89', 'f6817f48af4fb3af11b9e8bf182f618b', '03dc3d93261dda19fc86dd7ca486c6cf', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('86060e2867a5049d8a80d9fe5d8bc28b', 'f6817f48af4fb3af11b9e8bf182f618b', '765dd244f37b804e3d00f475fd56149b', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('8a60df8d8b4c9ee5fa63f48aeee3ec00', '1750a8fb3e6d90cb7957c02de1dc8e59', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('8f762ff80253f634b08cf59a77742ba4', 'ee8626f80f7c2619917b6236f3a7f02b', '9502685863ab87f0ad1134142788a385', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('9264104cee9b10c96241d527b2d0346d', '1750a8fb3e6d90cb7957c02de1dc8e59', '54dd5457a3190740005c1bfec55b1c34', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('980171fda43adfe24840959b1d048d4d', 'f6817f48af4fb3af11b9e8bf182f618b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('9d8772c310b675ae43eacdbc6c7fa04a', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '1663f3faba244d16c94552f849627d84', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('9f8311ecccd44e079723098cf2ffe1cc', '1750a8fb3e6d90cb7957c02de1dc8e59', '693ce69af3432bd00be13c3971a57961', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('a034ed7c38c996b880d3e78f586fe0ae', 'f6817f48af4fb3af11b9e8bf182f618b', 'c89018ea6286e852b424466fd92a2ffc', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('acacce4417e5d7f96a9c3be2ded5b4be', 'f6817f48af4fb3af11b9e8bf182f618b', 'f9d3f4f27653a71c52faa9fb8070fbe7', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('aefc8c22e061171806e59cd222f6b7e1', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e8af452d8948ea49d37c934f5100ae6a', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('bea2986432079d89203da888d99b3f16', 'f6817f48af4fb3af11b9e8bf182f618b', '54dd5457a3190740005c1bfec55b1c34', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('cf1feb1bf69eafc982295ad6c9c8d698', 'f6817f48af4fb3af11b9e8bf182f618b', 'a2b11669e98c5fe54a53c3e3c4f35d14', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('d37ad568e26f46ed0feca227aa9c2ffa', 'f6817f48af4fb3af11b9e8bf182f618b', '9502685863ab87f0ad1134142788a385', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('d3fe195d59811531c05d31d8436f5c8b', '1750a8fb3e6d90cb7957c02de1dc8e59', 'e8af452d8948ea49d37c934f5100ae6a', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('dbc5dd836d45c5bc7bc94b22596ab956', 'f6817f48af4fb3af11b9e8bf182f618b', '1939e035e803a99ceecb6f5563570fb2', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('dc83bb13c0e8c930e79d28b2db26f01f', 'f6817f48af4fb3af11b9e8bf182f618b', '63b551e81c5956d5c861593d366d8c57', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('dc8fd3f79bd85bd832608b42167a1c71', 'f6817f48af4fb3af11b9e8bf182f618b', '91c23960fab49335831cf43d820b0a61', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('de82e89b8b60a3ea99be5348f565c240', 'f6817f48af4fb3af11b9e8bf182f618b', '56ca78fe0f22d815fabc793461af67b8', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('e7467726ee72235baaeb47df04a35e73', 'f6817f48af4fb3af11b9e8bf182f618b', 'e08cb190ef230d5d4f03824198773950', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('ec846a3f85fdb6813e515be71f11b331', 'f6817f48af4fb3af11b9e8bf182f618b', '732d48f8e0abe99fe6a23d18a3171cd1', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('f177acac0276329dc66af0c9ad30558a', 'f6817f48af4fb3af11b9e8bf182f618b', 'c2c356bf4ddd29975347a7047a062440', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('f17ab8ad1e71341140857ef4914ef297', '21c5a3187763729408b40afb0d0fdfa8', '732d48f8e0abe99fe6a23d18a3171cd1', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('fafe73c4448b977fe42880a6750c3ee8', 'f6817f48af4fb3af11b9e8bf182f618b', '9cb91b8851db0cf7b19d7ecc2a8193dd', NULL, NULL, NULL);
INSERT INTO `sys_role_permission` VALUES ('fd86f6b08eb683720ba499f9d9421726', 'ee8626f80f7c2619917b6236f3a7f02b', '693ce69af3432bd00be13c3971a57961', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `es_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方式：1短信 2邮件 3微信',
  `es_receiver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '推送内容',
  `es_send_time` datetime(0) NULL DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) NULL DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_type`(`es_type`) USING BTREE,
  INDEX `index_receiver`(`es_receiver`) USING BTREE,
  INDEX `index_sendtime`(`es_send_time`) USING BTREE,
  INDEX `index_status`(`es_send_status`) USING BTREE,
  INDEX `idx_ss_es_type`(`es_type`) USING BTREE,
  INDEX `idx_ss_es_receiver`(`es_receiver`) USING BTREE,
  INDEX `idx_ss_es_send_time`(`es_send_time`) USING BTREE,
  INDEX `idx_ss_es_send_status`(`es_send_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_sms
-- ----------------------------
INSERT INTO `sys_sms` VALUES ('402880e74dc2f361014dc2f8411e0001', '消息推送测试333', '2', '411944058@qq.com', NULL, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2015-06-05 17:06:01', '3', NULL, NULL, '认证失败错误的用户名或者密码', 'admin', '2015-06-05 17:05:59', 'admin', '2015-11-19 22:30:39');
INSERT INTO `sys_sms` VALUES ('402880ea533647b00153364e74770001', '发个问候', '3', 'admin', NULL, '你好', '2016-03-02 00:00:00', '2', NULL, NULL, NULL, 'admin', '2016-03-02 15:50:24', 'admin', '2018-07-05 19:53:01');
INSERT INTO `sys_sms` VALUES ('402880ee5a17e711015a17f3188e013f', '消息推送测试333', '2', '411944058@qq.com', NULL, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', NULL, '2', NULL, NULL, NULL, 'admin', '2017-02-07 17:41:31', 'admin', '2017-03-10 11:37:05');
INSERT INTO `sys_sms` VALUES ('402880f05ab649b4015ab64b9cd80012', '消息推送测试333', '2', '411944058@qq.com', NULL, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2017-11-16 15:58:15', '3', NULL, NULL, NULL, 'admin', '2017-03-10 11:38:13', 'admin', '2017-07-31 17:24:54');
INSERT INTO `sys_sms` VALUES ('402880f05ab7b035015ab7c4462c0004', '消息推送测试333', '2', '411944058@qq.com', NULL, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2017-11-16 15:58:15', '3', NULL, NULL, NULL, 'admin', '2017-03-10 18:29:37', NULL, NULL);
INSERT INTO `sys_sms` VALUES ('402881f3646a472b01646a4a5af00001', '催办：HR审批', '3', 'admin', NULL, 'admin，您好！\r\n请前待办任务办理事项！HR审批\r\n\r\n\r\n===========================\r\n此消息由系统发出', '2018-07-05 19:53:35', '2', NULL, NULL, NULL, 'admin', '2018-07-05 19:53:35', 'admin', '2018-07-07 13:45:24');
INSERT INTO `sys_sms` VALUES ('402881f3647da06c01647da43a940014', '催办：HR审批', '3', 'admin', NULL, 'admin，您好！\r\n请前待办任务办理事项！HR审批\r\n\r\n\r\n===========================\r\n此消息由系统发出', '2018-07-09 14:04:32', '2', NULL, NULL, NULL, 'admin', '2018-07-09 14:04:32', 'admin', '2018-07-09 18:51:30');

-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_template`;
CREATE TABLE `sys_sms_template`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `template_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_templatecode`(`template_code`) USING BTREE,
  UNIQUE INDEX `uk_sst_template_code`(`template_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_sms_template
-- ----------------------------
INSERT INTO `sys_sms_template` VALUES ('1199606397416775681', '系统消息通知', 'sys_ts_note', '4', '<h1>&nbsp; &nbsp; 系统通知</h1>\n<ul>\n<li>通知时间：&nbsp; ${ts_date}</li>\n<li>通知内容：&nbsp; ${ts_content}</li>\n</ul>', NULL, '2019-11-27 16:30:27', 'admin', '2019-11-27 19:36:50', 'admin');
INSERT INTO `sys_sms_template` VALUES ('1199615897335095298', '流程催办', 'bpm_cuiban', '4', '<h1>&nbsp; &nbsp;流程催办提醒</h1>\n<ul>\n<li>流程名称：&nbsp; ${bpm_name}</li>\n<li>催办任务：&nbsp; ${bpm_task}</li>\n<li>催办时间 :&nbsp; &nbsp; ${datetime}</li>\n<li>催办内容 :&nbsp; &nbsp; ${remark}</li>\n</ul>', NULL, '2019-11-27 17:08:12', 'admin', '2019-11-27 19:36:45', 'admin');
INSERT INTO `sys_sms_template` VALUES ('1199648914107625473', '流程办理超时提醒', 'bpm_chaoshi_tip', '4', '<h1>&nbsp; &nbsp;流程办理超时提醒</h1>\n<ul>\n<li>&nbsp; &nbsp;超时提醒信息：&nbsp; &nbsp; 您有待处理的超时任务，请尽快处理！</li>\n<li>&nbsp; &nbsp;超时任务标题：&nbsp; &nbsp; ${title}</li>\n<li>&nbsp; &nbsp;超时任务节点：&nbsp; &nbsp; ${task}</li>\n<li>&nbsp; &nbsp;任务处理人：&nbsp; &nbsp; &nbsp; &nbsp;${user}</li>\n<li>&nbsp; &nbsp;任务开始时间：&nbsp; &nbsp; ${time}</li>\n</ul>', NULL, '2019-11-27 19:19:24', 'admin', '2019-11-27 19:36:37', 'admin');
INSERT INTO `sys_sms_template` VALUES ('4028608164691b000164693108140003', '催办：${taskName}', 'SYS001', '3', '${userName}，您好！\r\n请前待办任务办理事项！${taskName}\r\n\r\n\r\n===========================\r\n此消息由系统发出', '{\r\n\"taskName\":\"HR审批\",\r\n\"userName\":\"admin\"\r\n}', '2018-07-05 14:46:18', 'admin', '2018-07-05 18:31:34', 'admin');

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
  `id` int(11) NOT NULL COMMENT '租户编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `begin_date` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态 1正常 0冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '多租户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO `sys_tenant` VALUES (1, '北京租户001', '2020-07-10 15:43:32', 'admin', NULL, NULL, 1);

-- ----------------------------
-- Table structure for sys_third_account
-- ----------------------------
DROP TABLE IF EXISTS `sys_third_account`;
CREATE TABLE `sys_third_account`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `sys_user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方登录id',
  `third_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录来源',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态(1-正常,2-冻结)',
  `del_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `third_user_uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方账号',
  `third_user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方app用户账号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_sys_third_account_third_type_third_user_id`(`third_type`, `third_user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_third_account
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) NULL DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号，唯一键',
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) NULL DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '负责部门',
  `rel_tenant_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '多租户标识',
  `client_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_user_name`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_work_no`(`work_no`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_username`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_phone`(`phone`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_email`(`email`) USING BTREE,
  INDEX `index_user_status`(`status`) USING BTREE,
  INDEX `index_user_del_flag`(`del_flag`) USING BTREE,
  INDEX `idx_su_username`(`username`) USING BTREE,
  INDEX `idx_su_status`(`status`) USING BTREE,
  INDEX `idx_su_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1400726588175749122', 'zz123', '123123', 'e7b0454feebf2ecc', 'FZ4mrVxi', NULL, NULL, NULL, NULL, '13235654896', NULL, 1, 1, NULL, NULL, 1, '123', NULL, NULL, 'admin', '2021-06-04 16:10:18', NULL, NULL, 1, '', NULL, NULL);
INSERT INTO `sys_user` VALUES ('1451865270456918017', 'test', '测试', 'c1d94351ab9f5632', 'eE3bF5U3', NULL, NULL, NULL, NULL, '18800000000', NULL, 1, 0, NULL, NULL, 1, '02', NULL, NULL, 'admin', '2021-10-23 18:57:09', NULL, NULL, 1, '', NULL, NULL);
INSERT INTO `sys_user` VALUES ('3d464b4ea0d2491aab8a7bde74c57e95', 'zhangsan', '张三', '02ea098224c7d0d2077c14b9a3a1ed16', 'x5xRdeKB', 'https://static.jeecg.com/temp/jmlogo_1606575041993.png', NULL, NULL, NULL, NULL, '财务部', 1, 1, NULL, NULL, 1, '0005', '总经理', NULL, 'admin', '2020-05-14 21:26:24', 'admin', '2020-09-09 14:42:51', 1, '', '', NULL);
INSERT INTO `sys_user` VALUES ('a75d45a015c44384a04449ee80dc3503', 'jeecg', 'jeecg', '0db7b27374c68897', 'nR1F5g0B', 'https://static.jeecg.com/temp/国炬软件logo_1606575029126.png', NULL, 1, NULL, NULL, 'A02A01', 1, 1, NULL, NULL, 1, '00002', 'devleader', NULL, 'admin', '2019-02-13 16:02:36', 'admin', '2021-10-23 18:48:07', 1, '', NULL, NULL);
INSERT INTO `sys_user` VALUES ('e9ca23d68d884d4ebb19d07889727dae', 'admin', '管理员', 'cb362cfeefbf3d8d', 'RCGTeGiH', 'https://static.jeecg.com/temp/国炬软件logo_1606575029126.png', '2018-12-05 00:00:00', 1, 'jeecg@163.com', '18611111111', 'A02', 1, 0, NULL, NULL, 1, '00001', '总经理', NULL, NULL, '2019-06-21 17:54:10', 'admin', '2021-10-27 16:58:39', 2, '', '', NULL);
INSERT INTO `sys_user` VALUES ('f0019fdebedb443c98dcb17d88222c38', 'zhagnxiao', '张小红', 'f898134e5e52ae11a2ffb2c3b57a4e90', 'go3jJ4zX', 'https://static.jeecg.com/temp/jmlogo_1606575041993.png', '2019-04-01 00:00:00', NULL, NULL, NULL, '研发部,财务部', 2, 1, NULL, NULL, 1, '00003', '', NULL, 'admin', '2020-10-01 19:34:10', 'admin', '2020-11-26 15:24:59', 1, '', '', NULL);

-- ----------------------------
-- Table structure for sys_user_agent
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_agent`;
CREATE TABLE `sys_user_agent`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '序号',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_username`(`user_name`) USING BTREE,
  UNIQUE INDEX `uk_sug_user_name`(`user_name`) USING BTREE,
  INDEX `statux_index`(`status`) USING BTREE,
  INDEX `begintime_index`(`start_time`) USING BTREE,
  INDEX `endtime_index`(`end_time`) USING BTREE,
  INDEX `idx_sug_status`(`status`) USING BTREE,
  INDEX `idx_sug_start_time`(`start_time`) USING BTREE,
  INDEX `idx_sug_end_time`(`end_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户代理人设置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_agent
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_depart`;
CREATE TABLE `sys_user_depart`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_depart_groupk_userid`(`user_id`) USING BTREE,
  INDEX `index_depart_groupkorgid`(`dep_id`) USING BTREE,
  INDEX `index_depart_groupk_uidanddid`(`user_id`, `dep_id`) USING BTREE,
  INDEX `idx_sud_user_id`(`user_id`) USING BTREE,
  INDEX `idx_sud_dep_id`(`dep_id`) USING BTREE,
  INDEX `idx_sud_user_dep_id`(`user_id`, `dep_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_depart
-- ----------------------------
INSERT INTO `sys_user_depart` VALUES ('1453284998073262081', 'e9ca23d68d884d4ebb19d07889727dae', '6d35e179cd814e3299bd588ea7daed3f');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index2_groupuu_user_id`(`user_id`) USING BTREE,
  INDEX `index2_groupuu_ole_id`(`role_id`) USING BTREE,
  INDEX `index2_groupuu_useridandroleid`(`user_id`, `role_id`) USING BTREE,
  INDEX `idx_sur_user_id`(`user_id`) USING BTREE,
  INDEX `idx_sur_role_id`(`role_id`) USING BTREE,
  INDEX `idx_sur_user_role_id`(`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('b3ffd9311a1ca296c44e2409b547384f', '01b802058ea94b978a2c96f4807f6b48', '1');
INSERT INTO `sys_user_role` VALUES ('1451865270482083842', '1451865270456918017', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO `sys_user_role` VALUES ('0ede6d23d53bc7dc990346ff14faabee', '3db4cf42353f4e868b7ccfeef90505d2', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO `sys_user_role` VALUES ('e78d210d24aaff48e0a736e2ddff4cdc', '3e177fede453430387a8279ced685679', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO `sys_user_role` VALUES ('f2922a38ba24fb53749e45a0c459adb3', '439ae3e9bcf7418583fcd429cadb1d72', '1');
INSERT INTO `sys_user_role` VALUES ('f72c6190b0722e798147e73c776c6ac9', '439ae3e9bcf7418583fcd429cadb1d72', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO `sys_user_role` VALUES ('ee45d0343ecec894b6886effc92cb0b7', '4d8fef4667574b24a9ccfedaf257810c', 'f6817f48af4fb3af11b9e8bf182f618b');
INSERT INTO `sys_user_role` VALUES ('be2639167ede09379937daca7fc3bb73', '526f300ab35e44faaed54a9fb0742845', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO `sys_user_role` VALUES ('79d66ef7aa137cfa9957081a1483009d', '9a668858c4c74cf5a2b25ad9608ba095', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO `sys_user_role` VALUES ('1453284998039707649', 'e9ca23d68d884d4ebb19d07889727dae', 'f6817f48af4fb3af11b9e8bf182f618b');

-- ----------------------------
-- Table structure for tmp_report_data_1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_report_data_1`;
CREATE TABLE `tmp_report_data_1`  (
  `monty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月份',
  `main_income` decimal(10, 2) NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  `his_lowest` decimal(10, 2) NULL DEFAULT NULL,
  `his_average` decimal(10, 2) NULL DEFAULT NULL,
  `his_highest` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tmp_report_data_1
-- ----------------------------
INSERT INTO `tmp_report_data_1` VALUES ('1月', 483834.66, 483834.66, 57569.77, 216797.62, 483834.66);
INSERT INTO `tmp_report_data_1` VALUES ('2月', 11666578.65, 12150413.31, 22140.00, 4985361.57, 11666578.65);
INSERT INTO `tmp_report_data_1` VALUES ('3月', 27080982.08, 39231395.39, 73106.29, 16192642.30, 27080982.08);
INSERT INTO `tmp_report_data_1` VALUES ('4月', 0.00, 39231395.39, 73106.29, 8513415.34, 17428381.40);
INSERT INTO `tmp_report_data_1` VALUES ('5月', 0.00, 39231395.39, NULL, NULL, NULL);
INSERT INTO `tmp_report_data_1` VALUES ('6月', 0.00, 39231395.39, NULL, NULL, NULL);
INSERT INTO `tmp_report_data_1` VALUES ('7月', 0.00, 39231395.39, NULL, NULL, NULL);
INSERT INTO `tmp_report_data_1` VALUES ('8月', 0.00, 39231395.39, NULL, NULL, NULL);
INSERT INTO `tmp_report_data_1` VALUES ('9月', 0.00, 39231395.39, NULL, NULL, NULL);
INSERT INTO `tmp_report_data_1` VALUES ('10月', 0.00, 39231395.39, NULL, NULL, NULL);
INSERT INTO `tmp_report_data_1` VALUES ('11月', 0.00, 39231395.39, NULL, NULL, NULL);
INSERT INTO `tmp_report_data_1` VALUES ('12月', 0.00, 39231395.39, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tmp_report_data_income
-- ----------------------------
DROP TABLE IF EXISTS `tmp_report_data_income`;
CREATE TABLE `tmp_report_data_income`  (
  `biz_income` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bx_jj_yongjin` decimal(10, 2) NULL DEFAULT NULL,
  `bx_zx_money` decimal(10, 2) NULL DEFAULT NULL,
  `chengbao_gz_money` decimal(10, 2) NULL DEFAULT NULL,
  `bx_gg_moeny` decimal(10, 2) NULL DEFAULT NULL,
  `tb_zx_money` decimal(10, 2) NULL DEFAULT NULL,
  `neikong_zx_money` decimal(10, 2) NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tmp_report_data_income
-- ----------------------------
INSERT INTO `tmp_report_data_income` VALUES ('中国石油全资（集团所属）', 37134.58, 1099273.32, 0.00, 0.00, 0.00, 226415.09, 38460270.57);
INSERT INTO `tmp_report_data_income` VALUES ('中国石油全资（股份所属）', 227595.77, 0.00, 0.00, 0.00, 0.00, 0.00, 227595.77);
INSERT INTO `tmp_report_data_income` VALUES ('中石油控股或有控股权', 310628.11, 369298.64, 0.00, 0.00, 0.00, 0.00, 679926.75);
INSERT INTO `tmp_report_data_income` VALUES ('中石油参股', 72062.45, 0.00, 0.00, 0.00, 0.00, 0.00, 72062.75);
INSERT INTO `tmp_report_data_income` VALUES ('非中石油', 1486526.90, 212070.72, 0.00, 0.00, 0.00, 226415.09, 1698597.62);

SET FOREIGN_KEY_CHECKS = 1;
