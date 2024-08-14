/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t355`;
CREATE DATABASE IF NOT EXISTS `t355` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t355`;

DROP TABLE IF EXISTS `banji`;
CREATE TABLE IF NOT EXISTS `banji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `banji_uuid_number` varchar(200) DEFAULT NULL COMMENT '班级编号',
  `banji_name` varchar(200) DEFAULT NULL COMMENT '班级名称  Search111 ',
  `banji_address` varchar(200) DEFAULT NULL COMMENT '班级位置',
  `banji_content` longtext COMMENT '班级备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='班级';

DELETE FROM `banji`;
INSERT INTO `banji` (`id`, `banji_uuid_number`, `banji_name`, `banji_address`, `banji_content`, `insert_time`, `create_time`) VALUES
	(1, '1681784687793', '班级名称1', '班级位置1', '班级备注1', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(2, '1681784687787', '班级名称2', '班级位置2', '班级备注2', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(3, '1681784687749', '班级名称3', '班级位置3', '班级备注3', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(4, '1681784687787', '班级名称4', '班级位置4', '班级备注4', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(5, '1681784687811', '班级名称5', '班级位置5', '班级备注5', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(6, '1681784687811', '班级名称6', '班级位置6', '班级备注6', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(7, '1681784687830', '班级名称7', '班级位置7', '班级备注7', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(8, '1681784687815', '班级名称8', '班级位置8', '班级备注8', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(9, '1681784687752', '班级名称9', '班级位置9', '班级备注9', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(10, '1681784687772', '班级名称10', '班级位置10', '班级备注10', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(11, '1681784687773', '班级名称11', '班级位置11', '班级备注11', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(12, '1681784687774', '班级名称12', '班级位置12', '班级备注12', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(13, '1681784687760', '班级名称13', '班级位置13', '班级备注13', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(14, '1681784687838', '班级名称14', '班级位置14', '班级备注14', '2023-04-18 02:24:47', '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-18 02:24:37'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-18 02:24:37'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-18 02:24:37'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-18 02:24:37'),
	(5, 'jianli_types', '求职意向', 1, '求职意向1', NULL, NULL, '2023-04-18 02:24:37'),
	(6, 'jianli_types', '求职意向', 2, '求职意向2', NULL, NULL, '2023-04-18 02:24:37'),
	(7, 'jianli_types', '求职意向', 3, '求职意向3', NULL, NULL, '2023-04-18 02:24:37'),
	(8, 'mianshi_yesno_types', '投递状态', 1, '未回复', NULL, NULL, '2023-04-18 02:24:37'),
	(9, 'mianshi_yesno_types', '投递状态', 2, '通过', NULL, NULL, '2023-04-18 02:24:37'),
	(10, 'mianshi_yesno_types', '投递状态', 3, '拒绝', NULL, NULL, '2023-04-18 02:24:37'),
	(11, 'gongsi_types', '公司类型', 1, '公司类型1', NULL, NULL, '2023-04-18 02:24:37'),
	(12, 'gongsi_types', '公司类型', 2, '公司类型2', NULL, NULL, '2023-04-18 02:24:37'),
	(13, 'gongsi_types', '公司类型', 3, '公司类型3', NULL, NULL, '2023-04-18 02:24:37'),
	(14, 'zhaopin_types', '招聘岗位', 1, '招聘岗位1', NULL, NULL, '2023-04-18 02:24:37'),
	(15, 'zhaopin_types', '招聘岗位', 2, '招聘岗位2', NULL, NULL, '2023-04-18 02:24:37'),
	(16, 'zhaopin_types', '招聘岗位', 3, '招聘岗位3', NULL, NULL, '2023-04-18 02:24:37'),
	(17, 'leixing_types', '招聘类型', 1, '实习安排', NULL, NULL, '2023-04-18 02:24:37'),
	(18, 'leixing_types', '招聘类型', 2, '校园招聘', NULL, NULL, '2023-04-18 02:24:37'),
	(19, 'zuoye_types', '作业类型', 1, '作业类型1', NULL, NULL, '2023-04-18 02:24:37'),
	(20, 'zuoye_types', '作业类型', 2, '作业类型2', NULL, NULL, '2023-04-18 02:24:37'),
	(21, 'zuoye_types', '作业类型', 3, '作业类型3', NULL, NULL, '2023-04-18 02:24:38'),
	(22, 'zuoye_types', '作业类型', 4, '作业类型4', NULL, NULL, '2023-04-18 02:24:38'),
	(23, 'zuoye_tijiao_yesno_types', '提交状态', 1, '待批改', NULL, NULL, '2023-04-18 02:24:38'),
	(24, 'zuoye_tijiao_yesno_types', '提交状态', 2, '已批改', NULL, NULL, '2023-04-18 02:24:38'),
	(25, 'zuoye_tijiao_yesno_types', '提交状态', 3, '未批改', NULL, NULL, '2023-04-18 02:24:38');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-04-18 02:24:47', '公告详情1', '2023-04-18 02:24:47'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-18 02:24:47', '公告详情2', '2023-04-18 02:24:47'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-18 02:24:47', '公告详情3', '2023-04-18 02:24:47'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-18 02:24:47', '公告详情4', '2023-04-18 02:24:47'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-04-18 02:24:47', '公告详情5', '2023-04-18 02:24:47'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 2, '2023-04-18 02:24:47', '公告详情6', '2023-04-18 02:24:47'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-04-18 02:24:47', '公告详情7', '2023-04-18 02:24:47'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-18 02:24:47', '公告详情8', '2023-04-18 02:24:47'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-04-18 02:24:47', '公告详情9', '2023-04-18 02:24:47'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-18 02:24:47', '公告详情10', '2023-04-18 02:24:47'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-04-18 02:24:47', '公告详情11', '2023-04-18 02:24:47'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-18 02:24:47', '公告详情12', '2023-04-18 02:24:47'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-04-18 02:24:47', '公告详情13', '2023-04-18 02:24:47'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-04-18 02:24:47', '公告详情14', '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `gongsi`;
CREATE TABLE IF NOT EXISTS `gongsi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '公司名称 Search111 ',
  `gongsi_types` int DEFAULT NULL COMMENT '公司类型',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '公司封面',
  `gongsi_content` text COMMENT '公司简介 ',
  `gongsi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公司';

DELETE FROM `gongsi`;
INSERT INTO `gongsi` (`id`, `username`, `password`, `gongsi_name`, `gongsi_types`, `gongsi_phone`, `gongsi_email`, `gongsi_photo`, `gongsi_content`, `gongsi_delete`, `create_time`) VALUES
	(1, '公司1', '123456', '公司名称1', 2, '17703786901', '1@qq.com', 'upload/gongsi1.jpg', '公司简介1', 1, '2023-04-18 02:24:47'),
	(2, '公司2', '123456', '公司名称2', 3, '17703786902', '2@qq.com', 'upload/gongsi2.jpg', '公司简介2', 1, '2023-04-18 02:24:47'),
	(3, '公司3', '123456', '公司名称3', 2, '17703786903', '3@qq.com', 'upload/gongsi3.jpg', '公司简介3', 1, '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `jianli`;
CREATE TABLE IF NOT EXISTS `jianli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='简历';

DELETE FROM `jianli`;
INSERT INTO `jianli` (`id`, `yonghu_id`, `jianli_uuid_number`, `jianli_name`, `jianli_xingming`, `jianli_types`, `jianli_xinzi`, `jianli_xueli`, `jianli_jingli`, `sex_types`, `jianli_file`, `jianli_phone`, `jianli_photo`, `jianli_address`, `jiaoyu_text`, `shixi_text`, `geren_text`, `create_time`) VALUES
	(1, 3, '1681784687801', '简历标题1', '姓名1', 3, '期望工资1', '学历1', '工作经历1', 2, 'upload/file.rar', '17703786901', 'upload/jianli1.jpg', '位置1', '教育经历1', '实习或工作经历1', '个人介绍1', '2023-04-18 02:24:47'),
	(2, 3, '1681784687790', '简历标题2', '姓名2', 1, '期望工资2', '学历2', '工作经历2', 2, 'upload/file.rar', '17703786902', 'upload/jianli2.jpg', '位置2', '教育经历2', '实习或工作经历2', '个人介绍2', '2023-04-18 02:24:47'),
	(3, 2, '1681784687852', '简历标题3', '姓名3', 1, '期望工资3', '学历3', '工作经历3', 2, 'upload/file.rar', '17703786903', 'upload/jianli3.jpg', '位置3', '教育经历3', '实习或工作经历3', '个人介绍3', '2023-04-18 02:24:47'),
	(4, 2, '1681784687845', '简历标题4', '姓名4', 3, '期望工资4', '学历4', '工作经历4', 2, 'upload/file.rar', '17703786904', 'upload/jianli4.jpg', '位置4', '教育经历4', '实习或工作经历4', '个人介绍4', '2023-04-18 02:24:47'),
	(5, 2, '1681784687788', '简历标题5', '姓名5', 3, '期望工资5', '学历5', '工作经历5', 1, 'upload/file.rar', '17703786905', 'upload/jianli5.jpg', '位置5', '教育经历5', '实习或工作经历5', '个人介绍5', '2023-04-18 02:24:47'),
	(6, 2, '1681784687806', '简历标题6', '姓名6', 3, '期望工资6', '学历6', '工作经历6', 2, 'upload/file.rar', '17703786906', 'upload/jianli6.jpg', '位置6', '教育经历6', '实习或工作经历6', '个人介绍6', '2023-04-18 02:24:47'),
	(7, 1, '1681784687793', '简历标题7', '姓名7', 2, '期望工资7', '学历7', '工作经历7', 1, 'upload/file.rar', '17703786907', 'upload/jianli7.jpg', '位置7', '教育经历7', '实习或工作经历7', '个人介绍7', '2023-04-18 02:24:47'),
	(8, 3, '1681784687842', '简历标题8', '姓名8', 3, '期望工资8', '学历8', '工作经历8', 2, 'upload/file.rar', '17703786908', 'upload/jianli8.jpg', '位置8', '教育经历8', '实习或工作经历8', '个人介绍8', '2023-04-18 02:24:47'),
	(9, 3, '1681784687776', '简历标题9', '姓名9', 2, '期望工资9', '学历9', '工作经历9', 1, 'upload/file.rar', '17703786909', 'upload/jianli9.jpg', '位置9', '教育经历9', '实习或工作经历9', '个人介绍9', '2023-04-18 02:24:47'),
	(10, 2, '1681784687791', '简历标题10', '姓名10', 3, '期望工资10', '学历10', '工作经历10', 2, 'upload/file.rar', '17703786910', 'upload/jianli10.jpg', '位置10', '教育经历10', '实习或工作经历10', '个人介绍10', '2023-04-18 02:24:47'),
	(11, 1, '1681784687811', '简历标题11', '姓名11', 1, '期望工资11', '学历11', '工作经历11', 1, 'upload/file.rar', '17703786911', 'upload/jianli11.jpg', '位置11', '教育经历11', '实习或工作经历11', '个人介绍11', '2023-04-18 02:24:47'),
	(12, 3, '1681784687780', '简历标题12', '姓名12', 2, '期望工资12', '学历12', '工作经历12', 2, 'upload/file.rar', '17703786912', 'upload/jianli12.jpg', '位置12', '教育经历12', '实习或工作经历12', '个人介绍12', '2023-04-18 02:24:47'),
	(13, 3, '1681784687807', '简历标题13', '姓名13', 1, '期望工资13', '学历13', '工作经历13', 1, 'upload/file.rar', '17703786913', 'upload/jianli13.jpg', '位置13', '教育经历13', '实习或工作经历13', '个人介绍13', '2023-04-18 02:24:47'),
	(14, 3, '1681784687830', '简历标题14', '姓名14', 2, '期望工资14', '学历14', '工作经历14', 2, 'upload/file.rar', '17703786914', 'upload/jianli14.jpg', '位置14', '教育经历14', '实习或工作经历14', '个人介绍14', '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='老师';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `username`, `password`, `laoshi_name`, `laoshi_phone`, `laoshi_id_number`, `laoshi_photo`, `sex_types`, `laoshi_email`, `create_time`) VALUES
	(1, '老师1', '123456', '老师姓名1', '17703786901', '410224199010102001', 'upload/laoshi1.jpg', 2, '1@qq.com', '2023-04-18 02:24:47'),
	(2, '老师2', '123456', '老师姓名2', '17703786902', '410224199010102002', 'upload/laoshi2.jpg', 1, '2@qq.com', '2023-04-18 02:24:47'),
	(3, '老师3', '123456', '老师姓名3', '17703786903', '410224199010102003', 'upload/laoshi3.jpg', 1, '3@qq.com', '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `pingfen`;
CREATE TABLE IF NOT EXISTS `pingfen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongsi_id` int DEFAULT NULL COMMENT '公司',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `pingfen_pingfen` decimal(10,2) DEFAULT NULL COMMENT '评分',
  `pingfen_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='实习评分';

DELETE FROM `pingfen`;
INSERT INTO `pingfen` (`id`, `gongsi_id`, `yonghu_id`, `pingfen_pingfen`, `pingfen_text`, `insert_time`, `create_time`) VALUES
	(1, 2, 3, 155.04, '评价内容1', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(2, 3, 1, 367.61, '评价内容2', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(3, 3, 3, 193.82, '评价内容3', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(4, 1, 2, 394.77, '评价内容4', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(5, 1, 2, 182.98, '评价内容5', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(6, 2, 1, 555.29, '评价内容6', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(7, 3, 3, 325.89, '评价内容7', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(8, 2, 3, 963.19, '评价内容8', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(9, 1, 2, 505.61, '评价内容9', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(10, 2, 3, 92.74, '评价内容10', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(11, 1, 1, 832.94, '评价内容11', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(12, 2, 1, 533.37, '评价内容12', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(13, 2, 3, 709.72, '评价内容13', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(14, 2, 1, 430.02, '评价内容14', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(15, 1, 1, 800.00, '106550', '2023-04-18 03:01:14', '2023-04-18 03:01:14');

DROP TABLE IF EXISTS `qingkuang`;
CREATE TABLE IF NOT EXISTS `qingkuang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongsi_id` int DEFAULT NULL COMMENT '公司',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qingkuang_text` longtext COMMENT '实习情况',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='实习情况';

DELETE FROM `qingkuang`;
INSERT INTO `qingkuang` (`id`, `gongsi_id`, `yonghu_id`, `qingkuang_text`, `insert_time`, `create_time`) VALUES
	(1, 2, 2, '实习情况1', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(2, 1, 2, '实习情况2', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(3, 2, 2, '实习情况3', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(4, 1, 2, '实习情况4', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(5, 2, 1, '实习情况5', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(6, 2, 3, '实习情况6', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(7, 1, 1, '实习情况7', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(8, 1, 1, '实习情况8', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(9, 3, 1, '实习情况9', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(10, 3, 1, '实习情况10', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(11, 2, 1, '实习情况11', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(12, 3, 3, '实习情况12', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(13, 1, 1, '实习情况13', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(14, 2, 1, '实习情况14', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(17, 1, 1, '不错', '2023-04-18 02:40:51', '2023-04-18 02:40:51');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '0ywl9j6lwlynnrauuavyn25ezojmqmxs', '2023-04-18 02:25:35', '2023-04-18 03:37:23'),
	(2, 1, 'a1', 'gongsi', '公司', 'evl0ug6e4zuwe0z8rf37zbreyubsvdxb', '2023-04-18 02:27:52', '2024-08-09 04:20:09'),
	(3, 1, 'admin', 'users', '管理员', 'wb3e106kzr2uw054wnb9vm1kp22qiivz', '2023-04-18 02:30:38', '2024-08-09 04:18:39'),
	(4, 1, 'a1', 'laoshi', '老师', 'szo7fx5nm9j970p07f0n6tvu0pwjpbs2', '2023-04-18 02:37:17', '2024-08-09 04:20:22'),
	(5, 1, 'a1', 'yonghu', '学生', '4xsp9nfxkvmq8ogt7sza3rhjzf74guel', '2023-04-18 02:49:54', '2024-08-09 04:20:33');

DROP TABLE IF EXISTS `toudi`;
CREATE TABLE IF NOT EXISTS `toudi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int DEFAULT NULL COMMENT '招聘',
  `mianshi_yesno_types` int DEFAULT NULL COMMENT '投递状态 Search111',
  `mianshi_yesno_text` text COMMENT '投递回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COMMENT='简历投递';

DELETE FROM `toudi`;
INSERT INTO `toudi` (`id`, `jianli_id`, `zhaopin_id`, `mianshi_yesno_types`, `mianshi_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '投递回复1', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(2, 2, 2, 3, '投递回复2', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(3, 3, 3, 1, '投递回复3', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(4, 4, 4, 2, '投递回复4', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(5, 5, 5, 3, '投递回复5', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(6, 6, 6, 2, '投递回复6', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(7, 7, 7, 2, '投递回复7', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(8, 8, 8, 1, '投递回复8', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(9, 9, 9, 1, '投递回复9', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(10, 10, 10, 3, '投递回复10', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(11, 11, 11, 2, '投递回复11', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(12, 12, 12, 2, '投递回复12', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(13, 13, 13, 2, '投递回复13', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(14, 14, 14, 1, '投递回复14', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(29, 7, 10, 1, '', '2023-04-18 02:55:52', '2023-04-18 02:55:52');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-18 02:24:37');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuanxi_id` int DEFAULT NULL COMMENT '院系',
  `banji_id` int DEFAULT NULL COMMENT '班级',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `yuanxi_id`, `banji_id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, 1, 1, '学生1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', '2023-04-18 02:24:47'),
	(2, 2, 2, '学生2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', '2023-04-18 02:24:47'),
	(3, 3, 3, '学生3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `yuanxi`;
CREATE TABLE IF NOT EXISTS `yuanxi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuanxi_uuid_number` varchar(200) DEFAULT NULL COMMENT '院系编号',
  `yuanxi_name` varchar(200) DEFAULT NULL COMMENT '院系名称  Search111 ',
  `yuanxi_address` varchar(200) DEFAULT NULL COMMENT '院系位置',
  `yuanxi_content` longtext COMMENT '院系备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='院系';

DELETE FROM `yuanxi`;
INSERT INTO `yuanxi` (`id`, `yuanxi_uuid_number`, `yuanxi_name`, `yuanxi_address`, `yuanxi_content`, `insert_time`, `create_time`) VALUES
	(1, '1681784687827', '院系名称1', '院系位置1', '院系备注1', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(2, '1681784687856', '院系名称2', '院系位置2', '院系备注2', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(3, '1681784687774', '院系名称3', '院系位置3', '院系备注3', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(4, '1681784687831', '院系名称4', '院系位置4', '院系备注4', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(5, '1681784687792', '院系名称5', '院系位置5', '院系备注5', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(6, '1681784687797', '院系名称6', '院系位置6', '院系备注6', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(7, '1681784687807', '院系名称7', '院系位置7', '院系备注7', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(8, '1681784687772', '院系名称8', '院系位置8', '院系备注8', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(9, '1681784687773', '院系名称9', '院系位置9', '院系备注9', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(10, '1681784687856', '院系名称10', '院系位置10', '院系备注10', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(11, '1681784687792', '院系名称11', '院系位置11', '院系备注11', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(12, '1681784687830', '院系名称12', '院系位置12', '院系备注12', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(13, '1681784687852', '院系名称13', '院系位置13', '院系备注13', '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(14, '1681784687840', '院系名称14', '院系位置14', '院系备注14', '2023-04-18 02:24:47', '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `zhaopin`;
CREATE TABLE IF NOT EXISTS `zhaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int DEFAULT NULL COMMENT '公司',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `zhaopin_types` int DEFAULT NULL COMMENT '招聘岗位 Search111',
  `leixing_types` int DEFAULT NULL COMMENT '招聘类型 Search111',
  `zhaopin_renshu_number` int DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='职位招聘';

DELETE FROM `zhaopin`;
INSERT INTO `zhaopin` (`id`, `gongsi_id`, `zhaopin_name`, `zhaopin_photo`, `zhaopin_daiyu`, `zhaopin_address`, `lianxiren_name`, `zhaopin_phone`, `zan_number`, `cai_number`, `zhaopin_types`, `leixing_types`, `zhaopin_renshu_number`, `zhaopin_content`, `create_time`) VALUES
	(1, 3, '招聘信息名称1', 'upload/zhaopin1.jpg', '薪资待遇1', '上班地点1', '联系人1', '17703786901', 326, 430, 1, 2, 344, '招聘信息详情1', '2023-04-18 02:24:47'),
	(2, 3, '招聘信息名称2', 'upload/zhaopin2.jpg', '薪资待遇2', '上班地点2', '联系人2', '17703786902', 380, 326, 1, 1, 165, '招聘信息详情2', '2023-04-18 02:24:47'),
	(3, 2, '招聘信息名称3', 'upload/zhaopin3.jpg', '薪资待遇3', '上班地点3', '联系人3', '17703786903', 160, 145, 3, 2, 144, '招聘信息详情3', '2023-04-18 02:24:47'),
	(4, 2, '招聘信息名称4', 'upload/zhaopin4.jpg', '薪资待遇4', '上班地点4', '联系人4', '17703786904', 197, 495, 2, 1, 73, '招聘信息详情4', '2023-04-18 02:24:47'),
	(5, 1, '招聘信息名称5', 'upload/zhaopin5.jpg', '薪资待遇5', '上班地点5', '联系人5', '17703786905', 474, 75, 3, 1, 38, '招聘信息详情5', '2023-04-18 02:24:47'),
	(6, 1, '招聘信息名称6', 'upload/zhaopin6.jpg', '薪资待遇6', '上班地点6', '联系人6', '17703786906', 22, 246, 1, 2, 67, '招聘信息详情6', '2023-04-18 02:24:47'),
	(7, 1, '招聘信息名称7', 'upload/zhaopin7.jpg', '薪资待遇7', '上班地点7', '联系人7', '17703786907', 439, 401, 2, 2, 149, '招聘信息详情7', '2023-04-18 02:24:47'),
	(8, 2, '招聘信息名称8', 'upload/zhaopin8.jpg', '薪资待遇8', '上班地点8', '联系人8', '17703786908', 377, 159, 2, 1, 278, '招聘信息详情8', '2023-04-18 02:24:47'),
	(9, 1, '招聘信息名称9', 'upload/zhaopin9.jpg', '薪资待遇9', '上班地点9', '联系人9', '17703786909', 94, 406, 3, 2, 378, '招聘信息详情9', '2023-04-18 02:24:47'),
	(10, 2, '招聘信息名称10', 'upload/zhaopin10.jpg', '薪资待遇10', '上班地点10', '联系人10', '17703786910', 118, 440, 3, 1, 383, '招聘信息详情10', '2023-04-18 02:24:47'),
	(11, 3, '招聘信息名称11', 'upload/zhaopin11.jpg', '薪资待遇11', '上班地点11', '联系人11', '17703786911', 93, 354, 3, 1, 495, '招聘信息详情11', '2023-04-18 02:24:47'),
	(12, 1, '招聘信息名称12', 'upload/zhaopin12.jpg', '薪资待遇12', '上班地点12', '联系人12', '17703786912', 466, 247, 2, 1, 93, '招聘信息详情12', '2023-04-18 02:24:47'),
	(13, 2, '招聘信息名称13', 'upload/zhaopin13.jpg', '薪资待遇13', '上班地点13', '联系人13', '17703786913', 146, 493, 1, 1, 48, '招聘信息详情13', '2023-04-18 02:24:47'),
	(14, 2, '招聘信息名称14', 'upload/zhaopin14.jpg', '薪资待遇14', '上班地点14', '联系人14', '17703786914', 410, 100, 3, 2, 170, '招聘信息详情14', '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `zuoye`;
CREATE TABLE IF NOT EXISTS `zuoye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int DEFAULT NULL COMMENT '老师',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称  Search111 ',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '作业封面',
  `zuoye_types` int DEFAULT NULL COMMENT '作业类型 Search111',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业下载',
  `zuoye_content` text COMMENT '作业介绍 ',
  `zuoye_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='实习作业';

DELETE FROM `zuoye`;
INSERT INTO `zuoye` (`id`, `gongsi_id`, `zuoye_name`, `zuoye_uuid_number`, `zuoye_photo`, `zuoye_types`, `zuoye_file`, `zuoye_content`, `zuoye_delete`, `insert_time`, `create_time`) VALUES
	(1, 3, '作业名称1', '1681784687807', 'upload/zuoye1.jpg', 4, 'upload/file.rar', '作业介绍1', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(2, 3, '作业名称2', '1681784687775', 'upload/zuoye2.jpg', 4, 'upload/file.rar', '作业介绍2', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(3, 1, '作业名称3', '1681784687793', 'upload/zuoye3.jpg', 1, 'upload/file.rar', '作业介绍3', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(4, 2, '作业名称4', '1681784687775', 'upload/zuoye4.jpg', 4, 'upload/file.rar', '作业介绍4', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(5, 3, '作业名称5', '1681784687818', 'upload/zuoye5.jpg', 1, 'upload/file.rar', '作业介绍5', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(6, 2, '作业名称6', '1681784687814', 'upload/zuoye6.jpg', 3, 'upload/file.rar', '作业介绍6', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(7, 2, '作业名称7', '1681784687833', 'upload/zuoye7.jpg', 3, 'upload/file.rar', '作业介绍7', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(8, 2, '作业名称8', '1681784687788', 'upload/zuoye8.jpg', 2, 'upload/file.rar', '作业介绍8', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(9, 2, '作业名称9', '1681784687844', 'upload/zuoye9.jpg', 1, 'upload/file.rar', '作业介绍9', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(10, 2, '作业名称10', '1681784687858', 'upload/zuoye10.jpg', 2, 'upload/file.rar', '作业介绍10', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(11, 3, '作业名称11', '1681784687802', 'upload/zuoye11.jpg', 2, 'upload/file.rar', '作业介绍11', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(12, 1, '作业名称12', '1681784687811', 'upload/zuoye12.jpg', 2, 'upload/file.rar', '作业介绍12', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(13, 3, '作业名称13', '1681784687783', 'upload/zuoye13.jpg', 3, 'upload/file.rar', '作业介绍13', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(14, 2, '作业名称14', '1681784687800', 'upload/zuoye14.jpg', 1, 'upload/file.rar', '作业介绍14', 1, '2023-04-18 02:24:47', '2023-04-18 02:24:47');

DROP TABLE IF EXISTS `zuoye_tijiao`;
CREATE TABLE IF NOT EXISTS `zuoye_tijiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_tijiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `zuoye_id` int DEFAULT NULL COMMENT '作业',
  `gongsi_id` int DEFAULT NULL COMMENT '老师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zuoye_tijiao_text` text COMMENT '内容',
  `zuoye_shangchuan_file` varchar(200) DEFAULT NULL COMMENT '作业上传',
  `zuoye_tijiao_yesno_types` int DEFAULT NULL COMMENT '提交状态 Search111 ',
  `zuoye_tijiao_pigai` int DEFAULT NULL COMMENT '批改分数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='作业提交';

DELETE FROM `zuoye_tijiao`;
INSERT INTO `zuoye_tijiao` (`id`, `zuoye_tijiao_uuid_number`, `zuoye_id`, `gongsi_id`, `yonghu_id`, `zuoye_tijiao_text`, `zuoye_shangchuan_file`, `zuoye_tijiao_yesno_types`, `zuoye_tijiao_pigai`, `insert_time`, `create_time`) VALUES
	(1, '1681784687840', 1, 3, 1, '内容1', 'upload/file.rar', 1, 111, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(2, '1681784687830', 2, 2, 2, '内容2', 'upload/file.rar', 1, 207, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(3, '1681784687814', 3, 1, 2, '内容3', 'upload/file.rar', 1, 25, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(4, '1681784687843', 4, 3, 3, '内容4', 'upload/file.rar', 1, 432, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(5, '1681784687821', 5, 2, 3, '内容5', 'upload/file.rar', 1, 464, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(6, '1681784687859', 6, 3, 3, '内容6', 'upload/file.rar', 1, 456, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(7, '1681784687831', 7, 3, 3, '内容7', 'upload/file.rar', 1, 288, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(8, '1681784687837', 8, 3, 2, '内容8', 'upload/file.rar', 1, 94, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(9, '1681784687788', 9, 3, 2, '内容9', 'upload/file.rar', 1, 318, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(10, '1681784687786', 10, 3, 1, '内容10', 'upload/file.rar', 1, 134, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(11, '1681784687782', 11, 3, 3, '内容11', 'upload/file.rar', 1, 380, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(12, '1681784687827', 12, 1, 2, '内容12', 'upload/file.rar', 1, 54, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(13, '1681784687793', 13, 2, 2, '内容13', 'upload/file.rar', 1, 49, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(14, '1681784687829', 14, 2, 2, '内容14', 'upload/file.rar', 1, 108, '2023-04-18 02:24:47', '2023-04-18 02:24:47'),
	(15, '1681786695213', 2, 1, 1, '4546', '/upload/1681786707291.jpg', 2, 100, '2023-04-18 02:59:13', '2023-04-18 02:59:13');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
