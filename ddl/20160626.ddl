--�û���
CREATE TABLE `ele_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `login_name` varchar(20) NOT NULL COMMENT '��¼�˺�',
  `login_password` varchar(20) NOT NULL COMMENT '��¼����',
  `user_name` varchar(20) NOT NULL COMMENT '����',
  `email` varchar(20) DEFAULT NULL COMMENT '����',
  `department_id` int(11) DEFAULT NULL COMMENT '���ڲ���',
  `last_login_time` varchar(19) DEFAULT NULL COMMENT '����¼ʱ��',
  `status` tinyint(4) NOT NULL COMMENT '�˺�״̬',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--�м���û�-��ɫ��
CREATE TABLE `ele_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--��ɫ��
CREATE TABLE `ele_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `name` varchar(20) NOT NULL COMMENT '��ɫ����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--�м����ɫ-��Դ��
CREATE TABLE `ele_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--��Դ��
CREATE TABLE `ele_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `name` varchar(20) DEFAULT NULL COMMENT '��Դ����',
  `url` varchar(20) DEFAULT NULL COMMENT '��Դurl��ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--��ͬ��
CREATE TABLE `ele_contract_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_no` varchar(20) NOT NULL COMMENT '��ͬ���',
  `part_a` varchar(20) NOT NULL COMMENT '�׷�����',
  `part_b` varchar(20) NOT NULL COMMENT '�ҷ�����',
  `start_time` varchar(20) NOT NULL COMMENT '��ͬǩ��ʱ��',
  `end_time` varchar(20) NOT NULL COMMENT '��ͬ����ʱ��',
  `audit_name` varchar(20) DEFAULT NULL COMMENT '�����',
  `plan_id` int(11) DEFAULT NULL COMMENT '��ͬ��Ӧ�ƻ���id',
  `summary` varchar(255) DEFAULT NULL COMMENT '��ͬժҪ',
  `status` tinyint(4) NOT NULL COMMENT '��ͬ״̬:0-ʧЧ��1-��Ч��2-����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--�ƻ���
CREATE TABLE `ele_plan_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '�ƻ�����',
  `content` varchar(255) DEFAULT NULL COMMENT '�ƻ�����',
  `start_time` varchar(20) DEFAULT NULL COMMENT '�ƻ���ʼʱ��',
  `end_time` varchar(20) DEFAULT NULL,
  `excutor_id` int(11) DEFAULT NULL COMMENT '�ƻ�ʵʩ��',
  `ruler_id` int(11) DEFAULT NULL COMMENT '�ƻ��ƶ���',
  `audit_status` tinyint(4) DEFAULT NULL COMMENT '��˽����0-�ȴ���ˣ�1-ͨ����2-����',
  `audit_id` int(11) DEFAULT NULL COMMENT '�����',
  `audit_time` varchar(20) DEFAULT NULL COMMENT '���ʱ��',
  `audit_suggestion` varchar(40) DEFAULT NULL COMMENT '������',
  `status` tinyint(4) DEFAULT NULL COMMENT '�ƻ�״̬��0-δ��ʼ��1-ִ���У�2-����ɣ�3-δ���',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--������Ϣ��
CREATE TABLE `ele_elevator_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `elevator_no` varchar(20) DEFAULT NULL COMMENT '���ݱ��',
  `address` varchar(40) DEFAULT NULL COMMENT '����λ��',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '������˾',
  `delivery_time` varchar(20) DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--���ϱ�
CREATE TABLE `ele_trouble_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `elevator_no` varchar(20) NOT NULL COMMENT '���ݱ��',
  `desc` varchar(255) DEFAULT NULL COMMENT '��������',
  `reason` varchar(255) DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL COMMENT '���Ϸ���ʱ��',
  `end_time` varchar(20) DEFAULT NULL COMMENT '���ϴ������ʱ��',
  `excutor_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL COMMENT '���ϵȼ�',
  `status` tinyint(4) DEFAULT NULL COMMENT '����״̬��0-δ����1.�Ѵ���2-������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--���ϵȼ���
CREATE TABLE `ele_trouble_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `name` varchar(20) DEFAULT NULL COMMENT '���ϵȼ�',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;










