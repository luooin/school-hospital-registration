/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : hospital_registration

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 21/06/2024 23:11:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bingfang
-- ----------------------------
DROP TABLE IF EXISTS `bingfang`;
CREATE TABLE `bingfang`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `bingfanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病房号',
  `bingchuangshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病床数',
  `bingfangweizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病房位置',
  `kongxianchuangwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空闲床位',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `bingfanghao`(`bingfanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '病房' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bingfang
-- ----------------------------
INSERT INTO `bingfang` VALUES (81, '2024-03-01 05:01:02', 'A101', '病床数：2', 'A栋一楼第一间', '空闲床位：1', '脑科');
INSERT INTO `bingfang` VALUES (82, '2024-03-06 17:27:27', 'A102', '病床数：2', 'A栋一楼第二间', '空闲床位：2', '外科');
INSERT INTO `bingfang` VALUES (83, '2024-03-07 12:43:34', 'A103', '病床数：4', 'A栋一楼第三间', '空闲床位：3', '眼科');
INSERT INTO `bingfang` VALUES (84, '2024-04-01 23:34:12', 'A104', '病床数：4', 'A栋一楼第四间', '空闲床位：4', '内科');
INSERT INTO `bingfang` VALUES (85, '2024-04-20 13:27:34', 'A105', '病床数：4', 'A栋一楼第五间', '空闲床位：2', '口腔科');
INSERT INTO `bingfang` VALUES (86, '2024-04-21 03:43:01', 'A106', '病床数：4', 'A栋一楼第六间', '空闲床位：3', '皮肤科');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `adminid` bigint(0) NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int(0) NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1715255326704 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线客服' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (101, '2024-04-06 17:27:27', 1, 1, '挂号费多少钱？', '挂号费5元哦！', 0);
INSERT INTO `chat` VALUES (102, '2024-04-06 17:28:23', 2, 2, '医院什么时候下班？', '我们医院是24小时营业哦！', 2);
INSERT INTO `chat` VALUES (103, '2024-04-07 02:12:32', 3, 3, 'A103在哪', '在A栋一楼直走第三间哦！', 3);
INSERT INTO `chat` VALUES (104, '2024-04-07 17:32:32', 4, 4, '胃痛可以吃冰的吗？', '不可以吃哦！', 4);
INSERT INTO `chat` VALUES (105, '2024-04-08 12:32:12', 5, 5, '我的感冒什么时候可以好？', '大概三天就可以痊愈了！', 5);
INSERT INTO `chat` VALUES (106, '2024-04-08 21:32:04', 6, 6, '住院要住多久？', '这需要根据您的病情来判断哦!', 6);
INSERT INTO `chat` VALUES (1713658107420, '2024-04-21 08:08:27', 11, NULL, '你好！', NULL, 0);
INSERT INTO `chat` VALUES (1713658188356, '2024-04-21 08:09:48', 11, NULL, '请问可以现金支付吗', NULL, 0);
INSERT INTO `chat` VALUES (1715044173065, '2024-05-07 09:09:32', 11, 1, NULL, '可以的', 0);
INSERT INTO `chat` VALUES (1715255078844, '2024-05-09 19:44:38', 11, NULL, '请问可以带校外人员来就诊吗？', NULL, 0);
INSERT INTO `chat` VALUES (1715255165585, '2024-05-09 19:46:05', 1, 1, NULL, '挂号费是5元哦！', NULL);
INSERT INTO `chat` VALUES (1715255193010, '2024-05-09 19:46:32', 11, 1, NULL, '你好，医院有规定不可以校外人员就诊哦！', 0);
INSERT INTO `chat` VALUES (1715255242788, '2024-05-09 19:47:22', 11, NULL, '那请问营业时间是什么时候呢？', NULL, 0);
INSERT INTO `chat` VALUES (1715255259389, '2024-05-09 19:47:38', 11, NULL, '晚上九点可以来就诊吗？', NULL, 0);
INSERT INTO `chat` VALUES (1715255326703, '2024-05-09 19:48:46', 11, 11, NULL, '我们营业时间是早上九点到晚上十点哦！', NULL);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for discussyishengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussyishengxinxi`;
CREATE TABLE `discussyishengxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(0) NOT NULL COMMENT '关联表id',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1714006712009 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生信息评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discussyishengxinxi
-- ----------------------------
INSERT INTO `discussyishengxinxi` VALUES (131, '2024-04-04 17:03:37', 1, 1, 'Theshy', '为医生点赞！', '谢谢您的支持！');
INSERT INTO `discussyishengxinxi` VALUES (132, '2024-04-05 12:34:04', 2, 2, 'Faker', '这家医院服务态度很不错！', '谢谢您的支持!');
INSERT INTO `discussyishengxinxi` VALUES (133, '2024-04-06 21:04:07', 3, 3, 'Uzi', '价格也很便宜！', '谢谢您的支持!');
INSERT INTO `discussyishengxinxi` VALUES (134, '2024-04-07 12:03:08', 4, 4, 'Rookie', '希望越来越好！', '谢谢您的支持!');
INSERT INTO `discussyishengxinxi` VALUES (135, '2024-04-08 17:22:31', 5, 5, 'Jackeylove', '医生数量还是不够多啊！', '您的反馈我们已经收到，我们会继续招募新的医生的！');
INSERT INTO `discussyishengxinxi` VALUES (136, '2024-04-09 19:23:27', 6, 6, 'Clearlove7', '这个系统太方便了！', '谢谢您的支持!');
INSERT INTO `discussyishengxinxi` VALUES (1714006712008, '2024-04-25 08:58:31', 41, 11, '10001', '很不错！', NULL);

-- ----------------------------
-- Table structure for guahaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `guahaoxinxi`;
CREATE TABLE `guahaoxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约编号',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `guahaofei` float NOT NULL COMMENT '挂号费',
  `yuyueshijian` datetime(0) NULL DEFAULT NULL COMMENT '预约时间',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `guahaoshijian` datetime(0) NULL DEFAULT NULL COMMENT '挂号时间',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuyuebianhao`(`yuyuebianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1714006697255 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '挂号信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of guahaoxinxi
-- ----------------------------
INSERT INTO `guahaoxinxi` VALUES (51, '2024-04-04 17:34:04', '101', '20003', '袁华', '脑科', '高级医师', 5, '2024-04-20 09:00:00', '13823888881', '10001', '乔家劲', '13623666661', '2024-04-20 09:10:27', '未支付');
INSERT INTO `guahaoxinxi` VALUES (52, '2024-04-17 14:23:12', '102', '20002', '艾大春', '内科', '高级医师', 5, '2024-04-20 09:30:00', '13823888882', '10002', '陈俊男', '13623666662', '2024-04-20 09:40:00', '未支付');
INSERT INTO `guahaoxinxi` VALUES (53, '2024-04-17 19:27:03', '103', '20006', '马冬梅', '皮肤科', '高级医师', 5, '2024-04-20 10:00:00', '13823888883', '10003', '张甜甜', '13623666663', '2024-04-20 10:10:00', '已支付');
INSERT INTO `guahaoxinxi` VALUES (54, '2024-04-18 10:23:45', '104', '20002', '艾大春', '内科', '高级医师', 5, '2024-04-20 10:30:00', '13823888884', '10004', '李尚武', '13623666664', '2024-04-20 10:40:00', '未支付');
INSERT INTO `guahaoxinxi` VALUES (55, '2024-04-18 13:25:56', '105', '20001', '夏洛', '外科', '高级医师', 5, '2024-04-20 11:00:00', '13823888885', '10005', '钱多多', '13623666665', '2024-04-20 11:10:00', '未支付');
INSERT INTO `guahaoxinxi` VALUES (56, '2024-04-19 23:34:04', '106', '20004', '王秋雅', '眼科', '高级医师', 5, '2024-04-20 11:30:00', '13823888886', '10006', '周末', '13623666666', '2024-04-20 11:40:00', '未支付');
INSERT INTO `guahaoxinxi` VALUES (1714006695379, '2024-04-25 08:58:15', '2024425858093804608', '20001', '夏洛', '外科', '高级医师', 5, '2024-04-25 08:58:11', '13823888881', '10001', '乔家劲', '13623666661', '2024-04-25 08:58:01', '未支付');
INSERT INTO `guahaoxinxi` VALUES (1718982345534, '2024-06-21 23:05:44', '20246212354284984128', '20001', '夏洛', '外科', '高级医师', 5, NULL, '13823888881', '10001', '乔家劲', '13623666661', '2024-06-21 23:05:42', '未支付');
INSERT INTO `guahaoxinxi` VALUES (1718982436550, '2024-06-21 23:07:15', '20246212371447779149', '20001', '夏洛', '外科', '高级医师', 5, NULL, '13823888881', '10001', '乔家劲', '13623666661', '2024-06-21 23:07:14', '未支付');
INSERT INTO `guahaoxinxi` VALUES (1718982599970, '2024-06-21 23:09:59', '20246212395790690503', '20001', '夏洛', '外科', '高级医师', 5, NULL, '13823888881', '10001', '乔家劲', '13623666661', '2024-06-21 23:09:58', '未支付');

-- ----------------------------
-- Table structure for keshi
-- ----------------------------
DROP TABLE IF EXISTS `keshi`;
CREATE TABLE `keshi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科室',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `keshi`(`keshi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科室' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of keshi
-- ----------------------------
INSERT INTO `keshi` VALUES (31, '2024-01-01 09:00:00', '皮肤科');
INSERT INTO `keshi` VALUES (32, '2024-01-01 09:00:00', '内科');
INSERT INTO `keshi` VALUES (33, '2024-01-01 09:00:00', '脑科');
INSERT INTO `keshi` VALUES (34, '2024-01-01 09:00:00', '眼科');
INSERT INTO `keshi` VALUES (35, '2024-01-01 09:00:00', '口腔科');
INSERT INTO `keshi` VALUES (36, '2024-01-01 09:00:00', '外科');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医院概况' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (121, '2024-04-20 09:00:00', '校医院简介', '校医院是一所集医疗、教学、预防于一体的综合性医院，建筑面积1000平米。医院设有内科、口腔科、外科、脑科、眼科、皮肤科等多个临床科室和医技科室，设有学生病房10间。', 'upload/news_picture1.jpg', '<p>校医院是一所集医疗、教学、预防于一体的综合性医院，建筑面积1000平米。医院设有内科、口腔科、外科、脑科、眼科、皮肤科等多个临床科室和医技科室，设有病房10间。</p>');
INSERT INTO `news` VALUES (122, '2024-04-20 09:00:00', '人员简介', '医护人员都具有执业资格，执证上岗。 医院现有人员 15人，其中专业技术人员14人，具有副高级职称4人，中级职称5人，初级职称5人，博士1人，硕士5人。', 'upload/news_picture2.jpg', '<p>医护人员都具有执业资格，执证上岗。 医院现有人员 15人，其中专业技术人员14人，具有副高级职称4人，中级职称5人，初级职称5人，博士1人，硕士5人。</p>');
INSERT INTO `news` VALUES (123, '2024-04-20 09:00:00', '技术力量', '校医院在内科、口腔科上积累了丰富的临床经验，内科对上、下呼吸道感染咽炎、鼻炎、高血压、冠心病、急慢性胃炎、消化性溃疡、急、慢性腹泻、泌尿系统感染等常见病诊断和治疗具有较高的水平，此外眼科、皮肤科、脑科、口腔科等常见病也可诊治；口腔科可治疗各类龋齿、智齿冠周炎，进行根管治疗、根管充填，进行各类牙齿拔除；内科可进行生化检查（肝功、肾功、血糖、血脂、尿酸）等项目；电诊室可进行心电图检查、彩超检查；理疗室使用中频治疗仪、红外线治疗器可进理疗项目；处置室可进行外伤清创、包扎、小换药服务；校医院还配备了急救药箱、氧气袋、拐杖、轮椅，供师生不时之需。', 'upload/news_picture3.jpg', '<p>校医院在内科、口腔科上积累了丰富的临床经验，内科对上、下呼吸道感染咽炎、鼻炎、高血压、冠心病、急慢性胃炎、消化性溃疡、急、慢性腹泻、泌尿系统感染等常见病诊断和治疗具有较高的水平，此外眼科、皮肤科、脑科、口腔科等常见病也可诊治；口腔科可治疗各类龋齿、智齿冠周炎，进行根管治疗、根管充填，进行各类牙齿拔除；内科可进行生化检查（肝功、肾功、血糖、血脂、尿酸）等项目；电诊室可进行心电图检查、彩超检查；理疗室使用中频治疗仪、红外线治疗器可进理疗项目；处置室可进行外伤清创、包扎、小换药服务；校医院还配备了急救药箱、氧气袋、拐杖、轮椅，供师生不时之需。</p>');
INSERT INTO `news` VALUES (124, '2024-04-20 09:00:00', '工作内容', '医院主要承担14000名在校学生、全校教职工的医疗服务，还担任着全校师生员工的预防保健工作和在校大学生健康教育工作，新生入学、毕业生毕业体检工作，以及传染病的预防工作和疫情的报告统计工作。', 'upload/news_picture4.jpg', '<p>医院主要承担14000名在校学生、全校教职工的医疗服务，还担任着全校师生员工的预防保健工作和在校大学生健康教育工作，新生入学、毕业生毕业体检工作，以及传染病的预防工作和疫情的报告统计工作。</p>');
INSERT INTO `news` VALUES (125, '2024-04-20 09:00:00', '服务理念', '医院始终坚持“以人为本，精益求精” 的服务宗旨，规范医疗行为，树立崇高的职业道德，完善各种管理组织及制度，构建和谐医院，为学生和教职工提供优质、方便、快捷的医疗服务，从而保证教学各项工作顺利进行。', 'upload/news_picture5.jpg', '<p>医院始终坚持“以人为本，精益求精” 的服务宗旨，规范医疗行为，树立崇高的职业道德，完善各种管理组织及制度，构建和谐医院，为学生和教职工提供优质、方便、快捷的医疗服务，从而保证教学各项工作顺利进行。</p>');
INSERT INTO `news` VALUES (126, '2024-04-20 09:00:00', '医疗前沿', '为了适应和引领当代循证医学的发展，医院新添置和更新了MRI、CT、DR、等大量先进的医疗设备，使之全部实现数字化，为临床诊疗提供全面可靠的科学依据。内科、外科等临床科室以高科技手段为依托，开展了相关临床工作，妇产科静脉麻醉下人工流产负压吸引术、盆底康复治疗；眼科引进OCT开展眼底病进一步检查以及青光眼筛查、糖尿病眼底并发症的普查、跟踪及指导治疗，屈光不正的矫正治疗；纤维喉镜、周围性面神经麻痹的诊断和治疗；便秘结肠水疗；干眼症及眼疲劳中医治疗、罗氏传人中医正骨治疗等特色项目。', 'upload/news_picture6.jpg', '<p>为了适应和引领当代循证医学的发展，医院新添置和更新了MRI、CT、DR、等大量先进的医疗设备，使之全部实现数字化，为临床诊疗提供全面可靠的科学依据。内科、外科等临床科室以高科技手段为依托，开展了相关临床工作，妇产科静脉麻醉下人工流产负压吸引术、盆底康复治疗；眼科引进OCT开展眼底病进一步检查以及青光眼筛查、糖尿病眼底并发症的普查、跟踪及指导治疗，屈光不正的矫正治疗；纤维喉镜、周围性面神经麻痹的诊断和治疗；便秘结肠水疗；干眼症及眼疲劳中医治疗、罗氏传人中医正骨治疗等特色项目。</p>');

-- ----------------------------
-- Table structure for quxiaoguahao
-- ----------------------------
DROP TABLE IF EXISTS `quxiaoguahao`;
CREATE TABLE `quxiaoguahao`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约编号',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `yuyueshijian` datetime(0) NULL DEFAULT NULL COMMENT '预约时间',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `guahaofei` float NOT NULL COMMENT '挂号费',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `yuanyin` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '原因',
  `quxiaoshijian` datetime(0) NULL DEFAULT NULL COMMENT '取消时间',
  `crossuserid` bigint(0) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(0) NULL DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1646559068010 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '取消挂号' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quxiaoguahao
-- ----------------------------
INSERT INTO `quxiaoguahao` VALUES (61, '2024-04-20 21:19:26', '101', '20001', '夏洛', '外科', '2024-04-20 21:19:56', '高级医师', 5, '13823888881', '10001', '乔家劲', '13623666661', '没时间', '2024-04-20 21:21:13', 1, 1, '否', '是');
INSERT INTO `quxiaoguahao` VALUES (1646559068009, '2024-04-20 21:24:14', '102', '20002', '艾大春', '内科', '2024-04-20 21:25:21', '高级医师', 5, '13823888881', '10002', '陈俊男', '13623666662', '病突然好了', '2024-04-20 21:25:48', 2, 2, '否', '是');
INSERT INTO `quxiaoguahao` VALUES (1718981929579, '2024-06-21 22:58:49', '101', '20003', '袁华', '脑科', '2024-04-20 09:00:00', '高级医师', 5, '13823888881', '10001', '乔家劲', '13623666661', '没时间', '2024-06-21 22:58:44', 11, 51, '否', NULL);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `refid` bigint(0) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1714006776645 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1707574637377, '2024-02-10 22:17:16', 1646558936478, 41, 'yishengxinxi', '夏洛', 'upload/yishengxinxi_zhaopian1.jpg', '1', NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20007 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 10002, '乔家劲', 'yonghu', '用户', 'iloswfyw4n3x5fj6pjub3sbpl0x5kzy2', '2022-03-06 17:29:01', '2024-02-10 23:23:59');
INSERT INTO `token` VALUES (2, 20001, '夏洛', 'yisheng', '医生', 'nw892hm4zjnin7e7nn8hs78cqsmgrdoa', '2022-03-06 17:31:24', '2022-03-06 18:32:33');
INSERT INTO `token` VALUES (3, 1, 'admin', 'users', '管理员', 'eysxkz12i19lkvfg7qngpevvd82tmf9r', '2024-02-10 22:12:35', '2024-06-22 00:02:48');
INSERT INTO `token` VALUES (4, 20002, '大春', 'yisheng', '医生', '2liihepq1gwa6ix8j156jldq4uikpvuc', '2024-02-10 22:18:17', '2024-02-10 23:25:04');
INSERT INTO `token` VALUES (5, 10001, '陈俊男', 'yonghu', '用户', 'xb4wdkeategl7s9m0i9pi4crx5y4vrfr', '2024-04-09 21:14:08', '2024-04-09 22:14:08');
INSERT INTO `token` VALUES (6, 20003, '袁华', 'yisheng', '医生', 'le6eg546gotojwnjqas42xxl8ykbh50g', '2024-04-09 22:08:20', '2024-04-09 23:08:20');
INSERT INTO `token` VALUES (20004, 11, '10001', 'yonghu', '用户', 'souxoa5xikqx7pbjsy5fy82zt96i2fth', '2024-04-20 21:59:47', '2024-06-21 23:54:20');
INSERT INTO `token` VALUES (20005, 21, '20001', 'yisheng', '医生', 'wtqwkkknco57h3lmg0rzt0uy3rznbct1', '2024-04-21 08:13:17', '2024-06-22 00:00:31');
INSERT INTO `token` VALUES (20006, 22, '20002', 'yisheng', '医生', 'kfw6uodf3oxccpcu8g1k1hjj7ytz5sg6', '2024-05-09 18:10:04', '2024-05-09 19:10:05');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2024-03-06 17:27:27');

-- ----------------------------
-- Table structure for wenzhenjilu
-- ----------------------------
DROP TABLE IF EXISTS `wenzhenjilu`;
CREATE TABLE `wenzhenjilu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约编号',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `yaowuguomin` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药物过敏',
  `binglixiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '病例详情',
  `jianchabaogao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '检查报告',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `jiuzhenshijian` datetime(0) NULL DEFAULT NULL COMMENT '就诊时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `dengjishijian` datetime(0) NULL DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1707575119030 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问诊记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wenzhenjilu
-- ----------------------------
INSERT INTO `wenzhenjilu` VALUES (71, '2024-04-01 17:30:00', '101', '10001', '乔家劲', '13823888881', '440300199101010001', '无', '头疼', '', '无', '2024-04-01 17:40:00', '20003', '袁华', '高级医师', '脑科', '2024-04-01 17:50:00');
INSERT INTO `wenzhenjilu` VALUES (72, '2024-04-02 09:00:00', '102', '10002', '陈俊男', '13823888882', '440300199202020002', '布洛芬', '发烧了', '', '无', '2024-04-02 09:10:00', '20002', '艾大春', '高级医师', '内科', '2024-04-02 09:20:00');
INSERT INTO `wenzhenjilu` VALUES (73, '2024-04-03 10:30:00', '103', '10003', '张甜甜', '13823888883', '440300199303030003', '无', '皮肤过敏了', '', '无', '2024-04-03 10:40:00', '20006', '马冬梅', '高级医师', '皮肤科', '2024-04-03 10:50:00');
INSERT INTO `wenzhenjilu` VALUES (74, '2024-04-04 17:00:00', '104', '10004', '李尚武', '13823888884', '440300199404040004', '无', '肚子疼', '', '无', '2024-04-04 17:40:00', '20002', '艾大春', '高级医师', '内科', '2024-04-04 17:50:00');
INSERT INTO `wenzhenjilu` VALUES (75, '2024-04-05 18:00:00', '105', '10005', '钱多多', '13823888885', '440300199505050005', '无', '脚崴了', '', '无', '2024-04-05 18:10:00', '20001', '夏洛', '高级医师', '外科', '2024-04-05 18:20:00');
INSERT INTO `wenzhenjilu` VALUES (76, '2024-04-06 12:30:00', '106', '10006', '周末', '13823888886', '440300199606060006', '无', '眼睛看不清', '', '无', '2024-04-06 12:40:00', '20004', '王秋雅', '高级医师', '眼科', '2024-04-06 12:50:00');

-- ----------------------------
-- Table structure for yaofang
-- ----------------------------
DROP TABLE IF EXISTS `yaofang`;
CREATE TABLE `yaofang`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yaopinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药品名称',
  `yingwenmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `jixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '剂型',
  `yaopinleibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品类别',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `changshangmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂商名称',
  `shengchanriqi` date NULL DEFAULT NULL COMMENT '生产日期',
  `changshangdizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂商地址',
  `yaopintupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品图片',
  `yaopinjiage` int(0) NOT NULL COMMENT '药品价格',
  `shuliang` int(0) NOT NULL COMMENT '数量',
  `jiliangdanwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计量单位',
  `gengxinshijian` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yaopinbianhao`(`yaopinbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药房' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaofang
-- ----------------------------
INSERT INTO `yaofang` VALUES (91, '2024-04-01 09:00:00', '11001', '安乃近注射剂', 'Analgin injection', '注射剂', '医用II类', '动物药业', '广东华夏动物医药有限公司', '2024-03-06', '广东省深圳市龙岗区', 'upload/yaofang_yaopintupian1.jpg', 20, 10, '剂', '2024-04-20 09:00:00');
INSERT INTO `yaofang` VALUES (92, '2024-04-01 09:00:00', '11002', '阿司匹林', 'Aspirin', '丸剂', '医用II类', '华夏医药', '广东华夏医药有限公司', '2024-03-06', '广东省深圳市龙岗区', 'upload/yaofang_yaopintupian2.jpg', 25, 10, '片', '2024-04-20 09:00:00');
INSERT INTO `yaofang` VALUES (93, '2024-04-01 09:00:00', '11003', '珍菊降压片', 'Antihypertensive tablets', '丸剂', '医用III类', '珍菊医药', '广东华夏医药有限公司', '2024-03-06', '广东省深圳市龙岗区', 'upload/yaofang_yaopintupian3.jpg', 10, 10, '片', '2024-04-20 09:00:00');
INSERT INTO `yaofang` VALUES (94, '2024-04-01 09:00:00', '11004', '复方南板蓝根片', 'Radix Radix', '丸剂', '医用I类', '复方南医药', '广东省复方南医药有限公司', '2024-03-06', '广东省深圳市龙岗区', 'upload/yaofang_yaopintupian4.jpg', 20, 20, '片', '2024-04-20 09:00:00');
INSERT INTO `yaofang` VALUES (95, '2024-04-01 09:00:00', '11005', '布洛芬缓释胶囊', 'ibuprofen', '胶囊', '医用III类', '希望医药', '广东希望医药有限公司', '2024-03-06', '广东省深圳市龙岗区', 'upload/1713620620886.png', 15, 20, '片', '2024-04-20 09:00:00');
INSERT INTO `yaofang` VALUES (96, '2024-04-01 09:00:00', '11006', '感冒灵', 'Cold Spirit', '溶液', '医用I类', '999医药', '华南999医药有限公司', '2024-03-06', '广东省深圳市龙岗区', 'upload/yaofang_yaopintupian6.jpg', 10, 10, '包', '2024-04-20 09:00:00');

-- ----------------------------
-- Table structure for yisheng
-- ----------------------------
DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE `yisheng`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `yiling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医龄',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yishenggonghao`(`yishenggonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1712671689486 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yisheng
-- ----------------------------
INSERT INTO `yisheng` VALUES (21, '2024-01-01 09:00:00', '20001', '123456', '夏洛', '外科', '高级医师', '男', '3', '13823888881', 'upload/yishengxinxi_zhaopian1.jpg');
INSERT INTO `yisheng` VALUES (22, '2024-01-01 09:00:00', '20002', '123456', '艾大春', '内科', '高级医师', '男', '4', '13823888882', 'upload/yishengxinxi_zhaopian2.jpg');
INSERT INTO `yisheng` VALUES (23, '2024-01-01 09:00:00', '20003', '123456', '袁华', '脑科', '高级医师', '男', '4', '13823888883', 'upload/yishengxinxi_zhaopian3.jpg');
INSERT INTO `yisheng` VALUES (24, '2024-01-01 09:00:00', '20004', '123456', '秋雅', '眼科', '高级医师', '女', '6', '13823888884', 'upload/yishengxinxi_zhaopian4.jpg');
INSERT INTO `yisheng` VALUES (25, '2024-01-01 09:00:00', '20005', '123456', '张扬', '口腔科', '高级医师', '男', '3', '13823888885', 'upload/yishengxinxi_zhaopian5.jpg');
INSERT INTO `yisheng` VALUES (26, '2024-01-01 09:00:00', '20006', '123456', '马冬梅', '皮肤科', '高级医师', '女', '7', '13823888886', 'upload/yishengxinxi_zhaopian6.jpg');

-- ----------------------------
-- Table structure for yishengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yishengxinxi`;
CREATE TABLE `yishengxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `guahaoxuzhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '挂号须知',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `guahaofei` float NOT NULL COMMENT '挂号费',
  `jiuyiliucheng` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '就医流程',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `jianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yishengxinxi
-- ----------------------------
INSERT INTO `yishengxinxi` VALUES (41, '2024-01-01 09:00:00', '20001', '夏洛', '这里是外科，请外部受伤或出血的同学选择预约挂号', '外科', '高级医师', 5, '就医流程：先挂号，在查找医生选择时间并预约', '13823888881', 'upload/yishengxinxi_zhaopian1.jpg', '中国医科大学博士毕业，有多年工作经验');
INSERT INTO `yishengxinxi` VALUES (42, '2024-01-01 09:00:00', '20002', '艾大春', '这里是内科，请有感冒，发烧，肚子疼等症状的同学在这里选择预约挂号', '内科', '高级医师', 5, '就医流程：先挂号，在查找医生选择时间并预约', '13823888882', 'upload/yishengxinxi_zhaopian2.jpg', '北京大学博士毕业，有多年工作经验');
INSERT INTO `yishengxinxi` VALUES (43, '2024-01-01 09:00:00', '20003', '袁华', '这里是脑科，主要针对头疼恶心等问题，随时可以挂号', '脑科', '高级医师', 5, '就医流程：先挂号，在查找医生选择时间并预约', '13823888883', 'upload/yishengxinxi_zhaopian3.jpg', '清华大学博士毕业，有多年工作经验');
INSERT INTO `yishengxinxi` VALUES (44, '2024-01-01 09:00:00', '20004', '秋雅', '这里是眼科，请在有视力问题或者眼睛不舒服的病人挂号', '眼科', '高级医师', 5, '就医流程：先挂号，在查找医生选择时间并预约', '13823888884', 'upload/yishengxinxi_zhaopian4.jpg', '四川大学博士毕业，有多年工作经验');
INSERT INTO `yishengxinxi` VALUES (45, '2024-01-01 09:00:00', '20005', '张扬', '这里是口腔科，口腔及牙齿有问题请选择这里预约挂号', '口腔科', '高级医师', 5, '就医流程：先挂号，在查找医生选择时间并预约', '13823888885', 'upload/yishengxinxi_zhaopian5.jpg', '中国医科大学博士毕业，有多年工作经验');
INSERT INTO `yishengxinxi` VALUES (46, '2024-01-01 09:00:00', '20006', '马冬梅', '这里是皮肤科，针对皮肤过敏，晒伤，随时可以的预约挂号', '皮肤科', '高级医师', 5, '就医流程：先挂号，在查找医生选择时间并预约', '13823888886', 'upload/yishengxinxi_zhaopian6.jpg', '中国医科大学博士毕业，有多年工作经验');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1712668439163 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2024-04-01 17:27:27', '10001', '123456', '乔家劲', '男', '13623666661', '1班', '440300199101010001');
INSERT INTO `yonghu` VALUES (12, '2024-04-01 17:38:38', '10002', '123456', '陈俊男', '男', '13623666662', '经济与管理学院', '440300199202020002');
INSERT INTO `yonghu` VALUES (13, '2024-04-01 18:01:12', '10003', '123456', '张甜甜', '女', '13623666663', '农学院', '440300199303030003');
INSERT INTO `yonghu` VALUES (14, '2024-04-01 18:12:23', '10004', '123456', '李尚武', '男', '13623666664', '职业师范学院', '440300199404040004');
INSERT INTO `yonghu` VALUES (15, '2024-04-01 19:02:27', '10005', '123456', '钱多多', '男', '13623666665', '计算机与信息学院', '440300199505050005');
INSERT INTO `yonghu` VALUES (16, '2024-04-02 12:32:32', '10006', '123456', '周末', '女', '13623666666', '软件学院', '440300199606060006');
INSERT INTO `yonghu` VALUES (17, '2024-04-02 17:23:12', '10007', '123456', '宋明辉', '男', '13922222222', '林学院', '412345678912345678');

SET FOREIGN_KEY_CHECKS = 1;
