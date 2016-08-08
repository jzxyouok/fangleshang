--Version:1.1.4
--Mysql Ver:5.5.36
--Create time:2016-04-10 21:41:57
-------------------------------------------------
-- 用户权限模块表
DROP TABLE IF EXISTS `ls_module`;
CREATE TABLE `ls_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_user_pub` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `auth` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '类型：1为产品，2为新闻',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
INSERT INTO `ls_module` VALUES ('31','产品展示模块','product','0','1','none','1');
INSERT INTO `ls_module` VALUES ('32','新闻展示模块','news','0','2','none','2');
INSERT INTO `ls_module` VALUES ('33','产品发布模块','product-publish','1','3','none','1');
INSERT INTO `ls_module` VALUES ('34','新闻发布模块','news-publish','1','4','none','2');
INSERT INTO `ls_module` VALUES ('37','品牌商品展示','brand-product','0','5','none','3');
-------------------------------------------------
-- 管理模块表
DROP TABLE IF EXISTS `ls_adminclass`;
CREATE TABLE `ls_adminclass` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_adminclass` VALUES ('1','模块管理');
INSERT INTO `ls_adminclass` VALUES ('2','导航管理');
INSERT INTO `ls_adminclass` VALUES ('3','单页管理');
INSERT INTO `ls_adminclass` VALUES ('4','新闻管理');
INSERT INTO `ls_adminclass` VALUES ('5','广告分类管理');
INSERT INTO `ls_adminclass` VALUES ('6','广告管理');
INSERT INTO `ls_adminclass` VALUES ('7','留言管理');
INSERT INTO `ls_adminclass` VALUES ('8','用户管理');
INSERT INTO `ls_adminclass` VALUES ('9','用户分组管理');
INSERT INTO `ls_adminclass` VALUES ('10','评论管理');
INSERT INTO `ls_adminclass` VALUES ('11','私信管理');
INSERT INTO `ls_adminclass` VALUES ('12','用户文章管理');
INSERT INTO `ls_adminclass` VALUES ('13','网站设置管理');
INSERT INTO `ls_adminclass` VALUES ('14','管理员分组管理');
INSERT INTO `ls_adminclass` VALUES ('15','管理员设置');
INSERT INTO `ls_adminclass` VALUES ('16','邮件服务器');
INSERT INTO `ls_adminclass` VALUES ('17','清除缓存');
INSERT INTO `ls_adminclass` VALUES ('18','数据备份');
INSERT INTO `ls_adminclass` VALUES ('19','调查管理');
INSERT INTO `ls_adminclass` VALUES ('20','商品管理');
INSERT INTO `ls_adminclass` VALUES ('21','品牌管理');
INSERT INTO `ls_adminclass` VALUES ('22','规格管理');
INSERT INTO `ls_adminclass` VALUES ('23','订单管理');
INSERT INTO `ls_adminclass` VALUES ('24','支付管理');
INSERT INTO `ls_adminclass` VALUES ('25','商品咨询');
INSERT INTO `ls_adminclass` VALUES ('26','商品评价');
INSERT INTO `ls_adminclass` VALUES ('27','快递管理');
INSERT INTO `ls_adminclass` VALUES ('28','友情链接管理');
INSERT INTO `ls_adminclass` VALUES ('29','关键字管理');
INSERT INTO `ls_adminclass` VALUES ('30','邮件规则管理');
INSERT INTO `ls_adminclass` VALUES ('31','无效图片管理');
INSERT INTO `ls_adminclass` VALUES ('32','在线模版编辑');
INSERT INTO `ls_adminclass` VALUES ('33','在线升级');
INSERT INTO `ls_adminclass` VALUES ('34','用户统计');
INSERT INTO `ls_adminclass` VALUES ('35','积分抽奖');
INSERT INTO `ls_adminclass` VALUES ('36','中奖列表');
-------------------------------------------------
-- 各模块操作种类表
DROP TABLE IF EXISTS `ls_adminnode`;
CREATE TABLE `ls_adminnode` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_adminnode` VALUES ('1','添加模块','module','add','1');
INSERT INTO `ls_adminnode` VALUES ('2','编辑模块','module','mod','1');
INSERT INTO `ls_adminnode` VALUES ('3','删除模块','module','del','1');
INSERT INTO `ls_adminnode` VALUES ('4','添加导航','nav','add','2');
INSERT INTO `ls_adminnode` VALUES ('5','编辑导航','nav','mod','2');
INSERT INTO `ls_adminnode` VALUES ('6','删除导航','nav','del','2');
INSERT INTO `ls_adminnode` VALUES ('7','添加导航','pcate','add','3');
INSERT INTO `ls_adminnode` VALUES ('8','编辑导航','pcate','edit','3');
INSERT INTO `ls_adminnode` VALUES ('9','删除导航','pcate','del','3');
INSERT INTO `ls_adminnode` VALUES ('10','添加新闻','news','add','4');
INSERT INTO `ls_adminnode` VALUES ('11','编辑新闻','news','mod','4');
INSERT INTO `ls_adminnode` VALUES ('12','删除新闻','news','del','4');
INSERT INTO `ls_adminnode` VALUES ('13','添加广告分类','acate','add','5');
INSERT INTO `ls_adminnode` VALUES ('14','编辑广告分类','acate','edit','5');
INSERT INTO `ls_adminnode` VALUES ('15','删除广告分类','acate','del','5');
INSERT INTO `ls_adminnode` VALUES ('16','添加广告','adv','add','6');
INSERT INTO `ls_adminnode` VALUES ('17','编辑广告','adv','mod','6');
INSERT INTO `ls_adminnode` VALUES ('18','删除广告','adv','del','6');
INSERT INTO `ls_adminnode` VALUES ('19','留言查看','message','message_show','7');
INSERT INTO `ls_adminnode` VALUES ('20','留言删除','message','del','7');
INSERT INTO `ls_adminnode` VALUES ('21','删除用户','user','del','8');
INSERT INTO `ls_adminnode` VALUES ('22','添加用户分组','group','add','9');
INSERT INTO `ls_adminnode` VALUES ('23','编辑用户分组','group','mod','9');
INSERT INTO `ls_adminnode` VALUES ('24','删除用户分组','group','del','9');
INSERT INTO `ls_adminnode` VALUES ('25','设置默认用户分组','group','set_default','9');
INSERT INTO `ls_adminnode` VALUES ('26','删除评论','comment','del','10');
INSERT INTO `ls_adminnode` VALUES ('27','删除私信','letter','del','11');
INSERT INTO `ls_adminnode` VALUES ('28','删除用户文章','news','del_publish','12');
INSERT INTO `ls_adminnode` VALUES ('29','删除用户文章','news','verify_new','12');
INSERT INTO `ls_adminnode` VALUES ('30','编辑网站设置','config','mod','13');
INSERT INTO `ls_adminnode` VALUES ('31','添加管理员分组','adminGroup','add','14');
INSERT INTO `ls_adminnode` VALUES ('32','编辑管理员分组','adminGroup','mod','14');
INSERT INTO `ls_adminnode` VALUES ('33','删除管理员分组','adminGroup','del','14');
INSERT INTO `ls_adminnode` VALUES ('34','添加管理员','admin','add','15');
INSERT INTO `ls_adminnode` VALUES ('35','编辑管理员','admin','mod','15');
INSERT INTO `ls_adminnode` VALUES ('36','删除管理员','admin','del','15');
INSERT INTO `ls_adminnode` VALUES ('37','编辑邮件服务器','mail','mod','16');
INSERT INTO `ls_adminnode` VALUES ('38','删除缓存','cache','clear','17');
INSERT INTO `ls_adminnode` VALUES ('39','添加备份','backup','backup','18');
INSERT INTO `ls_adminnode` VALUES ('40','删除备份','backup','del','18');
INSERT INTO `ls_adminnode` VALUES ('41','添加调查','survey','add','19');
INSERT INTO `ls_adminnode` VALUES ('42','编辑调查','survey','mod','19');
INSERT INTO `ls_adminnode` VALUES ('43','删除调查','survey','del','19');
INSERT INTO `ls_adminnode` VALUES ('44','商品列表','product','index','20');
INSERT INTO `ls_adminnode` VALUES ('45','编辑商品','product','mod_index','20');
INSERT INTO `ls_adminnode` VALUES ('46','删除商品','product','del','20');
INSERT INTO `ls_adminnode` VALUES ('47','添加商品','product','add_index','20');
INSERT INTO `ls_adminnode` VALUES ('48','品牌列表','brand','index','21');
INSERT INTO `ls_adminnode` VALUES ('49','编辑品牌','brand','mod_index','21');
INSERT INTO `ls_adminnode` VALUES ('50','删除品牌','brand','del','21');
INSERT INTO `ls_adminnode` VALUES ('51','添加品牌','brand','add_index','21');
INSERT INTO `ls_adminnode` VALUES ('52','规格列表','spec','index','22');
INSERT INTO `ls_adminnode` VALUES ('53','编辑规格','spec','mod_show','22');
INSERT INTO `ls_adminnode` VALUES ('54','删除规格','spec','del','22');
INSERT INTO `ls_adminnode` VALUES ('55','添加规格','spec','add_show','22');
INSERT INTO `ls_adminnode` VALUES ('56','订单列表','orders','index','23');
INSERT INTO `ls_adminnode` VALUES ('57','操作订单','orders','show','23');
INSERT INTO `ls_adminnode` VALUES ('58','支付列表','payment','index','24');
INSERT INTO `ls_adminnode` VALUES ('59','编辑支付','payment','mod_index','24');
INSERT INTO `ls_adminnode` VALUES ('60','卸载支付','payment','uninstall','24');
INSERT INTO `ls_adminnode` VALUES ('61','咨询列表','consult','index','25');
INSERT INTO `ls_adminnode` VALUES ('63','回复咨询','consult','feedback_index','25');
INSERT INTO `ls_adminnode` VALUES ('64','删除咨询','consult','del','25');
INSERT INTO `ls_adminnode` VALUES ('65','评价列表','appraise','index','26');
INSERT INTO `ls_adminnode` VALUES ('66','回复评价','appraise','feedback_index','26');
INSERT INTO `ls_adminnode` VALUES ('67','删除评价','appraise','del','26');
INSERT INTO `ls_adminnode` VALUES ('68','快递列表','express','index','27');
INSERT INTO `ls_adminnode` VALUES ('69','编辑快递','express','mod_index','27');
INSERT INTO `ls_adminnode` VALUES ('70','删除快递','express','del','27');
INSERT INTO `ls_adminnode` VALUES ('71','添加快递','express','add_index','27');
INSERT INTO `ls_adminnode` VALUES ('72','友情链接列表','link','index','28');
INSERT INTO `ls_adminnode` VALUES ('73','添加友情链接','link','add_index','28');
INSERT INTO `ls_adminnode` VALUES ('74','编辑友情链接','link','mod_index','28');
INSERT INTO `ls_adminnode` VALUES ('75','删除友情链接','link','del','28');
INSERT INTO `ls_adminnode` VALUES ('76','编辑用户','user','mod','8');
INSERT INTO `ls_adminnode` VALUES ('77','关键字列表','hotword','index','29');
INSERT INTO `ls_adminnode` VALUES ('78','编辑关键字','hotword','mod_index','29');
INSERT INTO `ls_adminnode` VALUES ('79','删除关键字','hotword','del','29');
INSERT INTO `ls_adminnode` VALUES ('80','发送测试邮件','mails','test','16');
INSERT INTO `ls_adminnode` VALUES ('81','邮件规则列表','mailRules','index','30');
INSERT INTO `ls_adminnode` VALUES ('82','编辑邮件规则','mailRules','mod','30');
INSERT INTO `ls_adminnode` VALUES ('83','编辑发送模版','mailRules','mod_temp','30');
INSERT INTO `ls_adminnode` VALUES ('84','无效图片列表','cache','useless','31');
INSERT INTO `ls_adminnode` VALUES ('85','删除无效图片','cache','del','31');
INSERT INTO `ls_adminnode` VALUES ('86','批量删除','cache','dels','31');
INSERT INTO `ls_adminnode` VALUES ('87','编辑列表','code','index','32');
INSERT INTO `ls_adminnode` VALUES ('88','编辑模版','code','mod_index','32');
INSERT INTO `ls_adminnode` VALUES ('89','检测升级','update','check','33');
INSERT INTO `ls_adminnode` VALUES ('90','统计列表','statistic','index','34');
INSERT INTO `ls_adminnode` VALUES ('91','抽奖管理','lottery','index','35');
INSERT INTO `ls_adminnode` VALUES ('92','编辑抽奖','lottery','mod_index','35');
INSERT INTO `ls_adminnode` VALUES ('93','编辑项目','lotteryitem','mod','35');
INSERT INTO `ls_adminnode` VALUES ('94','中奖列表','lotterywin','index','36');
INSERT INTO `ls_adminnode` VALUES ('95','删除中奖项','lotterywin','del','36');
INSERT INTO `ls_adminnode` VALUES ('96','删除抽奖','lottery','del','35');
-------------------------------------------------
-- 商品分类导航表
DROP TABLE IF EXISTS `ls_nav`;
CREATE TABLE `ls_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `display` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
INSERT INTO `ls_nav` VALUES ('32','家电数码','1','0','31','1','1');
INSERT INTO `ls_nav` VALUES ('33','服饰鞋包','2','0','31','1','1');
INSERT INTO `ls_nav` VALUES ('34','美容珠宝','3','0','31','1','1');
INSERT INTO `ls_nav` VALUES ('35','居家生活','4','0','31','1','1');
INSERT INTO `ls_nav` VALUES ('36','母婴玩具','5','0','31','1','1');
INSERT INTO `ls_nav` VALUES ('37','格格屋','6','0','33','1','0');
INSERT INTO `ls_nav` VALUES ('38','商城资讯','7','0','32','2','1');
INSERT INTO `ls_nav` VALUES ('39','会员资讯','8','0','34','2','1');
INSERT INTO `ls_nav` VALUES ('40','活动促销','1','38','32','2','1');
INSERT INTO `ls_nav` VALUES ('41','大家电','1','32','31','1','1');
INSERT INTO `ls_nav` VALUES ('42','新闻速递','2','38','32','2','1');
INSERT INTO `ls_nav` VALUES ('43','生活家电','2','32','31','1','1');
INSERT INTO `ls_nav` VALUES ('44','厨房家电','3','32','31','1','1');
INSERT INTO `ls_nav` VALUES ('45','购物指南','3','38','32','2','1');
INSERT INTO `ls_nav` VALUES ('46','创业先锋','4','38','32','2','1');
INSERT INTO `ls_nav` VALUES ('47','生意参谋','5','38','32','2','1');
INSERT INTO `ls_nav` VALUES ('48','买家地盘','6','38','32','2','1');
INSERT INTO `ls_nav` VALUES ('49','我的购物经','1','39','34','2','1');
INSERT INTO `ls_nav` VALUES ('50','生活服务','2','39','34','2','1');
INSERT INTO `ls_nav` VALUES ('51','家电类','1','37','33','1','1');
INSERT INTO `ls_nav` VALUES ('52','生活类','2','37','33','1','1');
INSERT INTO `ls_nav` VALUES ('54','品牌秀','5','0','37','3','1');
-------------------------------------------------
-- 商品信息表
DROP TABLE IF EXISTS `ls_product`;
CREATE TABLE `ls_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品主图',
  `serial_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品编码',
  `brand_id` int(10) NOT NULL COMMENT '品牌ID',
  `cate_id` int(10) NOT NULL COMMENT '分类ID',
  `origin_price` decimal(10,2) NOT NULL COMMENT '原价',
  `current_price` decimal(10,2) NOT NULL COMMENT '现价',
  `brief` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '介绍',
  `specifications` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '规格参数介绍',
  `inventory` int(10) NOT NULL COMMENT '库存',
  `delivery_fee` decimal(10,2) NOT NULL COMMENT '运费',
  `spec_main` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `click` int(10) NOT NULL COMMENT '浏览量',
  `is_recommend` tinyint(1) NOT NULL,
  `add_time` varchar(50) NOT NULL,
  `update_time` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort` int(10) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL,
  `user_id` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 商品品牌表
DROP TABLE IF EXISTS `ls_brand`;
CREATE TABLE `ls_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `ls_brand` VALUES ('1','阿依莲','20141203214837_108.jpg','一个代表都市时尚品位的女装品牌，凭着良好的市场表现已成为中国休闲服装行业的后起之秀。由影视红星徐熙媛（大S）形象代言。阿依莲，演绎现代都市时尚女性典雅与自信，深受全国各地年轻消费者所喜爱。','1');
INSERT INTO `ls_brand` VALUES ('3','小米','20160324221207_823.jpg','小米公司成立于2010年4月，是一家专注于智能产品自主研发的移动互联网公司。“为发烧而生”是小米的产品理念。小米公司首创了用互联网模式开发手机操作系统、发烧友参与开发改进的模式。','3');
INSERT INTO `ls_brand` VALUES ('6','美的','20160324221201_582.jpg','美的介绍','3');
INSERT INTO `ls_brand` VALUES ('7',' 欧莱雅','20160324222248_647.jpg','sdfasdfasdf','4');
-------------------------------------------------
--商品属性(规格)表
DROP TABLE IF EXISTS `ls_spec`;
CREATE TABLE `ls_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
INSERT INTO `ls_spec` VALUES ('32','颜色','1','0');
INSERT INTO `ls_spec` VALUES ('33','红色','1','32');
INSERT INTO `ls_spec` VALUES ('34','型号','2','0');
INSERT INTO `ls_spec` VALUES ('35','一型','1','34');
INSERT INTO `ls_spec` VALUES ('36','尺寸','3','0');
INSERT INTO `ls_spec` VALUES ('37','5寸','1','36');
INSERT INTO `ls_spec` VALUES ('38','6寸','2','36');
-------------------------------------------------
-- 特定属性(规格)商品信息表
DROP TABLE IF EXISTS `ls_productspec`;
CREATE TABLE `ls_productspec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `specs` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `origin_price` decimal(10,2) NOT NULL,
  `current_price` decimal(10,2) NOT NULL,
  `inventory` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 购物车信息表
DROP TABLE IF EXISTS `ls_cart`;
CREATE TABLE `ls_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `specs` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `add_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 订单信息表
DROP TABLE IF EXISTS `ls_orders`;
CREATE TABLE `ls_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '订单号',
  `create_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '下单时间',
  `pay_status` tinyint(1) NOT NULL COMMENT '支付状态:0，未支付,1，支付成功,2,支付失败',
  `delivery_status` tinyint(1) NOT NULL COMMENT '送货状态：0,未发货,1,已发货,2,已收货',
  `order_status` tinyint(1) NOT NULL COMMENT '订单状态：0,交易失败,1,交易成功,2,已退款,3,已退货,4,已退款，已退货,5,未结单',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '收货姓名',
  `tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '买家留言',
  `district` smallint(5) NOT NULL COMMENT '地区主类',
  `sdistrict` smallint(5) NOT NULL COMMENT '地区子类',
  `total_price` decimal(10,2) NOT NULL COMMENT '总价',
  `delivery_fee` decimal(10,2) NOT NULL COMMENT '运费',
  `payment_id` int(10) NOT NULL COMMENT '支付ID',
  `score` int(10) NOT NULL,
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `pay_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '支付时间',
  `delivery_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '发货时间',
  `order_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '订单结束时间',
  `express_id` int(10) NOT NULL DEFAULT '0',
  `express_sn` varchar(100) NOT NULL DEFAULT '0',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 订单表
DROP TABLE IF EXISTS `ls_ordersitem`;
CREATE TABLE `ls_ordersitem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL COMMENT '商品ID',
  `oid` int(10) NOT NULL COMMENT '订单ID',
  `amount` int(5) NOT NULL,
  `specs` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `uid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 支付种类表
DROP TABLE IF EXISTS `ls_payment`;
CREATE TABLE `ls_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '50',
  `typename` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `byname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `introduction` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `partner_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `authkey` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `parameter1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_install` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;
INSERT INTO `ls_payment` VALUES ('1','50','chinabank','网银在线','全面支持全国19家银行的信用卡及借记卡实现网上支付','网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）','4352','aaaaa','0','','','','2');
INSERT INTO `ls_payment` VALUES ('2','50','tenpay','财付通','财付通是腾讯公司创办的中国领先的在线支付平台','财付通支持全国各大银行的网银支付，用户也可以先充值到财付通，享受更加便捷的财付通余额支付体验。财付通的提现、收款、付款等配套账户功能，让资金使用更灵活。','123','adfasdfasdf','0','','','','2');
INSERT INTO `ls_payment` VALUES ('3','50','alipay','支付宝','全球领先的独立第三方支付平台','支付宝，全球领先的独立第三方支付平台，致力于为广大用户提供安全快速的电子支付/网上支付/安全支付/手机支付体验，及转账收款/水电煤缴费/信用卡还款/AA收款等生活服务应用','2088102457797916','esfsclzgahxncgzi3bbe7giwa2ywxyv3','1.5','koyshe@gmail.com','1','','2');
INSERT INTO `ls_payment` VALUES ('4','50','cash','货到付款','送货上门后再收款','送货上门后再收款，支持现金、POS机刷卡、支票支付','','','0','','','','2');
-------------------------------------------------
-- 快递种类表
DROP TABLE IF EXISTS `ls_express`;
CREATE TABLE `ls_express` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `ls_express` VALUES ('1','顺风快递','1');
INSERT INTO `ls_express` VALUES ('2','申通快递','2');
INSERT INTO `ls_express` VALUES ('3','圆通快递','3');
INSERT INTO `ls_express` VALUES ('4','韵达快递','4');
-------------------------------------------------
-- 区域表
DROP TABLE IF EXISTS `ls_district`;
CREATE TABLE `ls_district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `district_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `district_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_district` VALUES ('1','0','北京市','0');
INSERT INTO `ls_district` VALUES ('2','0','上海市','0');
INSERT INTO `ls_district` VALUES ('3','0','天津市','0');
INSERT INTO `ls_district` VALUES ('4','0','重庆市','0');
INSERT INTO `ls_district` VALUES ('5','0','河北省','0');
INSERT INTO `ls_district` VALUES ('6','0','山西省','0');
INSERT INTO `ls_district` VALUES ('7','0','内蒙古','0');
INSERT INTO `ls_district` VALUES ('8','0','辽宁省','0');
INSERT INTO `ls_district` VALUES ('9','0','吉林省','0');
INSERT INTO `ls_district` VALUES ('10','0','黑龙江省','0');
INSERT INTO `ls_district` VALUES ('11','0','江苏省','0');
INSERT INTO `ls_district` VALUES ('12','0','浙江省','0');
INSERT INTO `ls_district` VALUES ('13','0','安徽省','0');
INSERT INTO `ls_district` VALUES ('14','0','福建省','0');
INSERT INTO `ls_district` VALUES ('15','0','江西省','0');
INSERT INTO `ls_district` VALUES ('16','0','山东省','0');
INSERT INTO `ls_district` VALUES ('17','0','河南省','0');
INSERT INTO `ls_district` VALUES ('18','0','湖北省','0');
INSERT INTO `ls_district` VALUES ('19','0','湖南省','0');
INSERT INTO `ls_district` VALUES ('20','0','广东省','0');
INSERT INTO `ls_district` VALUES ('21','0','广西省','0');
INSERT INTO `ls_district` VALUES ('22','0','海南省','0');
INSERT INTO `ls_district` VALUES ('23','0','四川省','0');
INSERT INTO `ls_district` VALUES ('24','0','贵州省','0');
INSERT INTO `ls_district` VALUES ('25','0','云南省','0');
INSERT INTO `ls_district` VALUES ('26','0','西藏','0');
INSERT INTO `ls_district` VALUES ('27','0','陕西省','0');
INSERT INTO `ls_district` VALUES ('28','0','甘肃省','0');
INSERT INTO `ls_district` VALUES ('29','0','青海省','0');
INSERT INTO `ls_district` VALUES ('30','0','宁夏','0');
INSERT INTO `ls_district` VALUES ('31','0','新疆','0');
INSERT INTO `ls_district` VALUES ('32','0','台湾省','0');
INSERT INTO `ls_district` VALUES ('33','0','香港','0');
INSERT INTO `ls_district` VALUES ('34','0','澳门','0');
INSERT INTO `ls_district` VALUES ('35','1','东城区','0');
INSERT INTO `ls_district` VALUES ('36','1','西城区','0');
INSERT INTO `ls_district` VALUES ('37','1','崇文区','0');
INSERT INTO `ls_district` VALUES ('38','1','宣武区','0');
INSERT INTO `ls_district` VALUES ('39','1','朝阳区','0');
INSERT INTO `ls_district` VALUES ('40','1','丰台区','0');
INSERT INTO `ls_district` VALUES ('41','1','石景山区','0');
INSERT INTO `ls_district` VALUES ('42','1','海淀区','0');
INSERT INTO `ls_district` VALUES ('43','1','门头沟区','0');
INSERT INTO `ls_district` VALUES ('44','1','房山区','0');
INSERT INTO `ls_district` VALUES ('45','1','通州区','0');
INSERT INTO `ls_district` VALUES ('46','1','顺义区','0');
INSERT INTO `ls_district` VALUES ('47','1','昌平区','0');
INSERT INTO `ls_district` VALUES ('48','1','大兴区','0');
INSERT INTO `ls_district` VALUES ('49','1','怀柔区','0');
INSERT INTO `ls_district` VALUES ('50','1','平谷区','0');
INSERT INTO `ls_district` VALUES ('51','1','密云县','0');
INSERT INTO `ls_district` VALUES ('52','1','延庆县','0');
INSERT INTO `ls_district` VALUES ('53','2','黄浦区','0');
INSERT INTO `ls_district` VALUES ('54','2','卢湾区','0');
INSERT INTO `ls_district` VALUES ('55','2','徐汇区','0');
INSERT INTO `ls_district` VALUES ('56','2','长宁区','0');
INSERT INTO `ls_district` VALUES ('57','2','静安区','0');
INSERT INTO `ls_district` VALUES ('58','2','普陀区','0');
INSERT INTO `ls_district` VALUES ('59','2','闸北区','0');
INSERT INTO `ls_district` VALUES ('60','2','虹口区','0');
INSERT INTO `ls_district` VALUES ('61','2','杨浦区','0');
INSERT INTO `ls_district` VALUES ('62','2','闵行区','0');
INSERT INTO `ls_district` VALUES ('63','2','宝山区','0');
INSERT INTO `ls_district` VALUES ('64','2','嘉定区','0');
INSERT INTO `ls_district` VALUES ('65','2','浦东新区','0');
INSERT INTO `ls_district` VALUES ('66','2','金山区','0');
INSERT INTO `ls_district` VALUES ('67','2','松江区','0');
INSERT INTO `ls_district` VALUES ('68','2','青浦区','0');
INSERT INTO `ls_district` VALUES ('69','2','南汇区','0');
INSERT INTO `ls_district` VALUES ('70','2','奉贤区','0');
INSERT INTO `ls_district` VALUES ('71','2','崇明县','0');
INSERT INTO `ls_district` VALUES ('72','3','和平区','0');
INSERT INTO `ls_district` VALUES ('73','3','河东区','0');
INSERT INTO `ls_district` VALUES ('74','3','河西区','0');
INSERT INTO `ls_district` VALUES ('75','3','南开区','0');
INSERT INTO `ls_district` VALUES ('76','3','河北区','0');
INSERT INTO `ls_district` VALUES ('77','3','红桥区','0');
INSERT INTO `ls_district` VALUES ('78','3','塘沽区','0');
INSERT INTO `ls_district` VALUES ('79','3','汉沽区','0');
INSERT INTO `ls_district` VALUES ('80','3','大港区','0');
INSERT INTO `ls_district` VALUES ('81','3','东丽区','0');
INSERT INTO `ls_district` VALUES ('82','3','西青区','0');
INSERT INTO `ls_district` VALUES ('83','3','津南区','0');
INSERT INTO `ls_district` VALUES ('84','3','北辰区','0');
INSERT INTO `ls_district` VALUES ('85','3','武清区','0');
INSERT INTO `ls_district` VALUES ('86','3','宝坻区','0');
INSERT INTO `ls_district` VALUES ('87','3','宁河县','0');
INSERT INTO `ls_district` VALUES ('88','3','静海县','0');
INSERT INTO `ls_district` VALUES ('89','3','蓟县','0');
INSERT INTO `ls_district` VALUES ('90','4','万州区','0');
INSERT INTO `ls_district` VALUES ('91','4','涪陵区','0');
INSERT INTO `ls_district` VALUES ('92','4','渝中区','0');
INSERT INTO `ls_district` VALUES ('93','4','大渡口区','0');
INSERT INTO `ls_district` VALUES ('94','4','江北区','0');
INSERT INTO `ls_district` VALUES ('95','4','沙坪坝区','0');
INSERT INTO `ls_district` VALUES ('96','4','九龙坡区','0');
INSERT INTO `ls_district` VALUES ('97','4','南岸区','0');
INSERT INTO `ls_district` VALUES ('98','4','北碚区','0');
INSERT INTO `ls_district` VALUES ('99','4','万盛区','0');
INSERT INTO `ls_district` VALUES ('100','4','双桥区','0');
INSERT INTO `ls_district` VALUES ('101','4','渝北区','0');
INSERT INTO `ls_district` VALUES ('102','4','巴南区','0');
INSERT INTO `ls_district` VALUES ('103','4','黔江区','0');
INSERT INTO `ls_district` VALUES ('104','4','长寿区','0');
INSERT INTO `ls_district` VALUES ('105','4','綦江县','0');
INSERT INTO `ls_district` VALUES ('106','4','潼南县','0');
INSERT INTO `ls_district` VALUES ('107','4','铜梁县','0');
INSERT INTO `ls_district` VALUES ('108','4','大足县','0');
INSERT INTO `ls_district` VALUES ('109','4','荣昌县','0');
INSERT INTO `ls_district` VALUES ('110','4','璧山县','0');
INSERT INTO `ls_district` VALUES ('111','4','梁平县','0');
INSERT INTO `ls_district` VALUES ('112','4','城口县','0');
INSERT INTO `ls_district` VALUES ('113','4','丰都县','0');
INSERT INTO `ls_district` VALUES ('114','4','垫江县','0');
INSERT INTO `ls_district` VALUES ('115','4','武隆县','0');
INSERT INTO `ls_district` VALUES ('116','4','忠县','0');
INSERT INTO `ls_district` VALUES ('117','4','开县','0');
INSERT INTO `ls_district` VALUES ('118','4','云阳县','0');
INSERT INTO `ls_district` VALUES ('119','4','奉节县','0');
INSERT INTO `ls_district` VALUES ('120','4','巫山县','0');
INSERT INTO `ls_district` VALUES ('121','4','巫溪县','0');
INSERT INTO `ls_district` VALUES ('122','4','石柱','0');
INSERT INTO `ls_district` VALUES ('123','4','秀山','0');
INSERT INTO `ls_district` VALUES ('124','4','酉阳','0');
INSERT INTO `ls_district` VALUES ('125','4','彭水','0');
INSERT INTO `ls_district` VALUES ('126','4','江津市','0');
INSERT INTO `ls_district` VALUES ('127','4','合川市','0');
INSERT INTO `ls_district` VALUES ('128','4','永川市','0');
INSERT INTO `ls_district` VALUES ('129','4','南川市','0');
INSERT INTO `ls_district` VALUES ('130','5','石家庄市','0');
INSERT INTO `ls_district` VALUES ('131','5','唐山市','0');
INSERT INTO `ls_district` VALUES ('132','5','秦皇岛市','0');
INSERT INTO `ls_district` VALUES ('133','5','邯郸市','0');
INSERT INTO `ls_district` VALUES ('134','5','邢台市','0');
INSERT INTO `ls_district` VALUES ('135','5','保定市','0');
INSERT INTO `ls_district` VALUES ('136','5','张家口市','0');
INSERT INTO `ls_district` VALUES ('137','5','承德市','0');
INSERT INTO `ls_district` VALUES ('138','5','沧州市','0');
INSERT INTO `ls_district` VALUES ('139','5','廊坊市','0');
INSERT INTO `ls_district` VALUES ('140','5','衡水市','0');
INSERT INTO `ls_district` VALUES ('141','6','太原市','0');
INSERT INTO `ls_district` VALUES ('142','6','大同市','0');
INSERT INTO `ls_district` VALUES ('143','6','阳泉市','0');
INSERT INTO `ls_district` VALUES ('144','6','长治市','0');
INSERT INTO `ls_district` VALUES ('145','6','晋城市','0');
INSERT INTO `ls_district` VALUES ('146','6','朔州市','0');
INSERT INTO `ls_district` VALUES ('147','6','晋中市','0');
INSERT INTO `ls_district` VALUES ('148','6','运城市','0');
INSERT INTO `ls_district` VALUES ('149','6','忻州市','0');
INSERT INTO `ls_district` VALUES ('150','6','临汾市','0');
INSERT INTO `ls_district` VALUES ('151','6','吕梁市','0');
INSERT INTO `ls_district` VALUES ('152','7','呼和浩特市','0');
INSERT INTO `ls_district` VALUES ('153','7','包头市','0');
INSERT INTO `ls_district` VALUES ('154','7','乌海市','0');
INSERT INTO `ls_district` VALUES ('155','7','赤峰市','0');
INSERT INTO `ls_district` VALUES ('156','7','通辽市','0');
INSERT INTO `ls_district` VALUES ('157','7','鄂尔多斯市','0');
INSERT INTO `ls_district` VALUES ('158','7','呼伦贝尔市','0');
INSERT INTO `ls_district` VALUES ('159','7','巴彦淖尔市','0');
INSERT INTO `ls_district` VALUES ('160','7','乌兰察布市','0');
INSERT INTO `ls_district` VALUES ('161','7','兴安盟','0');
INSERT INTO `ls_district` VALUES ('162','7','锡林郭勒盟','0');
INSERT INTO `ls_district` VALUES ('163','7','阿拉善盟','0');
INSERT INTO `ls_district` VALUES ('164','8','沈阳市','0');
INSERT INTO `ls_district` VALUES ('165','8','大连市','0');
INSERT INTO `ls_district` VALUES ('166','8','鞍山市','0');
INSERT INTO `ls_district` VALUES ('167','8','抚顺市','0');
INSERT INTO `ls_district` VALUES ('168','8','本溪市','0');
INSERT INTO `ls_district` VALUES ('169','8','丹东市','0');
INSERT INTO `ls_district` VALUES ('170','8','锦州市','0');
INSERT INTO `ls_district` VALUES ('171','8','营口市','0');
INSERT INTO `ls_district` VALUES ('172','8','阜新市','0');
INSERT INTO `ls_district` VALUES ('173','8','辽阳市','0');
INSERT INTO `ls_district` VALUES ('174','8','盘锦市','0');
INSERT INTO `ls_district` VALUES ('175','8','铁岭市','0');
INSERT INTO `ls_district` VALUES ('176','8','朝阳市','0');
INSERT INTO `ls_district` VALUES ('177','8','葫芦岛市','0');
INSERT INTO `ls_district` VALUES ('178','9','长春市','0');
INSERT INTO `ls_district` VALUES ('179','9','吉林市','0');
INSERT INTO `ls_district` VALUES ('180','9','四平市','0');
INSERT INTO `ls_district` VALUES ('181','9','辽源市','0');
INSERT INTO `ls_district` VALUES ('182','9','通化市','0');
INSERT INTO `ls_district` VALUES ('183','9','白山市','0');
INSERT INTO `ls_district` VALUES ('184','9','松原市','0');
INSERT INTO `ls_district` VALUES ('185','9','白城市','0');
INSERT INTO `ls_district` VALUES ('186','9','延边市','0');
INSERT INTO `ls_district` VALUES ('187','10','哈尔滨市','0');
INSERT INTO `ls_district` VALUES ('188','10','齐齐哈尔市','0');
INSERT INTO `ls_district` VALUES ('189','10','鸡西市','0');
INSERT INTO `ls_district` VALUES ('190','10','鹤岗市','0');
INSERT INTO `ls_district` VALUES ('191','10','双鸭山市','0');
INSERT INTO `ls_district` VALUES ('192','10','大庆市','0');
INSERT INTO `ls_district` VALUES ('193','10','伊春市','0');
INSERT INTO `ls_district` VALUES ('194','10','佳木斯市','0');
INSERT INTO `ls_district` VALUES ('195','10','七台河市','0');
INSERT INTO `ls_district` VALUES ('196','10','牡丹江市','0');
INSERT INTO `ls_district` VALUES ('197','10','黑河市','0');
INSERT INTO `ls_district` VALUES ('198','10','绥化市','0');
INSERT INTO `ls_district` VALUES ('199','10','大兴安岭','0');
INSERT INTO `ls_district` VALUES ('200','11','南京市','0');
INSERT INTO `ls_district` VALUES ('201','11','无锡市','0');
INSERT INTO `ls_district` VALUES ('202','11','徐州市','0');
INSERT INTO `ls_district` VALUES ('203','11','常州市','0');
INSERT INTO `ls_district` VALUES ('204','11','苏州市','0');
INSERT INTO `ls_district` VALUES ('205','11','南通市','0');
INSERT INTO `ls_district` VALUES ('206','11','连云港市','0');
INSERT INTO `ls_district` VALUES ('207','11','淮安市','0');
INSERT INTO `ls_district` VALUES ('208','11','盐城市','0');
INSERT INTO `ls_district` VALUES ('209','11','扬州市','0');
INSERT INTO `ls_district` VALUES ('210','11','镇江市','0');
INSERT INTO `ls_district` VALUES ('211','11','泰州市','0');
INSERT INTO `ls_district` VALUES ('212','11','宿迁市','0');
INSERT INTO `ls_district` VALUES ('213','12','杭州市','0');
INSERT INTO `ls_district` VALUES ('214','12','宁波市','0');
INSERT INTO `ls_district` VALUES ('215','12','温州市','0');
INSERT INTO `ls_district` VALUES ('216','12','嘉兴市','0');
INSERT INTO `ls_district` VALUES ('217','12','湖州市','0');
INSERT INTO `ls_district` VALUES ('218','12','绍兴市','0');
INSERT INTO `ls_district` VALUES ('219','12','金华市','0');
INSERT INTO `ls_district` VALUES ('220','12','衢州市','0');
INSERT INTO `ls_district` VALUES ('221','12','舟山市','0');
INSERT INTO `ls_district` VALUES ('222','12','台州市','0');
INSERT INTO `ls_district` VALUES ('223','12','丽水市','0');
INSERT INTO `ls_district` VALUES ('224','13','合肥市','0');
INSERT INTO `ls_district` VALUES ('225','13','芜湖市','0');
INSERT INTO `ls_district` VALUES ('226','13','蚌埠市','0');
INSERT INTO `ls_district` VALUES ('227','13','淮南市','0');
INSERT INTO `ls_district` VALUES ('228','13','马鞍山市','0');
INSERT INTO `ls_district` VALUES ('229','13','淮北市','0');
INSERT INTO `ls_district` VALUES ('230','13','铜陵市','0');
INSERT INTO `ls_district` VALUES ('231','13','安庆市','0');
INSERT INTO `ls_district` VALUES ('232','13','黄山市','0');
INSERT INTO `ls_district` VALUES ('233','13','滁州市','0');
INSERT INTO `ls_district` VALUES ('234','13','阜阳市','0');
INSERT INTO `ls_district` VALUES ('235','13','宿州市','0');
INSERT INTO `ls_district` VALUES ('236','13','巢湖市','0');
INSERT INTO `ls_district` VALUES ('237','13','六安市','0');
INSERT INTO `ls_district` VALUES ('238','13','亳州市','0');
INSERT INTO `ls_district` VALUES ('239','13','池州市','0');
INSERT INTO `ls_district` VALUES ('240','13','宣城市','0');
INSERT INTO `ls_district` VALUES ('241','14','福州市','0');
INSERT INTO `ls_district` VALUES ('242','14','厦门市','0');
INSERT INTO `ls_district` VALUES ('243','14','莆田市','0');
INSERT INTO `ls_district` VALUES ('244','14','三明市','0');
INSERT INTO `ls_district` VALUES ('245','14','泉州市','0');
INSERT INTO `ls_district` VALUES ('246','14','漳州市','0');
INSERT INTO `ls_district` VALUES ('247','14','南平市','0');
INSERT INTO `ls_district` VALUES ('248','14','龙岩市','0');
INSERT INTO `ls_district` VALUES ('249','14','宁德市','0');
INSERT INTO `ls_district` VALUES ('250','15','南昌市','0');
INSERT INTO `ls_district` VALUES ('251','15','景德镇市','0');
INSERT INTO `ls_district` VALUES ('252','15','萍乡市','0');
INSERT INTO `ls_district` VALUES ('253','15','九江市','0');
INSERT INTO `ls_district` VALUES ('254','15','新余市','0');
INSERT INTO `ls_district` VALUES ('255','15','鹰潭市','0');
INSERT INTO `ls_district` VALUES ('256','15','赣州市','0');
INSERT INTO `ls_district` VALUES ('257','15','吉安市','0');
INSERT INTO `ls_district` VALUES ('258','15','宜春市','0');
INSERT INTO `ls_district` VALUES ('259','15','抚州市','0');
INSERT INTO `ls_district` VALUES ('260','15','上饶市','0');
INSERT INTO `ls_district` VALUES ('261','16','济南市','0');
INSERT INTO `ls_district` VALUES ('262','16','青岛市','0');
INSERT INTO `ls_district` VALUES ('263','16','淄博市','0');
INSERT INTO `ls_district` VALUES ('264','16','枣庄市','0');
INSERT INTO `ls_district` VALUES ('265','16','东营市','0');
INSERT INTO `ls_district` VALUES ('266','16','烟台市','0');
INSERT INTO `ls_district` VALUES ('267','16','潍坊市','0');
INSERT INTO `ls_district` VALUES ('268','16','济宁市','0');
INSERT INTO `ls_district` VALUES ('269','16','泰安市','0');
INSERT INTO `ls_district` VALUES ('270','16','威海市','0');
INSERT INTO `ls_district` VALUES ('271','16','日照市','0');
INSERT INTO `ls_district` VALUES ('272','16','莱芜市','0');
INSERT INTO `ls_district` VALUES ('273','16','临沂市','0');
INSERT INTO `ls_district` VALUES ('274','16','德州市','0');
INSERT INTO `ls_district` VALUES ('275','16','聊城市','0');
INSERT INTO `ls_district` VALUES ('276','16','滨州市','0');
INSERT INTO `ls_district` VALUES ('277','16','荷泽市','0');
INSERT INTO `ls_district` VALUES ('278','17','郑州市','0');
INSERT INTO `ls_district` VALUES ('279','17','开封市','0');
INSERT INTO `ls_district` VALUES ('280','17','洛阳市','0');
INSERT INTO `ls_district` VALUES ('281','17','平顶山市','0');
INSERT INTO `ls_district` VALUES ('282','17','安阳市','0');
INSERT INTO `ls_district` VALUES ('283','17','鹤壁市','0');
INSERT INTO `ls_district` VALUES ('284','17','新乡市','0');
INSERT INTO `ls_district` VALUES ('285','17','焦作市','0');
INSERT INTO `ls_district` VALUES ('286','17','濮阳市','0');
INSERT INTO `ls_district` VALUES ('287','17','许昌市','0');
INSERT INTO `ls_district` VALUES ('288','17','漯河市','0');
INSERT INTO `ls_district` VALUES ('289','17','三门峡市','0');
INSERT INTO `ls_district` VALUES ('290','17','南阳市','0');
INSERT INTO `ls_district` VALUES ('291','17','商丘市','0');
INSERT INTO `ls_district` VALUES ('292','17','信阳市','0');
INSERT INTO `ls_district` VALUES ('293','17','周口市','0');
INSERT INTO `ls_district` VALUES ('294','17','驻马店市','0');
INSERT INTO `ls_district` VALUES ('295','18','武汉市','0');
INSERT INTO `ls_district` VALUES ('296','18','黄石市','0');
INSERT INTO `ls_district` VALUES ('297','18','十堰市','0');
INSERT INTO `ls_district` VALUES ('298','18','宜昌市','0');
INSERT INTO `ls_district` VALUES ('299','18','襄樊市','0');
INSERT INTO `ls_district` VALUES ('300','18','鄂州市','0');
INSERT INTO `ls_district` VALUES ('301','18','荆门市','0');
INSERT INTO `ls_district` VALUES ('302','18','孝感市','0');
INSERT INTO `ls_district` VALUES ('303','18','荆州市','0');
INSERT INTO `ls_district` VALUES ('304','18','黄冈市','0');
INSERT INTO `ls_district` VALUES ('305','18','咸宁市','0');
INSERT INTO `ls_district` VALUES ('306','18','随州市','0');
INSERT INTO `ls_district` VALUES ('307','18','恩施市','0');
INSERT INTO `ls_district` VALUES ('308','18','仙桃市','0');
INSERT INTO `ls_district` VALUES ('309','18','潜江市','0');
INSERT INTO `ls_district` VALUES ('310','18','天门市','0');
INSERT INTO `ls_district` VALUES ('311','18','神农架林区','0');
INSERT INTO `ls_district` VALUES ('312','19','长沙市','0');
INSERT INTO `ls_district` VALUES ('313','19','株洲市','0');
INSERT INTO `ls_district` VALUES ('314','19','湘潭市','0');
INSERT INTO `ls_district` VALUES ('315','19','衡阳市','0');
INSERT INTO `ls_district` VALUES ('316','19','邵阳市','0');
INSERT INTO `ls_district` VALUES ('317','19','岳阳市','0');
INSERT INTO `ls_district` VALUES ('318','19','常德市','0');
INSERT INTO `ls_district` VALUES ('319','19','张家界市','0');
INSERT INTO `ls_district` VALUES ('320','19','益阳市','0');
INSERT INTO `ls_district` VALUES ('321','19','郴州市','0');
INSERT INTO `ls_district` VALUES ('322','19','永州市','0');
INSERT INTO `ls_district` VALUES ('323','19','怀化市','0');
INSERT INTO `ls_district` VALUES ('324','19','娄底市','0');
INSERT INTO `ls_district` VALUES ('325','19','湘西','0');
INSERT INTO `ls_district` VALUES ('326','20','广州市','0');
INSERT INTO `ls_district` VALUES ('327','20','韶关市','0');
INSERT INTO `ls_district` VALUES ('328','20','深圳市','0');
INSERT INTO `ls_district` VALUES ('329','20','珠海市','0');
INSERT INTO `ls_district` VALUES ('330','20','汕头市','0');
INSERT INTO `ls_district` VALUES ('331','20','佛山市','0');
INSERT INTO `ls_district` VALUES ('332','20','江门市','0');
INSERT INTO `ls_district` VALUES ('333','20','湛江市','0');
INSERT INTO `ls_district` VALUES ('334','20','茂名市','0');
INSERT INTO `ls_district` VALUES ('335','20','肇庆市','0');
INSERT INTO `ls_district` VALUES ('336','20','惠州市','0');
INSERT INTO `ls_district` VALUES ('337','20','梅州市','0');
INSERT INTO `ls_district` VALUES ('338','20','汕尾市','0');
INSERT INTO `ls_district` VALUES ('339','20','河源市','0');
INSERT INTO `ls_district` VALUES ('340','20','阳江市','0');
INSERT INTO `ls_district` VALUES ('341','20','清远市','0');
INSERT INTO `ls_district` VALUES ('342','20','东莞市','0');
INSERT INTO `ls_district` VALUES ('343','20','中山市','0');
INSERT INTO `ls_district` VALUES ('344','20','潮州市','0');
INSERT INTO `ls_district` VALUES ('345','20','揭阳市','0');
INSERT INTO `ls_district` VALUES ('346','20','云浮市','0');
INSERT INTO `ls_district` VALUES ('347','21','南宁市','0');
INSERT INTO `ls_district` VALUES ('348','21','柳州市','0');
INSERT INTO `ls_district` VALUES ('349','21','桂林市','0');
INSERT INTO `ls_district` VALUES ('350','21','梧州市','0');
INSERT INTO `ls_district` VALUES ('351','21','北海市','0');
INSERT INTO `ls_district` VALUES ('352','21','防城港市','0');
INSERT INTO `ls_district` VALUES ('353','21','钦州市','0');
INSERT INTO `ls_district` VALUES ('354','21','贵港市','0');
INSERT INTO `ls_district` VALUES ('355','21','玉林市','0');
INSERT INTO `ls_district` VALUES ('356','21','百色市','0');
INSERT INTO `ls_district` VALUES ('357','21','贺州市','0');
INSERT INTO `ls_district` VALUES ('358','21','河池市','0');
INSERT INTO `ls_district` VALUES ('359','21','来宾市','0');
INSERT INTO `ls_district` VALUES ('360','21','崇左市','0');
INSERT INTO `ls_district` VALUES ('361','22','海口市','0');
INSERT INTO `ls_district` VALUES ('362','22','三亚市','0');
INSERT INTO `ls_district` VALUES ('363','22','五指山市','0');
INSERT INTO `ls_district` VALUES ('364','22','琼海市','0');
INSERT INTO `ls_district` VALUES ('365','22','儋州市','0');
INSERT INTO `ls_district` VALUES ('366','22','文昌市','0');
INSERT INTO `ls_district` VALUES ('367','22','万宁市','0');
INSERT INTO `ls_district` VALUES ('368','22','东方市','0');
INSERT INTO `ls_district` VALUES ('369','22','定安县','0');
INSERT INTO `ls_district` VALUES ('370','22','屯昌县','0');
INSERT INTO `ls_district` VALUES ('371','22','澄迈县','0');
INSERT INTO `ls_district` VALUES ('372','22','临高县','0');
INSERT INTO `ls_district` VALUES ('373','22','白沙','0');
INSERT INTO `ls_district` VALUES ('374','22','昌江','0');
INSERT INTO `ls_district` VALUES ('375','22','乐东','0');
INSERT INTO `ls_district` VALUES ('376','22','陵水','0');
INSERT INTO `ls_district` VALUES ('377','22','保亭','0');
INSERT INTO `ls_district` VALUES ('378','22','琼中','0');
INSERT INTO `ls_district` VALUES ('379','22','西沙群岛','0');
INSERT INTO `ls_district` VALUES ('380','22','南沙群岛','0');
INSERT INTO `ls_district` VALUES ('381','22','中沙群岛','0');
INSERT INTO `ls_district` VALUES ('382','23','成都市','0');
INSERT INTO `ls_district` VALUES ('383','23','自贡市','0');
INSERT INTO `ls_district` VALUES ('384','23','攀枝花市','0');
INSERT INTO `ls_district` VALUES ('385','23','泸州市','0');
INSERT INTO `ls_district` VALUES ('386','23','德阳市','0');
INSERT INTO `ls_district` VALUES ('387','23','绵阳市','0');
INSERT INTO `ls_district` VALUES ('388','23','广元市','0');
INSERT INTO `ls_district` VALUES ('389','23','遂宁市','0');
INSERT INTO `ls_district` VALUES ('390','23','内江市','0');
INSERT INTO `ls_district` VALUES ('391','23','乐山市','0');
INSERT INTO `ls_district` VALUES ('392','23','南充市','0');
INSERT INTO `ls_district` VALUES ('393','23','眉山市','0');
INSERT INTO `ls_district` VALUES ('394','23','宜宾市','0');
INSERT INTO `ls_district` VALUES ('395','23','广安市','0');
INSERT INTO `ls_district` VALUES ('396','23','达州市','0');
INSERT INTO `ls_district` VALUES ('397','23','雅安市','0');
INSERT INTO `ls_district` VALUES ('398','23','巴中市','0');
INSERT INTO `ls_district` VALUES ('399','23','资阳市','0');
INSERT INTO `ls_district` VALUES ('400','23','阿坝','0');
INSERT INTO `ls_district` VALUES ('401','23','甘孜','0');
INSERT INTO `ls_district` VALUES ('402','23','凉山','0');
INSERT INTO `ls_district` VALUES ('403','24','贵阳市','0');
INSERT INTO `ls_district` VALUES ('404','24','六盘水市','0');
INSERT INTO `ls_district` VALUES ('405','24','遵义市','0');
INSERT INTO `ls_district` VALUES ('406','24','安顺市','0');
INSERT INTO `ls_district` VALUES ('407','24','铜仁地区','0');
INSERT INTO `ls_district` VALUES ('408','24','黔西南州','0');
INSERT INTO `ls_district` VALUES ('409','24','毕节地区','0');
INSERT INTO `ls_district` VALUES ('410','24','黔东南州','0');
INSERT INTO `ls_district` VALUES ('411','24','黔南州','0');
INSERT INTO `ls_district` VALUES ('412','25','昆明市','0');
INSERT INTO `ls_district` VALUES ('413','25','曲靖市','0');
INSERT INTO `ls_district` VALUES ('414','25','玉溪市','0');
INSERT INTO `ls_district` VALUES ('415','25','保山市','0');
INSERT INTO `ls_district` VALUES ('416','25','昭通市','0');
INSERT INTO `ls_district` VALUES ('417','25','丽江市','0');
INSERT INTO `ls_district` VALUES ('418','25','思茅市','0');
INSERT INTO `ls_district` VALUES ('419','25','临沧市','0');
INSERT INTO `ls_district` VALUES ('420','25','楚雄','0');
INSERT INTO `ls_district` VALUES ('421','25','红河州','0');
INSERT INTO `ls_district` VALUES ('422','25','文山州','0');
INSERT INTO `ls_district` VALUES ('423','25','西双版纳州','0');
INSERT INTO `ls_district` VALUES ('424','25','大理州','0');
INSERT INTO `ls_district` VALUES ('425','25','德宏州','0');
INSERT INTO `ls_district` VALUES ('426','25','怒江州','0');
INSERT INTO `ls_district` VALUES ('427','25','迪庆州','0');
INSERT INTO `ls_district` VALUES ('428','26','拉萨市','0');
INSERT INTO `ls_district` VALUES ('429','26','昌都地区','0');
INSERT INTO `ls_district` VALUES ('430','26','山南地区','0');
INSERT INTO `ls_district` VALUES ('431','26','日喀则地区','0');
INSERT INTO `ls_district` VALUES ('432','26','那曲地区','0');
INSERT INTO `ls_district` VALUES ('433','26','阿里地区','0');
INSERT INTO `ls_district` VALUES ('434','26','林芝地区','0');
INSERT INTO `ls_district` VALUES ('435','27','西安市','0');
INSERT INTO `ls_district` VALUES ('436','27','铜川市','0');
INSERT INTO `ls_district` VALUES ('437','27','宝鸡市','0');
INSERT INTO `ls_district` VALUES ('438','27','咸阳市','0');
INSERT INTO `ls_district` VALUES ('439','27','渭南市','0');
INSERT INTO `ls_district` VALUES ('440','27','延安市','0');
INSERT INTO `ls_district` VALUES ('441','27','汉中市','0');
INSERT INTO `ls_district` VALUES ('442','27','榆林市','0');
INSERT INTO `ls_district` VALUES ('443','27','安康市','0');
INSERT INTO `ls_district` VALUES ('444','27','商洛市','0');
INSERT INTO `ls_district` VALUES ('445','28','兰州市','0');
INSERT INTO `ls_district` VALUES ('446','28','嘉峪关市','0');
INSERT INTO `ls_district` VALUES ('447','28','金昌市','0');
INSERT INTO `ls_district` VALUES ('448','28','白银市','0');
INSERT INTO `ls_district` VALUES ('449','28','天水市','0');
INSERT INTO `ls_district` VALUES ('450','28','武威市','0');
INSERT INTO `ls_district` VALUES ('451','28','张掖市','0');
INSERT INTO `ls_district` VALUES ('452','28','平凉市','0');
INSERT INTO `ls_district` VALUES ('453','28','酒泉市','0');
INSERT INTO `ls_district` VALUES ('454','28','庆阳市','0');
INSERT INTO `ls_district` VALUES ('455','28','定西市','0');
INSERT INTO `ls_district` VALUES ('456','28','陇南市','0');
INSERT INTO `ls_district` VALUES ('457','28','临夏','0');
INSERT INTO `ls_district` VALUES ('458','28','甘南','0');
INSERT INTO `ls_district` VALUES ('459','29','西宁市','0');
INSERT INTO `ls_district` VALUES ('460','29','海东地区','0');
INSERT INTO `ls_district` VALUES ('461','29','海北州','0');
INSERT INTO `ls_district` VALUES ('462','29','黄南州','0');
INSERT INTO `ls_district` VALUES ('463','29','海南州','0');
INSERT INTO `ls_district` VALUES ('464','29','果洛州','0');
INSERT INTO `ls_district` VALUES ('465','29','玉树州','0');
INSERT INTO `ls_district` VALUES ('466','29','海西州','0');
INSERT INTO `ls_district` VALUES ('467','30','银川市','0');
INSERT INTO `ls_district` VALUES ('468','30','石嘴山市','0');
INSERT INTO `ls_district` VALUES ('469','30','吴忠市','0');
INSERT INTO `ls_district` VALUES ('470','30','固原市','0');
INSERT INTO `ls_district` VALUES ('471','30','中卫市','0');
INSERT INTO `ls_district` VALUES ('472','31','乌鲁木齐市','0');
INSERT INTO `ls_district` VALUES ('473','31','克拉玛依市','0');
INSERT INTO `ls_district` VALUES ('474','31','吐鲁番地区','0');
INSERT INTO `ls_district` VALUES ('475','31','哈密地区','0');
INSERT INTO `ls_district` VALUES ('476','31','昌吉州','0');
INSERT INTO `ls_district` VALUES ('477','31','博州','0');
INSERT INTO `ls_district` VALUES ('478','31','巴州','0');
INSERT INTO `ls_district` VALUES ('479','31','阿克苏地区','0');
INSERT INTO `ls_district` VALUES ('480','31','克州','0');
INSERT INTO `ls_district` VALUES ('481','31','喀什地区','0');
INSERT INTO `ls_district` VALUES ('482','31','和田地区','0');
INSERT INTO `ls_district` VALUES ('483','31','伊犁州','0');
INSERT INTO `ls_district` VALUES ('484','31','塔城地区','0');
INSERT INTO `ls_district` VALUES ('485','31','阿勒泰地区','0');
INSERT INTO `ls_district` VALUES ('486','31','石河子市','0');
INSERT INTO `ls_district` VALUES ('487','31','阿拉尔市','0');
INSERT INTO `ls_district` VALUES ('488','31','图木舒克市','0');
INSERT INTO `ls_district` VALUES ('489','31','五家渠市','0');
INSERT INTO `ls_district` VALUES ('490','32','台北市','0');
INSERT INTO `ls_district` VALUES ('491','32','高雄市','0');
INSERT INTO `ls_district` VALUES ('492','32','基隆市','0');
INSERT INTO `ls_district` VALUES ('493','32','新竹市','0');
INSERT INTO `ls_district` VALUES ('494','32','台中市','0');
INSERT INTO `ls_district` VALUES ('495','32','嘉义市','0');
INSERT INTO `ls_district` VALUES ('496','32','台南市','0');
INSERT INTO `ls_district` VALUES ('497','32','台北县','0');
INSERT INTO `ls_district` VALUES ('498','32','桃园县','0');
INSERT INTO `ls_district` VALUES ('499','32','新竹县','0');
INSERT INTO `ls_district` VALUES ('500','32','苗栗县','0');
INSERT INTO `ls_district` VALUES ('501','32','台中县','0');
INSERT INTO `ls_district` VALUES ('502','32','彰化县','0');
INSERT INTO `ls_district` VALUES ('503','32','南投县','0');
INSERT INTO `ls_district` VALUES ('504','32','云林县','0');
INSERT INTO `ls_district` VALUES ('505','32','嘉义县','0');
INSERT INTO `ls_district` VALUES ('506','32','台南县','0');
INSERT INTO `ls_district` VALUES ('507','32','高雄县','0');
INSERT INTO `ls_district` VALUES ('508','32','屏东县','0');
INSERT INTO `ls_district` VALUES ('509','32','宜兰县','0');
INSERT INTO `ls_district` VALUES ('510','32','花莲县','0');
INSERT INTO `ls_district` VALUES ('511','32','台东县','0');
INSERT INTO `ls_district` VALUES ('512','32','澎湖县','0');
INSERT INTO `ls_district` VALUES ('513','32','金门县','0');
INSERT INTO `ls_district` VALUES ('514','32','连江县','0');
INSERT INTO `ls_district` VALUES ('515','33','中西区','0');
INSERT INTO `ls_district` VALUES ('516','33','东区','0');
INSERT INTO `ls_district` VALUES ('517','33','南区','0');
INSERT INTO `ls_district` VALUES ('518','33','湾仔区','0');
INSERT INTO `ls_district` VALUES ('519','33','九龙城区','0');
INSERT INTO `ls_district` VALUES ('520','33','观塘区','0');
INSERT INTO `ls_district` VALUES ('521','33','深水埗区','0');
INSERT INTO `ls_district` VALUES ('522','33','黄大仙区','0');
INSERT INTO `ls_district` VALUES ('523','33','油尖旺区','0');
INSERT INTO `ls_district` VALUES ('524','33','离岛区','0');
-------------------------------------------------
-- 商品咨询表
DROP TABLE IF EXISTS `ls_consult`;
CREATE TABLE `ls_consult` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `question` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `q_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `a_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `verify` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 商品评论表
DROP TABLE IF EXISTS `ls_appraise`;
CREATE TABLE `ls_appraise` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reply` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `level` tinyint(1) NOT NULL COMMENT '1:好，2中，3差',
  `content_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reply_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mod_appraise_num` smallint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 用户评论商品次数表
DROP TABLE IF EXISTS `ls_appraisetimes`;
CREATE TABLE `ls_appraisetimes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `times` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `ls_appraisetimes` VALUES ('1','7','4','1');
INSERT INTO `ls_appraisetimes` VALUES ('2','10','47','0');
-------------------------------------------------
-- 新闻种类
DROP TABLE IF EXISTS `ls_ncate`;
CREATE TABLE `ls_ncate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 新闻项表
DROP TABLE IF EXISTS `ls_news`;
CREATE TABLE `ls_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cate` int(11) NOT NULL,
  `m_cate` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `verify` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recommand` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 新闻评论表
DROP TABLE IF EXISTS `ls_comment`;
CREATE TABLE `ls_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `top` tinyint(1) unsigned NOT NULL,
  `article_id` int(11) NOT NULL,
  `create_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-------------------------------------------------
-- 新闻点赞表
DROP TABLE IF EXISTS `ls_fav`;
CREATE TABLE `ls_fav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_fav` VALUES ('30','19','1');
INSERT INTO `ls_fav` VALUES ('31','42','2');
-------------------------------------------------
--商品点赞表
DROP TABLE IF EXISTS `ls_profav`;
CREATE TABLE `ls_profav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-------------------------------------------------
-- 管理员信息表
DROP TABLE IF EXISTS `ls_admin`;
CREATE TABLE `ls_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `adm_name` varchar(255) NOT NULL,
  `adm_password` varchar(255) NOT NULL,
  `login_time` int(11) NOT NULL,
  `login_ip` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_adm_name` (`adm_name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 管理员分组表
DROP TABLE IF EXISTS `ls_admingroup`;
CREATE TABLE `ls_admingroup` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_admingroup` VALUES ('1','录入员','a:6:{i:0;s:1:&quot;1&quot;;i:1;s:1:&quot;4&quot;;i:2;s:1:&quot;6&quot;;i:3;s:1:&quot;8&quot;;i:4;s:2:&quot;16&quot;;i:5;s:2:&quot;17&quot;;}');
INSERT INTO `ls_admingroup` VALUES ('2','主管理员','a:95:{i:0;s:1:&quot;1&quot;;i:1;s:1:&quot;2&quot;;i:2;s:1:&quot;3&quot;;i:3;s:1:&quot;4&quot;;i:4;s:1:&quot;5&quot;;i:5;s:1:&quot;6&quot;;i:6;s:1:&quot;7&quot;;i:7;s:1:&quot;8&quot;;i:8;s:1:&quot;9&quot;;i:9;s:2:&quot;10&quot;;i:10;s:2:&quot;11&quot;;i:11;s:2:&quot;12&quot;;i:12;s:2:&quot;13&quot;;i:13;s:2:&quot;14&quot;;i:14;s:2:&quot;15&quot;;i:15;s:2:&quot;16&quot;;i:16;s:2:&quot;17&quot;;i:17;s:2:&quot;18&quot;;i:18;s:2:&quot;19&quot;;i:19;s:2:&quot;20&quot;;i:20;s:2:&quot;21&quot;;i:21;s:2:&quot;76&quot;;i:22;s:2:&quot;22&quot;;i:23;s:2:&quot;23&quot;;i:24;s:2:&quot;24&quot;;i:25;s:2:&quot;25&quot;;i:26;s:2:&quot;26&quot;;i:27;s:2:&quot;27&quot;;i:28;s:2:&quot;28&quot;;i:29;s:2:&quot;29&quot;;i:30;s:2:&quot;30&quot;;i:31;s:2:&quot;31&quot;;i:32;s:2:&quot;32&quot;;i:33;s:2:&quot;33&quot;;i:34;s:2:&quot;34&quot;;i:35;s:2:&quot;35&quot;;i:36;s:2:&quot;36&quot;;i:37;s:2:&quot;37&quot;;i:38;s:2:&quot;80&quot;;i:39;s:2:&quot;38&quot;;i:40;s:2:&quot;39&quot;;i:41;s:2:&quot;40&quot;;i:42;s:2:&quot;41&quot;;i:43;s:2:&quot;42&quot;;i:44;s:2:&quot;43&quot;;i:45;s:2:&quot;44&quot;;i:46;s:2:&quot;45&quot;;i:47;s:2:&quot;46&quot;;i:48;s:2:&quot;47&quot;;i:49;s:2:&quot;48&quot;;i:50;s:2:&quot;49&quot;;i:51;s:2:&quot;50&quot;;i:52;s:2:&quot;51&quot;;i:53;s:2:&quot;52&quot;;i:54;s:2:&quot;53&quot;;i:55;s:2:&quot;54&quot;;i:56;s:2:&quot;55&quot;;i:57;s:2:&quot;56&quot;;i:58;s:2:&quot;57&quot;;i:59;s:2:&quot;58&quot;;i:60;s:2:&quot;59&quot;;i:61;s:2:&quot;60&quot;;i:62;s:2:&quot;61&quot;;i:63;s:2:&quot;63&quot;;i:64;s:2:&quot;64&quot;;i:65;s:2:&quot;65&quot;;i:66;s:2:&quot;66&quot;;i:67;s:2:&quot;67&quot;;i:68;s:2:&quot;68&quot;;i:69;s:2:&quot;69&quot;;i:70;s:2:&quot;70&quot;;i:71;s:2:&quot;71&quot;;i:72;s:2:&quot;72&quot;;i:73;s:2:&quot;73&quot;;i:74;s:2:&quot;74&quot;;i:75;s:2:&quot;75&quot;;i:76;s:2:&quot;77&quot;;i:77;s:2:&quot;78&quot;;i:78;s:2:&quot;79&quot;;i:79;s:2:&quot;81&quot;;i:80;s:2:&quot;82&quot;;i:81;s:2:&quot;83&quot;;i:82;s:2:&quot;84&quot;;i:83;s:2:&quot;85&quot;;i:84;s:2:&quot;86&quot;;i:85;s:2:&quot;87&quot;;i:86;s:2:&quot;88&quot;;i:87;s:2:&quot;89&quot;;i:88;s:2:&quot;90&quot;;i:89;s:2:&quot;91&quot;;i:90;s:2:&quot;92&quot;;i:91;s:2:&quot;93&quot;;i:92;s:2:&quot;96&quot;;i:93;s:2:&quot;94&quot;;i:94;s:2:&quot;95&quot;;}');
-------------------------------------------------
-- 会员信息表
DROP TABLE IF EXISTS `ls_user`;
CREATE TABLE `ls_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ran_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `reg_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` int(11) NOT NULL,
  `audit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-------------------------------------------------
-- 会员分组表
DROP TABLE IF EXISTS `ls_group`;
CREATE TABLE `ls_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_group` VALUES ('1','普通用户','0','0','1','0');
INSERT INTO `ls_group` VALUES ('2','白银会员','1000','1','2','1');
INSERT INTO `ls_group` VALUES ('3','白金会员','3000','1','3','0');
INSERT INTO `ls_group` VALUES ('4','钻石用户','7000','1','4','0');
INSERT INTO `ls_group` VALUES ('5','专家会员','0','0','5','0');
INSERT INTO `ls_group` VALUES ('8','中级会员','10000','5','1','0');
INSERT INTO `ls_group` VALUES ('9','高级会员','15000','5','2','0');
INSERT INTO `ls_group` VALUES ('10','特级会员','25000','5','3','0');
-------------------------------------------------
-- 会员朋友表
DROP TABLE IF EXISTS `ls_friend`;
CREATE TABLE `ls_friend` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `friend_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verify` tinyint(1) NOT NULL,
  `message` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-------------------------------------------------
-- 会员私信表
DROP TABLE IF EXISTS `ls_letter`;
CREATE TABLE `ls_letter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `create_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-------------------------------------------------
-- 积分抽奖种类表
DROP TABLE IF EXISTS `ls_lottery`;
CREATE TABLE `ls_lottery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `category` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
INSERT INTO `ls_lottery` VALUES ('8','幸运大转盘','1','2');
-------------------------------------------------
-- 会员抽奖结果概论表
DROP TABLE IF EXISTS `ls_lotteryitem`;
CREATE TABLE `ls_lotteryitem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `percent` tinyint(2) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `win` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_lotteryitem` VALUES ('28','8','七等奖谢谢参与','10','7','0');
INSERT INTO `ls_lotteryitem` VALUES ('27','8','六等奖谢谢参与','10','6','0');
INSERT INTO `ls_lotteryitem` VALUES ('26','8','五等奖谢谢参与','10','5','0');
INSERT INTO `ls_lotteryitem` VALUES ('25','8','四等奖谢谢参与','10','4','0');
INSERT INTO `ls_lotteryitem` VALUES ('24','8','三等奖谢谢参与','10','3','0');
INSERT INTO `ls_lotteryitem` VALUES ('23','8','二等奖三星手机','10','2','1');
INSERT INTO `ls_lotteryitem` VALUES ('22','8','一等奖电热水器','40','1','1');
-------------------------------------------------
-- 会员获奖项表
DROP TABLE IF EXISTS `ls_lotterywin`;
CREATE TABLE `ls_lotterywin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 热词表
DROP TABLE IF EXISTS `ls_hotword`;
CREATE TABLE `ls_hotword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `times` int(10) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
-------------------------------------------------
-- 留言表
DROP TABLE IF EXISTS `ls_message`;
CREATE TABLE `ls_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ls_message` VALUES ('1','aaaaaaaaaaaaaaa','abbbbbbbbbbbbbbbbbbbbbbbbb','0');
-------------------------------------------------
-- 单页表
DROP TABLE IF EXISTS `ls_pcate`;
CREATE TABLE `ls_pcate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
INSERT INTO `ls_pcate` VALUES ('23','关于我们','&lt;p&gt;&lt;span style=&quot;font-family: &amp;#39;microsoft yahei&amp;#39;; font-size: 12px; text-align: -webkit-center; white-space: normal;&quot;&gt;关于我们&lt;/span&gt;&lt;/p&gt;','1');
INSERT INTO `ls_pcate` VALUES ('24','帮助中心','&lt;p&gt;帮助中心&lt;/p&gt;','2');
INSERT INTO `ls_pcate` VALUES ('25','诚聘英才','&lt;p&gt;&lt;span style=&quot;font-family: &amp;#39;microsoft yahei&amp;#39;; font-size: 12px; text-align: -webkit-center; white-space: normal;&quot;&gt;诚聘英才&lt;/span&gt;&lt;/p&gt;','3');
INSERT INTO `ls_pcate` VALUES ('26','联系我们','&lt;p&gt;&lt;span style=&quot;font-family: &amp;#39;microsoft yahei&amp;#39;; font-size: 12px; text-align: -webkit-center; white-space: normal;&quot;&gt;联系我们&lt;/span&gt;&lt;/p&gt;','4');
INSERT INTO `ls_pcate` VALUES ('27','网站合作','&lt;p&gt;&lt;span style=&quot;font-family: &amp;#39;microsoft yahei&amp;#39;; font-size: 12px; text-align: -webkit-center; white-space: normal;&quot;&gt;网站合作&lt;/span&gt;&lt;/p&gt;','5');
INSERT INTO `ls_pcate` VALUES ('28','版权说明','&lt;p&gt;&lt;span style=&quot;font-family: &amp;#39;microsoft yahei&amp;#39;; font-size: 12px; text-align: -webkit-center; white-space: normal;&quot;&gt;版权说明&lt;/span&gt;&lt;/p&gt;','6');
-------------------------------------------------
-- 调查表
DROP TABLE IF EXISTS `ls_survey`;
CREATE TABLE `ls_survey` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `item1` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `item2` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `item3` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `item4` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `item5` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_survey` VALUES ('1','大家认为现在这个网站怎么样?','太好了简直，我也想买一套','嗯，还可以吧','一般般，不值得去用','很差啊，你们都看不出来么','唉，啥也不说了','a:5:{s:5:&quot;item1&quot;;i:6;s:5:&quot;item2&quot;;i:4;s:5:&quot;item3&quot;;i:1;s:5:&quot;item4&quot;;i:4;s:5:&quot;item5&quot;;i:2;}');
-------------------------------------------------
--广告表
DROP TABLE IF EXISTS `ls_adv`;
CREATE TABLE `ls_adv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cate` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
INSERT INTO `ls_adv` VALUES ('11','广告测试用','8','http://www.aaa.com','tttttt','20140720171349_896.jpg','2','6');
INSERT INTO `ls_adv` VALUES ('16','测试用广告名称1','8','http://www.ab.com','asdfasdf','20140720171208_948.jpg','1','0');
INSERT INTO `ls_adv` VALUES ('18','测试用广告名称3','8','http://www.baidu.com','aaa','20140720171705_282.jpg','3','0');
INSERT INTO `ls_adv` VALUES ('19','温馨的家庭生活','13','http://www.google.com','2','20140720235714_607.jpg','4','0');
INSERT INTO `ls_adv` VALUES ('20','无忧无虑','13','http://www.baidu.com','asdfasdf','20140720235804_303.jpg','5','0');
INSERT INTO `ls_adv` VALUES ('21','温馨家庭','13','http://www.baidu.com','asdfasdf','20140720235829_284.jpg','6','0');
INSERT INTO `ls_adv` VALUES ('22','广告','16','http://www.baidu.com','aaa','20150323215538_827.jpg','7','0');
INSERT INTO `ls_adv` VALUES ('23','中部广告','17','http://www.baidu.com','asdfasdfasd','20150330222605_691.jpg','8','0');
INSERT INTO `ls_adv` VALUES ('24','内页广告','18','http://www.baidu.com','asdfasdf','20150412185902_112.jpg','11','0');
-------------------------------------------------
-- 广告分类表
DROP TABLE IF EXISTS `ls_acate`;
CREATE TABLE `ls_acate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
INSERT INTO `ls_acate` VALUES ('8','首页广告','1');
INSERT INTO `ls_acate` VALUES ('13','新闻栏目广告','2');
INSERT INTO `ls_acate` VALUES ('16','新闻速递上面','3');
INSERT INTO `ls_acate` VALUES ('17','网站中部','4');
INSERT INTO `ls_acate` VALUES ('18','内页广告','5');
-------------------------------------------------
-- 友情链接表
DROP TABLE IF EXISTS `ls_link`;
CREATE TABLE `ls_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `ls_link` VALUES ('3','百度','http://www.baidu.com','','1');
INSERT INTO `ls_link` VALUES ('4','乐尚商城','http://www.leesuntech.com','','2');
-------------------------------------------------
-- 默认配置信息
DROP TABLE IF EXISTS `ls_config`;
CREATE TABLE `ls_config` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `key_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auto_news_verify` tinyint(1) unsigned NOT NULL,
  `auto_pro_verify` tinyint(1) NOT NULL,
  `pub_news_score` int(11) NOT NULL,
  `pub_pro_score` int(11) NOT NULL,
  `score_money` int(10) NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `water_mark` varchar(100) NOT NULL,
  `water_marked` tinyint(1) NOT NULL,
  `water_position` tinyint(1) NOT NULL,
  `thumb_width` int(4) NOT NULL,
  `thumb_height` int(4) NOT NULL,
  `template` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_page_num` int(2) NOT NULL,
  `admin_page_num` int(2) NOT NULL,
  `mod_appraise` smallint(3) NOT NULL,
  `every_max_score` int(11) NOT NULL,
  `closed` tinyint(1) NOT NULL,
  `site_close_html` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `qq_num` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icp_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lottery_score` int(10) NOT NULL,
  `is_lottery` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ls_config` VALUES ('1','乐尚商城','资讯,cms,php','aaaa','0','0','50','80','100','20160410212227_616.png','20160327221309_574.ico','20160508215402_926.png','1','0','200','200','orange','10','10','2','1000','0','&lt;div class=&quot;closed_box&quot;&gt;&lt;div class=&quot;closed_body_top&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;closed_body&quot;&gt;&lt;div class=&quot;content&quot;&gt;网站已关闭&lt;br/&gt;请您稍后访问&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;closed_shadow&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;clear&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;','123123','555','晋ICP备09007422号','50','1');
-------------------------------------------------
-- 发邮件情景表
DROP TABLE IF EXISTS `ls_mailrules`;
CREATE TABLE `ls_mailrules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` tinyint(1) NOT NULL,
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
INSERT INTO `ls_mailrules` VALUES ('1','注册会员','set_reg','注册会员成功后发送邮件通知','1','恭喜你成为{sitename}的会员
你的用户名是：{username}
你的密码是：{password}
此邮件由系统自动发出，请勿回复！');
INSERT INTO `ls_mailrules` VALUES ('3','确认收货','set_receive','管理员确认付款后发通知邮件','1','亲爱的{sitename}会员{username}：
您已收到货物!。
');
INSERT INTO `ls_mailrules` VALUES ('4','修改订单','mod_pay','管理员改价格或支付方式后','1','亲爱的{username}会员：
管理员已修改了价格。
请登录会员中心查看。
此信息由系统自动发送，请勿回复！');
INSERT INTO `ls_mailrules` VALUES ('5','改收货信息','mod_receiving','管理员修改收货信息后','1','您好，{username}，管理员已给您修改了收货地址，请到会员中心查看!');
INSERT INTO `ls_mailrules` VALUES ('7','关闭交易','close_order','管理员关闭交易后','1','不好意思，{username}会员，管理员已关闭了您的订单！');
INSERT INTO `ls_mailrules` VALUES ('8','评价回复','appraise_reply','管理员回复用户评价后','1','您好{username}，管理员已回复您的评价，请到{domain}网站登录后查询！');
INSERT INTO `ls_mailrules` VALUES ('9','咨询回复','consult_reply','管理员回复咨询后','1','您好{username}，管理员已回复您的商品咨询，请到{domain}网站登录后查询！');
INSERT INTO `ls_mailrules` VALUES ('12','发布商品','publish_product','用户发布商品管理员通过审核后','1','您好{username}，您发布的商品已审核通过，请登陆{domain}网站查看！');
INSERT INTO `ls_mailrules` VALUES ('13','发布新闻','publish_news','用户发布新闻管理员通过审核后','1','您好{username}，您发布的新闻已审核通过，请登陆{domain}网站查看！');
INSERT INTO `ls_mailrules` VALUES ('2','已支付','set_paid','管理员确认支付','1','亲爱的{username},管理员已确认支付!');
INSERT INTO `ls_mailrules` VALUES ('6','发货','deliver','管理员发货后邮件通知','1','亲爱的{username}，您的货物已发出，请等待收货!您的地址是{address}');
-------------------------------------------------
-- 邮件服务器表
DROP TABLE IF EXISTS `ls_mails`;
CREATE TABLE `ls_mails` (
  `id` int(11) NOT NULL,
  `mail_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port` smallint(5) NOT NULL,
  `SMTPAuth` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `ls_mails` VALUES ('1','smtp.qq.com','test@phpshe.com','phpshe123','25','1');

