/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : elevator

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2016-07-22 00:27:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ele_contract_info`
-- ----------------------------
DROP TABLE IF EXISTS `ele_contract_info`;
CREATE TABLE `ele_contract_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_no` varchar(20) NOT NULL COMMENT '合同编号',
  `part_a` varchar(20) NOT NULL COMMENT '甲方名称',
  `part_b` varchar(20) NOT NULL COMMENT '乙方名称',
  `start_time` varchar(20) NOT NULL COMMENT '合同签订时间',
  `end_time` varchar(20) NOT NULL COMMENT '合同到期时间',
  `audit_name` varchar(20) DEFAULT NULL COMMENT '审核人',
  `plan_id` int(11) DEFAULT NULL COMMENT '合同对应计划表id',
  `summary` varchar(255) DEFAULT NULL COMMENT '合同摘要',
  `status` tinyint(4) NOT NULL COMMENT '合同状态:0-失效；1-生效；2-作废',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_contract_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_department`
-- ----------------------------
DROP TABLE IF EXISTS `ele_department`;
CREATE TABLE `ele_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_department
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_elevator_info`
-- ----------------------------
DROP TABLE IF EXISTS `ele_elevator_info`;
CREATE TABLE `ele_elevator_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `elevator_no` varchar(20) DEFAULT NULL COMMENT '电梯编号',
  `address` varchar(40) DEFAULT NULL COMMENT '电梯位置',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产公司',
  `delivery_time` varchar(20) DEFAULT NULL COMMENT '出厂时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_elevator_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ele_menu`;
CREATE TABLE `ele_menu` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `url` varchar(40) DEFAULT NULL,
  `intro` text,
  `permission_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_menu
-- ----------------------------
INSERT INTO `ele_menu` VALUES ('1', '001', '系统管理', null, null, null, null, '0');
INSERT INTO `ele_menu` VALUES ('2', '002', '客户管理', null, null, null, null, '2');
INSERT INTO `ele_menu` VALUES ('3', '003', '营销管理', null, null, null, '明天更好', '2');
INSERT INTO `ele_menu` VALUES ('4', '004', '订单合同管理', null, null, null, null, '0');
INSERT INTO `ele_menu` VALUES ('5', '005', '售后管理', null, null, null, null, '0');
INSERT INTO `ele_menu` VALUES ('6', '011', '员工管理', '1', null, '/employee/index', null, '5');
INSERT INTO `ele_menu` VALUES ('7', '012', '部门管理', '1', null, '/department/index', null, '5');
INSERT INTO `ele_menu` VALUES ('8', '013', '系统资源管理', '1', null, '/resource/index', null, '0');
INSERT INTO `ele_menu` VALUES ('9', '014', '系统权限管理', '1', null, '/permission/index', null, '0');
INSERT INTO `ele_menu` VALUES ('10', '015', '系统角色', '1', null, '/role/index', null, '0');
INSERT INTO `ele_menu` VALUES ('11', '016', '数据字典', '1', null, '/systemDictionary/index', null, '0');
INSERT INTO `ele_menu` VALUES ('12', '017', '系统日志', '1', null, '/systemLog/index', null, '0');
INSERT INTO `ele_menu` VALUES ('13', '021', '客户信息管理', '2', null, '/customer/index', null, '2');
INSERT INTO `ele_menu` VALUES ('14', '022', '客户跟进历史', '2', null, '/customerTraceHistory/index', null, '2');
INSERT INTO `ele_menu` VALUES ('15', '023', '客户移交记录', '2', null, '/customerTransfer/index', null, '2');
INSERT INTO `ele_menu` VALUES ('16', '024', '客户资源池管理', '2', null, '/customerResourcePool/index', null, '2');
INSERT INTO `ele_menu` VALUES ('17', '031', '潜在客户管理', '3', null, '/potentialCustomer/index', null, '2');
INSERT INTO `ele_menu` VALUES ('18', '032', '（潜在）客户开发计划', '3', null, '/customerDevPlan/index', null, '2');
INSERT INTO `ele_menu` VALUES ('21', '051', '保修管理', '5', null, null, null, '0');
INSERT INTO `ele_menu` VALUES ('22', '041', '订单管理', '4', null, '/order/index', null, '0');
INSERT INTO `ele_menu` VALUES ('42', '042', '合同管理', '4', null, '/contract/index', null, '0');
INSERT INTO `ele_menu` VALUES ('43', '043', '流程管理', null, null, null, null, '0');
INSERT INTO `ele_menu` VALUES ('44', '044', '流程规则管理', '43', null, '/workflow/processDefinition', null, '0');
INSERT INTO `ele_menu` VALUES ('45', '045', '流程任务管理', '43', null, '/workflow/task', null, '0');
INSERT INTO `ele_menu` VALUES ('46', '046', '流程模型管理', '43', null, '/workflow/model/', null, null);

-- ----------------------------
-- Table structure for `ele_permission`
-- ----------------------------
DROP TABLE IF EXISTS `ele_permission`;
CREATE TABLE `ele_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_plan_info`
-- ----------------------------
DROP TABLE IF EXISTS `ele_plan_info`;
CREATE TABLE `ele_plan_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '计划名称',
  `content` varchar(255) DEFAULT NULL COMMENT '计划内容',
  `start_time` varchar(20) DEFAULT NULL COMMENT '计划开始时间',
  `end_time` varchar(20) DEFAULT NULL,
  `excutor_id` int(11) DEFAULT NULL COMMENT '计划实施人',
  `ruler_id` int(11) DEFAULT NULL COMMENT '计划制定人',
  `audit_status` tinyint(4) DEFAULT NULL COMMENT '审核结果：0-等待审核；1-通过；2-驳回',
  `audit_id` int(11) DEFAULT NULL COMMENT '审核人',
  `audit_time` varchar(20) DEFAULT NULL COMMENT '审核时间',
  `audit_suggestion` varchar(40) DEFAULT NULL COMMENT '审核意见',
  `status` tinyint(4) DEFAULT NULL COMMENT '计划状态：0-未开始；1-执行中；2-已完成；3-未完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_plan_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_resource`
-- ----------------------------
DROP TABLE IF EXISTS `ele_resource`;
CREATE TABLE `ele_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(20) DEFAULT NULL COMMENT '资源url地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_role`
-- ----------------------------
DROP TABLE IF EXISTS `ele_role`;
CREATE TABLE `ele_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_role
-- ----------------------------
INSERT INTO `ele_role` VALUES ('1', '超级管理员');
INSERT INTO `ele_role` VALUES ('2', '部门经理');
INSERT INTO `ele_role` VALUES ('3', '操作员');
INSERT INTO `ele_role` VALUES ('9', '超级管xxx理员');

-- ----------------------------
-- Table structure for `ele_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ele_role_menu`;
CREATE TABLE `ele_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_role_menu
-- ----------------------------
INSERT INTO `ele_role_menu` VALUES ('1', '1', '1');
INSERT INTO `ele_role_menu` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for `ele_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `ele_role_permission`;
CREATE TABLE `ele_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_trouble_info`
-- ----------------------------
DROP TABLE IF EXISTS `ele_trouble_info`;
CREATE TABLE `ele_trouble_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `elevator_no` varchar(20) NOT NULL COMMENT '电梯编号',
  `desc` varchar(255) DEFAULT NULL COMMENT '故障描述',
  `reason` varchar(255) DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL COMMENT '故障发生时间',
  `end_time` varchar(20) DEFAULT NULL COMMENT '故障处理完成时间',
  `excutor_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL COMMENT '故障等级',
  `status` tinyint(4) DEFAULT NULL COMMENT '故障状态：0-未处理；1.已处理；2-处理中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_trouble_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_trouble_level`
-- ----------------------------
DROP TABLE IF EXISTS `ele_trouble_level`;
CREATE TABLE `ele_trouble_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '故障等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_trouble_level
-- ----------------------------

-- ----------------------------
-- Table structure for `ele_user_basic_info`
-- ----------------------------
DROP TABLE IF EXISTS `ele_user_basic_info`;
CREATE TABLE `ele_user_basic_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `email` varchar(20) DEFAULT NULL COMMENT '电子邮箱',
  `department_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '员工状态：0.在职；1.离职',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_user_basic_info
-- ----------------------------
INSERT INTO `ele_user_basic_info` VALUES ('2', '张三', '25', 'zhangsan@163.com', null, '1');
INSERT INTO `ele_user_basic_info` VALUES ('3', '张三', '25', 'zhangsan@163.com', null, '1');
INSERT INTO `ele_user_basic_info` VALUES ('4', '张三', '25', 'zhangsan@163.com', null, '1');
INSERT INTO `ele_user_basic_info` VALUES ('5', '张三', '25', 'zhangsan@163.com', null, '1');

-- ----------------------------
-- Table structure for `ele_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `ele_user_info`;
CREATE TABLE `ele_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `login_name` varchar(20) NOT NULL COMMENT '登录账号',
  `login_password` varchar(20) NOT NULL COMMENT '登录密码',
  `last_login_time` varchar(19) NOT NULL COMMENT '最后登录时间',
  `basic_info_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '账号状态:0.未启用；1.正常；2.停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_user_info
-- ----------------------------
INSERT INTO `ele_user_info` VALUES ('1', 'xxxxx', 'xxxx', '2016-7-16', null, '0');
INSERT INTO `ele_user_info` VALUES ('4', 'aaaaa', 'aaaa', '2016-7-16', null, '0');
INSERT INTO `ele_user_info` VALUES ('5', 'aaaaa', 'aaaa', '2016-7-16', null, '0');
INSERT INTO `ele_user_info` VALUES ('6', 'aaaaa', 'aaaa', '2016-7-16', null, '0');
INSERT INTO `ele_user_info` VALUES ('7', 'aaaaa', 'aaaa', '2016-7-16', null, '0');
INSERT INTO `ele_user_info` VALUES ('8', 'aaaaa', 'aaaa', '2016-7-16', null, '0');
INSERT INTO `ele_user_info` VALUES ('9', 'aaaaa', 'aaaa', '2016-7-16', null, '0');
INSERT INTO `ele_user_info` VALUES ('10', 'aaaaa', 'aaaa', '2016-7-16', null, '0');

-- ----------------------------
-- Table structure for `ele_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `ele_user_role`;
CREATE TABLE `ele_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ele_user_role
-- ----------------------------
INSERT INTO `ele_user_role` VALUES ('1', '1', '1');
