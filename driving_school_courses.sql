/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : driving_school_courses

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-12-02 23:22:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ylrc_about_info
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_about_info`;
CREATE TABLE `ylrc_about_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `content` varchar(6552) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_about_info
-- ----------------------------
INSERT INTO `ylrc_about_info` VALUES ('1', '2020-11-17 11:48:21', '2020-11-18 09:41:02', '菜鸟驾校欢迎您11', '<p>\r\n	<span style=\"color:#666666;font-family:\" font-size:15px;\"=\"\">上海市新闻出版系统驾驶员培训部，清廉的教风一直受到历届学员的好评，收费低于同行。本部培训、班车定点接送。开设业余班，每周六、日训练，不影响工作学习，学期二个月。 本部为上海出租汽车行业定向培训驾驶员，并能成为出租汽车公司的正式员工。给下岗职工创造再就业的良好机会。去新闻培训部学车、到出租汽车公司开车，是就业者明智的选择。本部提供开出租车、办理\"双证\"一条龙服务。本部上门办理培训报名手续。热忱欢迎本市和外省市各界人士前来报名培训学习，我们将竭存为您服务。</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#666666;font-family:\" font-size:15px;\"=\"\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<ul>\r\n	<li>\r\n		<span style=\"color:#666666;font-family:\" font-size:15px;\"=\"\">超低价格2000元包过</span> \r\n	</li>\r\n	<li>\r\n		<span style=\"color:#666666;font-family:\" font-size:15px;\"=\"\">所获荣誉120项</span> \r\n	</li>\r\n	<li>\r\n		<span style=\"color:#666666;font-family:\" font-size:15px;\"=\"\">最好的教练</span> \r\n	</li>\r\n</ul>\r\n<p>\r\n	<br />\r\n</p>');

-- ----------------------------
-- Table structure for ylrc_account
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_account`;
CREATE TABLE `ylrc_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_account
-- ----------------------------
INSERT INTO `ylrc_account` VALUES ('1', '2020-11-17 11:56:12', '2020-11-23 18:19:42', '123456789@qq.com', '20201117/1605594153469-7e77fe16-2787-4559-a996-1c47a16b9072.jpeg', '18186000288', '123456', '2', '1', 'Change');
INSERT INTO `ylrc_account` VALUES ('3', '2020-11-17 15:27:57', '2020-11-17 15:32:38', '123456@qq.com', '', '18186000214', '123456', '1', '1', 'Cocos');
INSERT INTO `ylrc_account` VALUES ('4', '2020-11-18 08:58:55', '2020-11-18 08:58:55', '111@qq.com', null, '15139710060', '123456', '0', '1', '猿来入此');
INSERT INTO `ylrc_account` VALUES ('6', '2020-11-18 10:02:36', '2020-12-02 12:57:09', '264561@qq.caom', '20201202/1606884868788-d69648d7-7e5f-4f5a-b04e-c1d5cd0c9a80.jpg', '13461115532', '123456', '0', '1', 'pdd');

-- ----------------------------
-- Table structure for ylrc_achievement
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_achievement`;
CREATE TABLE `ylrc_achievement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `awards` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_achievement
-- ----------------------------
INSERT INTO `ylrc_achievement` VALUES ('1', '2020-11-17 11:54:14', '2020-11-18 09:33:04', '1200', '50', '我们是一个有着50年经验的老牌驾校');
INSERT INTO `ylrc_achievement` VALUES ('3', '2020-11-18 09:33:25', '2020-11-18 09:33:25', '14', '4', '安居客的你了， ');

-- ----------------------------
-- Table structure for ylrc_appointment
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_appointment`;
CREATE TABLE `ylrc_appointment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_rate` int(11) DEFAULT NULL,
  `make_date` datetime NOT NULL,
  `make_time` varchar(26) NOT NULL,
  `overdue` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `courses_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK75107bb6knksdq2i66j22kcyl` (`account_id`),
  KEY `FKdxy2qiegfub1t8gi85bnq49o8` (`courses_id`),
  CONSTRAINT `FK75107bb6knksdq2i66j22kcyl` FOREIGN KEY (`account_id`) REFERENCES `ylrc_account` (`id`),
  CONSTRAINT `FKdxy2qiegfub1t8gi85bnq49o8` FOREIGN KEY (`courses_id`) REFERENCES `ylrc_courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_appointment
-- ----------------------------
INSERT INTO `ylrc_appointment` VALUES ('1', '2020-11-17 13:49:23', '2020-11-17 13:49:30', '1', '2020-11-18 00:00:00', '13:00-13:50', '2020-11-18 13:00-13:50', '0', '1', '1');
INSERT INTO `ylrc_appointment` VALUES ('2', '2020-11-17 13:49:45', '2020-11-17 13:50:10', '1', '2020-11-18 00:00:00', '13:50-14:40', '2020-11-18 13:50-14:40', '0', '1', '1');
INSERT INTO `ylrc_appointment` VALUES ('3', '2020-11-17 15:35:09', '2020-11-17 15:36:17', '1', '2020-11-18 00:00:00', '08:00-08:50', '2020-11-18 08:00-08:50', '0', '3', '1');
INSERT INTO `ylrc_appointment` VALUES ('4', '2020-11-17 15:36:31', '2020-11-17 15:37:18', '1', '2020-11-18 00:00:00', '09:40-10:30', '2020-11-18 09:40-10:30', '0', '3', '1');
INSERT INTO `ylrc_appointment` VALUES ('5', '2020-11-18 10:22:44', '2020-11-18 10:23:19', '1', '2020-11-18 00:00:00', '08:00-08:50', '2020-11-18 08:00-08:50', '0', '6', '1');
INSERT INTO `ylrc_appointment` VALUES ('6', '2020-11-18 10:22:44', '2020-12-02 12:54:54', '1', '2020-11-18 00:00:00', '08:50-09:40', '2020-11-18 08:50-09:40', '0', '6', '1');
INSERT INTO `ylrc_appointment` VALUES ('7', '2020-11-18 10:22:44', '2020-12-02 12:54:50', '1', '2020-11-18 00:00:00', '09:40-10:30', '2020-11-18 09:40-10:30', '0', '6', '1');

-- ----------------------------
-- Table structure for ylrc_clazz_schedule
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_clazz_schedule`;
CREATE TABLE `ylrc_clazz_schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `end_time` varchar(16) NOT NULL,
  `slot` int(11) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `start_time` varchar(16) NOT NULL,
  `courses_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgr97uv4abukoupl4jy3337unc` (`courses_id`),
  CONSTRAINT `FKgr97uv4abukoupl4jy3337unc` FOREIGN KEY (`courses_id`) REFERENCES `ylrc_courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_clazz_schedule
-- ----------------------------
INSERT INTO `ylrc_clazz_schedule` VALUES ('7', '2020-11-17 14:33:38', '2020-11-17 14:33:38', '2020-11-18 00:00:00', '18:00', '50', '2020-11-18 00:00:00', '08:00', '1');
INSERT INTO `ylrc_clazz_schedule` VALUES ('8', '2020-11-18 09:35:38', '2020-11-18 09:35:38', '2020-11-25 00:00:00', '09:51', '200', '2020-11-20 00:00:00', '04:59', '5');
INSERT INTO `ylrc_clazz_schedule` VALUES ('9', '2020-11-18 09:43:10', '2020-11-18 09:43:10', '2020-11-25 00:00:00', '22:00', '4', '2020-11-18 00:00:00', '10:59', '7');

-- ----------------------------
-- Table structure for ylrc_coach
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_coach`;
CREATE TABLE `ylrc_coach` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `introduce` varchar(6553) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `coach_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3c7bma8qh5j5xfr8c166gqgm9` (`coach_type_id`),
  CONSTRAINT `FK3c7bma8qh5j5xfr8c166gqgm9` FOREIGN KEY (`coach_type_id`) REFERENCES `ylrc_coach_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_coach
-- ----------------------------
INSERT INTO `ylrc_coach` VALUES ('1', '2020-11-17 11:43:40', '2020-11-17 14:30:53', '1111@163.com', '20201117/1605584458825.jpg', '我非常喜欢驾驶，对汽车有很多年的实践和研究，非常想找一份能够发挥我专长的工作，在工作中，我认真负责、敬业，好学，善于他人合作。', 'Change', '15139710060', '永不言败', '1');
INSERT INTO `ylrc_coach` VALUES ('2', '2020-11-17 11:47:41', '2020-11-18 09:32:06', '1111@163.com', '20201117/1605584628584.jpg', '上岁数苏胡所所所所所所所所所所所所所所所所所所所所所所仨撒谎in大飒飒大师大所所所所所仨撒谎in大飒飒大师大所所所所所仨撒谎in大飒飒大师大所所所所所仨撒谎in大飒飒大师大所所所所所仨撒谎in大飒飒大师大所所所所所仨撒谎in大飒飒大师大所所所所所仨撒谎in大飒飒大师大所所所所所仨撒谎in大飒飒大师大', 'Zr', '15139710061', '速度速度速度速度速度速度', '2');
INSERT INTO `ylrc_coach` VALUES ('5', '2020-11-18 09:34:27', '2020-11-18 09:36:26', '2452845299@qq.com', '', '萨达打撒的按时打撒打撒打撒打打撒萨达打撒的按时打撒打撒打撒打打撒萨达打撒的按时打撒打撒打撒打打撒萨达打撒的按时打撒打撒打撒打打撒萨达打撒的按时打撒打撒打撒打打撒萨达打撒的按时打撒打撒打撒打打撒萨达打撒的按时打撒打撒打撒打打撒萨达打撒的按时打撒打撒打撒打打撒', '哈哈', '13151856541', '啥事', '2');

-- ----------------------------
-- Table structure for ylrc_coach_type
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_coach_type`;
CREATE TABLE `ylrc_coach_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_coach_type
-- ----------------------------
INSERT INTO `ylrc_coach_type` VALUES ('1', '2020-11-17 11:39:38', '2020-12-02 13:28:09', '总教员');
INSERT INTO `ylrc_coach_type` VALUES ('2', '2020-11-17 11:40:03', '2020-11-17 11:40:03', '科目二教练');
INSERT INTO `ylrc_coach_type` VALUES ('3', '2020-11-17 11:40:12', '2020-11-17 11:40:12', '科目三教练');
INSERT INTO `ylrc_coach_type` VALUES ('5', '2020-11-17 14:29:47', '2020-11-17 14:29:47', '驾校讲师');

-- ----------------------------
-- Table structure for ylrc_comments
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_comments`;
CREATE TABLE `ylrc_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `ancestor_comment_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `news_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKheh1ponx88p4sjwkd1359wo44` (`account_id`),
  KEY `FKb1736f2x6i9n08fwg21vsjv7q` (`news_id`),
  CONSTRAINT `FKb1736f2x6i9n08fwg21vsjv7q` FOREIGN KEY (`news_id`) REFERENCES `ylrc_news` (`id`),
  CONSTRAINT `FKheh1ponx88p4sjwkd1359wo44` FOREIGN KEY (`account_id`) REFERENCES `ylrc_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_comments
-- ----------------------------
INSERT INTO `ylrc_comments` VALUES ('11', '2020-11-18 10:05:24', '2020-11-18 10:05:24', '-1', '我daishkdj hkj akjs n', '-1', '6', '13');

-- ----------------------------
-- Table structure for ylrc_courses
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_courses`;
CREATE TABLE `ylrc_courses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(64) NOT NULL,
  `content` varchar(6553) DEFAULT NULL,
  `cover_photo` varchar(64) DEFAULT NULL,
  `hits` bigint(20) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `rate` decimal(19,2) DEFAULT NULL,
  `skills` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  `type` varchar(128) DEFAULT NULL,
  `video` varchar(64) DEFAULT NULL,
  `coach_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsive954ivr8ideaw9mqlxygsf` (`coach_id`),
  CONSTRAINT `FKsive954ivr8ideaw9mqlxygsf` FOREIGN KEY (`coach_id`) REFERENCES `ylrc_coach` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_courses
-- ----------------------------
INSERT INTO `ylrc_courses` VALUES ('1', '2020-11-17 13:02:12', '2020-12-02 12:54:50', '上海浦东', '12345611111111111111111111111111111111111111111111', '20201117/1605589235981.jpg', null, '999.00', '3.00', 'SKILLS_ONE,SKILLS_TOW,SKILLS_THREE,', '1', '科目二倒车入库', 'DRIVER,GUIDEPOST,LANECHANGE,PARKING,', '20201117/1605593843411.mp4', '1');
INSERT INTO `ylrc_courses` VALUES ('2', '2020-11-17 14:25:48', '2020-11-17 14:25:48', '河南', '<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp;山东交院机动车驾驶培训有限公司的前身是山东交通学院机动车<a href=\"http://www.jnjsxx.com.cn/\" target=\"_blank\" class=\"key_tag\"><span><span style=\"color:#E87518;\">驾驶培训中心</span></span></a>，始建于1956年。办学历史悠久、师资力量雄厚、设施设备先进、教学经验丰富、 资质条件规范，是我省较早建立以驾驶操作为主的教学、研究基地 .目前主要承担普通机动车驾驶（驾照）培训，同时承担全省机动车驾驶教练员培训、全省机关事业单位驾驶员技能鉴定、全市道路运输从业人员从业资格培训、大 学生驾驶实践教学以及教学研究任务等。 几十年来，为社会、机关企事业单位培养各级各类驾驶人才达10万余人。现有教练车辆62部。工作人员80余人，其中专职教练员62人。在长清大学城建有一 级教练场200余亩。 在教学方面，注重教育学、心理学的研究。针对不同学员的个性心理特点，探讨不同的教学方案和教学方法，建立科学、客观的教学评估体系，推动驾驶操作教学效 果的提高. 在服务方面，坚持“学员为本，诚信至上”的服务理念，注重驾驶员素质教育，弘扬安全教育新理念，提出“了解学员、用心服务、满足需求、增值服务”的服务模 式。\r\n</p>\r\n<p style=\"color:#666666;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;在管理方面，提出“事先计划、优化组织、有效激励、安全运行”的管理理念。按照国家标准配设教学、教员、学员、质量、安全、结业考试和设施设备等管理组 织；有完善有效的岗位职责和管理制度，注重“严守制度、按章办事”。\r\n</p>', '20201117/1605594275139.jpg', null, '50.00', '0.00', 'SKILLS_TOW,', '1', '驾校简介', 'DRIVER,GUIDEPOST,', '20201117/1605594280227.mp4', '1');
INSERT INTO `ylrc_courses` VALUES ('3', '2020-11-17 14:29:20', '2020-11-17 14:29:20', '上海浦东', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;倒车入库是2013年后考取小型汽车驾照必须进行的一个项目。考察驾驶人在场地操作汽车的能力。倒车入库是驾驶员考试中的一个考核点。即在运动中操纵车辆从两侧正确倒入车库。倒车入库在考试时有时间限制。<br />', '20201117/1605594501327.jpg', null, '10000000000.00', '0.00', 'SKILLS_TOW,', '1', '倒车入库', 'DRIVER,', '20201117/1605594506747.mp4', '1');
INSERT INTO `ylrc_courses` VALUES ('5', '2020-11-18 09:27:13', '2020-11-23 18:26:33', '卢本伟广场', '哇giao，直接起飞！安会计师的纳斯达克就那是可简单纳斯卡技能的看尽可能 ', '', null, '7777.00', '0.00', 'SKILLS_ONE,SKILLS_TOW,SKILLS_THREE,SKILLS_FOUR,SKILLS_FIVE,SKILLS_SIX,SKILLS_SEVENT,SKILLS_NINE,SKILLS_TEN,', '2', '侧方停车', 'DRIVER,GUIDEPOST,LANECHANGE,', '', '2');
INSERT INTO `ylrc_courses` VALUES ('7', '2020-11-18 09:42:49', '2020-11-18 10:20:12', '卢本伟广场', '撒啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '', null, '1011.00', '0.00', 'SKILLS_ONE,SKILLS_TOW,', '0', '高铁起飞', 'DRIVER,GUIDEPOST,', '20201118/1605666007843.mp4', '5');

-- ----------------------------
-- Table structure for ylrc_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_database_bak`;
CREATE TABLE `ylrc_database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_database_bak
-- ----------------------------
INSERT INTO `ylrc_database_bak` VALUES ('10', '2020-03-22 19:36:47', '2020-03-22 19:36:47', 'db_boot_base_20200322193647.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('11', '2020-03-22 19:37:54', '2020-03-22 19:37:54', 'db_boot_base_20200322193754.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('12', '2020-03-22 19:40:04', '2020-03-22 19:40:04', 'db_boot_base_20200322194004.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('14', '2020-03-22 19:40:14', '2020-03-22 19:40:14', 'db_boot_base_20200322194014.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('15', '2020-03-22 19:40:19', '2020-03-22 19:40:19', 'db_boot_base_20200322194019.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('17', '2020-03-22 19:43:34', '2020-03-22 19:43:34', 'db_boot_base_20200322194334.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('18', '2020-03-22 19:43:39', '2020-03-22 19:43:39', 'db_boot_base_20200322194339.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('20', '2020-03-22 19:43:49', '2020-03-22 19:43:49', 'db_boot_base_20200322194349.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('21', '2020-03-22 19:43:54', '2020-03-22 19:43:54', 'db_boot_base_20200322194354.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('23', '2020-03-22 19:44:04', '2020-03-22 19:44:04', 'db_boot_base_20200322194404.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('24', '2020-03-22 19:44:09', '2020-03-22 19:44:09', 'db_boot_base_20200322194409.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('25', '2020-03-22 19:44:14', '2020-03-22 19:44:14', 'db_boot_base_20200322194414.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('26', '2020-03-22 19:44:19', '2020-03-22 19:44:19', 'db_boot_base_20200322194419.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('27', '2020-03-22 19:44:24', '2020-03-22 19:44:24', 'db_boot_base_20200322194424.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('28', '2020-03-22 19:44:29', '2020-03-22 19:44:29', 'db_boot_base_20200322194429.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('29', '2020-03-22 19:44:34', '2020-03-22 19:44:34', 'db_boot_base_20200322194434.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('30', '2020-03-22 19:44:39', '2020-03-22 19:44:39', 'db_boot_base_20200322194439.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('31', '2020-03-23 17:46:49', '2020-03-23 17:46:49', 'db_boot_base_20200323174649.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');

-- ----------------------------
-- Table structure for ylrc_laber
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_laber`;
CREATE TABLE `ylrc_laber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_laber
-- ----------------------------
INSERT INTO `ylrc_laber` VALUES ('1', '2020-11-17 11:39:38', '2020-11-18 09:39:26', '科二项目11');
INSERT INTO `ylrc_laber` VALUES ('2', '2020-11-17 11:39:59', '2020-11-17 11:39:59', '倒车入库');
INSERT INTO `ylrc_laber` VALUES ('5', '2020-11-17 11:51:52', '2020-11-17 11:51:52', '学员');

-- ----------------------------
-- Table structure for ylrc_leave_word
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_leave_word`;
CREATE TABLE `ylrc_leave_word` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(255) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKshshjc2xotgh1r391kilsv44q` (`account_id`),
  CONSTRAINT `FKshshjc2xotgh1r391kilsv44q` FOREIGN KEY (`account_id`) REFERENCES `ylrc_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_leave_word
-- ----------------------------
INSERT INTO `ylrc_leave_word` VALUES ('3', '2020-11-17 15:38:16', '2020-11-17 15:38:16', 'asdf', '3');
INSERT INTO `ylrc_leave_word` VALUES ('4', '2020-11-18 10:09:19', '2020-11-18 10:09:19', '我', '6');
INSERT INTO `ylrc_leave_word` VALUES ('5', '2020-11-18 10:26:43', '2020-11-18 10:26:43', '.kjdhakjhd kjhkj hakj n', '6');
INSERT INTO `ylrc_leave_word` VALUES ('6', '2020-12-02 13:19:43', '2020-12-02 13:19:43', '123456', '6');

-- ----------------------------
-- Table structure for ylrc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_menu`;
CREATE TABLE `ylrc_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsbtnjocfrq29e8taxdwo21gic` (`parent_id`),
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_menu
-- ----------------------------
INSERT INTO `ylrc_menu` VALUES ('2', '2020-03-14 14:26:03', '2020-03-14 18:24:53', '系统设置', '', 'mdi-settings', '0', null, '\0', '');
INSERT INTO `ylrc_menu` VALUES ('3', '2020-03-14 16:58:55', '2020-11-10 15:13:28', '菜单管理', '/admin/menu/list', 'mdi-view-list', '1', '2', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('5', '2020-03-14 17:04:44', '2020-11-10 15:13:36', '新增', '/admin/menu/add', 'mdi-plus', '2', '3', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('7', '2020-03-14 17:07:43', '2020-03-15 12:11:25', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', '5', '2', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('8', '2020-03-14 18:28:48', '2020-11-10 15:13:44', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', '3', '3', '', '');
INSERT INTO `ylrc_menu` VALUES ('9', '2020-03-14 18:30:00', '2020-11-10 15:13:52', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', '4', '3', '', '');
INSERT INTO `ylrc_menu` VALUES ('10', '2020-03-15 12:12:00', '2020-03-15 12:12:00', '添加', '/admin/role/add', 'mdi-account-plus', '6', '7', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('11', '2020-03-15 12:12:36', '2020-03-21 22:10:45', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', '7', '7', '', '');
INSERT INTO `ylrc_menu` VALUES ('12', '2020-03-15 12:13:19', '2020-03-21 22:15:27', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', '8', '7', '', '');
INSERT INTO `ylrc_menu` VALUES ('13', '2020-03-15 12:14:52', '2020-03-15 12:17:00', '用户管理', '/admin/user/list', 'mdi-account-multiple', '9', '2', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('14', '2020-03-15 12:15:22', '2020-03-15 12:17:27', '添加', '/admin/user/add', 'mdi-account-plus', '10', '13', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('15', '2020-03-16 17:18:14', '2020-03-21 22:11:19', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', '11', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('16', '2020-03-16 17:19:01', '2020-03-21 22:15:36', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', '12', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('19', '2020-03-22 11:24:36', '2020-03-22 11:26:00', '上传图片', '/upload/upload_photo', 'mdi-arrow-up-bold-circle', '0', '13', '\0', '\0');
INSERT INTO `ylrc_menu` VALUES ('20', '2020-03-22 14:09:35', '2020-03-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', '13', '2', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('21', '2020-03-22 14:11:39', '2020-03-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', '14', '20', '', '');
INSERT INTO `ylrc_menu` VALUES ('22', '2020-03-22 14:12:57', '2020-03-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', '15', '20', '', '');
INSERT INTO `ylrc_menu` VALUES ('23', '2020-03-22 14:46:40', '2020-03-22 14:47:09', '数据备份', '/database_bak/list', 'mdi-database', '16', '2', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('24', '2020-03-22 14:48:07', '2020-03-22 15:13:41', '备份', 'add(\'/database_bak/add\')', 'mdi-database-plus', '17', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('25', '2020-03-22 14:49:03', '2020-03-22 14:49:03', '删除', 'del(\'/database_bak/delete\')', 'mdi-database-minus', '18', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('26', '2020-03-22 19:36:20', '2020-03-22 19:36:20', '还原', 'restore(\'/database_bak/restore\')', 'mdi-database-minus', '19', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('28', '2020-11-10 15:32:45', '2020-11-10 15:32:45', '驾校管理', '', 'mdi-steering', '20', null, '\0', '');
INSERT INTO `ylrc_menu` VALUES ('29', '2020-11-10 15:33:08', '2020-11-10 15:33:08', '课程列表', '/admin/course/list', 'mdi-book-open-variant', '21', '28', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('30', '2020-11-10 15:35:58', '2020-11-12 14:51:55', '新闻列表', '/admin/news/list', 'mdi-arrow-up-bold-circle', '0', '80', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('31', '2020-11-10 15:36:22', '2020-11-10 15:36:22', '添加', '/admin/news/add', 'mdi-battery-charging', '0', '30', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('32', '2020-11-10 15:36:54', '2020-11-10 15:36:54', '修改', 'edit(\'/admin/news/edit\')', 'mdi-bio', '0', '30', '', '');
INSERT INTO `ylrc_menu` VALUES ('33', '2020-11-10 15:37:16', '2020-11-10 15:37:16', '删除', 'del(\'/admin/news/delete\')', 'mdi-chart-scatterplot-hexbin', '0', '30', '', '');
INSERT INTO `ylrc_menu` VALUES ('34', '2020-11-10 15:41:30', '2020-11-12 14:48:03', '用户留言', '/admin/leave_word/list', 'mdi-apple-finder', '0', '67', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('35', '2020-11-10 15:41:54', '2020-11-10 16:59:24', '删除', 'del(\'/admin/leave_word/delete\')', 'mdi-arrow-right-thick', '0', '34', '', '');
INSERT INTO `ylrc_menu` VALUES ('43', '2020-11-10 15:49:40', '2020-11-12 14:52:43', '标签列表', '/admin/label/list', 'mdi-backburger', '0', '80', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('44', '2020-11-10 15:49:56', '2020-11-10 17:48:10', '添加', '/admin/label/add', 'mdi-calendar-blank', '0', '43', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('45', '2020-11-10 15:50:09', '2020-11-10 17:48:24', '修改', 'edit(\'/admin/label/edit\')', 'mdi-backspace', '0', '43', '', '');
INSERT INTO `ylrc_menu` VALUES ('46', '2020-11-10 15:50:28', '2020-11-10 15:50:28', '删除', 'del(\'/admin/label/delete\')', 'mdi-bell-off', '0', '43', '', '');
INSERT INTO `ylrc_menu` VALUES ('47', '2020-11-10 16:09:21', '2020-11-10 17:07:22', '教练类型管理', '/admin/coach_type/list', 'mdi-human-child', '0', '28', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('49', '2020-11-10 16:11:27', '2020-11-10 16:11:27', '添加', '/admin/coach_type/add', 'mdi-library-plus', '0', '47', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('50', '2020-11-10 16:12:03', '2020-11-10 16:12:03', '编辑', 'edit(\'/admin/coach_type/edit\')', 'mdi-pencil', '0', '47', '', '');
INSERT INTO `ylrc_menu` VALUES ('51', '2020-11-10 17:28:07', '2020-11-10 17:28:07', '教练管理', '/admin/coach/list', 'mdi-snapchat', '0', '28', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('52', '2020-11-10 17:32:44', '2020-11-10 17:40:29', '添加', '/admin/coach/add', 'mdi-download', '0', '51', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('53', '2020-11-10 17:33:20', '2020-11-10 17:33:38', '添加', '/admin/course/add', 'mdi-plus', '22', '29', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('55', '2020-11-10 17:34:19', '2020-11-10 17:34:19', '编辑', 'edit(\'/admin/coach/edit\')', 'mdi-upload', '0', '51', '', '');
INSERT INTO `ylrc_menu` VALUES ('56', '2020-11-10 17:34:55', '2020-11-10 17:34:55', '编辑', 'edit(\'/admin/course/edit\')', 'mdi-minus', '23', '29', '', '');
INSERT INTO `ylrc_menu` VALUES ('57', '2020-11-10 17:36:08', '2020-11-10 17:36:08', '删除', 'del(\'/admin/course/delete\')', 'mdi-close', '24', '29', '', '');
INSERT INTO `ylrc_menu` VALUES ('58', '2020-11-10 17:44:51', '2020-11-10 17:44:51', '图片上传', '/upload/upload_photo', 'mdi-star', '0', '51', '\0', '\0');
INSERT INTO `ylrc_menu` VALUES ('59', '2020-11-11 10:45:48', '2020-11-12 14:52:24', '推荐列表', '/admin/recommend/list', 'mdi-tag-heart', '0', '80', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('60', '2020-11-11 10:46:25', '2020-11-11 10:46:25', '添加', '/admin/recommend/add', 'mdi-eject', '0', '59', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('61', '2020-11-11 10:46:55', '2020-11-11 10:46:55', '编辑', 'edit(\'/admin/recommend/edit\')', 'mdi-eyedropper-variant', '0', '59', '', '');
INSERT INTO `ylrc_menu` VALUES ('62', '2020-11-11 10:47:35', '2020-11-11 10:58:14', '删除', 'del(\'/admin/recommend/delete\')', 'mdi-window-close', '0', '59', '', '');
INSERT INTO `ylrc_menu` VALUES ('63', '2020-11-11 13:22:22', '2020-11-12 14:53:06', '关于列表', '/admin/about_info/list', 'mdi-webhook', '0', '80', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('64', '2020-11-11 13:22:51', '2020-11-11 13:23:06', '添加', '/admin/about_info/add', 'mdi-clipboard-plus', '0', '63', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('65', '2020-11-11 13:23:37', '2020-11-11 13:23:37', '编辑', 'edit(\'/admin/about_info/edit\')', 'mdi-grease-pencil', '0', '63', '', '');
INSERT INTO `ylrc_menu` VALUES ('66', '2020-11-11 13:25:08', '2020-11-11 13:25:08', '删除', 'del(\'/admin/about_info/delete\')', 'mdi-window-close', '0', '63', '', '');
INSERT INTO `ylrc_menu` VALUES ('67', '2020-11-11 14:43:12', '2020-11-11 14:43:38', '用户管理', '', 'mdi-format-list-numbers', '0', null, '\0', '');
INSERT INTO `ylrc_menu` VALUES ('68', '2020-11-11 14:44:16', '2020-11-11 14:44:16', '用户列表', '/admin/account/list', 'mdi-vlc', '0', '67', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('69', '2020-11-11 14:46:09', '2020-11-11 14:46:09', '编辑', 'edit(\'/admin/account/edit\')', 'mdi-border-color', '0', '68', '', '');
INSERT INTO `ylrc_menu` VALUES ('70', '2020-11-11 14:47:13', '2020-11-11 14:47:13', '删除', 'del(\'/admin/account/delete\')', 'mdi-flash-off', '0', '68', '', '');
INSERT INTO `ylrc_menu` VALUES ('71', '2020-11-11 16:49:50', '2020-11-11 18:11:26', '增加', '/admin/leave_word/add', 'mdi-approval', '0', '34', '', '\0');
INSERT INTO `ylrc_menu` VALUES ('72', '2020-11-12 11:15:50', '2020-11-12 11:15:50', '成就管理', '/admin/achievement/list', 'mdi-keyboard-variant', '0', '28', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('73', '2020-11-12 13:32:59', '2020-11-12 13:32:59', '添加', '/admin/achievement/add', 'mdi-emoticon', '0', '72', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('74', '2020-11-12 13:33:26', '2020-11-12 13:33:26', '编辑', 'edit(\'/admin/achievement/edit\')', 'mdi-border-color', '0', '72', '', '');
INSERT INTO `ylrc_menu` VALUES ('75', '2020-11-12 13:33:56', '2020-11-12 13:33:56', '删除', 'del(\'/admin/achievement/delete\')', 'mdi-delete-empty', '0', '72', '', '');
INSERT INTO `ylrc_menu` VALUES ('76', '2020-11-12 14:41:06', '2020-11-12 14:44:08', '课程表列表', '/admin/clazz_schedule/list', 'mdi-application', '58', '28', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('77', '2020-11-12 14:42:00', '2020-11-12 14:44:18', '添加', '/admin/clazz_schedule/add', 'mdi-plus', '0', '76', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('78', '2020-11-12 14:43:13', '2020-11-12 17:23:59', '编辑', 'edit(\'/admin/clazz_schedule/edit\')', 'mdi-minus', '0', '76', '', '');
INSERT INTO `ylrc_menu` VALUES ('79', '2020-11-12 14:43:14', '2020-11-12 17:24:10', '删除', 'del(\'/admin/clazz_schedule/delete\')', 'mdi-close', '0', '76', '', '');
INSERT INTO `ylrc_menu` VALUES ('80', '2020-11-12 14:51:14', '2020-11-12 14:51:14', '新闻管理', '', 'mdi-arrow-up-bold-circle-outline', '0', null, '\0', '');
INSERT INTO `ylrc_menu` VALUES ('81', '2020-11-16 10:19:23', '2020-11-16 10:19:23', '图片库', '', 'mdi-creation', '0', null, '\0', '');
INSERT INTO `ylrc_menu` VALUES ('82', '2020-11-16 10:25:30', '2020-11-16 10:25:30', '图片管理', '/admin/picture/list', 'mdi-format-indent-decrease', '0', '81', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('84', '2020-11-16 10:34:49', '2020-11-16 10:34:49', '添加', '/admin/picture/add', 'mdi-magnify-plus-outline', '0', '82', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('86', '2020-11-16 11:41:37', '2020-11-16 11:41:47', '文件上传', '/upload/home_upload_photo', 'mdi-xda', '0', '82', '\0', '\0');
INSERT INTO `ylrc_menu` VALUES ('87', '2020-11-16 18:47:02', '2020-11-16 18:47:02', '用户评论', '/admin/comments/list', 'mdi-arrow-collapse-right', '0', '67', '\0', '');
INSERT INTO `ylrc_menu` VALUES ('88', '2020-11-16 18:47:26', '2020-11-16 18:47:26', '删除', 'del(\'/admin/comments/delete\')', 'mdi-airplane-takeoff', '0', '87', '', '');
INSERT INTO `ylrc_menu` VALUES ('89', '2020-11-20 15:13:31', '2020-11-20 15:13:31', '删除', 'del(\'/admin/coach_type/delete\')', 'mdi-wrench', '0', '47', '', '');
INSERT INTO `ylrc_menu` VALUES ('90', '2020-11-20 15:14:30', '2020-11-20 15:14:30', '删除', 'del(\'/admin/coach/delete\')', 'mdi-wrench', '0', '51', '', '');
INSERT INTO `ylrc_menu` VALUES ('91', '2020-11-20 15:17:36', '2020-11-20 15:22:10', '删除', 'del(\'/admin/picture/delete\')', 'mdi-wrench', '0', '82', '', '');

-- ----------------------------
-- Table structure for ylrc_news
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_news`;
CREATE TABLE `ylrc_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(6552) NOT NULL,
  `hits` bigint(20) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `label_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk5au2a7522u8ff5o4s4dhun09` (`label_id`),
  KEY `FKrcdii04n6c1vuhgtakpqynhg6` (`user_id`),
  CONSTRAINT `FKk5au2a7522u8ff5o4s4dhun09` FOREIGN KEY (`label_id`) REFERENCES `ylrc_laber` (`id`),
  CONSTRAINT `FKrcdii04n6c1vuhgtakpqynhg6` FOREIGN KEY (`user_id`) REFERENCES `ylrc_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_news
-- ----------------------------
INSERT INTO `ylrc_news` VALUES ('2', '2020-11-17 11:43:22', '2020-11-18 10:31:51', '上海市嘻哈是大数据量的拉伸克里夫打算离开房间上海市新闻出版系统驾驶员培训部，清廉的教风一直受到历届学员的好评，收费低于同行。本部培训、班车定点接送。开设业余班，每周六、日训练，不影响工作学习，学期二个月。 本部为上海出租汽车行业定向培训驾驶员，并能成为出租汽车公司的正式员工。给下岗职工创造再就业的良好机会。去新闻培训部学车、到出租汽车公司开车，是就业者明智的选择。本部提供开出租车、办理\"双证\"一条龙服务。本部上门办理培训报名手续。热忱欢迎本市和外省市各界人士前来报名培训学习，我们将竭存为您服务。....', '12', '20201117/1605591184102.jpg', '驾校培训', '2', '1');
INSERT INTO `ylrc_news` VALUES ('13', '2020-11-18 09:38:55', '2020-12-02 12:58:24', '打撒啊<span>打撒啊</span><span>打撒啊</span><span>打撒啊</span>打撒啊<span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span>打撒啊<span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span><span>打撒啊</span>打撒啊<span>打撒啊</span><span>打撒啊</span><span>打撒啊</span>', '5', '', '少时诵诗书', '5', '1');

-- ----------------------------
-- Table structure for ylrc_operater_log
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_operater_log`;
CREATE TABLE `ylrc_operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=930 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_operater_log
-- ----------------------------
INSERT INTO `ylrc_operater_log` VALUES ('173', '2020-03-22 14:58:14', '2020-03-22 14:58:14', '用户【猿来入此】于【2020-03-22 14:58:13】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('174', '2020-03-22 15:09:49', '2020-03-22 15:09:49', '用户【猿来入此】于【2020-03-22 15:09:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('175', '2020-03-22 15:11:09', '2020-03-22 15:11:09', '用户【猿来入此】于【2020-03-22 15:11:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('177', '2020-03-22 16:16:31', '2020-03-22 16:16:31', '用户【猿来入此】于【2020-03-22 16:16:31】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('178', '2020-03-22 16:31:23', '2020-03-22 16:31:23', '用户【猿来入此】于【2020-03-22 16:31:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('179', '2020-03-22 16:56:25', '2020-03-22 16:56:25', '用户【猿来入此】于【2020-03-22 16:56:25】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('180', '2020-03-22 17:00:42', '2020-03-22 17:00:42', '用户【猿来入此】于【2020-03-22 17:00:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('181', '2020-03-22 17:13:01', '2020-03-22 17:13:01', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('182', '2020-03-22 17:15:04', '2020-03-22 17:15:04', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171504.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('183', '2020-03-22 17:15:14', '2020-03-22 17:15:14', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171514.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('184', '2020-03-22 17:21:02', '2020-03-22 17:21:02', '用户【猿来入此】于【2020-03-22 17:21:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('185', '2020-03-22 17:21:15', '2020-03-22 17:21:15', '添加角色【dsadsasadsa】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('186', '2020-03-22 18:09:55', '2020-03-22 18:09:55', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('187', '2020-03-22 18:59:16', '2020-03-22 18:59:16', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322185916.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('188', '2020-03-22 18:59:41', '2020-03-22 18:59:41', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('189', '2020-03-22 19:12:03', '2020-03-22 19:12:03', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('190', '2020-03-22 19:12:59', '2020-03-22 19:12:59', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('191', '2020-03-22 19:35:07', '2020-03-22 19:35:07', '用户【猿来入此】于【2020-03-22 19:35:07】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('192', '2020-03-22 19:35:21', '2020-03-22 19:35:21', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193521.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('193', '2020-03-22 19:36:20', '2020-03-22 19:36:20', '添加菜单信息【Menu [name=还原, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=restore(\'/database_bak/restore\'), icon=mdi-database-minus, sort=19, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('194', '2020-03-22 19:36:34', '2020-03-22 19:36:34', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('195', '2020-03-22 19:36:47', '2020-03-22 19:36:47', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('196', '2020-03-22 19:37:21', '2020-03-22 19:37:21', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('197', '2020-03-22 19:37:54', '2020-03-22 19:37:54', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('198', '2020-03-22 19:38:15', '2020-03-22 19:38:15', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('199', '2020-03-22 19:43:34', '2020-03-22 19:43:34', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194334.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('200', '2020-03-22 19:43:39', '2020-03-22 19:43:39', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194339.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('201', '2020-03-22 19:43:44', '2020-03-22 19:43:44', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194344.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('202', '2020-03-22 19:43:49', '2020-03-22 19:43:49', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194349.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('203', '2020-03-22 19:43:52', '2020-03-22 19:43:52', '用户【猿来入此】于【2020-03-22 19:43:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('204', '2020-03-22 19:43:54', '2020-03-22 19:43:54', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194354.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('205', '2020-03-22 19:43:59', '2020-03-22 19:43:59', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194359.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('206', '2020-03-22 19:44:04', '2020-03-22 19:44:04', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194404.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('207', '2020-03-22 19:44:09', '2020-03-22 19:44:09', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194409.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('208', '2020-03-22 19:44:14', '2020-03-22 19:44:14', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194414.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('209', '2020-03-22 19:44:19', '2020-03-22 19:44:19', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194419.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('210', '2020-03-22 19:44:24', '2020-03-22 19:44:24', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194424.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('211', '2020-03-22 19:44:29', '2020-03-22 19:44:29', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194429.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('212', '2020-03-22 19:44:34', '2020-03-22 19:44:34', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194434.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('213', '2020-03-22 19:44:39', '2020-03-22 19:44:39', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194439.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('214', '2020-03-22 21:11:19', '2020-03-22 21:11:19', '用户【猿来入此】于【2020-03-22 21:11:19】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('215', '2020-03-22 21:18:12', '2020-03-22 21:18:12', '用户【猿来入此】于【2020-03-22 21:18:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('216', '2020-03-22 21:36:47', '2020-03-22 21:36:47', '用户【猿来入此】于【2020-03-22 21:36:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('217', '2020-03-22 21:43:51', '2020-03-22 21:43:51', '用户【猿来入此】于【2020-03-22 21:43:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('218', '2020-03-23 17:41:23', '2020-03-23 17:41:23', '用户【猿来入此】于【2020-03-23 17:41:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('219', '2020-03-23 17:41:49', '2020-03-23 17:41:49', '添加菜单信息【Menu [name=sdadsa递四方速递, parent=null, url=https://www.yuanlrc.com/, icon=mdi-alarm-snooze, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('220', '2020-03-23 17:42:02', '2020-03-23 17:42:02', '编辑菜单信息【Menu [name=sdadsa递四方速递, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=https://www.yuanlrc.com/, icon=mdi-alarm-snooze, sort=3, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('221', '2020-03-23 17:42:09', '2020-03-23 17:42:09', '删除菜单信息，菜单ID【27】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('222', '2020-03-23 17:42:32', '2020-03-23 17:42:32', '编辑角色【sdfds水电费多少】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('223', '2020-03-23 17:42:45', '2020-03-23 17:42:45', '编辑角色【sdfds水电费多少】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('224', '2020-03-23 17:42:56', '2020-03-23 17:42:56', '删除角色ID【7】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('225', '2020-03-23 17:43:16', '2020-03-23 17:43:16', '添加角色【撒旦撒】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('226', '2020-03-23 17:43:29', '2020-03-23 17:43:29', '删除角色ID【8】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('227', '2020-03-23 17:44:11', '2020-03-23 17:44:11', '添加用户，用户名：打撒大撒', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('228', '2020-03-23 17:44:29', '2020-03-23 17:44:29', '编辑用户，用户名：打撒大撒22', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('229', '2020-03-23 17:44:37', '2020-03-23 17:44:37', '添加用户，用户ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('230', '2020-03-23 17:44:55', '2020-03-23 17:44:55', '添加用户，用户ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('231', '2020-03-23 17:45:47', '2020-03-23 17:45:47', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('232', '2020-03-23 17:46:49', '2020-03-23 17:46:49', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200323174649.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('233', '2020-03-23 17:47:16', '2020-03-23 17:47:16', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200323174649.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('234', '2020-03-23 17:48:15', '2020-03-23 17:48:15', '用户【测试账号】于【2020-03-23 17:48:15】登录系统！', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('235', '2020-03-23 17:49:00', '2020-03-23 17:49:00', '编辑角色【测试角色】', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('236', '2020-03-23 17:49:50', '2020-03-23 17:49:50', '用户【猿来入此】于【2020-03-23 17:49:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('237', '2020-03-23 17:50:03', '2020-03-23 17:50:03', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('238', '2020-03-23 17:50:19', '2020-03-23 17:50:19', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('239', '2020-03-23 17:50:56', '2020-03-23 17:50:56', '用户【猿来入此】于【2020-03-23 17:50:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('240', '2020-11-10 15:11:43', '2020-11-10 15:11:43', '用户【猿来入此】于【2020-11-10 15:11:43】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('241', '2020-11-10 15:11:55', '2020-11-10 15:11:55', '用户【猿来入此】于【2020-11-10 15:11:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('242', '2020-11-10 15:13:21', '2020-11-10 15:13:21', '用户【猿来入此】于【2020-11-10 15:13:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('243', '2020-11-10 15:13:28', '2020-11-10 15:13:28', '编辑菜单信息【Menu [name=菜单管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=admin/menu/list, icon=mdi-view-list, sort=1, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('244', '2020-11-10 15:13:36', '2020-11-10 15:13:36', '编辑菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=admin/menu/add, icon=mdi-plus, sort=2, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('245', '2020-11-10 15:13:44', '2020-11-10 15:13:44', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'admin/menu/edit\'), icon=mdi-grease-pencil, sort=3, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('246', '2020-11-10 15:13:52', '2020-11-10 15:13:52', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/menu/delete\'), icon=mdi-close, sort=4, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('247', '2020-11-10 15:14:25', '2020-11-10 15:14:25', '用户【猿来入此】于【2020-11-10 15:14:25】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('248', '2020-11-10 15:15:00', '2020-11-10 15:15:00', '用户【猿来入此】于【2020-11-10 15:15:00】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('249', '2020-11-10 15:17:14', '2020-11-10 15:17:14', '用户【猿来入此】于【2020-11-10 15:17:14】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('250', '2020-11-10 15:19:06', '2020-11-10 15:19:06', '用户【猿来入此】于【2020-11-10 15:19:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('251', '2020-11-10 15:21:22', '2020-11-10 15:21:22', '用户【猿来入此】于【2020-11-10 15:21:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('252', '2020-11-10 15:25:18', '2020-11-10 15:25:18', '用户【猿来入此】于【2020-11-10 15:25:18】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('253', '2020-11-10 15:28:55', '2020-11-10 15:28:55', '用户【猿来入此】于【2020-11-10 15:28:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('254', '2020-11-10 15:30:11', '2020-11-10 15:30:11', '用户【猿来入此】于【2020-11-10 15:30:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('255', '2020-11-10 15:30:52', '2020-11-10 15:30:52', '用户【猿来入此】于【2020-11-10 15:30:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('256', '2020-11-10 15:32:45', '2020-11-10 15:32:45', '添加菜单信息【Menu [name=驾校管理, parent=null, url=, icon=mdi-steering, sort=20, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('257', '2020-11-10 15:33:08', '2020-11-10 15:33:08', '添加菜单信息【Menu [name=课程列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/course/list, icon=mdi-book-open-variant, sort=21, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('258', '2020-11-10 15:33:13', '2020-11-10 15:33:13', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('259', '2020-11-10 15:33:21', '2020-11-10 15:33:21', '用户【猿来入此】于【2020-11-10 15:33:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('260', '2020-11-10 15:35:25', '2020-11-10 15:35:25', '用户【猿来入此】于【2020-11-10 15:35:25】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('261', '2020-11-10 15:35:58', '2020-11-10 15:35:58', '添加菜单信息【Menu [name=新闻列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/news/list, icon=mdi-arrow-up-bold-circle, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('262', '2020-11-10 15:36:22', '2020-11-10 15:36:22', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/news/add, icon=mdi-battery-charging, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('263', '2020-11-10 15:36:54', '2020-11-10 15:36:54', '添加菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/news/edit\'), icon=mdi-bio, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('264', '2020-11-10 15:37:11', '2020-11-10 15:37:11', '用户【猿来入此】于【2020-11-10 15:37:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('265', '2020-11-10 15:37:17', '2020-11-10 15:37:17', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/news/delete\'), icon=mdi-chart-scatterplot-hexbin, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('266', '2020-11-10 15:41:30', '2020-11-10 15:41:30', '添加菜单信息【Menu [name=用户联系, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/contact/list, icon=mdi-apple-finder, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('267', '2020-11-10 15:41:54', '2020-11-10 15:41:54', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/contact/delete\'), icon=mdi-arrow-right-thick, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('268', '2020-11-10 15:44:48', '2020-11-10 15:44:48', '添加菜单信息【Menu [name=用户留言, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/leaveWord/list, icon=mdi-calendar-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('269', '2020-11-10 15:45:38', '2020-11-10 15:45:38', '添加菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/leaveWord/edit\'), icon=mdi-flag-outline-variant, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('270', '2020-11-10 15:45:57', '2020-11-10 15:45:57', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/leaveWord/delete\'), icon=mdi-circle-outline, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('271', '2020-11-10 15:46:44', '2020-11-10 15:46:44', '添加菜单信息【Menu [name=留言回复, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/reply/list, icon=mdi-camera-rear, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('272', '2020-11-10 15:47:39', '2020-11-10 15:47:39', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/reply/add, icon=mdi-content-copy, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('273', '2020-11-10 15:48:07', '2020-11-10 15:48:07', '添加菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/reply/edit\'), icon=mdi-human-handsup, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('274', '2020-11-10 15:48:23', '2020-11-10 15:48:23', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/reply/delete\'), icon=mdi-cash-multiple, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('275', '2020-11-10 15:49:40', '2020-11-10 15:49:40', '添加菜单信息【Menu [name=标签, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/label/list, icon=mdi-backburger, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('276', '2020-11-10 15:49:56', '2020-11-10 15:49:56', '添加菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/label/edit\'), icon=mdi-calendar-blank, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('277', '2020-11-10 15:50:09', '2020-11-10 15:50:09', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/label/add, icon=mdi-backspace, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('278', '2020-11-10 15:50:28', '2020-11-10 15:50:28', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/label/delete\'), icon=mdi-bell-off, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('279', '2020-11-10 15:50:56', '2020-11-10 15:50:56', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('280', '2020-11-10 15:51:06', '2020-11-10 15:51:06', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('281', '2020-11-10 15:52:06', '2020-11-10 15:52:06', '用户【猿来入此】于【2020-11-10 15:52:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('282', '2020-11-10 15:56:50', '2020-11-10 15:56:50', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/comments/delete\'), icon=mdi-circle-outline, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('283', '2020-11-10 15:57:02', '2020-11-10 15:57:02', '编辑菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/comments/edit\'), icon=mdi-flag-outline-variant, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('284', '2020-11-10 15:57:25', '2020-11-10 15:57:25', '编辑菜单信息【Menu [name=用户新闻评论, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/comments/list, icon=mdi-calendar-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('285', '2020-11-10 16:08:31', '2020-11-10 16:08:31', '用户【猿来入此】于【2020-11-10 16:08:31】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('286', '2020-11-10 16:09:21', '2020-11-10 16:09:21', '添加菜单信息【Menu [name=教练管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/coach_type/list, icon=mdi-human-child, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('287', '2020-11-10 16:10:05', '2020-11-10 16:10:05', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/coach_type/delete\'), icon=mdi-delete-empty, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('288', '2020-11-10 16:10:16', '2020-11-10 16:10:16', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/coach_type/delete\'), icon=mdi-delete-empty, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('289', '2020-11-10 16:10:34', '2020-11-10 16:10:34', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('290', '2020-11-10 16:10:45', '2020-11-10 16:10:45', '用户【猿来入此】于【2020-11-10 16:10:45】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('291', '2020-11-10 16:11:28', '2020-11-10 16:11:28', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/coach_type/add, icon=mdi-library-plus, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('292', '2020-11-10 16:12:03', '2020-11-10 16:12:03', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/coach_type/edit\'), icon=mdi-pencil, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('293', '2020-11-10 16:12:14', '2020-11-10 16:12:14', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('294', '2020-11-10 16:13:40', '2020-11-10 16:13:40', '用户【猿来入此】于【2020-11-10 16:13:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('295', '2020-11-10 16:38:42', '2020-11-10 16:38:42', '用户类型添加成功:总教练1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('296', '2020-11-10 16:38:46', '2020-11-10 16:38:46', '删除成功教练类型id:5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('297', '2020-11-10 16:39:09', '2020-11-10 16:39:09', '用户类型添加成功:总教练1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('298', '2020-11-10 16:51:58', '2020-11-10 16:51:58', '用户【猿来入此】于【2020-11-10 16:51:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('299', '2020-11-10 16:52:11', '2020-11-10 16:52:11', '用户类型添加成功:添加', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('300', '2020-11-10 16:52:58', '2020-11-10 16:52:58', '用户类型添加成功:添加1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('301', '2020-11-10 16:53:03', '2020-11-10 16:53:03', '删除成功教练类型id:2', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('302', '2020-11-10 16:55:29', '2020-11-10 16:55:29', '用户【猿来入此】于【2020-11-10 16:55:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('303', '2020-11-10 16:55:50', '2020-11-10 16:55:50', '用户【猿来入此】于【2020-11-10 16:55:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('304', '2020-11-10 16:56:21', '2020-11-10 16:56:21', '编辑菜单信息【Menu [name=用户评论回复, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/reply/list, icon=mdi-camera-rear, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('305', '2020-11-10 16:57:10', '2020-11-10 16:57:10', '编辑菜单信息【Menu [name=用户留言, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/leaveWord/list, icon=mdi-apple-finder, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('306', '2020-11-10 16:57:22', '2020-11-10 16:57:22', '用户【猿来入此】于【2020-11-10 16:57:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('307', '2020-11-10 16:57:22', '2020-11-10 16:57:22', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/leaveWord/delete\'), icon=mdi-arrow-right-thick, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('308', '2020-11-10 16:57:29', '2020-11-10 16:57:29', '用户【猿来入此】于【2020-11-10 16:57:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('309', '2020-11-10 16:59:07', '2020-11-10 16:59:07', '编辑菜单信息【Menu [name=用户留言, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/leave_word/list, icon=mdi-apple-finder, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('310', '2020-11-10 16:59:16', '2020-11-10 16:59:16', '用户【猿来入此】于【2020-11-10 16:59:16】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('311', '2020-11-10 16:59:24', '2020-11-10 16:59:24', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/leave_word/delete\'), icon=mdi-arrow-right-thick, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('312', '2020-11-10 17:01:04', '2020-11-10 17:01:04', '用户【猿来入此】于【2020-11-10 17:01:04】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('313', '2020-11-10 17:01:17', '2020-11-10 17:01:17', '删除成功教练类型id:1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('314', '2020-11-10 17:01:24', '2020-11-10 17:01:24', '用户类型添加成功:总教练', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('315', '2020-11-10 17:07:22', '2020-11-10 17:07:22', '编辑菜单信息【Menu [name=教练类型管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/coach_type/list, icon=mdi-human-child, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('316', '2020-11-10 17:10:35', '2020-11-10 17:10:35', '用户【猿来入此】于【2020-11-10 17:10:35】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('317', '2020-11-10 17:10:44', '2020-11-10 17:10:44', '用户类型编辑成功:总教练1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('318', '2020-11-10 17:10:55', '2020-11-10 17:10:55', '用户类型添加成功:总教练', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('319', '2020-11-10 17:17:52', '2020-11-10 17:17:52', '用户【猿来入此】于【2020-11-10 17:17:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('320', '2020-11-10 17:28:07', '2020-11-10 17:28:07', '添加菜单信息【Menu [name=教练管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/coach/list, icon=mdi-snapchat, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('321', '2020-11-10 17:28:16', '2020-11-10 17:28:16', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('322', '2020-11-10 17:28:26', '2020-11-10 17:28:26', '用户【猿来入此】于【2020-11-10 17:28:26】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('323', '2020-11-10 17:31:05', '2020-11-10 17:31:05', '用户【猿来入此】于【2020-11-10 17:31:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('324', '2020-11-10 17:32:43', '2020-11-10 17:32:43', '用户【猿来入此】于【2020-11-10 17:32:43】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('325', '2020-11-10 17:32:44', '2020-11-10 17:32:44', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/coach/add, icon=mdi-download, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('326', '2020-11-10 17:33:20', '2020-11-10 17:33:20', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/course/add, icon=mdi-plus, sort=21, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('327', '2020-11-10 17:33:24', '2020-11-10 17:33:24', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/coach/delete\'), icon=mdi-email-open, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('328', '2020-11-10 17:33:38', '2020-11-10 17:33:38', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/course/add, icon=mdi-plus, sort=22, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('329', '2020-11-10 17:34:19', '2020-11-10 17:34:19', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/coach/edit\'), icon=mdi-upload, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('330', '2020-11-10 17:34:34', '2020-11-10 17:34:34', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('331', '2020-11-10 17:34:55', '2020-11-10 17:34:55', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/course/edit\'), icon=mdi-minus, sort=23, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('332', '2020-11-10 17:36:09', '2020-11-10 17:36:09', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/course/delete\'), icon=mdi-close, sort=24, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('333', '2020-11-10 17:36:27', '2020-11-10 17:36:27', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('334', '2020-11-10 17:36:35', '2020-11-10 17:36:35', '用户【猿来入此】于【2020-11-10 17:36:35】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('335', '2020-11-10 17:37:52', '2020-11-10 17:37:52', '用户【猿来入此】于【2020-11-10 17:37:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('336', '2020-11-10 17:40:29', '2020-11-10 17:40:29', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/coach/add, icon=mdi-download, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('337', '2020-11-10 17:42:23', '2020-11-10 17:42:23', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('338', '2020-11-10 17:42:47', '2020-11-10 17:42:47', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('339', '2020-11-10 17:44:51', '2020-11-10 17:44:51', '添加菜单信息【Menu [name=图片上传, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/upload_photo, icon=mdi-star, sort=0, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('340', '2020-11-10 17:46:32', '2020-11-10 17:46:32', '用户【猿来入此】于【2020-11-10 17:46:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('341', '2020-11-10 17:47:15', '2020-11-10 17:47:15', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/label/add, icon=mdi-calendar-blank, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('342', '2020-11-10 17:47:39', '2020-11-10 17:47:39', '编辑菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/label/edit\'), icon=mdi-backspace, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('343', '2020-11-10 17:47:47', '2020-11-10 17:47:47', '用户【猿来入此】于【2020-11-10 17:47:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('344', '2020-11-10 17:48:10', '2020-11-10 17:48:10', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/label/add, icon=mdi-calendar-blank, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('345', '2020-11-10 17:48:24', '2020-11-10 17:48:24', '编辑菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/label/edit\'), icon=mdi-backspace, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('346', '2020-11-10 17:48:30', '2020-11-10 17:48:30', '用户【猿来入此】于【2020-11-10 17:48:30】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('347', '2020-11-10 17:49:30', '2020-11-10 17:49:30', '添加分类标签，分类标签名：侧方停车', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('348', '2020-11-10 17:49:44', '2020-11-10 17:49:44', '添加分类标签，分类标签名：倒车入库', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('349', '2020-11-10 17:50:29', '2020-11-10 17:50:29', '编辑分类标签，分类标签名：s弯', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('350', '2020-11-10 17:50:35', '2020-11-10 17:50:35', '添加分类标签，分类标签ID：2', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('351', '2020-11-10 17:50:42', '2020-11-10 17:50:42', '添加分类标签，分类标签名：倒车入库', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('352', '2020-11-10 17:52:38', '2020-11-10 17:52:38', '用户【猿来入此】于【2020-11-10 17:52:38】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('353', '2020-11-10 17:54:32', '2020-11-10 17:54:32', '用户【猿来入此】于【2020-11-10 17:54:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('354', '2020-11-10 17:57:39', '2020-11-10 17:57:39', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('355', '2020-11-10 17:57:50', '2020-11-10 17:57:50', '用户【猿来入此】于【2020-11-10 17:57:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('356', '2020-11-10 18:04:24', '2020-11-10 18:04:24', '用户【猿来入此】于【2020-11-10 18:04:24】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('357', '2020-11-10 18:32:53', '2020-11-10 18:32:53', '用户【猿来入此】于【2020-11-10 18:32:53】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('358', '2020-11-10 18:32:53', '2020-11-10 18:32:53', '用户【猿来入此】于【2020-11-10 18:32:53】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('359', '2020-11-11 09:04:20', '2020-11-11 09:04:20', '用户【猿来入此】于【2020-11-11 09:04:20】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('360', '2020-11-11 09:04:37', '2020-11-11 09:04:37', '用户【猿来入此】于【2020-11-11 09:04:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('361', '2020-11-11 09:12:25', '2020-11-11 09:12:25', '用户类型编辑成功:驾驶员教练', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('362', '2020-11-11 09:13:11', '2020-11-11 09:13:11', '用户类型添加成功:驾驶员讲师', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('363', '2020-11-11 09:19:31', '2020-11-11 09:19:31', '用户【猿来入此】于【2020-11-11 09:19:31】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('364', '2020-11-11 09:47:20', '2020-11-11 09:47:20', '用户【猿来入此】于【2020-11-11 09:47:20】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('365', '2020-11-11 09:49:31', '2020-11-11 09:49:31', '用户【猿来入此】于【2020-11-11 09:49:31】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('366', '2020-11-11 09:51:21', '2020-11-11 09:51:21', '用户【猿来入此】于【2020-11-11 09:51:20】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('367', '2020-11-11 09:52:50', '2020-11-11 09:52:50', '用户【猿来入此】于【2020-11-11 09:52:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('368', '2020-11-11 09:52:50', '2020-11-11 09:52:50', '教练添加成功:Mr.Jack', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('369', '2020-11-11 09:55:43', '2020-11-11 09:55:43', '用户【猿来入此】于【2020-11-11 09:55:43】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('370', '2020-11-11 09:57:54', '2020-11-11 09:57:54', '用户【猿来入此】于【2020-11-11 09:57:54】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('371', '2020-11-11 10:00:08', '2020-11-11 10:00:08', '用户【猿来入此】于【2020-11-11 10:00:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('372', '2020-11-11 10:02:59', '2020-11-11 10:02:59', '用户【猿来入此】于【2020-11-11 10:02:59】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('373', '2020-11-11 10:03:50', '2020-11-11 10:03:50', '用户【猿来入此】于【2020-11-11 10:03:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('374', '2020-11-11 10:04:25', '2020-11-11 10:04:25', '教练编辑成功:Mr.Changes', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('375', '2020-11-11 10:06:26', '2020-11-11 10:06:26', '用户【猿来入此】于【2020-11-11 10:06:26】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('376', '2020-11-11 10:10:19', '2020-11-11 10:10:19', '用户【猿来入此】于【2020-11-11 10:10:19】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('377', '2020-11-11 10:11:07', '2020-11-11 10:11:07', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('378', '2020-11-11 10:16:02', '2020-11-11 10:16:02', '用户【猿来入此】于【2020-11-11 10:16:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('379', '2020-11-11 10:16:18', '2020-11-11 10:16:18', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('380', '2020-11-11 10:17:27', '2020-11-11 10:17:27', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('381', '2020-11-11 10:17:35', '2020-11-11 10:17:35', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('382', '2020-11-11 10:17:42', '2020-11-11 10:17:42', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('383', '2020-11-11 10:17:50', '2020-11-11 10:17:50', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('384', '2020-11-11 10:24:22', '2020-11-11 10:24:22', '用户【猿来入此】于【2020-11-11 10:24:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('385', '2020-11-11 10:29:50', '2020-11-11 10:29:50', '用户【猿来入此】于【2020-11-11 10:29:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('386', '2020-11-11 10:45:48', '2020-11-11 10:45:48', '添加菜单信息【Menu [name=推荐管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/recommend/list, icon=mdi-tag-heart, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('387', '2020-11-11 10:46:25', '2020-11-11 10:46:25', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/recommend/add, icon=mdi-eject, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('388', '2020-11-11 10:46:40', '2020-11-11 10:46:40', '用户【猿来入此】于【2020-11-11 10:46:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('389', '2020-11-11 10:46:55', '2020-11-11 10:46:55', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/recommend/edit\'), icon=mdi-eyedropper-variant, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('390', '2020-11-11 10:47:35', '2020-11-11 10:47:35', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/recommend/delete\'), icon=mdi-window-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('391', '2020-11-11 10:47:46', '2020-11-11 10:47:46', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('392', '2020-11-11 10:47:58', '2020-11-11 10:47:58', '用户【猿来入此】于【2020-11-11 10:47:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('393', '2020-11-11 10:52:11', '2020-11-11 10:52:11', '用户【猿来入此】于【2020-11-11 10:52:10】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('394', '2020-11-11 10:56:43', '2020-11-11 10:56:43', '用户【猿来入此】于【2020-11-11 10:56:43】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('395', '2020-11-11 10:58:14', '2020-11-11 10:58:14', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/recommend/delete\'), icon=mdi-window-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('396', '2020-11-11 10:58:27', '2020-11-11 10:58:27', '用户【猿来入此】于【2020-11-11 10:58:27】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('397', '2020-11-11 11:00:42', '2020-11-11 11:00:42', '用户【猿来入此】于【2020-11-11 11:00:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('398', '2020-11-11 11:04:46', '2020-11-11 11:04:46', '用户【猿来入此】于【2020-11-11 11:04:46】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('399', '2020-11-11 11:07:47', '2020-11-11 11:07:47', '教练添加成功:Kai', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('400', '2020-11-11 11:07:54', '2020-11-11 11:07:54', '教练编辑成功:Kai', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('401', '2020-11-11 11:08:10', '2020-11-11 11:08:10', '用户【猿来入此】于【2020-11-11 11:08:10】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('402', '2020-11-11 11:11:32', '2020-11-11 11:11:32', '用户【猿来入此】于【2020-11-11 11:11:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('403', '2020-11-11 11:12:05', '2020-11-11 11:12:05', '用户【猿来入此】于【2020-11-11 11:12:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('404', '2020-11-11 11:19:11', '2020-11-11 11:19:11', '用户【猿来入此】于【2020-11-11 11:19:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('405', '2020-11-11 11:23:01', '2020-11-11 11:23:01', '用户【猿来入此】于【2020-11-11 11:23:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('406', '2020-11-11 11:23:55', '2020-11-11 11:23:55', '用户【猿来入此】于【2020-11-11 11:23:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('407', '2020-11-11 11:26:11', '2020-11-11 11:26:11', '用户【猿来入此】于【2020-11-11 11:26:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('408', '2020-11-11 11:29:28', '2020-11-11 11:29:28', '用户【猿来入此】于【2020-11-11 11:29:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('409', '2020-11-11 11:29:34', '2020-11-11 11:29:34', '用户【猿来入此】于【2020-11-11 11:29:34】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('410', '2020-11-11 11:31:34', '2020-11-11 11:31:34', '用户【猿来入此】于【2020-11-11 11:31:34】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('411', '2020-11-11 11:34:56', '2020-11-11 11:34:56', '用户【猿来入此】于【2020-11-11 11:34:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('412', '2020-11-11 11:37:16', '2020-11-11 11:37:16', '用户【猿来入此】于【2020-11-11 11:37:16】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('413', '2020-11-11 11:37:28', '2020-11-11 11:37:28', '添加新闻，新闻标题：ssssssssssssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('414', '2020-11-11 11:37:58', '2020-11-11 11:37:58', '用户【猿来入此】于【2020-11-11 11:37:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('415', '2020-11-11 12:08:06', '2020-11-11 12:08:06', '添加新闻，新闻标题：111', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('416', '2020-11-11 13:04:21', '2020-11-11 13:04:21', '用户【猿来入此】于【2020-11-11 13:04:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('417', '2020-11-11 13:06:05', '2020-11-11 13:06:05', '添加新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('418', '2020-11-11 13:08:24', '2020-11-11 13:08:24', '添加新闻，新闻标题：tttt', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('419', '2020-11-11 13:10:20', '2020-11-11 13:10:20', '用户【猿来入此】于【2020-11-11 13:10:20】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('420', '2020-11-11 13:14:35', '2020-11-11 13:14:35', '用户【猿来入此】于【2020-11-11 13:14:35】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('421', '2020-11-11 13:14:57', '2020-11-11 13:14:57', '添加新闻，新闻标题：ssssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('422', '2020-11-11 13:19:44', '2020-11-11 13:19:44', '用户【猿来入此】于【2020-11-11 13:19:44】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('423', '2020-11-11 13:22:22', '2020-11-11 13:22:22', '添加菜单信息【Menu [name=关于信息, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/about_info/list, icon=mdi-webhook, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('424', '2020-11-11 13:22:51', '2020-11-11 13:22:51', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/about_info/add, icon=mdi-clipboard-plus, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('425', '2020-11-11 13:23:06', '2020-11-11 13:23:06', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/about_info/add, icon=mdi-clipboard-plus, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('426', '2020-11-11 13:23:22', '2020-11-11 13:23:22', '用户【猿来入此】于【2020-11-11 13:23:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('427', '2020-11-11 13:23:31', '2020-11-11 13:23:31', '添加新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('428', '2020-11-11 13:23:37', '2020-11-11 13:23:37', '编辑新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('429', '2020-11-11 13:23:37', '2020-11-11 13:23:37', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/about_info/edit\'), icon=mdi-grease-pencil, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('430', '2020-11-11 13:23:53', '2020-11-11 13:23:53', '编辑新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('431', '2020-11-11 13:23:58', '2020-11-11 13:23:58', '添加新闻，新闻ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('432', '2020-11-11 13:24:02', '2020-11-11 13:24:02', '添加新闻，新闻ID：5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('433', '2020-11-11 13:25:08', '2020-11-11 13:25:08', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/about_info/delete\'), icon=mdi-window-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('434', '2020-11-11 13:32:08', '2020-11-11 13:32:08', '用户【猿来入此】于【2020-11-11 13:32:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('435', '2020-11-11 13:32:40', '2020-11-11 13:32:40', '用户【猿来入此】于【2020-11-11 13:32:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('436', '2020-11-11 13:32:58', '2020-11-11 13:32:58', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('437', '2020-11-11 13:33:11', '2020-11-11 13:33:11', '用户【猿来入此】于【2020-11-11 13:33:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('438', '2020-11-11 13:41:44', '2020-11-11 13:41:44', '用户【猿来入此】于【2020-11-11 13:41:44】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('439', '2020-11-11 13:51:09', '2020-11-11 13:51:09', '用户【猿来入此】于【2020-11-11 13:51:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('440', '2020-11-11 13:54:21', '2020-11-11 13:54:21', '用户【猿来入此】于【2020-11-11 13:54:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('441', '2020-11-11 13:57:33', '2020-11-11 13:57:33', '用户【猿来入此】于【2020-11-11 13:57:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('442', '2020-11-11 14:11:04', '2020-11-11 14:11:04', '用户【猿来入此】于【2020-11-11 14:11:04】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('443', '2020-11-11 14:12:40', '2020-11-11 14:12:40', '用户【猿来入此】于【2020-11-11 14:12:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('444', '2020-11-11 14:13:41', '2020-11-11 14:13:41', '添加课程，课程标题：驾驶基础I', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('445', '2020-11-11 14:14:56', '2020-11-11 14:14:56', '用户【猿来入此】于【2020-11-11 14:14:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('446', '2020-11-11 14:42:16', '2020-11-11 14:42:16', '用户【猿来入此】于【2020-11-11 14:42:16】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('447', '2020-11-11 14:43:12', '2020-11-11 14:43:12', '添加菜单信息【Menu [name=用户管理, parent=null, url=/admin/account/list, icon=mdi-format-list-numbers, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('448', '2020-11-11 14:43:38', '2020-11-11 14:43:38', '编辑菜单信息【Menu [name=用户管理, parent=null, url=, icon=mdi-format-list-numbers, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('449', '2020-11-11 14:44:16', '2020-11-11 14:44:16', '添加菜单信息【Menu [name=用户列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/account/list, icon=mdi-vlc, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('450', '2020-11-11 14:45:05', '2020-11-11 14:45:05', '用户【猿来入此】于【2020-11-11 14:45:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('451', '2020-11-11 14:46:10', '2020-11-11 14:46:10', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/account/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('452', '2020-11-11 14:47:13', '2020-11-11 14:47:13', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/account/delete\'), icon=mdi-flash-off, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('453', '2020-11-11 14:47:24', '2020-11-11 14:47:24', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('454', '2020-11-11 14:48:18', '2020-11-11 14:48:18', '用户【猿来入此】于【2020-11-11 14:48:18】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('455', '2020-11-11 14:50:55', '2020-11-11 14:50:55', '用户【猿来入此】于【2020-11-11 14:50:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('456', '2020-11-11 14:53:55', '2020-11-11 14:53:55', '编辑前台用户，前台用户名：Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('457', '2020-11-11 14:54:12', '2020-11-11 14:54:12', '编辑前台用户，前台用户名：Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('458', '2020-11-11 14:54:38', '2020-11-11 14:54:38', '编辑前台用户，前台用户名：Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('459', '2020-11-11 14:56:02', '2020-11-11 14:56:02', '用户【猿来入此】于【2020-11-11 14:56:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('460', '2020-11-11 14:56:38', '2020-11-11 14:56:38', '编辑前台用户，前台用户名：Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('461', '2020-11-11 14:57:11', '2020-11-11 14:57:11', '用户【猿来入此】于【2020-11-11 14:57:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('462', '2020-11-11 14:57:27', '2020-11-11 14:57:27', '教练添加成功:添加', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('463', '2020-11-11 14:58:45', '2020-11-11 14:58:45', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('464', '2020-11-11 14:59:04', '2020-11-11 14:59:04', '删除菜单信息，菜单ID【37】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('465', '2020-11-11 14:59:17', '2020-11-11 14:59:17', '编辑菜单信息【Menu [name=用户评论, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/comments/list, icon=mdi-calendar-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('466', '2020-11-11 14:59:32', '2020-11-11 14:59:32', '用户【猿来入此】于【2020-11-11 14:59:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('467', '2020-11-11 15:00:37', '2020-11-11 15:00:37', '用户【猿来入此】于【2020-11-11 15:00:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('468', '2020-11-11 15:04:15', '2020-11-11 15:04:15', '用户【猿来入此】于【2020-11-11 15:04:15】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('469', '2020-11-11 15:06:10', '2020-11-11 15:06:10', '用户【猿来入此】于【2020-11-11 15:06:10】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('470', '2020-11-11 15:07:56', '2020-11-11 15:07:56', '用户【猿来入此】于【2020-11-11 15:07:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('471', '2020-11-11 15:09:35', '2020-11-11 15:09:35', '用户【猿来入此】于【2020-11-11 15:09:35】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('472', '2020-11-11 15:11:02', '2020-11-11 15:11:02', '用户【猿来入此】于【2020-11-11 15:11:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('473', '2020-11-11 15:18:52', '2020-11-11 15:18:52', '添加课程，课程标题：规则和要求', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('474', '2020-11-11 15:53:22', '2020-11-11 15:53:22', '用户【猿来入此】于【2020-11-11 15:53:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('475', '2020-11-11 15:53:53', '2020-11-11 15:53:53', '编辑课程，课程标题：驾驶基础I', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('476', '2020-11-11 15:56:22', '2020-11-11 15:56:22', '用户【猿来入此】于【2020-11-11 15:56:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('477', '2020-11-11 15:59:10', '2020-11-11 15:59:10', '用户【猿来入此】于【2020-11-11 15:59:10】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('478', '2020-11-11 16:03:01', '2020-11-11 16:03:01', '编辑课程，课程标题：驾驶基础I', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('479', '2020-11-11 16:04:07', '2020-11-11 16:04:07', '用户【猿来入此】于【2020-11-11 16:04:07】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('480', '2020-11-11 16:05:00', '2020-11-11 16:05:00', '用户【猿来入此】于【2020-11-11 16:05:00】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('481', '2020-11-11 16:05:16', '2020-11-11 16:05:16', '添加课程，课程标题：sdasdsadsadas', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('482', '2020-11-11 16:05:20', '2020-11-11 16:05:20', '删除课程，课程ID：5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('483', '2020-11-11 16:10:58', '2020-11-11 16:10:58', '用户【猿来入此】于【2020-11-11 16:10:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('484', '2020-11-11 16:11:51', '2020-11-11 16:11:51', '用户【猿来入此】于【2020-11-11 16:11:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('485', '2020-11-11 16:12:33', '2020-11-11 16:12:33', '用户【猿来入此】于【2020-11-11 16:12:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('486', '2020-11-11 16:13:59', '2020-11-11 16:13:59', '用户【猿来入此】于【2020-11-11 16:13:59】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('487', '2020-11-11 16:24:09', '2020-11-11 16:24:09', '用户【猿来入此】于【2020-11-11 16:24:09】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('488', '2020-11-11 16:25:17', '2020-11-11 16:25:17', '用户【猿来入此】于【2020-11-11 16:25:17】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('489', '2020-11-11 16:28:57', '2020-11-11 16:28:57', '用户【猿来入此】于【2020-11-11 16:28:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('490', '2020-11-11 16:40:23', '2020-11-11 16:40:23', '用户【猿来入此】于【2020-11-11 16:40:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('491', '2020-11-11 16:40:23', '2020-11-11 16:40:23', '用户【猿来入此】于【2020-11-11 16:40:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('492', '2020-11-11 16:46:45', '2020-11-11 16:46:45', '用户【猿来入此】于【2020-11-11 16:46:45】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('493', '2020-11-11 16:48:47', '2020-11-11 16:48:47', '用户【猿来入此】于【2020-11-11 16:48:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('494', '2020-11-11 16:49:50', '2020-11-11 16:49:50', '添加菜单信息【Menu [name=增加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/leave_word/add, icon=mdi-approval, sort=0, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('495', '2020-11-11 16:50:04', '2020-11-11 16:50:04', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('496', '2020-11-11 16:50:07', '2020-11-11 16:50:07', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('497', '2020-11-11 16:50:19', '2020-11-11 16:50:19', '用户【猿来入此】于【2020-11-11 16:50:19】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('498', '2020-11-11 16:51:30', '2020-11-11 16:51:30', '用户【猿来入此】于【2020-11-11 16:51:30】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('499', '2020-11-11 17:06:31', '2020-11-11 17:06:31', '用户【猿来入此】于【2020-11-11 17:06:30】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('500', '2020-11-11 17:07:55', '2020-11-11 17:07:55', '用户【猿来入此】于【2020-11-11 17:07:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('501', '2020-11-11 17:18:55', '2020-11-11 17:18:55', '用户【猿来入此】于【2020-11-11 17:18:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('502', '2020-11-11 17:32:46', '2020-11-11 17:32:46', '用户【猿来入此】于【2020-11-11 17:32:46】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('503', '2020-11-11 17:46:22', '2020-11-11 17:46:22', '用户【猿来入此】于【2020-11-11 17:46:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('504', '2020-11-11 17:50:38', '2020-11-11 17:50:38', '用户【猿来入此】于【2020-11-11 17:50:38】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('505', '2020-11-11 17:53:24', '2020-11-11 17:53:24', '用户【猿来入此】于【2020-11-11 17:53:24】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('506', '2020-11-11 17:57:23', '2020-11-11 17:57:23', '用户【猿来入此】于【2020-11-11 17:57:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('507', '2020-11-11 17:59:54', '2020-11-11 17:59:54', '用户【猿来入此】于【2020-11-11 17:59:53】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('508', '2020-11-11 18:02:41', '2020-11-11 18:02:41', '用户【猿来入此】于【2020-11-11 18:02:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('509', '2020-11-11 18:04:06', '2020-11-11 18:04:06', '用户【猿来入此】于【2020-11-11 18:04:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('510', '2020-11-11 18:05:06', '2020-11-11 18:05:06', '添加关于成功:11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('511', '2020-11-11 18:05:48', '2020-11-11 18:05:48', '用户【猿来入此】于【2020-11-11 18:05:48】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('512', '2020-11-11 18:08:11', '2020-11-11 18:08:11', '用户【猿来入此】于【2020-11-11 18:08:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('513', '2020-11-11 18:08:23', '2020-11-11 18:08:23', '编辑菜单信息【Menu [name=增加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/leave_word/add1, icon=mdi-approval, sort=0, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('514', '2020-11-11 18:08:30', '2020-11-11 18:08:30', '用户【猿来入此】于【2020-11-11 18:08:30】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('515', '2020-11-11 18:10:03', '2020-11-11 18:10:03', '教练添加成功:asdf', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('516', '2020-11-11 18:10:32', '2020-11-11 18:10:32', '教练编辑成功:asdf', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('517', '2020-11-11 18:11:08', '2020-11-11 18:11:08', '用户【猿来入此】于【2020-11-11 18:11:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('518', '2020-11-11 18:11:26', '2020-11-11 18:11:26', '编辑菜单信息【Menu [name=增加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/leave_word/add, icon=mdi-approval, sort=0, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('519', '2020-11-11 18:15:03', '2020-11-11 18:15:03', '用户【猿来入此】于【2020-11-11 18:15:03】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('520', '2020-11-11 18:15:47', '2020-11-11 18:15:47', '用户【猿来入此】于【2020-11-11 18:15:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('521', '2020-11-11 18:16:13', '2020-11-11 18:16:13', '教练编辑成功:添加', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('522', '2020-11-11 18:16:23', '2020-11-11 18:16:23', '用户【猿来入此】于【2020-11-11 18:16:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('523', '2020-11-11 18:16:31', '2020-11-11 18:16:31', '教练编辑成功:添加', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('524', '2020-11-11 18:18:14', '2020-11-11 18:18:14', '用户类型添加成功:总教练2', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('525', '2020-11-11 18:18:29', '2020-11-11 18:18:29', '删除成功教练类型id:6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('526', '2020-11-11 18:19:21', '2020-11-11 18:19:21', '编辑前台用户，前台用户名：Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('527', '2020-11-11 18:20:03', '2020-11-11 18:20:03', '编辑前台用户，前台用户名：Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('528', '2020-11-11 18:20:40', '2020-11-11 18:20:40', '添加前台用户，用户名ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('529', '2020-11-12 08:57:43', '2020-11-12 08:57:43', '用户【猿来入此】于【2020-11-12 08:57:43】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('530', '2020-11-12 09:00:42', '2020-11-12 09:00:42', '用户【猿来入此】于【2020-11-12 09:00:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('531', '2020-11-12 09:03:18', '2020-11-12 09:03:18', '用户【猿来入此】于【2020-11-12 09:03:18】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('532', '2020-11-12 09:26:17', '2020-11-12 09:26:17', '用户【猿来入此】于【2020-11-12 09:26:17】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('533', '2020-11-12 09:27:59', '2020-11-12 09:27:59', '用户【猿来入此】于【2020-11-12 09:27:59】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('534', '2020-11-12 10:00:47', '2020-11-12 10:00:47', '用户【猿来入此】于【2020-11-12 10:00:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('535', '2020-11-12 10:17:23', '2020-11-12 10:17:23', '用户【猿来入此】于【2020-11-12 10:17:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('536', '2020-11-12 10:18:46', '2020-11-12 10:18:46', '编辑关于成功:The Most Worthy Recommendations', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('537', '2020-11-12 10:19:09', '2020-11-12 10:19:09', '编辑关于成功:The Most Worthy Recommendations', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('538', '2020-11-12 10:29:04', '2020-11-12 10:29:04', '编辑关于成功:The Most Worthy Recommendations', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('539', '2020-11-12 10:29:27', '2020-11-12 10:29:27', '编辑关于成功:The Most Worthy Recommendations', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('540', '2020-11-12 10:47:57', '2020-11-12 10:47:57', '用户【猿来入此】于【2020-11-12 10:47:57】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('541', '2020-11-12 11:04:01', '2020-11-12 11:04:01', '用户【猿来入此】于【2020-11-12 11:04:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('542', '2020-11-12 11:04:12', '2020-11-12 11:04:12', '添加分类标签，分类标签名：学员', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('543', '2020-11-12 11:15:50', '2020-11-12 11:15:50', '添加菜单信息【Menu [name=成就管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/achievement/list, icon=mdi-keyboard-variant, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('544', '2020-11-12 11:16:00', '2020-11-12 11:16:00', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('545', '2020-11-12 11:16:15', '2020-11-12 11:16:15', '用户【猿来入此】于【2020-11-12 11:16:15】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('546', '2020-11-12 11:27:11', '2020-11-12 11:27:11', '用户【猿来入此】于【2020-11-12 11:27:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('547', '2020-11-12 11:27:11', '2020-11-12 11:27:11', '用户【猿来入此】于【2020-11-12 11:27:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('548', '2020-11-12 11:28:21', '2020-11-12 11:28:21', '添加新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('549', '2020-11-12 12:21:26', '2020-11-12 12:21:26', '用户【猿来入此】于【2020-11-12 12:21:26】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('550', '2020-11-12 13:07:53', '2020-11-12 13:07:53', '用户【猿来入此】于【2020-11-12 13:07:53】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('551', '2020-11-12 13:07:53', '2020-11-12 13:07:53', '用户【猿来入此】于【2020-11-12 13:07:53】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('552', '2020-11-12 13:17:06', '2020-11-12 13:17:06', '用户【猿来入此】于【2020-11-12 13:17:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('553', '2020-11-12 13:18:37', '2020-11-12 13:18:37', '用户【猿来入此】于【2020-11-12 13:18:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('554', '2020-11-12 13:32:20', '2020-11-12 13:32:20', '用户【猿来入此】于【2020-11-12 13:32:20】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('555', '2020-11-12 13:33:00', '2020-11-12 13:33:00', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/achievement/add, icon=mdi-emoticon, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('556', '2020-11-12 13:33:26', '2020-11-12 13:33:26', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/achievement/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('557', '2020-11-12 13:33:56', '2020-11-12 13:33:56', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/achievement/delete\'), icon=mdi-delete-empty, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('558', '2020-11-12 13:34:03', '2020-11-12 13:34:03', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('559', '2020-11-12 13:34:12', '2020-11-12 13:34:12', '用户【猿来入此】于【2020-11-12 13:34:12】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('560', '2020-11-12 13:57:13', '2020-11-12 13:57:13', '添加关于成功:The best driving schools', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('561', '2020-11-12 14:03:50', '2020-11-12 14:03:50', '用户【猿来入此】于【2020-11-12 14:03:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('562', '2020-11-12 14:16:01', '2020-11-12 14:16:01', '添加新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('563', '2020-11-12 14:16:15', '2020-11-12 14:16:15', '添加新闻，新闻标题：gggggg', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('564', '2020-11-12 14:16:28', '2020-11-12 14:16:28', '添加新闻，新闻标题：gggggggqqq', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('565', '2020-11-12 14:18:50', '2020-11-12 14:18:50', '用户【猿来入此】于【2020-11-12 14:18:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('566', '2020-11-12 14:32:50', '2020-11-12 14:32:50', '用户【猿来入此】于【2020-11-12 14:32:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('567', '2020-11-12 14:36:36', '2020-11-12 14:36:36', '教练编辑成功:Kai', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('568', '2020-11-12 14:37:08', '2020-11-12 14:37:08', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('569', '2020-11-12 14:37:17', '2020-11-12 14:37:17', '教练编辑成功:添加', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('570', '2020-11-12 14:39:28', '2020-11-12 14:39:28', '用户【猿来入此】于【2020-11-12 14:39:27】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('571', '2020-11-12 14:41:06', '2020-11-12 14:41:06', '添加菜单信息【Menu [name=课程表列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/clazzSchedule/list, icon=mdi-application, sort=58, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('572', '2020-11-12 14:41:33', '2020-11-12 14:41:33', '教练编辑成功:Mr.Jack', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('573', '2020-11-12 14:42:00', '2020-11-12 14:42:00', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/clazzSchedule/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('574', '2020-11-12 14:43:13', '2020-11-12 14:43:13', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/clazzSchedult/edit\'), icon=mdi-minus, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('575', '2020-11-12 14:43:14', '2020-11-12 14:43:14', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/clazzSchedult/edit\'), icon=mdi-minus, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('576', '2020-11-12 14:43:42', '2020-11-12 14:43:42', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/clazzSchedult/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('577', '2020-11-12 14:44:08', '2020-11-12 14:44:08', '编辑菜单信息【Menu [name=课程表列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/clazz_schedule/list, icon=mdi-application, sort=58, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('578', '2020-11-12 14:44:19', '2020-11-12 14:44:19', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/clazz_schedule/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('579', '2020-11-12 14:44:29', '2020-11-12 14:44:29', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/clazz_schedult/edit\'), icon=mdi-minus, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('580', '2020-11-12 14:44:40', '2020-11-12 14:44:40', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/clazz_schedult/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('581', '2020-11-12 14:44:52', '2020-11-12 14:44:52', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('582', '2020-11-12 14:45:01', '2020-11-12 14:45:01', '用户【猿来入此】于【2020-11-12 14:45:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('583', '2020-11-12 14:45:03', '2020-11-12 14:45:03', '教练添加成功:CoCos', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('584', '2020-11-12 14:47:37', '2020-11-12 14:47:37', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('585', '2020-11-12 14:48:03', '2020-11-12 14:48:03', '编辑菜单信息【Menu [name=用户留言, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/leave_word/list, icon=mdi-apple-finder, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('586', '2020-11-12 14:49:26', '2020-11-12 14:49:26', '编辑菜单信息【Menu [name=用户评论, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/comments/list, icon=mdi-calendar-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('587', '2020-11-12 14:49:36', '2020-11-12 14:49:36', '编辑菜单信息【Menu [name=用户评论回复, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/reply/list, icon=mdi-camera-rear, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('588', '2020-11-12 14:49:52', '2020-11-12 14:49:52', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('589', '2020-11-12 14:50:00', '2020-11-12 14:50:00', '编辑角色【超级管理员】', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('590', '2020-11-12 14:50:00', '2020-11-12 14:50:00', '用户【猿来入此】于【2020-11-12 14:50:00】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('591', '2020-11-12 14:50:24', '2020-11-12 14:50:24', '用户【猿来入此】于【2020-11-12 14:50:24】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('592', '2020-11-12 14:51:14', '2020-11-12 14:51:14', '添加菜单信息【Menu [name=新闻管理, parent=null, url=, icon=mdi-arrow-up-bold-circle-outline, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('593', '2020-11-12 14:51:41', '2020-11-12 14:51:41', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('594', '2020-11-12 14:51:55', '2020-11-12 14:51:55', '编辑菜单信息【Menu [name=新闻列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/news/list, icon=mdi-arrow-up-bold-circle, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('595', '2020-11-12 14:52:24', '2020-11-12 14:52:24', '编辑菜单信息【Menu [name=推荐列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/recommend/list, icon=mdi-tag-heart, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('596', '2020-11-12 14:52:43', '2020-11-12 14:52:43', '编辑菜单信息【Menu [name=标签列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/label/list, icon=mdi-backburger, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('597', '2020-11-12 14:53:06', '2020-11-12 14:53:06', '编辑菜单信息【Menu [name=关于列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/about_info/list, icon=mdi-webhook, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('598', '2020-11-12 14:53:14', '2020-11-12 14:53:14', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('599', '2020-11-12 14:53:20', '2020-11-12 14:53:20', '用户【猿来入此】于【2020-11-12 14:53:20】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('600', '2020-11-12 15:10:30', '2020-11-12 15:10:30', '用户【猿来入此】于【2020-11-12 15:10:30】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('601', '2020-11-12 15:14:06', '2020-11-12 15:14:06', '用户【猿来入此】于【2020-11-12 15:14:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('602', '2020-11-12 15:17:58', '2020-11-12 15:17:58', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('603', '2020-11-12 15:24:33', '2020-11-12 15:24:33', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('604', '2020-11-12 15:27:17', '2020-11-12 15:27:17', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('605', '2020-11-12 15:27:17', '2020-11-12 15:27:17', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('606', '2020-11-12 15:27:34', '2020-11-12 15:27:34', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('607', '2020-11-12 15:28:44', '2020-11-12 15:28:44', '教练编辑成功:JackLove', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('608', '2020-11-12 15:29:50', '2020-11-12 15:29:50', '教练编辑成功:JackLove', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('609', '2020-11-12 15:32:16', '2020-11-12 15:32:16', '教练编辑成功:CoCos', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('610', '2020-11-12 15:33:14', '2020-11-12 15:33:14', '教练编辑成功:CoCos', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('611', '2020-11-12 15:34:20', '2020-11-12 15:34:20', '教练编辑成功:PK.Zhong', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('612', '2020-11-12 15:37:33', '2020-11-12 15:37:33', '用户【猿来入此】于【2020-11-12 15:37:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('613', '2020-11-12 15:38:20', '2020-11-12 15:38:20', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('614', '2020-11-12 15:38:36', '2020-11-12 15:38:36', '添加前台用户，用户名ID：5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('615', '2020-11-12 15:39:03', '2020-11-12 15:39:03', '用户类型添加成功:助教', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('616', '2020-11-12 15:39:08', '2020-11-12 15:39:08', '用户类型编辑成功:助教1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('617', '2020-11-12 15:39:12', '2020-11-12 15:39:12', '删除成功教练类型id:7', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('618', '2020-11-12 15:40:08', '2020-11-12 15:40:08', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('619', '2020-11-12 15:43:42', '2020-11-12 15:43:42', '用户【猿来入此】于【2020-11-12 15:43:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('620', '2020-11-12 15:43:58', '2020-11-12 15:43:58', '添加关于成功:Rookie Driving School', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('621', '2020-11-12 15:44:02', '2020-11-12 15:44:02', '编辑关于成功:Rookie Driving School', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('622', '2020-11-12 15:44:09', '2020-11-12 15:44:09', '编辑关于成功:Rookie Driving Schools', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('623', '2020-11-12 15:44:29', '2020-11-12 15:44:29', '编辑关于成功:Rookie Driving Schools', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('624', '2020-11-12 16:02:45', '2020-11-12 16:02:45', '用户【猿来入此】于【2020-11-12 16:02:45】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('625', '2020-11-12 16:23:15', '2020-11-12 16:23:15', '用户【猿来入此】于【2020-11-12 16:23:15】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('626', '2020-11-12 16:29:49', '2020-11-12 16:29:49', '用户【猿来入此】于【2020-11-12 16:29:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('627', '2020-11-12 16:37:03', '2020-11-12 16:37:03', '用户【猿来入此】于【2020-11-12 16:37:03】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('628', '2020-11-12 16:40:35', '2020-11-12 16:40:35', '用户【猿来入此】于【2020-11-12 16:40:35】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('629', '2020-11-12 16:54:48', '2020-11-12 16:54:48', '用户【猿来入此】于【2020-11-12 16:54:48】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('630', '2020-11-12 17:03:11', '2020-11-12 17:03:11', '用户【猿来入此】于【2020-11-12 17:03:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('631', '2020-11-12 17:10:52', '2020-11-12 17:10:52', '用户【猿来入此】于【2020-11-12 17:10:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('632', '2020-11-12 17:11:46', '2020-11-12 17:11:46', '用户【猿来入此】于【2020-11-12 17:11:46】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('633', '2020-11-12 17:13:03', '2020-11-12 17:13:03', '用户【猿来入此】于【2020-11-12 17:13:03】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('634', '2020-11-12 17:21:52', '2020-11-12 17:21:52', '用户【猿来入此】于【2020-11-12 17:21:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('635', '2020-11-12 17:22:55', '2020-11-12 17:22:55', '用户【猿来入此】于【2020-11-12 17:22:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('636', '2020-11-12 17:23:59', '2020-11-12 17:23:59', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/clazz_schedule/edit\'), icon=mdi-minus, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('637', '2020-11-12 17:24:10', '2020-11-12 17:24:10', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/clazz_schedule/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('638', '2020-11-12 17:24:17', '2020-11-12 17:24:17', '用户【猿来入此】于【2020-11-12 17:24:17】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('639', '2020-11-12 17:26:07', '2020-11-12 17:26:07', '用户【猿来入此】于【2020-11-12 17:26:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('640', '2020-11-12 17:44:42', '2020-11-12 17:44:42', '用户【猿来入此】于【2020-11-12 17:44:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('641', '2020-11-12 17:44:55', '2020-11-12 17:44:55', '编辑课程表，课程标题：null', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('642', '2020-11-12 17:45:01', '2020-11-12 17:45:01', '编辑课程表，课程标题：null', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('643', '2020-11-12 17:45:07', '2020-11-12 17:45:07', '编辑课程表，课程标题：null', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('644', '2020-11-12 17:45:16', '2020-11-12 17:45:16', '编辑课程表，课程标题：null', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('645', '2020-11-12 17:47:38', '2020-11-12 17:47:38', '用户【猿来入此】于【2020-11-12 17:47:38】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('646', '2020-11-12 17:48:06', '2020-11-12 17:48:06', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('647', '2020-11-12 17:48:16', '2020-11-12 17:48:16', '用户【猿来入此】于【2020-11-12 17:48:16】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('648', '2020-11-12 18:36:39', '2020-11-12 18:36:39', '用户【猿来入此】于【2020-11-12 18:36:39】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('649', '2020-11-12 18:41:05', '2020-11-12 18:41:05', '用户【猿来入此】于【2020-11-12 18:41:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('650', '2020-11-12 18:49:52', '2020-11-12 18:49:52', '用户【猿来入此】于【2020-11-12 18:49:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('651', '2020-11-13 09:29:54', '2020-11-13 09:29:54', '用户【猿来入此】于【2020-11-13 09:29:54】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('652', '2020-11-13 09:32:58', '2020-11-13 09:32:58', '用户【猿来入此】于【2020-11-13 09:32:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('653', '2020-11-13 09:37:58', '2020-11-13 09:37:58', '用户【猿来入此】于【2020-11-13 09:37:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('654', '2020-11-13 09:53:01', '2020-11-13 09:53:01', '用户【猿来入此】于【2020-11-13 09:53:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('655', '2020-11-13 14:22:04', '2020-11-13 14:22:04', '用户【猿来入此】于【2020-11-13 14:22:04】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('656', '2020-11-14 15:26:58', '2020-11-14 15:26:58', '用户【猿来入此】于【2020-11-14 15:26:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('657', '2020-11-14 16:52:40', '2020-11-14 16:52:40', '用户【猿来入此】于【2020-11-14 16:52:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('658', '2020-11-14 16:54:51', '2020-11-14 16:54:51', '用户【猿来入此】于【2020-11-14 16:54:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('659', '2020-11-14 16:57:41', '2020-11-14 16:57:41', '用户【猿来入此】于【2020-11-14 16:57:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('660', '2020-11-14 17:06:21', '2020-11-14 17:06:21', '用户【猿来入此】于【2020-11-14 17:06:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('661', '2020-11-15 15:53:14', '2020-11-15 15:53:14', '用户【猿来入此】于【2020-11-15 15:53:14】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('662', '2020-11-15 16:28:51', '2020-11-15 16:28:51', '用户【猿来入此】于【2020-11-15 16:28:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('663', '2020-11-16 09:09:34', '2020-11-16 09:09:34', '用户【猿来入此】于【2020-11-16 09:09:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('664', '2020-11-16 10:18:15', '2020-11-16 10:18:15', '用户【猿来入此】于【2020-11-16 10:18:15】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('665', '2020-11-16 10:19:23', '2020-11-16 10:19:23', '添加菜单信息【Menu [name=图片库, parent=null, url=, icon=mdi-creation, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('666', '2020-11-16 10:23:52', '2020-11-16 10:23:52', '用户【猿来入此】于【2020-11-16 10:23:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('667', '2020-11-16 10:24:14', '2020-11-16 10:24:14', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('668', '2020-11-16 10:24:26', '2020-11-16 10:24:26', '用户【猿来入此】于【2020-11-16 10:24:26】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('669', '2020-11-16 10:25:30', '2020-11-16 10:25:30', '添加菜单信息【Menu [name=图片管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/picture/list, icon=mdi-format-indent-decrease, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('670', '2020-11-16 10:25:40', '2020-11-16 10:25:40', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('671', '2020-11-16 10:25:49', '2020-11-16 10:25:49', '用户【猿来入此】于【2020-11-16 10:25:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('672', '2020-11-16 10:32:18', '2020-11-16 10:32:18', '用户【猿来入此】于【2020-11-16 10:32:18】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('673', '2020-11-16 10:34:09', '2020-11-16 10:34:09', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/picture/delete\'), icon=mdi-weather-sunset-down, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('674', '2020-11-16 10:34:49', '2020-11-16 10:34:49', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/picture/add, icon=mdi-magnify-plus-outline, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('675', '2020-11-16 10:35:29', '2020-11-16 10:35:29', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/picture/edit\'), icon=mdi-step-backward, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('676', '2020-11-16 10:35:47', '2020-11-16 10:35:47', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('677', '2020-11-16 10:36:07', '2020-11-16 10:36:07', '用户【猿来入此】于【2020-11-16 10:36:07】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('678', '2020-11-16 11:37:03', '2020-11-16 11:37:03', '用户【猿来入此】于【2020-11-16 11:37:03】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('679', '2020-11-16 11:41:37', '2020-11-16 11:41:37', '添加菜单信息【Menu [name=文件上传, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/home_upload_photo, icon=mdi-xda, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('680', '2020-11-16 11:41:47', '2020-11-16 11:41:47', '编辑菜单信息【Menu [name=文件上传, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/home_upload_photo, icon=mdi-xda, sort=0, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('681', '2020-11-16 11:41:59', '2020-11-16 11:41:59', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('682', '2020-11-16 11:43:21', '2020-11-16 11:43:21', '用户【猿来入此】于【2020-11-16 11:43:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('683', '2020-11-16 11:45:28', '2020-11-16 11:45:28', '用户【猿来入此】于【2020-11-16 11:45:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('684', '2020-11-16 11:47:05', '2020-11-16 11:47:05', '用户【猿来入此】于【2020-11-16 11:47:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('685', '2020-11-16 12:46:27', '2020-11-16 12:46:27', '用户【猿来入此】于【2020-11-16 12:46:27】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('686', '2020-11-16 13:11:37', '2020-11-16 13:11:37', '用户【猿来入此】于【2020-11-16 13:11:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('687', '2020-11-16 13:29:05', '2020-11-16 13:29:05', '用户【猿来入此】于【2020-11-16 13:29:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('688', '2020-11-16 13:29:58', '2020-11-16 13:29:58', '用户【猿来入此】于【2020-11-16 13:29:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('689', '2020-11-16 13:31:05', '2020-11-16 13:31:05', '用户【猿来入此】于【2020-11-16 13:31:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('690', '2020-11-16 13:32:23', '2020-11-16 13:32:23', '用户【猿来入此】于【2020-11-16 13:32:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('691', '2020-11-16 13:33:36', '2020-11-16 13:33:36', '用户【猿来入此】于【2020-11-16 13:33:36】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('692', '2020-11-16 13:38:47', '2020-11-16 13:38:47', '用户【猿来入此】于【2020-11-16 13:38:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('693', '2020-11-16 13:41:01', '2020-11-16 13:41:01', '用户【猿来入此】于【2020-11-16 13:41:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('694', '2020-11-16 13:45:06', '2020-11-16 13:45:06', '用户【猿来入此】于【2020-11-16 13:45:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('695', '2020-11-16 13:46:26', '2020-11-16 13:46:26', '用户【猿来入此】于【2020-11-16 13:46:26】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('696', '2020-11-16 13:52:03', '2020-11-16 13:52:03', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('697', '2020-11-16 13:52:14', '2020-11-16 13:52:14', '删除菜单信息，菜单ID【85】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('698', '2020-11-16 14:05:01', '2020-11-16 14:05:01', '用户【猿来入此】于【2020-11-16 14:05:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('699', '2020-11-16 14:20:07', '2020-11-16 14:20:07', '用户【猿来入此】于【2020-11-16 14:20:07】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('700', '2020-11-16 14:24:22', '2020-11-16 14:24:22', '添加新闻，新闻标题：马保国', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('701', '2020-11-16 14:26:50', '2020-11-16 14:26:50', '用户【猿来入此】于【2020-11-16 14:26:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('702', '2020-11-16 14:29:57', '2020-11-16 14:29:57', '添加新闻，新闻标题：一名学员练车不断传出嚎叫', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('703', '2020-11-16 15:12:00', '2020-11-16 15:12:00', '用户【猿来入此】于【2020-11-16 15:12:00】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('704', '2020-11-16 16:25:13', '2020-11-16 16:25:13', '用户【猿来入此】于【2020-11-16 16:25:12】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('705', '2020-11-16 16:27:48', '2020-11-16 16:27:48', '编辑关于成功:菜鸟驾校欢迎您', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('706', '2020-11-16 16:28:30', '2020-11-16 16:28:30', '编辑关于成功:菜鸟驾校欢迎您', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('707', '2020-11-16 17:51:21', '2020-11-16 17:51:21', '用户【猿来入此】于【2020-11-16 17:51:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('708', '2020-11-16 18:02:11', '2020-11-16 18:02:11', '用户【猿来入此】于【2020-11-16 18:02:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('709', '2020-11-16 18:07:13', '2020-11-16 18:07:13', '编辑课程，课程标题：驾驶基础I', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('710', '2020-11-16 18:09:12', '2020-11-16 18:09:12', '用户【猿来入此】于【2020-11-16 18:09:12】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('711', '2020-11-16 18:09:37', '2020-11-16 18:09:37', '编辑课程，课程标题：驾驶基础I', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('712', '2020-11-16 18:10:29', '2020-11-16 18:10:29', '用户【猿来入此】于【2020-11-16 18:10:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('713', '2020-11-16 18:20:32', '2020-11-16 18:20:32', '用户【猿来入此】于【2020-11-16 18:20:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('714', '2020-11-16 18:26:05', '2020-11-16 18:26:05', '用户【猿来入此】于【2020-11-16 18:26:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('715', '2020-11-16 18:27:38', '2020-11-16 18:27:38', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('716', '2020-11-16 18:27:40', '2020-11-16 18:27:40', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('717', '2020-11-16 18:27:53', '2020-11-16 18:27:53', '删除菜单信息，菜单ID【42】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('718', '2020-11-16 18:28:03', '2020-11-16 18:28:03', '删除菜单信息，菜单ID【41】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('719', '2020-11-16 18:28:14', '2020-11-16 18:28:14', '删除菜单信息，菜单ID【40】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('720', '2020-11-16 18:28:23', '2020-11-16 18:28:23', '删除菜单信息，菜单ID【39】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('721', '2020-11-16 18:30:33', '2020-11-16 18:30:33', '编辑课程，课程标题：驾驶基础I', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('722', '2020-11-16 18:37:41', '2020-11-16 18:37:41', '用户【猿来入此】于【2020-11-16 18:37:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('723', '2020-11-16 18:38:50', '2020-11-16 18:38:50', '添加用户留言，用户留言ID：38', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('724', '2020-11-16 18:44:27', '2020-11-16 18:44:27', '编辑菜单信息【Menu [name=删除评论, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/comments/delete\'), icon=mdi-circle-outline, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('725', '2020-11-16 18:45:47', '2020-11-16 18:45:47', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('726', '2020-11-16 18:45:50', '2020-11-16 18:45:50', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('727', '2020-11-16 18:46:00', '2020-11-16 18:46:00', '删除菜单信息，菜单ID【38】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('728', '2020-11-16 18:46:08', '2020-11-16 18:46:08', '删除菜单信息，菜单ID【36】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('729', '2020-11-16 18:46:16', '2020-11-16 18:46:16', '用户【猿来入此】于【2020-11-16 18:46:16】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('730', '2020-11-16 18:47:02', '2020-11-16 18:47:02', '添加菜单信息【Menu [name=用户评论, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/comments/list, icon=mdi-arrow-collapse-right, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('731', '2020-11-16 18:47:26', '2020-11-16 18:47:26', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/comments/delete\'), icon=mdi-airplane-takeoff, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('732', '2020-11-16 18:47:39', '2020-11-16 18:47:39', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('733', '2020-11-16 18:47:45', '2020-11-16 18:47:45', '用户【猿来入此】于【2020-11-16 18:47:45】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('734', '2020-11-16 18:49:40', '2020-11-16 18:49:40', '添加用户评论，用户评论ID：18', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('735', '2020-11-16 18:49:46', '2020-11-16 18:49:46', '添加用户评论，用户评论ID：45', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('736', '2020-11-17 09:30:50', '2020-11-17 09:30:50', '用户【猿来入此】于【2020-11-17 09:30:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('737', '2020-11-17 09:35:05', '2020-11-17 09:35:05', '添加用户评论，用户评论ID：91', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('738', '2020-11-17 09:37:15', '2020-11-17 09:37:15', '添加用户评论，用户评论ID：92', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('739', '2020-11-17 09:38:41', '2020-11-17 09:38:41', '添加用户评论，用户评论ID：74', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('740', '2020-11-17 09:39:27', '2020-11-17 09:39:27', '添加用户评论，用户评论ID：69', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('741', '2020-11-17 09:39:31', '2020-11-17 09:39:31', '添加用户评论，用户评论ID：73', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('742', '2020-11-17 09:52:01', '2020-11-17 09:52:01', '用户【猿来入此】于【2020-11-17 09:52:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('743', '2020-11-17 09:54:13', '2020-11-17 09:54:13', '添加新闻，新闻ID：1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('744', '2020-11-17 09:57:09', '2020-11-17 09:57:09', '用户【猿来入此】于【2020-11-17 09:57:09】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('745', '2020-11-17 09:57:20', '2020-11-17 09:57:20', '添加用户评论，用户评论ID：99', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('746', '2020-11-17 10:43:08', '2020-11-17 10:43:08', '用户【猿来入此】于【2020-11-17 10:43:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('747', '2020-11-17 10:46:09', '2020-11-17 10:46:09', '编辑课程，课程标题：驾驶基础I', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('748', '2020-11-17 11:19:59', '2020-11-17 11:19:59', '用户【猿来入此】于【2020-11-17 11:19:59】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('749', '2020-11-17 11:20:21', '2020-11-17 11:20:21', '添加用户留言，用户留言ID：50', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('750', '2020-11-17 11:20:25', '2020-11-17 11:20:25', '添加用户留言，用户留言ID：49', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('751', '2020-11-17 11:20:51', '2020-11-17 11:20:51', '添加新闻，新闻ID：11', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('752', '2020-11-17 11:27:40', '2020-11-17 11:27:40', '用户【猿来入此】于【2020-11-17 11:27:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('753', '2020-11-17 11:34:51', '2020-11-17 11:34:51', '用户【猿来入此】于【2020-11-17 11:34:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('754', '2020-11-17 11:36:38', '2020-11-17 11:36:38', '用户【猿来入此】于【2020-11-17 11:36:38】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('755', '2020-11-17 11:36:39', '2020-11-17 11:36:39', '用户【猿来入此】于【2020-11-17 11:36:39】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('756', '2020-11-17 11:39:38', '2020-11-17 11:39:38', '添加分类标签，分类标签名：科二项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('757', '2020-11-17 11:39:38', '2020-11-17 11:39:38', '用户类型添加成功:总教员', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('758', '2020-11-17 11:39:59', '2020-11-17 11:39:59', '添加分类标签，分类标签名：倒车入库', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('759', '2020-11-17 11:40:03', '2020-11-17 11:40:03', '编辑分类标签，分类标签名：科二项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('760', '2020-11-17 11:40:03', '2020-11-17 11:40:03', '用户类型添加成功:科目二教练', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('761', '2020-11-17 11:40:09', '2020-11-17 11:40:09', '添加分类标签，分类标签名：as', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('762', '2020-11-17 11:40:13', '2020-11-17 11:40:13', '添加分类标签，分类标签ID：3', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('763', '2020-11-17 11:40:12', '2020-11-17 11:40:12', '用户类型添加成功:科目三教练', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('764', '2020-11-17 11:40:17', '2020-11-17 11:40:17', '添加分类标签，分类标签名： ', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('765', '2020-11-17 11:40:20', '2020-11-17 11:40:20', '添加分类标签，分类标签ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('766', '2020-11-17 11:40:28', '2020-11-17 11:40:28', '用户类型添加成功:倒车入科教练', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('767', '2020-11-17 11:41:42', '2020-11-17 11:41:42', '添加新闻，新闻标题：科目二国庆过后增加考试项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('768', '2020-11-17 11:43:22', '2020-11-17 11:43:22', '添加新闻，新闻标题：驾校培训', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('769', '2020-11-17 11:43:40', '2020-11-17 11:43:40', '教练添加成功:速度与激情', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('770', '2020-11-17 11:45:44', '2020-11-17 11:45:44', '添加新闻，新闻标题：asdf', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('771', '2020-11-17 11:45:50', '2020-11-17 11:45:50', '添加新闻，新闻ID：3', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('772', '2020-11-17 11:47:41', '2020-11-17 11:47:41', '教练添加成功:测试教练1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('773', '2020-11-17 11:47:41', '2020-11-17 11:47:41', '教练添加成功:测试教练1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('774', '2020-11-17 11:48:21', '2020-11-17 11:48:21', '添加关于成功:菜鸟驾校欢迎您', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('775', '2020-11-17 11:51:32', '2020-11-17 11:51:32', '编辑新闻，新闻标题：科目二国庆过后增加考试项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('776', '2020-11-17 11:51:52', '2020-11-17 11:51:52', '添加分类标签，分类标签名：学员', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('777', '2020-11-17 11:52:34', '2020-11-17 11:52:34', '编辑新闻，新闻标题：科目二国庆过后增加考试项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('778', '2020-11-17 11:56:07', '2020-11-17 11:56:07', '编辑新闻，新闻标题：科目二国庆过后增加考试项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('779', '2020-11-17 11:56:13', '2020-11-17 11:56:13', '编辑新闻，新闻标题：驾校培训', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('780', '2020-11-17 13:00:00', '2020-11-17 13:00:00', '用户【猿来入此】于【2020-11-17 13:00:00】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('781', '2020-11-17 13:00:07', '2020-11-17 13:00:07', '编辑新闻，新闻标题：科目二国庆过后增加考试项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('782', '2020-11-17 13:02:13', '2020-11-17 13:02:13', '添加课程，课程标题：科目二倒车入库', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('783', '2020-11-17 13:05:37', '2020-11-17 13:05:37', '用户【猿来入此】于【2020-11-17 13:05:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('784', '2020-11-17 13:05:49', '2020-11-17 13:05:49', '编辑课程，课程标题：科目二倒车入库', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('785', '2020-11-17 13:18:58', '2020-11-17 13:18:58', '教练编辑成功:测试教练1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('786', '2020-11-17 13:21:29', '2020-11-17 13:21:29', '用户【猿来入此】于【2020-11-17 13:21:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('787', '2020-11-17 13:26:04', '2020-11-17 13:26:04', '编辑新闻，新闻标题：科目二国庆过后增加考试项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('788', '2020-11-17 13:26:11', '2020-11-17 13:26:11', '编辑新闻，新闻标题：驾校培训', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('789', '2020-11-17 13:27:36', '2020-11-17 13:27:36', '编辑新闻，新闻标题：驾校培训', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('790', '2020-11-17 13:32:55', '2020-11-17 13:32:55', '用户【猿来入此】于【2020-11-17 13:32:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('791', '2020-11-17 13:33:06', '2020-11-17 13:33:06', '编辑新闻，新闻标题：驾校培训', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('792', '2020-11-17 13:33:12', '2020-11-17 13:33:12', '编辑新闻，新闻标题：科目二国庆过后增加考试项目', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('793', '2020-11-17 13:34:10', '2020-11-17 13:34:10', '添加新闻，新闻标题：测试新闻标题', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('794', '2020-11-17 13:39:33', '2020-11-17 13:39:33', '用户【猿来入此】于【2020-11-17 13:39:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('795', '2020-11-17 13:52:58', '2020-11-17 13:52:58', '用户【猿来入此】于【2020-11-17 13:52:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('796', '2020-11-17 14:08:44', '2020-11-17 14:08:44', '用户【猿来入此】于【2020-11-17 14:08:44】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('797', '2020-11-17 14:10:30', '2020-11-17 14:10:30', '用户【猿来入此】于【2020-11-17 14:10:30】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('798', '2020-11-17 14:16:32', '2020-11-17 14:16:32', '用户【猿来入此】于【2020-11-17 14:16:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('799', '2020-11-17 14:17:28', '2020-11-17 14:17:28', '编辑课程，课程标题：科目二倒车入库', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('800', '2020-11-17 14:18:07', '2020-11-17 14:18:07', '添加用户评论，用户评论ID：1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('801', '2020-11-17 14:18:10', '2020-11-17 14:18:10', '添加用户评论，用户评论ID：2', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('802', '2020-11-17 14:18:14', '2020-11-17 14:18:14', '添加用户评论，用户评论ID：3', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('803', '2020-11-17 14:18:17', '2020-11-17 14:18:17', '添加用户评论，用户评论ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('804', '2020-11-17 14:18:24', '2020-11-17 14:18:24', '添加新闻，新闻ID：1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('805', '2020-11-17 14:18:30', '2020-11-17 14:18:30', '编辑新闻，新闻标题：驾校培训', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('806', '2020-11-17 14:25:48', '2020-11-17 14:25:48', '添加课程，课程标题：驾校简介', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('807', '2020-11-17 14:29:21', '2020-11-17 14:29:21', '添加课程，课程标题：倒车入库', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('808', '2020-11-17 14:29:47', '2020-11-17 14:29:47', '用户类型添加成功:驾校讲师', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('809', '2020-11-17 14:30:35', '2020-11-17 14:30:35', '用户类型添加成功:sss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('810', '2020-11-17 14:30:38', '2020-11-17 14:30:38', '删除成功教练类型id:6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('811', '2020-11-17 14:30:53', '2020-11-17 14:30:53', '教练编辑成功:Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('812', '2020-11-17 14:31:05', '2020-11-17 14:31:05', '教练编辑成功:Zr', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('813', '2020-11-17 14:32:37', '2020-11-17 14:32:37', '教练添加成功:   ad', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('814', '2020-11-17 14:35:06', '2020-11-17 14:35:06', '添加前台用户，用户名ID：2', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('815', '2020-11-17 14:36:01', '2020-11-17 14:36:01', '添加新闻，新闻标题：科二考试', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('816', '2020-11-17 14:36:12', '2020-11-17 14:36:12', '编辑新闻，新闻标题：科二考试', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('817', '2020-11-17 14:36:20', '2020-11-17 14:36:20', '编辑新闻，新闻标题：科二考试', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('818', '2020-11-17 14:36:26', '2020-11-17 14:36:26', '添加新闻，新闻ID：5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('819', '2020-11-17 14:37:16', '2020-11-17 14:37:16', '添加关于成功:2222', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('820', '2020-11-17 14:41:58', '2020-11-17 14:41:58', '添加课程，课程标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('821', '2020-11-17 14:42:32', '2020-11-17 14:42:32', '删除课程，课程ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('822', '2020-11-17 15:12:11', '2020-11-17 15:12:11', '用户【猿来入此】于【2020-11-17 15:12:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('823', '2020-11-17 15:15:33', '2020-11-17 15:15:33', '添加新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('824', '2020-11-17 15:15:55', '2020-11-17 15:15:55', '添加新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('825', '2020-11-17 15:16:00', '2020-11-17 15:16:00', '添加新闻，新闻标题：d阿法士大夫', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('826', '2020-11-17 15:16:07', '2020-11-17 15:16:07', '添加新闻，新闻标题：d阿法士大夫d阿法士大夫d阿法士大夫', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('827', '2020-11-17 15:16:12', '2020-11-17 15:16:12', '添加新闻，新闻标题：d阿法士大夫d阿法士大夫d阿法士大夫', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('828', '2020-11-17 15:24:10', '2020-11-17 15:24:10', '添加新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('829', '2020-11-17 15:24:30', '2020-11-17 15:24:30', '添加新闻，新闻ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('830', '2020-11-17 15:24:34', '2020-11-17 15:24:34', '添加新闻，新闻ID：7', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('831', '2020-11-17 15:24:39', '2020-11-17 15:24:39', '添加新闻，新闻ID：8', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('832', '2020-11-17 15:24:42', '2020-11-17 15:24:42', '添加新闻，新闻ID：9', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('833', '2020-11-17 15:24:46', '2020-11-17 15:24:46', '添加新闻，新闻ID：10', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('834', '2020-11-17 15:24:51', '2020-11-17 15:24:51', '添加新闻，新闻ID：11', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('835', '2020-11-17 15:25:05', '2020-11-17 15:25:05', '添加新闻，新闻标题：ssss', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('836', '2020-11-17 15:25:08', '2020-11-17 15:25:08', '添加新闻，新闻ID：12', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('837', '2020-11-18 08:57:24', '2020-11-18 08:57:24', '用户【猿来入此】于【2020-11-18 08:57:24】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('838', '2020-11-18 08:57:44', '2020-11-18 08:57:44', '添加用户留言，用户留言ID：1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('839', '2020-11-18 08:57:47', '2020-11-18 08:57:47', '添加用户留言，用户留言ID：2', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('840', '2020-11-18 08:57:57', '2020-11-18 08:57:57', '添加用户评论，用户评论ID：7', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('841', '2020-11-18 09:16:30', '2020-11-18 09:16:30', '用户【猿来入此】于【2020-11-18 09:16:30】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('842', '2020-11-18 09:18:11', '2020-11-18 09:18:11', '添加角色【哈哈】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('843', '2020-11-18 09:18:22', '2020-11-18 09:18:22', '添加角色【哈哈】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('844', '2020-11-18 09:18:22', '2020-11-18 09:18:22', '添加角色【哈哈】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('845', '2020-11-18 09:18:23', '2020-11-18 09:18:23', '添加角色【哈哈】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('846', '2020-11-18 09:18:23', '2020-11-18 09:18:23', '添加角色【哈哈】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('847', '2020-11-18 09:18:31', '2020-11-18 09:18:31', '删除角色ID【5】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('848', '2020-11-18 09:18:43', '2020-11-18 09:18:43', '编辑角色【测试角色1】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('849', '2020-11-18 09:19:26', '2020-11-18 09:19:26', '删除角色ID【6】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('850', '2020-11-18 09:19:29', '2020-11-18 09:19:29', '删除角色ID【7】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('851', '2020-11-18 09:19:32', '2020-11-18 09:19:32', '删除角色ID【8】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('852', '2020-11-18 09:19:36', '2020-11-18 09:19:36', '删除角色ID【9】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('853', '2020-11-18 09:20:34', '2020-11-18 09:20:34', '添加用户，用户名：测试测试', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('854', '2020-11-18 09:20:54', '2020-11-18 09:20:54', '编辑用户，用户名：测试测试', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('855', '2020-11-18 09:21:03', '2020-11-18 09:21:03', '添加用户，用户ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('856', '2020-11-18 09:25:32', '2020-11-18 09:25:32', '编辑课程，课程标题：科目二倒车入库', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('857', '2020-11-18 09:27:13', '2020-11-18 09:27:13', '添加课程，课程标题：侧方停车', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('858', '2020-11-18 09:28:09', '2020-11-18 09:28:09', '添加课程，课程标题：开车开车', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('859', '2020-11-18 09:28:17', '2020-11-18 09:28:17', '删除课程，课程ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('860', '2020-11-18 09:29:00', '2020-11-18 09:29:00', '删除成功教练类型id:4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('861', '2020-11-18 09:29:15', '2020-11-18 09:29:15', '用户类型添加成功:卢本伟', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('862', '2020-11-18 09:29:29', '2020-11-18 09:29:29', '用户类型编辑成功:giaogiao', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('863', '2020-11-18 09:29:37', '2020-11-18 09:29:37', '用户类型编辑成功:总教员111', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('864', '2020-11-18 09:32:06', '2020-11-18 09:32:06', '教练编辑成功:Zr', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('865', '2020-11-18 09:34:28', '2020-11-18 09:34:28', '教练添加成功:哈哈', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('866', '2020-11-18 09:35:54', '2020-11-18 09:35:54', '教练编辑成功:哈哈', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('867', '2020-11-18 09:36:27', '2020-11-18 09:36:27', '教练编辑成功:哈哈', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('868', '2020-11-18 09:38:21', '2020-11-18 09:38:21', '编辑新闻，新闻标题：驾校培训', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('869', '2020-11-18 09:38:33', '2020-11-18 09:38:33', '编辑新闻，新闻标题：驾校培训', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('870', '2020-11-18 09:38:40', '2020-11-18 09:38:40', '添加新闻，新闻ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('871', '2020-11-18 09:38:55', '2020-11-18 09:38:55', '添加新闻，新闻标题：少时诵诗书', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('872', '2020-11-18 09:39:27', '2020-11-18 09:39:27', '编辑分类标签，分类标签名：科二项目11', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('873', '2020-11-18 09:39:39', '2020-11-18 09:39:39', '添加分类标签，分类标签名：测试角色1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('874', '2020-11-18 09:39:44', '2020-11-18 09:39:44', '添加分类标签，分类标签ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('875', '2020-11-18 09:40:41', '2020-11-18 09:40:41', '添加关于成功:我是卢本伟i', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('876', '2020-11-18 09:41:02', '2020-11-18 09:41:02', '编辑关于成功:菜鸟驾校欢迎您11', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('877', '2020-11-18 09:42:49', '2020-11-18 09:42:49', '添加课程，课程标题：高铁起飞', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('878', '2020-11-18 09:44:11', '2020-11-18 09:44:11', '用户【测试账号】于【2020-11-18 09:44:11】登录系统！', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('879', '2020-11-18 09:46:21', '2020-11-18 09:46:21', '用户【猿来入此】于【2020-11-18 09:46:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('880', '2020-11-18 09:47:31', '2020-11-18 09:47:31', '编辑角色【普通管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('881', '2020-11-18 09:47:51', '2020-11-18 09:47:51', '用户【测试账号】于【2020-11-18 09:47:51】登录系统！', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('882', '2020-11-18 09:48:23', '2020-11-18 09:48:23', '编辑角色【测试角色1111】', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('883', '2020-11-18 09:49:38', '2020-11-18 09:49:38', '用户【猿来入此】于【2020-11-18 09:49:38】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('884', '2020-11-18 09:51:32', '2020-11-18 09:51:32', '添加课程，课程标题：侧方停车', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('885', '2020-11-18 09:53:27', '2020-11-18 09:53:27', '用户【测试账号】于【2020-11-18 09:53:27】登录系统！', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('886', '2020-11-18 09:54:01', '2020-11-18 09:54:01', '编辑角色【测试角色1111】', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('887', '2020-11-18 09:54:15', '2020-11-18 09:54:15', '用户【小刘同志】于【2020-11-18 09:54:15】登录系统！', '小刘同志');
INSERT INTO `ylrc_operater_log` VALUES ('888', '2020-11-18 09:55:42', '2020-11-18 09:55:42', '用户【猿来入此】于【2020-11-18 09:55:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('889', '2020-11-18 10:15:02', '2020-11-18 10:15:02', '用户【猿来入此】于【2020-11-18 10:15:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('890', '2020-11-18 10:18:50', '2020-11-18 10:18:50', '删除课程，课程ID：8', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('891', '2020-11-18 10:20:13', '2020-11-18 10:20:13', '编辑课程，课程标题：高铁起飞', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('892', '2020-11-18 10:26:25', '2020-11-18 10:26:25', '添加前台用户，用户名ID：5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('893', '2020-11-18 10:30:12', '2020-11-18 10:30:12', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('894', '2020-11-18 10:35:38', '2020-11-18 10:35:38', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('895', '2020-11-19 09:18:29', '2020-11-19 09:18:29', '用户【猿来入此】于【2020-11-19 09:18:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('896', '2020-11-20 14:53:11', '2020-11-20 14:53:11', '用户【猿来入此】于【2020-11-20 14:53:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('897', '2020-11-20 15:03:08', '2020-11-20 15:03:08', '用户【猿来入此】于【2020-11-20 15:03:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('898', '2020-11-20 15:10:19', '2020-11-20 15:10:19', '编辑前台用户，前台用户名：Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('899', '2020-11-20 15:12:36', '2020-11-20 15:12:36', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('900', '2020-11-20 15:13:05', '2020-11-20 15:13:05', '删除菜单信息，菜单ID【48】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('901', '2020-11-20 15:13:31', '2020-11-20 15:13:31', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/coach_type/delete\'), icon=mdi-wrench, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('902', '2020-11-20 15:13:56', '2020-11-20 15:13:56', '删除菜单信息，菜单ID【54】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('903', '2020-11-20 15:14:30', '2020-11-20 15:14:30', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/coach/delete\'), icon=mdi-wrench, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('904', '2020-11-20 15:14:57', '2020-11-20 15:14:57', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('905', '2020-11-20 15:14:58', '2020-11-20 15:14:58', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('906', '2020-11-20 15:16:29', '2020-11-20 15:16:29', '用户【猿来入此】于【2020-11-20 15:16:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('907', '2020-11-20 15:17:36', '2020-11-20 15:17:36', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/picture/delete\'), icon=mdi-wrench, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('908', '2020-11-20 15:17:54', '2020-11-20 15:17:54', '用户【猿来入此】于【2020-11-20 15:17:54】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('909', '2020-11-20 15:19:58', '2020-11-20 15:19:58', '用户【猿来入此】于【2020-11-20 15:19:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('910', '2020-11-20 15:20:39', '2020-11-20 15:20:39', '删除菜单信息，菜单ID【83】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('911', '2020-11-20 15:22:10', '2020-11-20 15:22:10', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/picture/delete\'), icon=mdi-wrench, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('912', '2020-11-20 15:22:34', '2020-11-20 15:22:34', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('913', '2020-11-20 15:23:33', '2020-11-20 15:23:33', '用户【猿来入此】于【2020-11-20 15:23:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('914', '2020-11-20 15:23:55', '2020-11-20 15:23:55', '删除成功教练类型id:7', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('915', '2020-11-20 15:24:11', '2020-11-20 15:24:11', '教练添加成功: 1', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('916', '2020-11-20 15:24:38', '2020-11-20 15:24:38', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('917', '2020-11-20 15:24:42', '2020-11-20 15:24:42', '编辑角色【超级管理员】', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('918', '2020-11-20 15:24:48', '2020-11-20 15:24:48', '用户【猿来入此】于【2020-11-20 15:24:48】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('919', '2020-11-23 17:58:52', '2020-11-23 17:58:52', '用户【猿来入此】于【2020-11-23 17:58:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('920', '2020-11-23 18:06:42', '2020-11-23 18:06:42', '用户【猿来入此】于【2020-11-23 18:06:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('921', '2020-11-23 18:18:18', '2020-11-23 18:18:18', '用户【猿来入此】于【2020-11-23 18:18:18】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('922', '2020-11-23 18:18:33', '2020-11-23 18:18:33', '编辑前台用户，前台用户名：Change', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('923', '2020-11-23 18:21:37', '2020-11-23 18:21:37', '添加课程，课程标题：hhaha', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('924', '2020-11-23 18:21:42', '2020-11-23 18:21:42', '删除课程，课程ID：8', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('925', '2020-11-23 18:26:33', '2020-11-23 18:26:33', '编辑课程，课程标题：侧方停车', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('926', '2020-12-02 12:49:57', '2020-12-02 12:49:57', '用户【猿来入此】于【2020-12-02 12:49:57】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('927', '2020-12-02 12:59:36', '2020-12-02 12:59:36', '用户【猿来入此】于【2020-12-02 12:59:36】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('928', '2020-12-02 13:28:09', '2020-12-02 13:28:09', '用户类型编辑成功:总教员', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('929', '2020-12-02 20:39:12', '2020-12-02 20:39:12', '用户【猿来入此】于【2020-12-02 20:39:12】登录系统！', '猿来入此');

-- ----------------------------
-- Table structure for ylrc_photo_library
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_photo_library`;
CREATE TABLE `ylrc_photo_library` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `laber_id` tinyblob,
  `news_id` tinyblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_photo_library
-- ----------------------------

-- ----------------------------
-- Table structure for ylrc_picture
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_picture`;
CREATE TABLE `ylrc_picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `head_pic` varchar(6552) DEFAULT NULL,
  `label_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpu10nict9nmhr0bimmyan5w3o` (`label_id`),
  CONSTRAINT `FKpu10nict9nmhr0bimmyan5w3o` FOREIGN KEY (`label_id`) REFERENCES `ylrc_laber` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_picture
-- ----------------------------
INSERT INTO `ylrc_picture` VALUES ('4', '2020-11-17 14:37:51', '2020-11-17 14:37:51', '[\"20201117/1605595067362-27095867-5fd0-4dfd-9dd5-66d048ed9fa1.jpeg\",\"20201117/1605595067372-b7c4d6a7-7aa7-4d2f-9a0e-dc194b81e297.jpeg\",\"20201117/1605595067377-fd50cdbf-9ba8-48b6-bb1d-46320b078430.jpeg\",\"20201117/1605595067382-466255e7-b7ba-40b5-83b2-1135277c2903.jpeg\"]', '5');
INSERT INTO `ylrc_picture` VALUES ('5', '2020-11-17 14:38:39', '2020-11-17 14:38:39', '[\"20201117/1605595116766-8273b6ee-44c8-4faa-92dd-3d3e467284b7.jpeg\",\"20201117/1605595116770-81d22bc9-1c37-48dd-9960-b51b2ab32234.jpg\",\"20201117/1605595116767-e997268d-6042-4adf-ba2b-9789eb3f4d7d.jpeg\"]', '2');

-- ----------------------------
-- Table structure for ylrc_rate
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_rate`;
CREATE TABLE `ylrc_rate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `value` decimal(19,2) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlo2mjn27awglg9oirwrjox41j` (`course_id`),
  CONSTRAINT `FKlo2mjn27awglg9oirwrjox41j` FOREIGN KEY (`course_id`) REFERENCES `ylrc_courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_rate
-- ----------------------------
INSERT INTO `ylrc_rate` VALUES ('3', '2020-11-17 15:36:17', '2020-11-17 15:36:17', '0.50', '1');
INSERT INTO `ylrc_rate` VALUES ('4', '2020-11-17 15:37:18', '2020-11-17 15:37:18', '2.00', '1');
INSERT INTO `ylrc_rate` VALUES ('5', '2020-11-18 10:23:19', '2020-11-18 10:23:19', '3.50', '1');
INSERT INTO `ylrc_rate` VALUES ('6', '2020-11-23 18:32:51', '2020-11-23 18:32:54', '5.00', '1');
INSERT INTO `ylrc_rate` VALUES ('7', '2020-12-02 12:54:50', '2020-12-02 12:54:50', '2.50', '1');
INSERT INTO `ylrc_rate` VALUES ('8', '2020-12-02 12:54:54', '2020-12-02 12:54:54', '2.50', '1');

-- ----------------------------
-- Table structure for ylrc_recommend
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_recommend`;
CREATE TABLE `ylrc_recommend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqeu2s50jtjy87s1s3q3lpnx23` (`user_id`),
  CONSTRAINT `FKqeu2s50jtjy87s1s3q3lpnx23` FOREIGN KEY (`user_id`) REFERENCES `ylrc_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_recommend
-- ----------------------------
INSERT INTO `ylrc_recommend` VALUES ('2', '2020-11-17 11:49:24', '2020-11-18 09:40:21', '我们驾校最好的成绩，10天一位新学员从入门到拿证111', '1');
INSERT INTO `ylrc_recommend` VALUES ('3', '2020-11-17 11:50:06', '2020-11-17 11:51:02', '后悔过去,不如奋斗将来！', '1');
INSERT INTO `ylrc_recommend` VALUES ('4', '2020-11-17 11:50:41', '2020-11-17 11:50:41', '我校的Change讲师荣获8个国家级奖项', '1');

-- ----------------------------
-- Table structure for ylrc_reply
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_reply`;
CREATE TABLE `ylrc_reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `account_id` tinyblob NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ylrc_role
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role`;
CREATE TABLE `ylrc_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_role
-- ----------------------------
INSERT INTO `ylrc_role` VALUES ('1', '2020-03-15 13:16:38', '2020-11-20 15:24:41', '超级管理员', '超级管理员拥有最高权限。', '1');
INSERT INTO `ylrc_role` VALUES ('2', '2020-03-15 13:18:57', '2020-11-18 09:47:31', '普通管理员', '普通管理员只有部分权限', '1');
INSERT INTO `ylrc_role` VALUES ('4', '2020-03-21 20:11:00', '2020-11-18 09:54:01', '测试角色1111', 'sadsasss', '1');

-- ----------------------------
-- Table structure for ylrc_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role_authorities`;
CREATE TABLE `ylrc_role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKhj7ap1o1cjrl7enr9arf5f2qp` (`authorities_id`),
  KEY `FKg3xdaexmr0x1qx8omhvjtk46d` (`role_id`),
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`),
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_role_authorities
-- ----------------------------
INSERT INTO `ylrc_role_authorities` VALUES ('2', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '3');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '5');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '7');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '11');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '16');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '15');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '3');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '5');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '8');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '9');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '7');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '10');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '11');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '12');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '14');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '15');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '16');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '19');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '20');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '21');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '22');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '23');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '24');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '25');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '26');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '28');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '29');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '53');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '56');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '57');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '47');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '49');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '50');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '89');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '51');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '52');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '55');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '58');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '90');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '72');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '73');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '74');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '75');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '76');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '77');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '78');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '79');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '67');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '34');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '35');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '71');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '68');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '69');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '70');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '87');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '88');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '80');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '30');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '31');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '32');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '33');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '43');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '44');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '45');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '46');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '59');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '60');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '61');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '62');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '63');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '64');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '65');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '66');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '81');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '82');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '84');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '86');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '91');

-- ----------------------------
-- Table structure for ylrc_user
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_user`;
CREATE TABLE `ylrc_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_btsosjytrl4hu7fnm1intcpo8` (`username`),
  KEY `FKg09b8o67eu61st68rv6nk8npj` (`role_id`),
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_user
-- ----------------------------
INSERT INTO `ylrc_user` VALUES ('1', '2020-03-18 19:18:53', '2020-03-22 12:43:54', 'ylrc@qq.com', '20200322/1584850135123.jpg', '13356565656', '123456', '1', '1', '猿来入此', '1');
INSERT INTO `ylrc_user` VALUES ('2', '2020-03-18 19:20:36', '2020-03-21 22:18:55', 'llq@qq.com', '20200318/1584530412075.jpg', '13918655656', '123456', '1', '1', '测试账号', '2');
INSERT INTO `ylrc_user` VALUES ('5', '2020-03-20 20:42:19', '2020-11-18 10:35:38', 'yw12121', '20200323/1584956702094.png', '13356565656', '123456', '1', '1', '小刘同志', '4');
