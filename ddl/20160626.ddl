--用户表
CREATE TABLE `ele_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `login_name` varchar(20) NOT NULL COMMENT '登录账号',
  `login_password` varchar(20) NOT NULL COMMENT '登录密码',
  `user_name` varchar(20) NOT NULL COMMENT '姓名',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `department_id` int(11) DEFAULT NULL COMMENT '所在部门',
  `last_login_time` varchar(19) DEFAULT NULL COMMENT '最后登录时间',
  `status` tinyint(4) NOT NULL COMMENT '账号状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--中间表（用户-角色）
CREATE TABLE `ele_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--角色表
CREATE TABLE `ele_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--中间表（角色-资源）
CREATE TABLE `ele_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--资源表
CREATE TABLE `ele_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(20) DEFAULT NULL COMMENT '资源url地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--合同表
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

--计划表
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

--电梯信息表
CREATE TABLE `ele_elevator_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `elevator_no` varchar(20) DEFAULT NULL COMMENT '电梯编号',
  `address` varchar(40) DEFAULT NULL COMMENT '电梯位置',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产公司',
  `delivery_time` varchar(20) DEFAULT NULL COMMENT '出厂时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--故障表
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

--故障等级表
CREATE TABLE `ele_trouble_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '故障等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;