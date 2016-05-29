
-- 创建用户表
CREATE TABLE `employe` (
`id`  int NOT NULL AUTO_INCREMENT COMMENT '自然主键' ,
`name`  varchar(50) NULL COMMENT '用户姓名' ,
`email`  varchar(50) NULL COMMENT '邮箱' ,
`valid`  tinyint NULL DEFAULT 'true' COMMENT '是否有效' ,
PRIMARY KEY (`id`)
)
;
