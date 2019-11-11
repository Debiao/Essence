/*
 Navicat Premium Data Transfer

 Source Server         : xt
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : admin_v5

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/11/2019 14:21:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for store_express_company
-- ----------------------------
DROP TABLE IF EXISTS `store_express_company`;
CREATE TABLE `store_express_company` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `express_title` varchar(50) DEFAULT '' COMMENT '快递公司名称',
  `express_code` varchar(50) DEFAULT '' COMMENT '快递公司代码',
  `express_desc` varchar(512) DEFAULT '' COMMENT '快递公司描述',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0.无效,1.有效)',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='商城-快递-公司';

-- ----------------------------
-- Records of store_express_company
-- ----------------------------
BEGIN;
INSERT INTO `store_express_company` VALUES (5, 'AAE全球专递', 'aae', NULL, 0, 0, 0, '2017-09-12 11:53:40');
INSERT INTO `store_express_company` VALUES (6, '安捷快递', 'anjie', '', 0, 0, 0, '2017-09-13 15:27:26');
INSERT INTO `store_express_company` VALUES (7, '安信达快递', 'anxindakuaixi', NULL, 0, 0, 0, '2017-09-13 16:05:19');
INSERT INTO `store_express_company` VALUES (8, '彪记快递', 'biaojikuaidi', NULL, 0, 0, 0, '2017-09-13 16:05:26');
INSERT INTO `store_express_company` VALUES (9, 'BHT', 'bht', '', 0, 0, 0, '2017-09-13 16:05:37');
INSERT INTO `store_express_company` VALUES (10, '百福东方国际物流', 'baifudongfang', NULL, 0, 0, 0, '2017-09-13 16:05:41');
INSERT INTO `store_express_company` VALUES (11, '中国东方（COE）', 'coe', NULL, 0, 0, 0, '2017-09-13 16:05:48');
INSERT INTO `store_express_company` VALUES (12, '长宇物流', 'changyuwuliu', NULL, 0, 0, 0, '2017-09-13 16:05:58');
INSERT INTO `store_express_company` VALUES (13, '大田物流', 'datianwuliu', NULL, 0, 0, 0, '2017-09-13 16:06:06');
INSERT INTO `store_express_company` VALUES (14, '德邦物流', 'debangwuliu', '', 0, 1, 0, '2017-09-13 16:06:14');
INSERT INTO `store_express_company` VALUES (15, 'DHL', 'dhl', NULL, 0, 0, 0, '2017-09-13 16:06:24');
INSERT INTO `store_express_company` VALUES (16, 'DPEX', 'dpex', NULL, 0, 0, 0, '2017-09-13 16:06:29');
INSERT INTO `store_express_company` VALUES (17, 'd速快递', 'dsukuaidi', NULL, 0, 0, 0, '2017-09-13 16:06:34');
INSERT INTO `store_express_company` VALUES (18, '递四方', 'disifang', NULL, 0, 0, 0, '2017-09-13 16:06:40');
INSERT INTO `store_express_company` VALUES (19, 'EMS快递', 'ems', '', 1, 0, 0, '2017-09-13 16:06:47');
INSERT INTO `store_express_company` VALUES (20, 'FEDEX（国外）', 'fedex', NULL, 0, 0, 0, '2017-09-13 16:06:56');
INSERT INTO `store_express_company` VALUES (21, '飞康达物流', 'feikangda', NULL, 0, 0, 0, '2017-09-13 16:07:03');
INSERT INTO `store_express_company` VALUES (22, '凤凰快递', 'fenghuangkuaidi', NULL, 0, 0, 0, '2017-09-13 16:07:10');
INSERT INTO `store_express_company` VALUES (23, '飞快达', 'feikuaida', NULL, 0, 0, 0, '2017-09-13 16:07:16');
INSERT INTO `store_express_company` VALUES (24, '国通快递', 'guotongkuaidi', NULL, 0, 0, 0, '2017-09-13 16:07:27');
INSERT INTO `store_express_company` VALUES (25, '港中能达物流', 'ganzhongnengda', NULL, 0, 0, 0, '2017-09-13 16:07:33');
INSERT INTO `store_express_company` VALUES (26, '广东邮政物流', 'guangdongyouzhengwuliu', NULL, 0, 0, 0, '2017-09-13 16:08:22');
INSERT INTO `store_express_company` VALUES (27, '共速达', 'gongsuda', NULL, 0, 0, 0, '2017-09-13 16:08:48');
INSERT INTO `store_express_company` VALUES (28, '汇通快运', 'huitongkuaidi', NULL, 0, 0, 0, '2017-09-13 16:08:56');
INSERT INTO `store_express_company` VALUES (29, '恒路物流', 'hengluwuliu', NULL, 0, 0, 0, '2017-09-13 16:09:02');
INSERT INTO `store_express_company` VALUES (30, '华夏龙物流', 'huaxialongwuliu', NULL, 0, 0, 0, '2017-09-13 16:09:12');
INSERT INTO `store_express_company` VALUES (31, '海红', 'haihongwangsong', NULL, 0, 0, 0, '2017-09-13 16:09:20');
INSERT INTO `store_express_company` VALUES (32, '海外环球', 'haiwaihuanqiu', NULL, 0, 0, 0, '2017-09-13 16:09:27');
INSERT INTO `store_express_company` VALUES (33, '佳怡物流', 'jiayiwuliu', NULL, 0, 0, 0, '2017-09-13 16:09:35');
INSERT INTO `store_express_company` VALUES (34, '京广速递', 'jinguangsudikuaijian', NULL, 0, 0, 0, '2017-09-13 16:09:42');
INSERT INTO `store_express_company` VALUES (35, '急先达', 'jixianda', NULL, 0, 0, 0, '2017-09-13 16:09:49');
INSERT INTO `store_express_company` VALUES (36, '佳吉物流', 'jjwl', NULL, 0, 0, 0, '2017-09-13 16:10:01');
INSERT INTO `store_express_company` VALUES (37, '加运美物流', 'jymwl', NULL, 0, 0, 0, '2017-09-13 16:10:13');
INSERT INTO `store_express_company` VALUES (38, '金大物流', 'jindawuliu', NULL, 0, 0, 0, '2017-09-13 16:10:22');
INSERT INTO `store_express_company` VALUES (39, '嘉里大通', 'jialidatong', NULL, 0, 0, 0, '2017-09-13 16:10:33');
INSERT INTO `store_express_company` VALUES (40, '晋越快递', 'jykd', NULL, 0, 0, 0, '2017-09-13 16:10:40');
INSERT INTO `store_express_company` VALUES (41, '快捷速递', 'kuaijiesudi', NULL, 0, 0, 0, '2017-09-13 16:10:49');
INSERT INTO `store_express_company` VALUES (42, '联邦快递（国内）', 'lianb', NULL, 0, 0, 0, '2017-09-13 16:10:58');
INSERT INTO `store_express_company` VALUES (43, '联昊通物流', 'lianhaowuliu', NULL, 0, 0, 0, '2017-09-13 16:11:07');
INSERT INTO `store_express_company` VALUES (44, '龙邦物流', 'longbanwuliu', NULL, 0, 0, 0, '2017-09-13 16:11:15');
INSERT INTO `store_express_company` VALUES (45, '立即送', 'lijisong', NULL, 0, 0, 0, '2017-09-13 16:11:25');
INSERT INTO `store_express_company` VALUES (46, '乐捷递', 'lejiedi', NULL, 0, 0, 0, '2017-09-13 16:11:36');
INSERT INTO `store_express_company` VALUES (47, '民航快递', 'minghangkuaidi', NULL, 0, 0, 0, '2017-09-13 16:11:45');
INSERT INTO `store_express_company` VALUES (48, '美国快递', 'meiguokuaidi', NULL, 0, 0, 0, '2017-09-13 16:11:53');
INSERT INTO `store_express_company` VALUES (49, '门对门', 'menduimen', NULL, 0, 0, 0, '2017-09-13 16:12:01');
INSERT INTO `store_express_company` VALUES (50, 'OCS', 'ocs', NULL, 0, 0, 0, '2017-09-13 16:12:10');
INSERT INTO `store_express_company` VALUES (51, '配思货运', 'peisihuoyunkuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:18');
INSERT INTO `store_express_company` VALUES (52, '全晨快递', 'quanchenkuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:26');
INSERT INTO `store_express_company` VALUES (53, '全峰快递', 'quanfengkuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:34');
INSERT INTO `store_express_company` VALUES (54, '全际通物流', 'quanjitong', NULL, 0, 0, 0, '2017-09-13 16:12:41');
INSERT INTO `store_express_company` VALUES (55, '全日通快递', 'quanritongkuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:49');
INSERT INTO `store_express_company` VALUES (56, '全一快递', 'quanyikuaidi', NULL, 0, 0, 0, '2017-09-13 16:12:56');
INSERT INTO `store_express_company` VALUES (57, '如风达', 'rufengda', NULL, 0, 0, 0, '2017-09-13 16:13:03');
INSERT INTO `store_express_company` VALUES (58, '三态速递', 'santaisudi', NULL, 0, 0, 0, '2017-09-13 16:13:15');
INSERT INTO `store_express_company` VALUES (59, '盛辉物流', 'shenghuiwuliu', NULL, 0, 0, 0, '2017-09-13 16:13:22');
INSERT INTO `store_express_company` VALUES (60, '申通', 'shentong', NULL, 0, 0, 0, '2017-09-13 16:13:34');
INSERT INTO `store_express_company` VALUES (61, '顺丰', 'shunfeng', '', 0, 0, 0, '2017-09-13 16:13:41');
INSERT INTO `store_express_company` VALUES (62, '速尔物流', 'sue', NULL, 0, 0, 0, '2017-09-13 16:13:48');
INSERT INTO `store_express_company` VALUES (63, '盛丰物流', 'shengfeng', NULL, 0, 0, 0, '2017-09-13 16:13:55');
INSERT INTO `store_express_company` VALUES (64, '赛澳递', 'saiaodi', NULL, 0, 0, 0, '2017-09-13 16:14:02');
INSERT INTO `store_express_company` VALUES (65, '天地华宇', 'tiandihuayu', NULL, 0, 0, 0, '2017-09-13 16:14:11');
INSERT INTO `store_express_company` VALUES (66, '天天快递', 'tiantian', NULL, 0, 0, 0, '2017-09-13 16:14:19');
INSERT INTO `store_express_company` VALUES (67, 'TNT', 'tnt', NULL, 0, 0, 0, '2017-09-13 16:14:26');
INSERT INTO `store_express_company` VALUES (68, 'UPS', 'ups', NULL, 0, 0, 0, '2017-09-13 16:14:29');
INSERT INTO `store_express_company` VALUES (69, '万家物流', 'wanjiawuliu', NULL, 0, 0, 0, '2017-09-13 16:14:37');
INSERT INTO `store_express_company` VALUES (70, '文捷航空速递', 'wenjiesudi', NULL, 0, 0, 0, '2017-09-13 16:14:46');
INSERT INTO `store_express_company` VALUES (71, '伍圆', 'wuyuan', NULL, 0, 0, 0, '2017-09-13 16:14:52');
INSERT INTO `store_express_company` VALUES (72, '万象物流', 'wxwl', NULL, 0, 0, 0, '2017-09-13 16:15:00');
INSERT INTO `store_express_company` VALUES (73, '新邦物流', 'xinbangwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:06');
INSERT INTO `store_express_company` VALUES (74, '信丰物流', 'xinfengwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:15');
INSERT INTO `store_express_company` VALUES (75, '亚风速递', 'yafengsudi', NULL, 0, 0, 0, '2017-09-13 16:15:23');
INSERT INTO `store_express_company` VALUES (76, '一邦速递', 'yibangwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:30');
INSERT INTO `store_express_company` VALUES (77, '优速物流', 'youshuwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:36');
INSERT INTO `store_express_company` VALUES (78, '邮政包裹挂号信', 'youzhengguonei', NULL, 0, 3, 0, '2017-09-13 16:15:44');
INSERT INTO `store_express_company` VALUES (79, '邮政国际包裹挂号信', 'youzhengguoji', NULL, 0, 2, 0, '2017-09-13 16:15:51');
INSERT INTO `store_express_company` VALUES (80, '远成物流', 'yuanchengwuliu', NULL, 0, 0, 0, '2017-09-13 16:15:57');
INSERT INTO `store_express_company` VALUES (81, '圆通速递', 'yuantong', '', 1, 1, 0, '2017-09-13 16:16:03');
INSERT INTO `store_express_company` VALUES (82, '源伟丰快递', 'yuanweifeng', NULL, 0, 0, 0, '2017-09-13 16:16:10');
INSERT INTO `store_express_company` VALUES (83, '元智捷诚快递', 'yuanzhijiecheng', NULL, 0, 0, 0, '2017-09-13 16:16:17');
INSERT INTO `store_express_company` VALUES (84, '韵达快运', 'yunda', NULL, 0, 0, 0, '2017-09-13 16:16:24');
INSERT INTO `store_express_company` VALUES (85, '运通快递', 'yuntongkuaidi', NULL, 0, 0, 0, '2017-09-13 16:16:33');
INSERT INTO `store_express_company` VALUES (86, '越丰物流', 'yuefengwuliu', NULL, 0, 0, 0, '2017-09-13 16:16:40');
INSERT INTO `store_express_company` VALUES (87, '源安达', 'yad', NULL, 0, 0, 0, '2017-09-13 16:16:47');
INSERT INTO `store_express_company` VALUES (88, '银捷速递', 'yinjiesudi', NULL, 0, 0, 0, '2017-09-13 16:16:56');
INSERT INTO `store_express_company` VALUES (89, '宅急送', 'zhaijisong', NULL, 0, 0, 0, '2017-09-13 16:17:03');
INSERT INTO `store_express_company` VALUES (90, '中铁快运', 'zhongtiekuaiyun', NULL, 0, 0, 0, '2017-09-13 16:17:10');
INSERT INTO `store_express_company` VALUES (91, '中通速递', 'zhongtong', '', 0, 0, 0, '2017-09-13 16:17:16');
INSERT INTO `store_express_company` VALUES (92, '中邮物流', 'zhongyouwuliu', NULL, 0, 0, 0, '2017-09-13 16:17:27');
INSERT INTO `store_express_company` VALUES (93, '忠信达', 'zhongxinda', NULL, 0, 0, 0, '2017-09-13 16:17:34');
INSERT INTO `store_express_company` VALUES (94, '芝麻开门', 'zhimakaimen', '', 1, 0, 0, '2017-09-13 16:17:41');
COMMIT;

-- ----------------------------
-- Table structure for store_express_template
-- ----------------------------
DROP TABLE IF EXISTS `store_express_template`;
CREATE TABLE `store_express_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rule` longtext COMMENT '省份规则内容',
  `order_reduction_state` tinyint(1) unsigned DEFAULT '0' COMMENT '订单满减状态',
  `order_reduction_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '订单满减金额',
  `first_number` bigint(20) unsigned DEFAULT '0' COMMENT '首件数量',
  `first_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '首件邮费',
  `next_number` bigint(20) unsigned DEFAULT '0' COMMENT '续件数量',
  `next_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '续件邮费',
  `is_default` tinyint(1) unsigned DEFAULT '0' COMMENT '默认规则',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_express_template_is_default` (`is_default`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商城-快递-模板';

-- ----------------------------
-- Table structure for store_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_goods`;
CREATE TABLE `store_goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品分类',
  `title` text COMMENT '商品标题',
  `logo` text COMMENT '商品图标',
  `specs` text COMMENT '商品规格JSON',
  `lists` text COMMENT '商品列表JSON',
  `image` text COMMENT '商品图片',
  `content` longtext COMMENT '商品内容',
  `number_sales` bigint(20) unsigned DEFAULT '0' COMMENT '销售数量',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '库库数量',
  `price_rate` decimal(20,4) unsigned DEFAULT '0.0000' COMMENT '返利比例',
  `price_express` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '统一运费',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '销售状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_goods_status` (`status`) USING BTREE,
  KEY `index_store_goods_cate_id` (`cate_id`) USING BTREE,
  KEY `index_store_goods_is_deleted` (`is_deleted`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品-记录';

-- ----------------------------
-- Table structure for store_goods_cate
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_cate`;
CREATE TABLE `store_goods_cate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(500) DEFAULT '' COMMENT '分类图标',
  `title` varchar(255) DEFAULT '' COMMENT '分类名称',
  `desc` varchar(1024) DEFAULT '' COMMENT '分类描述',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '销售状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_goods_cate_is_deleted` (`is_deleted`) USING BTREE,
  KEY `index_store_goods_cate_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品-分类';

-- ----------------------------
-- Table structure for store_goods_list
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_list`;
CREATE TABLE `store_goods_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(20) DEFAULT '' COMMENT 'sku',
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品ID',
  `goods_spec` varchar(100) DEFAULT '' COMMENT '商品规格',
  `price_market` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品标价',
  `price_selling` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品售价',
  `number_sales` bigint(20) unsigned DEFAULT '0' COMMENT '销售数量',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '商品库存',
  `number_virtual` bigint(20) unsigned DEFAULT '0' COMMENT '虚拟销量',
  `number_express` bigint(20) unsigned DEFAULT '1' COMMENT '快递数量',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '商品状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_goods_list_id` (`goods_id`) USING BTREE,
  KEY `index_store_goods_list_spec` (`goods_spec`) USING BTREE,
  KEY `index_store_goods_list_status` (`status`) USING BTREE,
  KEY `index_store_goods_list_sku` (`sku`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品-详情';

-- ----------------------------
-- Table structure for store_goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_stock`;
CREATE TABLE `store_goods_stock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品ID',
  `goods_spec` varchar(200) DEFAULT '' COMMENT '商品规格',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '商品库存',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_goods_stock_gid` (`goods_id`) USING BTREE,
  KEY `index_store_goods_stock_spec` (`goods_spec`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品-入库';

-- ----------------------------
-- Table structure for store_member
-- ----------------------------
DROP TABLE IF EXISTS `store_member`;
CREATE TABLE `store_member` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) DEFAULT '' COMMENT '微信OPENID',
  `headimg` varchar(512) DEFAULT '' COMMENT '头像地址',
  `nickname` varchar(100) DEFAULT '' COMMENT '微信昵称',
  `phone` varchar(20) DEFAULT '' COMMENT '联系手机',
  `username` varchar(50) DEFAULT '' COMMENT '真实姓名',
  `vip_level` tinyint(1) unsigned DEFAULT '0' COMMENT '会员级别(0游客,1为临时,2为VIP1,3为VIP2)',
  `vip_date` date DEFAULT NULL COMMENT '保级日期',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_member_openid` (`openid`) USING BTREE,
  KEY `index_store_member_phone` (`phone`) USING BTREE,
  KEY `index_store_member_vip_level` (`vip_level`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-记录';

-- ----------------------------
-- Table structure for store_member_address
-- ----------------------------
DROP TABLE IF EXISTS `store_member_address`;
CREATE TABLE `store_member_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `name` varchar(100) DEFAULT '' COMMENT '收货姓名',
  `phone` varchar(20) DEFAULT '' COMMENT '收货手机',
  `province` varchar(100) DEFAULT '' COMMENT '地址-省份',
  `city` varchar(100) DEFAULT '' COMMENT '地址-城市',
  `area` varchar(100) DEFAULT '' COMMENT '地址-区域',
  `address` varchar(255) DEFAULT '' COMMENT '地址-详情',
  `is_default` tinyint(1) unsigned DEFAULT '0' COMMENT '默认地址',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_member_address_mid` (`mid`) USING BTREE,
  KEY `index_store_member_address_is_default` (`is_default`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-地址';

-- ----------------------------
-- Table structure for store_member_sms_history
-- ----------------------------
DROP TABLE IF EXISTS `store_member_sms_history`;
CREATE TABLE `store_member_sms_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `phone` varchar(20) DEFAULT '' COMMENT '目标手机',
  `content` varchar(512) DEFAULT '' COMMENT '短信内容',
  `result` varchar(100) DEFAULT '' COMMENT '返回结果',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_member_sms_history_phone` (`phone`) USING BTREE,
  KEY `index_store_member_sms_history_mid` (`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-短信';

-- ----------------------------
-- Table structure for store_order
-- ----------------------------
DROP TABLE IF EXISTS `store_order`;
CREATE TABLE `store_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `order_no` bigint(20) unsigned DEFAULT '0' COMMENT '订单单号',
  `from_mid` bigint(20) unsigned DEFAULT '0' COMMENT '推荐会员ID',
  `price_total` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '待付金额统计',
  `price_goods` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品费用统计',
  `price_express` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '快递费用统计',
  `price_rate_amount` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '返利金额统计',
  `pay_state` tinyint(1) unsigned DEFAULT '0' COMMENT '支付状态(0未支付,1已支付)',
  `pay_type` varchar(10) DEFAULT '' COMMENT '支付方式',
  `pay_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '支付金额',
  `pay_no` varchar(100) DEFAULT '' COMMENT '支付单号',
  `pay_at` datetime DEFAULT NULL COMMENT '支付时间',
  `cancel_state` tinyint(1) unsigned DEFAULT '0' COMMENT '取消状态',
  `cancel_at` datetime DEFAULT NULL COMMENT '取消时间',
  `cancel_desc` varchar(500) DEFAULT '' COMMENT '取消描述',
  `refund_state` tinyint(1) unsigned DEFAULT '0' COMMENT '退款状态(0未退款,1待退款,2已退款)',
  `refund_at` datetime DEFAULT NULL COMMENT '退款时间',
  `refund_no` varchar(100) DEFAULT '' COMMENT '退款单号',
  `refund_price` decimal(20,2) DEFAULT '0.00' COMMENT '退款金额',
  `refund_desc` varchar(500) DEFAULT '' COMMENT '退款描述',
  `express_state` tinyint(1) unsigned DEFAULT '0' COMMENT '发货状态(0未发货,1已发货,2已签收)',
  `express_company_code` varchar(255) DEFAULT '' COMMENT '发货快递公司编码',
  `express_company_title` varchar(255) DEFAULT '' COMMENT '发货快递公司名称',
  `express_send_no` varchar(50) DEFAULT '' COMMENT '发货单号',
  `express_send_at` datetime DEFAULT NULL COMMENT '发货时间',
  `express_address_id` bigint(20) unsigned DEFAULT '0' COMMENT '收货地址ID',
  `express_name` varchar(255) DEFAULT '' COMMENT '收货人姓名',
  `express_phone` varchar(11) DEFAULT '' COMMENT '收货人手机',
  `express_province` varchar(255) DEFAULT '' COMMENT '收货地址省份',
  `express_city` varchar(255) DEFAULT '' COMMENT '收货地址城市',
  `express_area` varchar(255) DEFAULT '' COMMENT '收货地址区域',
  `express_address` varchar(255) DEFAULT '' COMMENT '收货详细地址',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '订单状态(0已取消,1预订单待补全,2新订单待支付,3已支付待发货,4已发货待签收,5已完成)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_groups_order_mid` (`mid`) USING BTREE,
  KEY `index_store_groups_order_order_no` (`order_no`) USING BTREE,
  KEY `index_store_groups_order_pay_state` (`pay_state`) USING BTREE,
  KEY `index_store_groups_order_cancel_state` (`cancel_state`) USING BTREE,
  KEY `index_store_groups_order_refund_state` (`refund_state`) USING BTREE,
  KEY `index_store_groups_order_status` (`status`) USING BTREE,
  KEY `index_store_groups_order_pay_no` (`pay_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单-记录';

-- ----------------------------
-- Table structure for store_order_list
-- ----------------------------
DROP TABLE IF EXISTS `store_order_list`;
CREATE TABLE `store_order_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `from_id` bigint(20) unsigned DEFAULT '0' COMMENT '推荐会员',
  `order_no` bigint(20) unsigned DEFAULT '0' COMMENT '订单单号',
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品标识',
  `goods_title` varchar(255) DEFAULT '' COMMENT '商品标题',
  `goods_logo` varchar(500) DEFAULT '' COMMENT '商品图标',
  `goods_spec` varchar(100) DEFAULT '' COMMENT '商品规格',
  `price_real` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '交易金额',
  `price_selling` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '销售价格',
  `price_market` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '市场价格',
  `price_express` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '快递费用',
  `price_rate` decimal(20,4) unsigned DEFAULT '0.0000' COMMENT '分成比例',
  `price_rate_amount` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '分成金额',
  `number_goods` bigint(20) unsigned DEFAULT '0' COMMENT '商品数量',
  `number_express` bigint(20) unsigned DEFAULT '0' COMMENT '快递数量',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_store_goods_list_id` (`goods_id`) USING BTREE,
  KEY `index_store_goods_list_spec` (`goods_spec`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单-详情';

-- ----------------------------
-- Table structure for system_auth
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '权限状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE,
  KEY `index_system_auth_title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统-权限';

-- ----------------------------
-- Records of system_auth
-- ----------------------------
BEGIN;
INSERT INTO `system_auth` VALUES (1, '普通用户', 1, 0, '只能给ipa打包', '2019-09-12 11:03:33');
COMMIT;

-- ----------------------------
-- Table structure for system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色',
  `node` varchar(200) DEFAULT NULL COMMENT '节点',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COMMENT='系统-权限-授权';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------
BEGIN;
INSERT INTO `system_auth_node` VALUES (45, 1, 'wechat');
INSERT INTO `system_auth_node` VALUES (46, 1, 'wechat/config');
INSERT INTO `system_auth_node` VALUES (47, 1, 'wechat/config/payment');
INSERT INTO `system_auth_node` VALUES (48, 1, 'wechat/fans');
INSERT INTO `system_auth_node` VALUES (49, 1, 'wechat/fans/index');
INSERT INTO `system_auth_node` VALUES (50, 1, 'wechat/fans/setblack');
INSERT INTO `system_auth_node` VALUES (51, 1, 'wechat/fans/delblack');
INSERT INTO `system_auth_node` VALUES (52, 1, 'wechat/fans/sync');
INSERT INTO `system_auth_node` VALUES (53, 1, 'wechat/fans/remove');
INSERT INTO `system_auth_node` VALUES (54, 1, 'wechat/keys');
INSERT INTO `system_auth_node` VALUES (55, 1, 'wechat/keys/defaults');
INSERT INTO `system_auth_node` VALUES (56, 1, 'wechat/menu');
INSERT INTO `system_auth_node` VALUES (57, 1, 'wechat/menu/index');
COMMIT;

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '配置名',
  `value` varchar(500) DEFAULT '' COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_config_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COMMENT='系统-配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
BEGIN;
INSERT INTO `system_config` VALUES (1, 'app_name', '🐰');
INSERT INTO `system_config` VALUES (2, 'site_name', 'Rabbit');
INSERT INTO `system_config` VALUES (3, 'app_version', 'v1');
INSERT INTO `system_config` VALUES (4, 'site_copy', '©版权所有 2019-2029');
INSERT INTO `system_config` VALUES (5, 'site_icon', 'http://zt.gzxstech.com:666/upload/74d0f3bd756ae307/3858932f2bbd22f0.png');
INSERT INTO `system_config` VALUES (7, 'miitbeian', '粤ICP备 9999999999号-9');
INSERT INTO `system_config` VALUES (8, 'storage_type', 'local');
INSERT INTO `system_config` VALUES (9, 'storage_local_exts', 'doc,gif,icon,ipa,jpg,mp3,mp4,p12,pem,png,rar');
INSERT INTO `system_config` VALUES (10, 'storage_qiniu_bucket', 'https');
INSERT INTO `system_config` VALUES (11, 'storage_qiniu_domain', '用你自己的吧');
INSERT INTO `system_config` VALUES (12, 'storage_qiniu_access_key', '用你自己的吧');
INSERT INTO `system_config` VALUES (13, 'storage_qiniu_secret_key', '用你自己的吧');
INSERT INTO `system_config` VALUES (14, 'storage_oss_bucket', 'cuci-mytest');
INSERT INTO `system_config` VALUES (15, 'storage_oss_endpoint', 'oss-cn-hangzhou.aliyuncs.com');
INSERT INTO `system_config` VALUES (16, 'storage_oss_domain', '用你自己的吧');
INSERT INTO `system_config` VALUES (17, 'storage_oss_keyid', '用你自己的吧');
INSERT INTO `system_config` VALUES (18, 'storage_oss_secret', '用你自己的吧');
INSERT INTO `system_config` VALUES (36, 'storage_oss_is_https', 'http');
INSERT INTO `system_config` VALUES (43, 'storage_qiniu_region', '华东');
INSERT INTO `system_config` VALUES (44, 'storage_qiniu_is_https', 'https');
INSERT INTO `system_config` VALUES (45, 'wechat_mch_id', '1332187001');
INSERT INTO `system_config` VALUES (46, 'wechat_mch_key', 'A82DC5BD1F3359081049C568D8502BC5');
INSERT INTO `system_config` VALUES (47, 'wechat_mch_ssl_type', 'p12');
INSERT INTO `system_config` VALUES (48, 'wechat_mch_ssl_p12', '65b8e4f56718182d/1bc857ee646aa15d.p12');
INSERT INTO `system_config` VALUES (49, 'wechat_mch_ssl_key', 'cc2e3e1345123930/c407d033294f283d.pem');
INSERT INTO `system_config` VALUES (50, 'wechat_mch_ssl_cer', '966eaf89299e9c95/7014872cc109b29a.pem');
INSERT INTO `system_config` VALUES (51, 'wechat_token', 'mytoken');
INSERT INTO `system_config` VALUES (52, 'wechat_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES (53, 'wechat_appsecret', '9978422e0e431643d4b42868d183d60b');
INSERT INTO `system_config` VALUES (54, 'wechat_encodingaeskey', '');
INSERT INTO `system_config` VALUES (55, 'wechat_push_url', '消息推送地址：http://127.0.0.1:8000/wechat/api.push');
INSERT INTO `system_config` VALUES (56, 'wechat_type', 'thr');
INSERT INTO `system_config` VALUES (57, 'wechat_thr_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES (58, 'wechat_thr_appkey', 'd2c0139213d7a27898ca047d81a617be');
INSERT INTO `system_config` VALUES (60, 'wechat_thr_appurl', '消息推送地址：http://127.0.0.1:8000/wechat/api.push');
INSERT INTO `system_config` VALUES (61, 'component_appid', 'wx28b58798480874f9');
INSERT INTO `system_config` VALUES (62, 'component_appsecret', '87ddce1cc24e4cd691039f926febd942');
INSERT INTO `system_config` VALUES (63, 'component_token', 'P8QHTIxpBEq88IrxatqhgpBm2OAQROkI');
INSERT INTO `system_config` VALUES (64, 'component_encodingaeskey', 'L5uFIa0U6KLalPyXckyqoVIJYLhsfrg8k9YzybZIHsx');
INSERT INTO `system_config` VALUES (65, 'system_message_state', '0');
INSERT INTO `system_config` VALUES (66, 'sms_zt_username', '可以找CUCI申请');
INSERT INTO `system_config` VALUES (67, 'sms_zt_password', '可以找CUCI申请');
INSERT INTO `system_config` VALUES (68, 'sms_reg_template', '您的验证码为{code}，请在十分钟内完成操作！');
INSERT INTO `system_config` VALUES (69, 'sms_secure', '可以找CUCI申请');
INSERT INTO `system_config` VALUES (70, 'store_title', '测试商城');
INSERT INTO `system_config` VALUES (71, 'store_order_wait_time', '0.50');
INSERT INTO `system_config` VALUES (72, 'store_order_clear_time', '24.00');
INSERT INTO `system_config` VALUES (73, 'store_order_confirm_time', '60.00');
COMMIT;

-- ----------------------------
-- Table structure for system_data
-- ----------------------------
DROP TABLE IF EXISTS `system_data`;
CREATE TABLE `system_data` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置名',
  `value` longtext COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_data_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统-数据';

-- ----------------------------
-- Table structure for system_jobs
-- ----------------------------
DROP TABLE IF EXISTS `system_jobs`;
CREATE TABLE `system_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `queue` varchar(100) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` bigint(20) unsigned NOT NULL DEFAULT '0',
  `reserved` bigint(20) unsigned NOT NULL DEFAULT '0',
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_jobs_reserved` (`reserved`) USING BTREE,
  KEY `index_system_jobs_attempts` (`attempts`) USING BTREE,
  KEY `index_system_jobs_reserved_at` (`reserved_at`) USING BTREE,
  KEY `index_system_jobs_available_at` (`available_at`) USING BTREE,
  KEY `index_system_jobs_create_at` (`created_at`) USING BTREE,
  KEY `index_system_jobs_queue` (`queue`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统-任务';

-- ----------------------------
-- Table structure for system_jobs_log
-- ----------------------------
DROP TABLE IF EXISTS `system_jobs_log`;
CREATE TABLE `system_jobs_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '任务名称',
  `uri` varchar(500) DEFAULT '' COMMENT '任务对象',
  `later` bigint(20) unsigned DEFAULT '0' COMMENT '任务延时',
  `data` longtext COMMENT '任务数据',
  `desc` varchar(500) DEFAULT '' COMMENT '任务描述',
  `double` tinyint(1) unsigned DEFAULT '1' COMMENT '任务多开',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '任务状态(1新任务,2任务进行中,3任务成功,4任务失败)',
  `status_at` datetime DEFAULT NULL COMMENT '任务状态时间',
  `status_desc` varchar(500) DEFAULT '' COMMENT '任务状态描述',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_jobs_log_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统-任务-日志';

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `geoip` varchar(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为名称',
  `content` varchar(1024) NOT NULL DEFAULT '' COMMENT '操作内容描述',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COMMENT='系统-日志';

-- ----------------------------
-- Records of system_log
-- ----------------------------
BEGIN;
INSERT INTO `system_log` VALUES (97, 'admin/login/index', '219.137.52.166', '系统管理', '用户登录系统成功', 'admin', '2019-11-06 11:12:14');
INSERT INTO `system_log` VALUES (98, 'admin/login/index', '219.137.52.166', '系统管理', '用户登录系统成功', 'LiJie', '2019-11-06 11:14:18');
INSERT INTO `system_log` VALUES (99, 'admin/login/index', '219.137.52.166', '系统管理', '用户登录系统成功', 'LiJie', '2019-11-07 16:32:14');
INSERT INTO `system_log` VALUES (100, 'admin/login/index', '116.22.45.70', '系统管理', '用户登录系统成功', 'LiJie', '2019-11-08 20:31:29');
INSERT INTO `system_log` VALUES (101, 'admin/login/index', '116.22.44.30', '系统管理', '用户登录系统成功', 'admin', '2019-11-11 10:11:01');
COMMIT;

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned DEFAULT '0' COMMENT '父ID',
  `title` varchar(100) DEFAULT '' COMMENT '名称',
  `node` varchar(200) DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) DEFAULT '_self' COMMENT '打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_menu_node` (`node`(191)) USING BTREE,
  KEY `index_system_menu_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COMMENT='系统-菜单';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
BEGIN;
INSERT INTO `system_menu` VALUES (1, 0, '后台首页', '', '', 'admin/index/main', '', '_self', 500, 0, '2018-09-05 17:59:38');
INSERT INTO `system_menu` VALUES (2, 0, '系统管理', '', '', '#', '', '_self', 100, 1, '2018-09-05 18:04:52');
INSERT INTO `system_menu` VALUES (3, 4, '系统菜单管理', '', 'layui-icon layui-icon-layouts', 'admin/menu/index', '', '_self', 1, 1, '2018-09-05 18:05:26');
INSERT INTO `system_menu` VALUES (4, 2, '系统配置', '', '', '#', '', '_self', 20, 1, '2018-09-05 18:07:17');
INSERT INTO `system_menu` VALUES (5, 12, '系统用户管理', '', 'layui-icon layui-icon-username', 'admin/user/index', '', '_self', 1, 1, '2018-09-06 11:10:42');
INSERT INTO `system_menu` VALUES (7, 12, '访问权限管理', '', 'layui-icon layui-icon-vercode', 'admin/auth/index', '', '_self', 2, 1, '2018-09-06 15:17:14');
INSERT INTO `system_menu` VALUES (11, 4, '系统参数配置', '', 'layui-icon layui-icon-set', 'admin/config/info', '', '_self', 4, 1, '2018-09-06 16:43:47');
INSERT INTO `system_menu` VALUES (12, 2, '权限管理', '', '', '#', '', '_self', 10, 1, '2018-09-06 18:01:31');
INSERT INTO `system_menu` VALUES (13, 0, '商城管理', '', '', '#', '', '_self', 400, 0, '2018-10-12 13:56:29');
INSERT INTO `system_menu` VALUES (14, 48, '商品信息管理', '', 'layui-icon layui-icon-component', 'store/goods/index', '', '_self', 3, 0, '2018-10-12 13:56:48');
INSERT INTO `system_menu` VALUES (16, 0, '项目管理', '', '', '#', '', '_self', 300, 1, '2018-10-31 15:15:27');
INSERT INTO `system_menu` VALUES (17, 16, '项目管理', '', '', '#', '', '_self', 20, 1, '2018-10-31 15:16:46');
INSERT INTO `system_menu` VALUES (18, 17, '苹果打包', '', 'fa fa-apple', 'wechat/config/options', '', '_self', 2, 1, '2018-10-31 15:17:11');
INSERT INTO `system_menu` VALUES (19, 17, '安卓打包', '', 'fa fa-android', 'wechat/config/payment', '', '_self', 1, 1, '2018-10-31 18:28:09');
INSERT INTO `system_menu` VALUES (20, 16, '包管理', '', '', '#', '', '_self', 10, 1, '2018-11-13 11:46:27');
INSERT INTO `system_menu` VALUES (21, 20, '11111111111', '', 'layui-icon layui-icon-template', 'wechat/news/index', '', '_self', 6, 0, '2018-11-13 11:46:55');
INSERT INTO `system_menu` VALUES (22, 20, '包记录', '', 'layui-icon layui-icon-user', 'wechat/fans/index', '', '_self', 5, 1, '2018-11-15 09:51:13');
INSERT INTO `system_menu` VALUES (23, 20, '333333333333', '', 'layui-icon layui-icon-engine', 'wechat/keys/index', '', '_self', 4, 0, '2018-11-22 11:29:08');
INSERT INTO `system_menu` VALUES (24, 20, '包分析', '', 'layui-icon layui-icon-chart', 'wechat/keys/subscribe', '', '_self', 3, 0, '2018-11-27 11:45:28');
INSERT INTO `system_menu` VALUES (25, 20, '服务器', '', 'layui-icon layui-icon-survey', 'wechat/keys/defaults', '', '_self', 2, 1, '2018-11-27 11:45:58');
INSERT INTO `system_menu` VALUES (26, 20, '包分析', '', 'layui-icon layui-icon-chart', 'wechat/menu/index', '', '_self', 1, 1, '2018-11-27 17:56:56');
INSERT INTO `system_menu` VALUES (27, 4, '系统任务管理', '', 'layui-icon layui-icon-log', 'admin/queue/index', '', '_self', 3, 1, '2018-11-29 11:13:34');
INSERT INTO `system_menu` VALUES (37, 0, '开放平台', '', '', '#', '', '_self', 200, 0, '2018-12-28 13:29:25');
INSERT INTO `system_menu` VALUES (38, 40, '开放平台配置', '', 'layui-icon layui-icon-set', 'service/config/index', '', '_self', 0, 0, '2018-12-28 13:29:44');
INSERT INTO `system_menu` VALUES (39, 40, '公众授权管理', '', 'layui-icon layui-icon-template-1', 'service/index/index', '', '_self', 0, 0, '2018-12-28 13:30:07');
INSERT INTO `system_menu` VALUES (40, 37, '平台管理', '', '', '#', '', '_self', 0, 0, '2018-12-28 16:05:46');
INSERT INTO `system_menu` VALUES (42, 48, '会员信息管理', '', 'layui-icon layui-icon-user', 'store/member/index', '', '_self', 1, 0, '2019-01-22 14:24:23');
INSERT INTO `system_menu` VALUES (43, 48, '订单记录管理', '', 'layui-icon layui-icon-template-1', 'store/order/index', '', '_self', 2, 0, '2019-01-22 14:46:22');
INSERT INTO `system_menu` VALUES (44, 48, '商品分类管理', '', 'layui-icon layui-icon-app', 'store/goods_cate/index', '', '_self', 4, 0, '2019-01-23 10:41:06');
INSERT INTO `system_menu` VALUES (45, 47, '商城参数配置', '', 'layui-icon layui-icon-set', 'store/config/index', '', '_self', 5, 0, '2019-01-24 16:47:33');
INSERT INTO `system_menu` VALUES (46, 47, '短信发送记录', '', 'layui-icon layui-icon-console', 'store/message/index', '', '_self', 4, 0, '2019-01-24 18:09:58');
INSERT INTO `system_menu` VALUES (47, 13, '商城配置', '', '', '#', '', '_self', 20, 0, '2019-01-25 16:47:49');
INSERT INTO `system_menu` VALUES (48, 13, '数据管理', '', '', '#', '', '_self', 10, 0, '2019-01-25 16:48:35');
INSERT INTO `system_menu` VALUES (49, 4, '系统日志管理', '', 'layui-icon layui-icon-form', 'admin/oplog/index', '', '_self', 2, 1, '2019-02-18 12:56:56');
INSERT INTO `system_menu` VALUES (50, 47, '快递公司管理', '', 'layui-icon layui-icon-form', 'store/express_company/index', '', '_self', 3, 0, '2019-04-01 17:10:59');
INSERT INTO `system_menu` VALUES (52, 47, '邮费模板管理', '', 'layui-icon layui-icon-fonts-clear', 'store/express_template/index', '', '_self', 1, 0, '2019-04-23 13:17:10');
INSERT INTO `system_menu` VALUES (55, 17, '项目配置', '', 'layui-icon layui-icon-chart-screen', 'wechat/index/index', '', '_self', 3, 1, '2019-06-15 15:03:51');
COMMIT;

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '用户账号',
  `password` varchar(32) DEFAULT '' COMMENT '用户密码',
  `qq` varchar(16) DEFAULT '' COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT '' COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT '' COMMENT '联系手机',
  `login_at` datetime DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(255) DEFAULT '' COMMENT '登录IP',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `authorize` varchar(255) DEFAULT '' COMMENT '权限授权',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除(1:删除,0:未删)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE,
  KEY `index_system_user_status` (`status`) USING BTREE,
  KEY `index_system_user_deleted` (`is_deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10013 DEFAULT CHARSET=utf8mb4 COMMENT='系统-用户';

-- ----------------------------
-- Records of system_user
-- ----------------------------
BEGIN;
INSERT INTO `system_user` VALUES (10000, 'admin', '6035d7a170ff97458068c79e64310a38', '', '', '', '2019-11-11 10:11:01', '116.22.44.30', 660, '', '', 1, 0, '2015-11-13 15:14:22');
INSERT INTO `system_user` VALUES (10001, 'QiuDuan', 'fa6a6bd136dec26a1dd5e326b7e43254', '', '', '', '2019-10-28 17:53:07', '116.22.45.1', 27, '1', '', 1, 0, '2019-09-12 10:57:07');
INSERT INTO `system_user` VALUES (10002, 'CaiYuJie', 'acbdfd1d6080680d00e40d8bb52ef5d2', '', '', '', '2019-09-16 10:28:42', '61.9.1.192', 3, '1', '', 1, 0, '2019-09-12 10:57:18');
INSERT INTO `system_user` VALUES (10003, 'LiZhiChong', '89a42fc8c7829bb97906f22228c9614b', '', '', '', '2019-10-28 14:38:19', '116.22.45.1', 15, '1', '', 1, 0, '2019-09-12 10:57:28');
INSERT INTO `system_user` VALUES (10004, 'ZhongShengYan', 'ea17fa0b9cc433c35c38fb20cd7a9775', '', '', '', NULL, '', 0, '1', '', 1, 0, '2019-09-12 10:57:38');
INSERT INTO `system_user` VALUES (10005, 'LiJie', 'f284ad22c3bf9ac45259e463eb8d59a9', '', '', '', '2019-11-08 20:31:29', '116.22.45.70', 10, '1', '', 1, 0, '2019-09-12 10:57:46');
INSERT INTO `system_user` VALUES (10006, 'temp', 'ded8e1c90b6cd59fcdd61d249d127027', '', '', '', '2019-09-18 17:09:12', '202.175.160.158', 5, '1', '', 1, 0, '2019-09-12 10:57:57');
INSERT INTO `system_user` VALUES (10007, 'super', '6035d7a170ff97458068c79e64310a38', '', '', '', '2019-09-12 11:31:45', '154.211.5.237', 4, '', '', 1, 0, '2019-09-12 11:18:46');
INSERT INTO `system_user` VALUES (10008, 'Tanny', 'e23fc9598cfe4d4e0f0771b0a12fc658', '', '', '', '2019-09-27 14:01:45', '223.104.64.215', 2, '1', '', 1, 0, '2019-09-26 17:34:13');
INSERT INTO `system_user` VALUES (10009, 'yangxu', 'f306d3502294c13f20055c04baef5bbc', '', '', '', '2019-10-18 14:05:35', '192.168.3.81', 2, '1', '', 1, 0, '2019-09-30 10:28:04');
INSERT INTO `system_user` VALUES (10010, 'zhouxingfu', '029e79478f97b2fa5de6bb9e3bb70810', '', '', '', '2019-10-15 14:08:10', '116.22.44.25', 1, '1', '', 1, 0, '2019-10-15 14:01:56');
INSERT INTO `system_user` VALUES (10011, 'cyan', '7d30f795cc3c6fc66812270c15d244f8', '', '', '', '2019-10-28 14:28:45', '116.22.45.1', 1, '1', '', 1, 0, '2019-10-28 14:24:42');
INSERT INTO `system_user` VALUES (10012, 'LinFeiLong', 'c51d5f2d0bcc49da051327521395b428', '', '', '', '2019-10-28 16:22:25', '116.22.45.1', 1, '1', '', 1, 0, '2019-10-28 15:11:10');
COMMIT;

-- ----------------------------
-- Table structure for wechat_fans
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans`;
CREATE TABLE `wechat_fans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) DEFAULT '' COMMENT '公众号APPID',
  `unionid` varchar(100) DEFAULT '' COMMENT '粉丝unionid',
  `openid` varchar(100) DEFAULT '' COMMENT '粉丝openid',
  `tagid_list` varchar(100) DEFAULT '' COMMENT '粉丝标签id',
  `is_black` tinyint(1) unsigned DEFAULT '0' COMMENT '是否为黑名单状态',
  `subscribe` tinyint(1) unsigned DEFAULT '0' COMMENT '关注状态(0未关注,1已关注)',
  `nickname` varchar(200) DEFAULT '' COMMENT '用户昵称',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '用户性别(1男性,2女性,0未知)',
  `country` varchar(50) DEFAULT '' COMMENT '用户所在国家',
  `province` varchar(50) DEFAULT '' COMMENT '用户所在省份',
  `city` varchar(50) DEFAULT '' COMMENT '用户所在城市',
  `language` varchar(50) DEFAULT '' COMMENT '用户的语言(zh_CN)',
  `headimgurl` varchar(500) DEFAULT '' COMMENT '用户头像',
  `subscribe_time` bigint(20) unsigned DEFAULT '0' COMMENT '关注时间',
  `subscribe_at` datetime DEFAULT NULL COMMENT '关注时间',
  `remark` varchar(50) DEFAULT '' COMMENT '备注',
  `subscribe_scene` varchar(200) DEFAULT '' COMMENT '扫码关注场景',
  `qr_scene` varchar(100) DEFAULT '' COMMENT '二维码场景值',
  `qr_scene_str` varchar(200) DEFAULT '' COMMENT '二维码场景内容',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_fans_openid` (`openid`) USING BTREE,
  KEY `index_wechat_fans_unionid` (`unionid`) USING BTREE,
  KEY `index_wechat_fans_is_back` (`is_black`) USING BTREE,
  KEY `index_wechat_fans_subscribe` (`subscribe`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信-粉丝';

-- ----------------------------
-- Table structure for wechat_fans_tags
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans_tags`;
CREATE TABLE `wechat_fans_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `appid` varchar(50) DEFAULT '' COMMENT '公众号APPID',
  `name` varchar(35) DEFAULT NULL COMMENT '标签名称',
  `count` bigint(20) unsigned DEFAULT '0' COMMENT '总数',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  KEY `index_wechat_fans_tags_id` (`id`) USING BTREE,
  KEY `index_wechat_fans_tags_appid` (`appid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信-粉丝-标签';

-- ----------------------------
-- Table structure for wechat_keys
-- ----------------------------
DROP TABLE IF EXISTS `wechat_keys`;
CREATE TABLE `wechat_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` char(100) DEFAULT '' COMMENT '公众号APPID',
  `type` varchar(20) DEFAULT '' COMMENT '类型(text,image,news)',
  `keys` varchar(100) DEFAULT NULL COMMENT '关键字',
  `content` text COMMENT '文本内容',
  `image_url` varchar(255) DEFAULT '' COMMENT '图片链接',
  `voice_url` varchar(255) DEFAULT '' COMMENT '语音链接',
  `music_title` varchar(100) DEFAULT '' COMMENT '音乐标题',
  `music_url` varchar(255) DEFAULT '' COMMENT '音乐链接',
  `music_image` varchar(255) DEFAULT '' COMMENT '缩略图片',
  `music_desc` varchar(255) DEFAULT '' COMMENT '音乐描述',
  `video_title` varchar(100) DEFAULT '' COMMENT '视频标题',
  `video_url` varchar(255) DEFAULT '' COMMENT '视频URL',
  `video_desc` varchar(255) DEFAULT '' COMMENT '视频描述',
  `news_id` bigint(20) unsigned DEFAULT NULL COMMENT '图文ID',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序字段',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0禁用,1启用)',
  `create_by` bigint(20) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_keys_appid` (`appid`) USING BTREE,
  KEY `index_wechat_keys_type` (`type`) USING BTREE,
  KEY `index_wechat_keys_keys` (`keys`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COMMENT='微信-关键字';

-- ----------------------------
-- Records of wechat_keys
-- ----------------------------
BEGIN;
INSERT INTO `wechat_keys` VALUES (4, '11111', '2222', '3333', '44444', '55555', '', '', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-16 11:40:11');
INSERT INTO `wechat_keys` VALUES (5, '0000', '1321465', '192.168.2.456', '/date/opt', '55555', '', '', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-16 11:48:30');
INSERT INTO `wechat_keys` VALUES (6, '0000', '123456', '23131345', '/usr/date/opt', 'http://0.0.0.0:8000/upload/b78cac1c8722bef3/3697fe724e17edf5.ipa', '192.168.66.3', '', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-16 15:35:24');
INSERT INTO `wechat_keys` VALUES (7, '', '123456', NULL, '192.168.3.11', '/data/ios/500out/500out', 'http://zt.gzxstech.com:666/upload/b78cac1c8722bef3/3697fe724e17edf5.ipa', '哈哈哈', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-16 16:13:46');
INSERT INTO `wechat_keys` VALUES (8, '', '123456', NULL, '192.168.3.11', '/data/ios/500out/500out', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '呵呵呵', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-16 17:54:04');
INSERT INTO `wechat_keys` VALUES (9, '', '13464', NULL, '192.168.3.11', '/data/ios/500out/500out', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '456', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-16 18:02:05');
INSERT INTO `wechat_keys` VALUES (10, '', '111', NULL, '192.168.3.11', '/data/ios', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '1111', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-18 16:08:56');
INSERT INTO `wechat_keys` VALUES (11, '', '1212', NULL, '192.168.3.11', '/data/ios', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '2222', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-18 16:10:55');
INSERT INTO `wechat_keys` VALUES (12, '', 'wewr', NULL, '192.168.3.11', '/data/ios', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '3333', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-18 16:31:15');
INSERT INTO `wechat_keys` VALUES (13, '', 'wewr', NULL, '192.168.3.11', '/data/ios', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '3333', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-18 16:36:58');
INSERT INTO `wechat_keys` VALUES (14, '', 'gzxs311.!@#', NULL, '192.168.3.11', '/data/ios', 'https://down.zwzq5.com/o_1dkj2l95imk01s491qqm1shsp4b8.ipa', '123', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-18 16:58:11');
INSERT INTO `wechat_keys` VALUES (15, '', 'gzxs311.!@#', NULL, '192.168.3.11', '/data/ios', 'https://down.zwzq5.com/o_1dkj2l95imk01s491qqm1shsp4b8.ipa', '4444', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-18 17:04:18');
INSERT INTO `wechat_keys` VALUES (16, '', 'gzxs311.!@#', NULL, '192.168.3.11', '/data/ios', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', 'test', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-19 10:50:09');
INSERT INTO `wechat_keys` VALUES (17, '', '23423', NULL, '192.168.3.11', '/data/ios', 'https://down.zwzq5.com/o_1dkj2l95imk01s491qqm1shsp4b8.ipa', '签名', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-19 11:00:37');
INSERT INTO `wechat_keys` VALUES (18, '', 'ssdf', NULL, '192.168.3.11', '/data/ios', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '命名', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-19 11:02:10');
INSERT INTO `wechat_keys` VALUES (19, '', '1', NULL, '192.168.2.145', '/data', 'https://zt.gzxstech.com/ios/500out/500cai/dis_500cai.ipa', 'apk', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-19 11:16:02');
INSERT INTO `wechat_keys` VALUES (20, '', '1', NULL, '192.168.2.145', '/data', 'https://zt.gzxstech.com/ios/500out/500cai/dis_500cai.ipa', 'ap', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-19 11:17:42');
INSERT INTO `wechat_keys` VALUES (21, '', 'a', NULL, '192.168.133.134', '/tmp', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', 'kkkk', '', '', '', '', '', '', NULL, 0, 1, 0, '2019-09-19 11:41:19');
INSERT INTO `wechat_keys` VALUES (22, '', '1', NULL, '1', '1', '1', '1', '', '', '', '1', '', '', NULL, 0, 1, 0, '2019-09-19 14:04:14');
INSERT INTO `wechat_keys` VALUES (23, '', '123456', NULL, '192.168.3.11', '/data/ios', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '1212', '', '', '', 'root', '', '22', NULL, 0, 1, 0, '2019-09-19 14:05:56');
INSERT INTO `wechat_keys` VALUES (24, '', 'a', NULL, '192.168.3.3', '/data', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '1212', '', '', '', 'root', '', '2202', NULL, 0, 1, 0, '2019-09-19 14:28:15');
INSERT INTO `wechat_keys` VALUES (25, '', 'a', NULL, '192.168.3.3', '/data', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '1212', '', '', '', 'root', '', '2202', NULL, 0, 1, 0, '2019-09-19 14:32:19');
INSERT INTO `wechat_keys` VALUES (26, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500cai/dis_500cai.ipa', 'aaa', '', '', '', 'root', '', '2202', NULL, 0, 1, 0, '2019-09-19 14:36:00');
INSERT INTO `wechat_keys` VALUES (27, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500cai/dis_500cai.ipa', 'hhh', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-19 14:37:58');
INSERT INTO `wechat_keys` VALUES (28, '', 'a', NULL, '192.168.3.3', '/data', 'https://zt.gzxstech.com/ios/500out/500cai/dis_500cai.ipa', '12345', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-19 14:51:34');
INSERT INTO `wechat_keys` VALUES (29, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500cai/dis_500cai.ipa', '123456', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-19 14:56:50');
INSERT INTO `wechat_keys` VALUES (30, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500cai/dis_500cai.ipa', '123456', '', '', '', 'root', '', '2202', NULL, 0, 1, 0, '2019-09-19 15:46:45');
INSERT INTO `wechat_keys` VALUES (31, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '哈哈哈', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-19 16:58:28');
INSERT INTO `wechat_keys` VALUES (32, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '哈哈哈', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-19 17:04:29');
INSERT INTO `wechat_keys` VALUES (33, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '气死你', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 09:59:19');
INSERT INTO `wechat_keys` VALUES (34, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '气死你1', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:05:20');
INSERT INTO `wechat_keys` VALUES (35, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '气死你1', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:05:44');
INSERT INTO `wechat_keys` VALUES (36, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '天气真好', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:09:27');
INSERT INTO `wechat_keys` VALUES (37, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '后悔了', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:10:47');
INSERT INTO `wechat_keys` VALUES (38, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', 'fsdfsd', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:12:21');
INSERT INTO `wechat_keys` VALUES (39, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', 'kjlkjl', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:13:52');
INSERT INTO `wechat_keys` VALUES (40, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '是的法定', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:27:33');
INSERT INTO `wechat_keys` VALUES (41, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '11111111', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:29:14');
INSERT INTO `wechat_keys` VALUES (42, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '2222222', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:30:40');
INSERT INTO `wechat_keys` VALUES (43, '', 'a', NULL, '192.168.3.3', '/tmp', 'http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa', '333333', '', '', '', 'root', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:31:30');
INSERT INTO `wechat_keys` VALUES (44, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', '4444444', '', '', '', 'root', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:32:11');
INSERT INTO `wechat_keys` VALUES (45, '', 'a', NULL, '192.168.3.3', '/tmp', 'https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa', 'a', '', '', '', 'test', '', '2202', NULL, 0, 1, 0, '2019-09-20 10:37:08');
INSERT INTO `wechat_keys` VALUES (46, '', '22', NULL, '192.168.3.11', '/data/ios/bdcfapp', 'http://zt.gzxstech.com:666/upload/70efcc5e8a5b0faa/c71e9c5cfb6c7fc4.ipa', 'dev_bacfapp', '', '', '', 'root', '', '22', NULL, 0, 1, 0, '2019-09-20 11:04:27');
COMMIT;

-- ----------------------------
-- Table structure for wechat_media
-- ----------------------------
DROP TABLE IF EXISTS `wechat_media`;
CREATE TABLE `wechat_media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(100) DEFAULT '' COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT '' COMMENT '文件md5',
  `type` varchar(20) DEFAULT '' COMMENT '媒体类型',
  `media_id` varchar(100) DEFAULT '' COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT '' COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT '' COMMENT '远程图片链接',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_media_appid` (`appid`) USING BTREE,
  KEY `index_wechat_media_md5` (`md5`) USING BTREE,
  KEY `index_wechat_media_type` (`type`) USING BTREE,
  KEY `index_wechat_media_media_id` (`media_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信-素材';

-- ----------------------------
-- Table structure for wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news`;
CREATE TABLE `wechat_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` varchar(100) DEFAULT '' COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT '' COMMENT '永久素材显示URL',
  `article_id` varchar(60) DEFAULT '' COMMENT '关联图文ID(用英文逗号做分割)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '是否删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_wechat_news_artcle_id` (`article_id`) USING BTREE,
  KEY `index_wechat_news_media_id` (`media_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信-图文';

-- ----------------------------
-- Table structure for wechat_news_article
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_article`;
CREATE TABLE `wechat_news_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '' COMMENT '素材标题',
  `local_url` varchar(300) DEFAULT '' COMMENT '永久素材显示URL',
  `show_cover_pic` tinyint(4) unsigned DEFAULT '0' COMMENT '显示封面(0不显示,1显示)',
  `author` varchar(20) DEFAULT '' COMMENT '文章作者',
  `digest` varchar(300) DEFAULT '' COMMENT '摘要内容',
  `content` longtext COMMENT '图文内容',
  `content_source_url` varchar(200) DEFAULT '' COMMENT '原文地址',
  `read_num` bigint(20) unsigned DEFAULT '0' COMMENT '阅读数量',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信-图文-文章';

-- ----------------------------
-- Table structure for wechat_service_config
-- ----------------------------
DROP TABLE IF EXISTS `wechat_service_config`;
CREATE TABLE `wechat_service_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `authorizer_appid` varchar(100) DEFAULT '' COMMENT '公众号APPID',
  `authorizer_access_token` varchar(200) DEFAULT '' COMMENT '公众号授权Token',
  `authorizer_refresh_token` varchar(200) DEFAULT '' COMMENT '公众号刷新Token',
  `func_info` varchar(100) DEFAULT '' COMMENT '公众号集权',
  `nick_name` varchar(50) DEFAULT '' COMMENT '公众号昵称',
  `head_img` varchar(200) DEFAULT '' COMMENT '公众号头像',
  `expires_in` bigint(20) DEFAULT NULL COMMENT 'Token有效时间',
  `service_type` tinyint(2) DEFAULT NULL COMMENT '微信类型(0代表订阅号,2代表服务号,3代表小程序)',
  `service_type_info` tinyint(2) DEFAULT NULL COMMENT '公众号实际类型',
  `verify_type` tinyint(2) DEFAULT NULL COMMENT '公众号认证类型(-1代表未认证, 0代表微信认证)',
  `verify_type_info` tinyint(2) DEFAULT NULL COMMENT '公众号实际认证类型',
  `user_name` varchar(100) DEFAULT '' COMMENT '众众号原始账号',
  `alias` varchar(100) DEFAULT '' COMMENT '公众号别名',
  `qrcode_url` varchar(200) DEFAULT '' COMMENT '公众号二维码',
  `business_info` varchar(255) DEFAULT '',
  `principal_name` varchar(255) DEFAULT '' COMMENT '公司名称',
  `miniprograminfo` varchar(1024) DEFAULT '' COMMENT '小程序JSON',
  `idc` tinyint(1) unsigned DEFAULT NULL,
  `signature` text COMMENT '小程序的描述',
  `total` bigint(20) unsigned DEFAULT '0' COMMENT '统计调用次数',
  `appkey` varchar(32) DEFAULT '' COMMENT '应用接口KEY',
  `appuri` varchar(255) DEFAULT '' COMMENT '应用接口URI',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1正常授权,0取消授权)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(0未删除,1已删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_wechat_service_config_authorizer_appid` (`authorizer_appid`) USING BTREE,
  KEY `index_wechat_service_config_status` (`status`) USING BTREE,
  KEY `index_wechat_service_config_is_deleted` (`is_deleted`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信-授权';

SET FOREIGN_KEY_CHECKS = 1;
