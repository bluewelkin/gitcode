/*
Navicat MySQL Data Transfer

Source Server         : mysql5.7
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : tel_info

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-10-17 20:44:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_customer_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_info`;
CREATE TABLE `t_customer_info` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `remark_status` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `last_modify_by` int(11) DEFAULT NULL,
  `last_modify_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_max_num`
-- ----------------------------
DROP TABLE IF EXISTS `t_max_num`;
CREATE TABLE `t_max_num` (
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_max_num
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_function`;
CREATE TABLE `t_sys_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `display_order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t_sys_opera` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=645 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_function
-- ----------------------------
INSERT INTO t_sys_function VALUES ('133', '4', '新增', 'SysRoleAdd', 'sys/role/add.htm', '1', '', '1');
INSERT INTO t_sys_function VALUES ('134', '4', '修改', 'SysRoleUpdate', 'sys/role/update.htm', '1', '', '2');
INSERT INTO t_sys_function VALUES ('135', '4', '删除', 'SysRoleDelete', 'sys/role/delete.htm', '1', '', '3');
INSERT INTO t_sys_function VALUES ('138', '4', '设置权限', 'SysRoleUpdateRoleModule', 'sys/role/updateRoleModule.htm', '1', '', '6');
INSERT INTO t_sys_function VALUES ('144', '51', '导出', 'SysLogDownload', 'sys/log/downloadLog.htm', '1', '', '3');
INSERT INTO t_sys_function VALUES ('145', '3', '新增模块', 'SysModuleAdd', 'sys/module/add.htm', '1', '', '3');
INSERT INTO t_sys_function VALUES ('148', '3', '修改模块', 'SysModuleUpdate', 'sys/module/update.htm', '1', '', '4');
INSERT INTO t_sys_function VALUES ('149', '3', '删除模块', 'SysModuleDelete', 'sys/module/delete.htm', '1', '', '5');
INSERT INTO t_sys_function VALUES ('151', '3', '新增功能', 'SysFunctionAdd', 'sys/function/add.htm', '1', '', '7');
INSERT INTO t_sys_function VALUES ('152', '3', '修改功能', 'SysFunctionUpdate', 'sys/function/update.htm', '1', '', '8');
INSERT INTO t_sys_function VALUES ('153', '3', '删除功能', 'SysFunctionDelete', 'sys/function/delete.htm', '1', '', '9');
INSERT INTO t_sys_function VALUES ('162', '7', '新增', 'SysUserAdd', 'sys/user/add.htm', '1', '', '3');
INSERT INTO t_sys_function VALUES ('165', '7', '修改', 'SysUserUpdate', 'sys/user/update.htm', '1', '', '4');
INSERT INTO t_sys_function VALUES ('167', '7', '密码重置', 'SysUserResetPass', 'sys/user/saveResetPass.htm', '1', '', '6');
INSERT INTO t_sys_function VALUES ('168', '7', '锁定', 'SysUserLock', 'sys/user/saveLock.htm', '1', '', '7');
INSERT INTO t_sys_function VALUES ('169', '7', '解锁', 'SysUserUnlock', 'sys/user/saveUnlock.htm', '1', '', '8');
INSERT INTO t_sys_function VALUES ('340', '7', '删除', 'SysUserDelete', 'sys/user/delete.htm', '1', null, '9');
INSERT INTO t_sys_function VALUES ('458', '7', '设置省份权限', 'SysUserSaveUserdata', '/sys/user/saveUserdata.htm', '1', '', '7');
INSERT INTO t_sys_function VALUES ('638', '164', '订单信息管理', 'orderManager', '', '1', '', '1');
INSERT INTO t_sys_function VALUES ('639', '155', '新增', 'CustomerInfoAdd', 'customer/info/add.htm', '1', '', '1');
INSERT INTO t_sys_function VALUES ('640', '155', '修改', 'CustomerInfoUpdate', 'customer/info/update.htm', '1', '', '2');
INSERT INTO t_sys_function VALUES ('641', '155', '删除', 'CustomerInfoDelete', 'customer/info/delete.htm', '1', '', '3');
INSERT INTO t_sys_function VALUES ('642', '322', '新增', 'OrderInfoAdd', 'order/info/add.htm', '1', '', '1');
INSERT INTO t_sys_function VALUES ('643', '322', '修改', 'OrderInfoUpdate', 'order/info/update.htm', '1', '', '2');
INSERT INTO t_sys_function VALUES ('644', '322', '删除', 'OrderInfoDelete', 'order/info/delete.htm', '1', '', '3');

-- ----------------------------
-- Table structure for `t_sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_log`;
CREATE TABLE `t_sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `opera_date` datetime DEFAULT NULL,
  `opera_ip` varchar(20) DEFAULT NULL,
  `module_name` varchar(20) DEFAULT NULL,
  `opera_name` varchar(20) DEFAULT NULL,
  `opera_type` tinyint(4) DEFAULT NULL,
  `opera_url` varchar(100) DEFAULT NULL,
  `opera_params` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t_sys_log` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=670 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_log
-- ----------------------------
INSERT INTO t_sys_log VALUES ('16', '1', '2017-04-17 10:13:45', '0:0:0:0:0:0:0:1', '角色管理', '新增', '1', 'sys/role/add.htm', 'functionArr=145@@148@@149@@151@@152@@153@@154@@133@@134@@135@@138@@162@@165@@340@@458@@141@@457@@144@@&backUrl=http%3A%2F%2Flocalhost%3A8080%2Fsys%2Frole%2Findex.htm%3F&module=2&function=145&name=2&moduleArr=2@@3@@4@@7@@49@@51@@&description=3&');
INSERT INTO t_sys_log VALUES ('17', '1', '2017-04-17 10:33:35', '0:0:0:0:0:0:0:1', '角色管理', '新增', '1', 'sys/role/add.htm', 'functionArr=145@@148@@149@@151@@152@@153@@154@@133@@134@@135@@138@@162@@165@@340@@458@@141@@457@@144@@&backUrl=http%3A%2F%2Flocalhost%3A8080%2Fsys%2Frole%2Findex.htm%3F&module=2&function=145&name=2&moduleArr=2@@3@@4@@7@@49@@51@@&description=3&');
INSERT INTO t_sys_log VALUES ('652', '1', '2017-09-20 21:42:47', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@164@@322@@2@@3@@4@@7@@51@@&functionArr=145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=admin&description=系统管理员&module=153&function=145&');
INSERT INTO t_sys_log VALUES ('653', '1', '2017-09-23 18:04:47', '0:0:0:0:0:0:0:1', '模块管理', '新增功能', '1', 'sys/function/add.htm', 'backUrl=%2Fsys%2Ffunction%2Findex.htm%3Fmodule_id%3D155&module_id=155&name=新增&code=CustomerInfoAdd&url=customer/info/add.htm&type=1&description=&display_order=1&');
INSERT INTO t_sys_log VALUES ('654', '1', '2017-09-23 18:05:42', '0:0:0:0:0:0:0:1', '模块管理', '新增功能', '1', 'sys/function/add.htm', 'backUrl=%2Fsys%2Ffunction%2Findex.htm%3Fmodule_id%3D155&module_id=155&name=修改&code=CustomerInfoUpdate&url=customer/info/update.htm&type=1&description=&display_order=2&');
INSERT INTO t_sys_log VALUES ('655', '1', '2017-09-23 18:06:33', '0:0:0:0:0:0:0:1', '模块管理', '新增功能', '1', 'sys/function/add.htm', 'backUrl=%2Fsys%2Ffunction%2Findex.htm%3Fmodule_id%3D155&module_id=155&name=删除&code=CustomerInfoDelete&url=customer/info/delete.htm&type=1&description=&display_order=3&');
INSERT INTO t_sys_log VALUES ('656', '1', '2017-09-23 18:06:47', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@164@@322@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=admin&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('657', '1', '2017-09-23 18:07:36', '0:0:0:0:0:0:0:1', '模块管理', '新增功能', '1', 'sys/function/add.htm', 'backUrl=%2Fsys%2Ffunction%2Findex.htm%3Fmodule_id%3D322&module_id=322&name=新增&code=OrderInfoAdd&url=order/info/add.htm&type=1&description=&display_order=1&');
INSERT INTO t_sys_log VALUES ('658', '1', '2017-09-23 18:08:13', '0:0:0:0:0:0:0:1', '模块管理', '新增功能', '1', 'sys/function/add.htm', 'backUrl=%2Fsys%2Ffunction%2Findex.htm%3Fmodule_id%3D322&module_id=322&name=修改&code=OrderInfoUpdate&url=order/info/update.htm&type=1&description=&display_order=2&');
INSERT INTO t_sys_log VALUES ('659', '1', '2017-09-23 18:08:47', '0:0:0:0:0:0:0:1', '模块管理', '新增功能', '1', 'sys/function/add.htm', 'backUrl=%2Fsys%2Ffunction%2Findex.htm%3Fmodule_id%3D322&module_id=322&name=删除&code=OrderInfoDelete&url=order/info/delete.htm&type=1&description=&display_order=3&');
INSERT INTO t_sys_log VALUES ('660', '1', '2017-09-23 18:09:00', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@164@@322@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@642@@643@@644@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=admin&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('661', '1', '2017-09-23 18:10:04', '0:0:0:0:0:0:0:1', '角色管理', '新增', '1', 'sys/role/add.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&moduleArr=153@@155@@&functionArr=639@@640@@641@@&name=经理&description=管理公司全部&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('662', '1', '2017-09-23 18:10:53', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=5&moduleArr=153@@155@@&functionArr=639@@640@@641@@&name=经理&description=管理公司全部&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('663', '1', '2017-09-23 18:18:05', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@164@@322@@2@@3@@4@@7@@51@@&functionArr=145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=admin&description=系统管理员&module=153&function=145&');
INSERT INTO t_sys_log VALUES ('664', '1', '2017-09-23 18:18:28', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@164@@322@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@642@@643@@644@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=admin&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('665', '1', '2017-09-25 23:22:31', '0:0:0:0:0:0:0:1', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=56&backUrl=http://localhost:8088/info_manager/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('666', '1', '2017-09-25 23:35:52', '0:0:0:0:0:0:0:1', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2Flocalhost%3A8088%2Finfo_manager%2Fsys%2Fuser%2Findex.htm%3F&username=0001&realname=张三&role_id=2&');
INSERT INTO t_sys_log VALUES ('667', '1', '2017-09-25 23:40:46', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=2&moduleArr=153@@155@@164@@322@@4@@7@@51@@&functionArr=133@@134@@135@@138@@162@@165@@340@@144@@&name=职员&description=职员&module=153&function=133&');
INSERT INTO t_sys_log VALUES ('668', '1', '2017-10-17 19:03:22', '0:0:0:0:0:0:0:1', '用户管理', '密码重置', '1', 'sys/user/saveResetPass.htm', 'id=1&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('669', '1', '2017-10-17 19:52:32', '0:0:0:0:0:0:0:1', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2Flocalhost%3A8080%2Ftel_info_manager%2Fsys%2Fuser%2Findex.htm%3F&username=￥￥￥￥￥&realname=1111&role_id=1&');

-- ----------------------------
-- Table structure for `t_sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module`;
CREATE TABLE `t_sys_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `iconImg` varchar(20) DEFAULT NULL,
  `display_order` smallint(6) DEFAULT NULL,
  `quickIcon` varchar(20) DEFAULT NULL,
  `icon_color` varchar(50) DEFAULT NULL COMMENT '图标颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_module
-- ----------------------------
INSERT INTO t_sys_module VALUES ('2', '系统管理', 'SM', '1', '#', 'main', 'fa-cogs', '10', null, '#ff272b');
INSERT INTO t_sys_module VALUES ('3', '模块管理', 'SysModule', '2', 'sys/module/index.htm', 'main', '61548', '1', null, null);
INSERT INTO t_sys_module VALUES ('4', '角色管理', 'SysRole', '2', 'sys/role/index.htm', 'main', '61632', '2', null, null);
INSERT INTO t_sys_module VALUES ('7', '用户管理', 'SysUser', '2', 'sys/user/index.htm', 'main', 'fa-user', '3', null, '#5d96ff');
INSERT INTO t_sys_module VALUES ('51', '操作日志', 'SysLog', '2', 'sys/log/index.htm', 'main', '61555', '6', null, null);
INSERT INTO t_sys_module VALUES ('153', '客户信息管理', 'CustomerManager', '1', '#', 'main', 'fa-list', '2', null, '#87b87f');
INSERT INTO t_sys_module VALUES ('155', '客户信息', 'CustomerInfo', '153', 'customer/customerInfo/index.htm', 'main', '', '1', null, '');
INSERT INTO t_sys_module VALUES ('164', '订单信息管理', 'OrderManager', '1', '#', 'main', 'fa-book', '2', null, '#1c70de');
INSERT INTO t_sys_module VALUES ('322', '订单信息', 'OrderInfo', '164', 'order/orderInfo/index.htm', 'main', 'fa-cc-discover', '1', null, '');

-- ----------------------------
-- Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `display_order` smallint(6) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `create_person` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO t_sys_role VALUES ('1', 'admin', '系统管理员', '1', '2015-06-01 15:13:11', '0', '管理员');
INSERT INTO t_sys_role VALUES ('2', '职员', '职员', '2', '2017-04-22 11:19:31', '0', '管理员');

-- ----------------------------
-- Table structure for `t_sys_rolefunction`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_rolefunction`;
CREATE TABLE `t_sys_rolefunction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `function_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t_sys_rolefunction` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36340 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_rolefunction
-- ----------------------------
INSERT INTO t_sys_rolefunction VALUES ('32499', '43', '133');
INSERT INTO t_sys_rolefunction VALUES ('32500', '43', '134');
INSERT INTO t_sys_rolefunction VALUES ('32501', '43', '135');
INSERT INTO t_sys_rolefunction VALUES ('32502', '43', '138');
INSERT INTO t_sys_rolefunction VALUES ('32503', '43', '162');
INSERT INTO t_sys_rolefunction VALUES ('32504', '43', '165');
INSERT INTO t_sys_rolefunction VALUES ('32505', '43', '340');
INSERT INTO t_sys_rolefunction VALUES ('32506', '43', '144');
INSERT INTO t_sys_rolefunction VALUES ('32588', '46', '145');
INSERT INTO t_sys_rolefunction VALUES ('32589', '46', '148');
INSERT INTO t_sys_rolefunction VALUES ('32590', '46', '149');
INSERT INTO t_sys_rolefunction VALUES ('32591', '46', '151');
INSERT INTO t_sys_rolefunction VALUES ('32592', '46', '152');
INSERT INTO t_sys_rolefunction VALUES ('32593', '46', '153');
INSERT INTO t_sys_rolefunction VALUES ('32594', '46', '154');
INSERT INTO t_sys_rolefunction VALUES ('32595', '46', '133');
INSERT INTO t_sys_rolefunction VALUES ('32596', '46', '134');
INSERT INTO t_sys_rolefunction VALUES ('32597', '46', '135');
INSERT INTO t_sys_rolefunction VALUES ('32598', '46', '138');
INSERT INTO t_sys_rolefunction VALUES ('32599', '46', '162');
INSERT INTO t_sys_rolefunction VALUES ('32600', '46', '165');
INSERT INTO t_sys_rolefunction VALUES ('32601', '46', '340');
INSERT INTO t_sys_rolefunction VALUES ('32602', '46', '458');
INSERT INTO t_sys_rolefunction VALUES ('32603', '46', '141');
INSERT INTO t_sys_rolefunction VALUES ('32604', '46', '457');
INSERT INTO t_sys_rolefunction VALUES ('32605', '46', '144');
INSERT INTO t_sys_rolefunction VALUES ('34114', '4', '599');
INSERT INTO t_sys_rolefunction VALUES ('34115', '4', '602');
INSERT INTO t_sys_rolefunction VALUES ('35227', '3', '581');
INSERT INTO t_sys_rolefunction VALUES ('35228', '3', '582');
INSERT INTO t_sys_rolefunction VALUES ('35229', '3', '583');
INSERT INTO t_sys_rolefunction VALUES ('35230', '3', '632');
INSERT INTO t_sys_rolefunction VALUES ('35231', '3', '591');
INSERT INTO t_sys_rolefunction VALUES ('35232', '3', '592');
INSERT INTO t_sys_rolefunction VALUES ('35233', '3', '593');
INSERT INTO t_sys_rolefunction VALUES ('35234', '3', '563');
INSERT INTO t_sys_rolefunction VALUES ('35235', '3', '564');
INSERT INTO t_sys_rolefunction VALUES ('35236', '3', '565');
INSERT INTO t_sys_rolefunction VALUES ('35237', '3', '595');
INSERT INTO t_sys_rolefunction VALUES ('35238', '3', '596');
INSERT INTO t_sys_rolefunction VALUES ('35239', '3', '597');
INSERT INTO t_sys_rolefunction VALUES ('35240', '3', '575');
INSERT INTO t_sys_rolefunction VALUES ('35241', '3', '576');
INSERT INTO t_sys_rolefunction VALUES ('35242', '3', '577');
INSERT INTO t_sys_rolefunction VALUES ('35243', '3', '578');
INSERT INTO t_sys_rolefunction VALUES ('35244', '3', '579');
INSERT INTO t_sys_rolefunction VALUES ('35245', '3', '580');
INSERT INTO t_sys_rolefunction VALUES ('35246', '3', '584');
INSERT INTO t_sys_rolefunction VALUES ('35247', '3', '585');
INSERT INTO t_sys_rolefunction VALUES ('35248', '3', '586');
INSERT INTO t_sys_rolefunction VALUES ('35249', '3', '628');
INSERT INTO t_sys_rolefunction VALUES ('35250', '3', '602');
INSERT INTO t_sys_rolefunction VALUES ('35251', '3', '615');
INSERT INTO t_sys_rolefunction VALUES ('35252', '3', '616');
INSERT INTO t_sys_rolefunction VALUES ('35253', '3', '617');
INSERT INTO t_sys_rolefunction VALUES ('35254', '3', '618');
INSERT INTO t_sys_rolefunction VALUES ('35255', '3', '619');
INSERT INTO t_sys_rolefunction VALUES ('36287', '5', '639');
INSERT INTO t_sys_rolefunction VALUES ('36288', '5', '640');
INSERT INTO t_sys_rolefunction VALUES ('36289', '5', '641');
INSERT INTO t_sys_rolefunction VALUES ('36308', '1', '639');
INSERT INTO t_sys_rolefunction VALUES ('36309', '1', '640');
INSERT INTO t_sys_rolefunction VALUES ('36310', '1', '641');
INSERT INTO t_sys_rolefunction VALUES ('36311', '1', '642');
INSERT INTO t_sys_rolefunction VALUES ('36312', '1', '643');
INSERT INTO t_sys_rolefunction VALUES ('36313', '1', '644');
INSERT INTO t_sys_rolefunction VALUES ('36314', '1', '145');
INSERT INTO t_sys_rolefunction VALUES ('36315', '1', '148');
INSERT INTO t_sys_rolefunction VALUES ('36316', '1', '149');
INSERT INTO t_sys_rolefunction VALUES ('36317', '1', '151');
INSERT INTO t_sys_rolefunction VALUES ('36318', '1', '152');
INSERT INTO t_sys_rolefunction VALUES ('36319', '1', '153');
INSERT INTO t_sys_rolefunction VALUES ('36320', '1', '133');
INSERT INTO t_sys_rolefunction VALUES ('36321', '1', '134');
INSERT INTO t_sys_rolefunction VALUES ('36322', '1', '135');
INSERT INTO t_sys_rolefunction VALUES ('36323', '1', '138');
INSERT INTO t_sys_rolefunction VALUES ('36324', '1', '162');
INSERT INTO t_sys_rolefunction VALUES ('36325', '1', '165');
INSERT INTO t_sys_rolefunction VALUES ('36326', '1', '167');
INSERT INTO t_sys_rolefunction VALUES ('36327', '1', '168');
INSERT INTO t_sys_rolefunction VALUES ('36328', '1', '169');
INSERT INTO t_sys_rolefunction VALUES ('36329', '1', '340');
INSERT INTO t_sys_rolefunction VALUES ('36330', '1', '458');
INSERT INTO t_sys_rolefunction VALUES ('36331', '1', '144');
INSERT INTO t_sys_rolefunction VALUES ('36332', '2', '133');
INSERT INTO t_sys_rolefunction VALUES ('36333', '2', '134');
INSERT INTO t_sys_rolefunction VALUES ('36334', '2', '135');
INSERT INTO t_sys_rolefunction VALUES ('36335', '2', '138');
INSERT INTO t_sys_rolefunction VALUES ('36336', '2', '162');
INSERT INTO t_sys_rolefunction VALUES ('36337', '2', '165');
INSERT INTO t_sys_rolefunction VALUES ('36338', '2', '340');
INSERT INTO t_sys_rolefunction VALUES ('36339', '2', '144');

-- ----------------------------
-- Table structure for `t_sys_rolemodule`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_rolemodule`;
CREATE TABLE `t_sys_rolemodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t_sys_rolemodule` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18862 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_rolemodule
-- ----------------------------
INSERT INTO t_sys_rolemodule VALUES ('16703', '43', '4');
INSERT INTO t_sys_rolemodule VALUES ('16704', '43', '7');
INSERT INTO t_sys_rolemodule VALUES ('16705', '43', '51');
INSERT INTO t_sys_rolemodule VALUES ('17560', '4', '161');
INSERT INTO t_sys_rolemodule VALUES ('17561', '4', '314');
INSERT INTO t_sys_rolemodule VALUES ('17562', '4', '306');
INSERT INTO t_sys_rolemodule VALUES ('17563', '4', '303');
INSERT INTO t_sys_rolemodule VALUES ('17564', '4', '305');
INSERT INTO t_sys_rolemodule VALUES ('17565', '4', '309');
INSERT INTO t_sys_rolemodule VALUES ('17566', '4', '311');
INSERT INTO t_sys_rolemodule VALUES ('18224', '3', '164');
INSERT INTO t_sys_rolemodule VALUES ('18225', '3', '165');
INSERT INTO t_sys_rolemodule VALUES ('18226', '3', '168');
INSERT INTO t_sys_rolemodule VALUES ('18227', '3', '169');
INSERT INTO t_sys_rolemodule VALUES ('18228', '3', '153');
INSERT INTO t_sys_rolemodule VALUES ('18229', '3', '157');
INSERT INTO t_sys_rolemodule VALUES ('18230', '3', '307');
INSERT INTO t_sys_rolemodule VALUES ('18231', '3', '170');
INSERT INTO t_sys_rolemodule VALUES ('18232', '3', '161');
INSERT INTO t_sys_rolemodule VALUES ('18233', '3', '162');
INSERT INTO t_sys_rolemodule VALUES ('18234', '3', '163');
INSERT INTO t_sys_rolemodule VALUES ('18235', '3', '166');
INSERT INTO t_sys_rolemodule VALUES ('18236', '3', '313');
INSERT INTO t_sys_rolemodule VALUES ('18237', '3', '312');
INSERT INTO t_sys_rolemodule VALUES ('18238', '3', '303');
INSERT INTO t_sys_rolemodule VALUES ('18239', '3', '304');
INSERT INTO t_sys_rolemodule VALUES ('18240', '3', '310');
INSERT INTO t_sys_rolemodule VALUES ('18241', '3', '311');
INSERT INTO t_sys_rolemodule VALUES ('18242', '3', '174');
INSERT INTO t_sys_rolemodule VALUES ('18243', '3', '181');
INSERT INTO t_sys_rolemodule VALUES ('18244', '3', '182');
INSERT INTO t_sys_rolemodule VALUES ('18245', '3', '300');
INSERT INTO t_sys_rolemodule VALUES ('18246', '3', '301');
INSERT INTO t_sys_rolemodule VALUES ('18835', '5', '153');
INSERT INTO t_sys_rolemodule VALUES ('18836', '5', '155');
INSERT INTO t_sys_rolemodule VALUES ('18846', '1', '153');
INSERT INTO t_sys_rolemodule VALUES ('18847', '1', '155');
INSERT INTO t_sys_rolemodule VALUES ('18848', '1', '164');
INSERT INTO t_sys_rolemodule VALUES ('18849', '1', '322');
INSERT INTO t_sys_rolemodule VALUES ('18850', '1', '2');
INSERT INTO t_sys_rolemodule VALUES ('18851', '1', '3');
INSERT INTO t_sys_rolemodule VALUES ('18852', '1', '4');
INSERT INTO t_sys_rolemodule VALUES ('18853', '1', '7');
INSERT INTO t_sys_rolemodule VALUES ('18854', '1', '51');
INSERT INTO t_sys_rolemodule VALUES ('18855', '2', '153');
INSERT INTO t_sys_rolemodule VALUES ('18856', '2', '155');
INSERT INTO t_sys_rolemodule VALUES ('18857', '2', '164');
INSERT INTO t_sys_rolemodule VALUES ('18858', '2', '322');
INSERT INTO t_sys_rolemodule VALUES ('18859', '2', '4');
INSERT INTO t_sys_rolemodule VALUES ('18860', '2', '7');
INSERT INTO t_sys_rolemodule VALUES ('18861', '2', '51');

-- ----------------------------
-- Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `randomcode` varchar(6) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `department_id` int(10) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_person` varchar(20) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t_sys_user_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO t_sys_user VALUES ('1', 'admin', 'b827912e55da9755cc587497e273dab8', '083066', '1', '管理员', '1', null, null, '1', '1');
INSERT INTO t_sys_user VALUES ('57', '0100002', '311388cfe6e0b1b2aca79930c4afbca4', '565811', '1', '李绅', null, '2017-05-24 10:23:20', '管理员', '2', '4');
INSERT INTO t_sys_user VALUES ('58', '0100003', '0c97e74d15dc8a1bba2d854bcf22f48f', '747411', '1', '张伟', null, '2017-05-24 10:23:20', '管理员', '2', '4');
INSERT INTO t_sys_user VALUES ('59', '0100004', '80c7688e8fdb6eb8a65a900e549196cb', '866222', '1', '王庆庆', null, '2017-05-24 10:23:20', '管理员', '2', '4');
INSERT INTO t_sys_user VALUES ('60', '0200001', '50d0aee22acd354849314a6d5830feab', '659592', '1', '张益达', null, '2017-05-24 10:31:53', '管理员', '2', '4');
INSERT INTO t_sys_user VALUES ('61', '0000001', '4cc96daaf420bfec4321e61bec3db3bd', '087973', '1', '许艳刚主任', null, '2017-05-24 10:36:30', '管理员', '2', '2');
INSERT INTO t_sys_user VALUES ('62', '0000002', 'b5c46071c8e8a057054538bcca69e13d', '330502', '1', '袁四春参谋', null, '2017-05-24 10:36:51', '管理员', '2', '3');
INSERT INTO t_sys_user VALUES ('63', '0000003', '1f53fd6a76e1c2e6261a75156a7d2a61', '155154', '1', '钱志教导员', null, '2017-05-24 10:37:18', '管理员', '2', '3');
INSERT INTO t_sys_user VALUES ('64', '0100005', '77a1fba4a5f8b010aa7d70dbbbff1db0', '745970', '1', '测试', null, '2017-06-05 13:13:42', '管理员', '2', '4');
INSERT INTO t_sys_user VALUES ('65', '0001', 'd86c1a8f6c102612b74b2780a7b4d156', '648564', '1', '张三', null, '2017-09-25 23:36:42', '管理员', '2', '1');
INSERT INTO t_sys_user VALUES ('66', '￥￥￥￥￥', 'f2970775bfc1fc5003c73ae3b66b31e7', '373780', '1', '1111', null, '2017-10-17 19:52:31', '管理员', '1', '1');

-- ----------------------------
-- Table structure for `t_sys_userlogin`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_userlogin`;
CREATE TABLE `t_sys_userlogin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(20) DEFAULT NULL,
  `terminal` varchar(20) DEFAULT NULL,
  `explorerType` varchar(40) DEFAULT NULL,
  `explorerVersion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t_sys_userlogin` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_userlogin
-- ----------------------------
INSERT INTO t_sys_userlogin VALUES ('595', '1', '2017-09-20 23:21:36', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.113');
INSERT INTO t_sys_userlogin VALUES ('596', '1', '2017-09-21 07:35:30', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.113');
INSERT INTO t_sys_userlogin VALUES ('597', '1', '2017-09-21 07:35:31', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.113');
INSERT INTO t_sys_userlogin VALUES ('598', '1', '2017-09-21 09:32:48', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.113');
INSERT INTO t_sys_userlogin VALUES ('599', '1', '2017-09-21 12:54:56', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.113');
INSERT INTO t_sys_userlogin VALUES ('600', '1', '2017-09-21 13:11:13', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.113');
INSERT INTO t_sys_userlogin VALUES ('601', '1', '2017-09-21 13:39:47', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.113');
INSERT INTO t_sys_userlogin VALUES ('602', '1', '2017-09-21 21:38:23', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.91');
INSERT INTO t_sys_userlogin VALUES ('603', '1', '2017-09-21 22:02:20', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.91');
INSERT INTO t_sys_userlogin VALUES ('604', '1', '2017-09-21 23:35:50', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.91');
INSERT INTO t_sys_userlogin VALUES ('605', '1', '2017-09-22 00:59:04', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.91');
INSERT INTO t_sys_userlogin VALUES ('606', '1', '2017-09-22 13:09:54', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.91');
INSERT INTO t_sys_userlogin VALUES ('607', '1', '2017-09-23 16:06:28', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('608', '1', '2017-09-23 16:20:35', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('609', '1', '2017-09-23 17:00:33', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('610', '1', '2017-09-25 21:52:12', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('611', '1', '2017-09-25 22:50:23', '0:0:0:0:0:0:0:1', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('612', '1', '2017-09-25 22:51:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('613', '1', '2017-09-25 22:59:18', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('614', '1', '2017-09-25 23:02:44', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('615', '57', '2017-09-25 23:24:12', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('616', '57', '2017-09-25 23:24:37', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('617', '1', '2017-09-25 23:27:24', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('618', '57', '2017-09-25 23:27:41', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('619', '1', '2017-09-25 23:34:15', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('620', '65', '2017-09-25 23:37:04', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('621', '1', '2017-09-25 23:40:30', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('622', '65', '2017-09-25 23:40:56', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('623', '1', '2017-09-25 23:53:35', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('624', '1', '2017-09-25 23:59:50', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('625', '1', '2017-09-26 00:02:28', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('626', '1', '2017-09-26 00:11:29', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('627', '1', '2017-09-26 00:41:55', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('628', '1', '2017-09-26 01:32:36', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('629', '1', '2017-09-26 01:35:07', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('630', '1', '2017-09-26 01:36:44', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('631', '1', '2017-09-26 01:43:24', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('632', '1', '2017-09-26 01:49:32', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('633', '1', '2017-09-26 01:54:22', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('634', '1', '2017-10-17 19:02:30', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('635', '1', '2017-10-17 19:02:55', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('636', '1', '2017-10-17 19:38:57', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
