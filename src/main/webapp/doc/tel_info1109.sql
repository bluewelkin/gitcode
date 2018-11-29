/*
Navicat MySQL Data Transfer

Source Server         : mysql5.7
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : tel_info

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-11-08 23:28:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_customer_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_info`;
CREATE TABLE `t_customer_info` (
  `id` varchar(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `remark_status` tinyint(4) DEFAULT '0' COMMENT '备注状态 0-未备注 1-已备注',
  `resources` varchar(50) DEFAULT NULL,
  `customer_status` tinyint(4) DEFAULT NULL COMMENT '客户状态 空号、拒接、无人接听、已经加微信、已经邀约、不需要',
  `user_name` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '分配状态 0-未分配；1-已分配',
  `create_by` varchar(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `last_modify_by` varchar(20) DEFAULT NULL,
  `last_modify_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_info
-- ----------------------------
INSERT INTO t_customer_info VALUES ('00000024', '王五', '15966365247', '', '0', null, '1', '管理员', '1', '1', '管理员', '2017-11-06 18:17:30', '管理员', '2017-11-08 22:15:02');
INSERT INTO t_customer_info VALUES ('00000025', '王五', '15966365248', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000026', '王五', '15966365249', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000027', '王五', '15966365250', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000028', '王五', '15966365251', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000029', '王五', '15966365252', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000030', '王五', '15966365253', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000031', '王五', '15966365254', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000032', '王五', '15966365255', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000033', '王五', '15966365256', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000034', '王五', '15966365257', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000035', '王五', '15966365258', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000036', '王五', '15966365259', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000037', '王五', '15966365260', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000038', '王五', '15966365261', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000039', '王五', '15966365262', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000040', '王五', '15966365263', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000041', '王五', '15966365264', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000042', '王五', '15966365265', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000043', '王五', '15966365266', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000044', '王五', '15966365267', null, '0', null, null, '刘凯', '68', '1', '管理员', '2017-11-06 18:17:30', '刘凯', null);
INSERT INTO t_customer_info VALUES ('00000140', '钱七', '13509713265', null, '0', '网络', null, '', null, '0', '管理员', '2017-11-08 21:17:39', '管理员', null);
INSERT INTO t_customer_info VALUES ('00000141', '钱七', '13509713266', null, '0', '网络', null, '', null, '0', '管理员', '2017-11-08 21:17:39', '管理员', null);
INSERT INTO t_customer_info VALUES ('00000142', '钱七', '13509713267', null, '0', '网络', null, '', null, '0', '管理员', '2017-11-08 21:17:39', '管理员', null);
INSERT INTO t_customer_info VALUES ('00000143', '钱七', '13509713268', null, '0', '网络', null, '', null, '0', '管理员', '2017-11-08 21:17:39', '管理员', null);
INSERT INTO t_customer_info VALUES ('00000144', '钱七', '13509713269', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000145', '钱七', '13509713270', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000146', '钱七', '13509713271', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000147', '钱七', '13509713272', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000148', '钱七', '13509713273', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000149', '钱七', '13509713274', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000150', '钱七', '13509713275', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000151', '钱七', '13509713276', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000152', '钱七', '13509713277', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000153', '钱七', '13509713278', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000154', '钱七', '13509713279', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000155', '钱七', '13509713280', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000156', '钱七', '13509713281', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000157', '钱七', '13509713282', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000158', '钱七', '13509713283', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000159', '钱七', '13509713284', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000160', '钱七', '13509713285', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000161', '钱七', '13509713286', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000162', '钱七', '13509713287', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000163', '钱七', '13509713288', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000164', '钱七', '13509713289', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000165', '钱七', '13509713290', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000166', '钱七', '13509713291', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000167', '钱七', '13509713292', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);
INSERT INTO t_customer_info VALUES ('00000168', '钱七', '13509713293', null, '0', '网络', null, null, null, '0', '管理员', '2017-11-08 21:17:39', null, null);

-- ----------------------------
-- Table structure for `t_max_num`
-- ----------------------------
DROP TABLE IF EXISTS `t_max_num`;
CREATE TABLE `t_max_num` (
  `customer_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_max_num
-- ----------------------------
INSERT INTO t_max_num VALUES ('00000168');

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
) ENGINE=InnoDB AUTO_INCREMENT=642 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_log VALUES ('670', '1', '2017-10-18 06:58:57', '0:0:0:0:0:0:0:1', '模块管理', '新增功能', '1', 'sys/function/add.htm', 'backUrl=%2Fsys%2Ffunction%2Findex.htm%3Fmodule_id%3D153&module_id=153&name=电话查询&code=customerMobile&url=customer/mobile/index.htm&type=1&description=查询电话号码&display_order=2&');
INSERT INTO t_sys_log VALUES ('671', '1', '2017-10-18 07:02:32', '0:0:0:0:0:0:0:1', '模块管理', '删除功能', '1', 'sys/function/delete.htm', 'id=645&backUrl=/sys/function/index.htm?module_id=153&');
INSERT INTO t_sys_log VALUES ('672', '1', '2017-10-18 07:04:27', '0:0:0:0:0:0:0:1', '模块管理', '新增模块', '1', 'sys/module/add.htm', 'backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=电话查询&parent_name=客户信息管理&parent_id=153&code=CustomerMobile&url=customer/mobile/index.htm&target=main&iconImg=&search=&icon_color=&display_order=2&');
INSERT INTO t_sys_log VALUES ('673', '1', '2017-10-18 07:04:40', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@164@@322@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@642@@643@@644@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=admin&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('674', '1', '2017-10-18 09:35:08', '0:0:0:0:0:0:0:1', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2Flocalhost%3A8080%2Ftel_info_manager%2Fsys%2Fuser%2Findex.htm%3F&username=wangsan&realname=王三&idnum=140215485623215566&role_id=2&');
INSERT INTO t_sys_log VALUES ('675', '1', '2017-10-18 09:35:26', '0:0:0:0:0:0:0:1', '用户管理', '锁定', '1', 'sys/user/saveLock.htm', 'id=67&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&realname=%E7%8E%8B%E4%B8%89&');
INSERT INTO t_sys_log VALUES ('676', '1', '2017-10-18 09:35:31', '0:0:0:0:0:0:0:1', '用户管理', '解锁', '1', 'sys/user/saveUnlock.htm', 'id=67&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&realname=%E7%8E%8B%E4%B8%89&');
INSERT INTO t_sys_log VALUES ('677', '1', '2017-10-18 22:28:39', '0:0:0:0:0:0:0:1', '模块管理', '修改模块', '1', 'sys/module/update.htm', 'id=323&backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=资料分发电话查询&parent_id=153&parent_name=客户信息管理&code=CustomerAllot&url=customer/allot/index.htm&target=main&iconImg=&search=&icon_color=&display_order=2&');
INSERT INTO t_sys_log VALUES ('678', '1', '2017-10-18 22:28:55', '0:0:0:0:0:0:0:1', '模块管理', '修改模块', '1', 'sys/module/update.htm', 'id=323&backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=资料分发&parent_id=153&parent_name=客户信息管理&code=CustomerAllot&url=customer/allot/index.htm&target=main&iconImg=&search=&icon_color=&display_order=2&');
INSERT INTO t_sys_log VALUES ('679', '1', '2017-10-18 23:22:22', '0:0:0:0:0:0:0:1', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2Flocalhost%3A8080%2Ftel_info_manager%2Fsys%2Fuser%2Findex.htm%3F&username=liukai111&realname=刘凯&idnum=1111111111111111&role_id=2&');
INSERT INTO t_sys_log VALUES ('680', '1', '2017-10-18 23:23:08', '0:0:0:0:0:0:0:1', '用户管理', '锁定', '1', 'sys/user/saveLock.htm', 'id=68&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('681', '1', '2017-10-19 21:45:42', '0:0:0:0:0:0:0:1', '模块管理', '删除模块', '1', 'sys/module/delete.htm', 'id=322&backUrl=/sys/module/index.htm?&');
INSERT INTO t_sys_log VALUES ('682', '1', '2017-10-20 00:26:29', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=admin&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('683', '1', '2017-10-20 00:29:58', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@324@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=admin&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('684', '1', '2017-10-22 11:28:29', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=2&moduleArr=153@@155@@324@@2@@&functionArr=133@@134@@135@@138@@162@@165@@340@@144@@&name=职员&description=职员&module=153&function=133&');
INSERT INTO t_sys_log VALUES ('685', '1', '2017-10-22 11:46:12', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=2&moduleArr=153@@324@@&functionArr=&name=职员&description=职员&module=153&');
INSERT INTO t_sys_log VALUES ('686', '1', '2017-10-22 11:55:15', '0:0:0:0:0:0:0:1', '模块管理', '新增模块', '1', 'sys/module/add.htm', 'backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=修改登录密码&parent_name=客户信息管理&parent_id=153&code=CustomerUpdatePass&url=toUpdatePass.htm&target=main&iconImg=fa-eyedropper&search=&icon_color=&display_order=5&');
INSERT INTO t_sys_log VALUES ('687', '1', '2017-10-22 11:56:05', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=2&moduleArr=153@@324@@325@@&functionArr=&name=职员&description=职员&module=153&');
INSERT INTO t_sys_log VALUES ('688', '1', '2017-10-22 12:03:08', '0:0:0:0:0:0:0:1', '模块管理', '修改模块', '1', 'sys/module/update.htm', 'id=325&backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=修改登录密码&parent_id=153&parent_name=客户信息管理&code=CustomerUpdatePass&url=toUpdatePassword.htm&target=main&iconImg=fa-eyedropper&search=&icon_color=&display_order=5&');
INSERT INTO t_sys_log VALUES ('689', '1', '2017-10-22 12:04:14', '0:0:0:0:0:0:0:1', '模块管理', '修改模块', '1', 'sys/module/update.htm', 'id=325&backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=修改登录密码&parent_id=153&parent_name=客户信息管理&code=CustomerUpdatePass&url=toUpdatePassword.htm&target=main&iconImg=fa-eyedropper&search=&icon_color=&display_order=5&');
INSERT INTO t_sys_log VALUES ('690', '1', '2017-10-22 12:04:27', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=2&moduleArr=153@@324@@325@@&functionArr=&name=职员&description=职员&module=153&');
INSERT INTO t_sys_log VALUES ('691', '1', '2017-10-22 21:20:29', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@324@@325@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('692', '1', '2017-10-22 21:22:03', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@325@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('693', '1', '2017-10-22 21:23:09', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('694', '1', '2017-10-22 21:23:20', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@324@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('695', '1', '2017-10-25 21:14:44', '0:0:0:0:0:0:0:1', '角色管理', '新增', '1', 'sys/role/add.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&moduleArr=&functionArr=&name=11111111111111111111&description=111111111111111111111111111&');
INSERT INTO t_sys_log VALUES ('696', '1', '2017-10-25 21:15:03', '0:0:0:0:0:0:0:1', '角色管理', '新增', '1', 'sys/role/add.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&moduleArr=&functionArr=&name=4444&description=11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111&');
INSERT INTO t_sys_log VALUES ('697', '1', '2017-10-25 21:16:58', '0:0:0:0:0:0:0:1', '角色管理', '删除', '1', 'sys/role/delete.htm', 'id=3&backUrl=/sys/role/index.htm?&');
INSERT INTO t_sys_log VALUES ('698', '1', '2017-10-25 21:35:54', '0:0:0:0:0:0:0:1', '角色管理', '新增', '1', 'sys/role/add.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&moduleArr=&functionArr=&name=‘’‘’&description=2222222222222222222222222222222222222222222222222222222222222222222222222222&');
INSERT INTO t_sys_log VALUES ('699', '1', '2017-10-25 21:36:00', '0:0:0:0:0:0:0:1', '角色管理', '删除', '1', 'sys/role/delete.htm', 'id=4&backUrl=/sys/role/index.htm?&');
INSERT INTO t_sys_log VALUES ('700', '1', '2017-10-25 21:47:42', '0:0:0:0:0:0:0:1', '角色管理', '新增', '1', 'sys/role/add.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&moduleArr=&functionArr=&name=方法&description=11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111&');
INSERT INTO t_sys_log VALUES ('701', '1', '2017-10-25 21:55:01', '0:0:0:0:0:0:0:1', '用户管理', '锁定', '1', 'sys/user/saveLock.htm', 'id=57&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('702', '1', '2017-10-26 00:21:16', '0:0:0:0:0:0:0:1', '用户管理', '解锁', '1', 'sys/user/saveUnlock.htm', 'id=57&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('703', '1', '2017-10-26 15:34:55', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('704', '1', '2017-11-06 18:21:10', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@2@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('705', '1', '2017-11-06 22:08:20', '0:0:0:0:0:0:0:1', '用户管理', '密码重置', '1', 'sys/user/saveResetPass.htm', 'id=68&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('706', '1', '2017-11-08 21:33:20', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@324@@2@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');

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
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_module VALUES ('323', '资料分发', 'CustomerAllot', '153', 'customer/allot/index.htm', 'main', '', '2', null, '');
INSERT INTO t_sys_module VALUES ('324', '电话查询', 'CustomerMobile', '153', 'customer/mobile/index.htm', 'main', 'fa-phone', '3', null, '');
INSERT INTO t_sys_module VALUES ('325', '修改登录密码', 'CustomerUpdatePass', '153', 'toUpdatePassword.htm', 'main', 'fa-eyedropper', '5', null, '');

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
INSERT INTO t_sys_role VALUES ('1', '系统管理员', '系统管理员', '1', '2015-06-01 15:13:11', '0', '管理员');
INSERT INTO t_sys_role VALUES ('2', '业务员', '业务员', '2', '2017-04-22 11:19:31', '0', '管理员');

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
) ENGINE=InnoDB AUTO_INCREMENT=36553 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_rolefunction VALUES ('36287', '5', '639');
INSERT INTO t_sys_rolefunction VALUES ('36288', '5', '640');
INSERT INTO t_sys_rolefunction VALUES ('36289', '5', '641');
INSERT INTO t_sys_rolefunction VALUES ('36532', '1', '639');
INSERT INTO t_sys_rolefunction VALUES ('36533', '1', '640');
INSERT INTO t_sys_rolefunction VALUES ('36534', '1', '641');
INSERT INTO t_sys_rolefunction VALUES ('36535', '1', '145');
INSERT INTO t_sys_rolefunction VALUES ('36536', '1', '148');
INSERT INTO t_sys_rolefunction VALUES ('36537', '1', '149');
INSERT INTO t_sys_rolefunction VALUES ('36538', '1', '151');
INSERT INTO t_sys_rolefunction VALUES ('36539', '1', '152');
INSERT INTO t_sys_rolefunction VALUES ('36540', '1', '153');
INSERT INTO t_sys_rolefunction VALUES ('36541', '1', '133');
INSERT INTO t_sys_rolefunction VALUES ('36542', '1', '134');
INSERT INTO t_sys_rolefunction VALUES ('36543', '1', '135');
INSERT INTO t_sys_rolefunction VALUES ('36544', '1', '138');
INSERT INTO t_sys_rolefunction VALUES ('36545', '1', '162');
INSERT INTO t_sys_rolefunction VALUES ('36546', '1', '165');
INSERT INTO t_sys_rolefunction VALUES ('36547', '1', '167');
INSERT INTO t_sys_rolefunction VALUES ('36548', '1', '168');
INSERT INTO t_sys_rolefunction VALUES ('36549', '1', '169');
INSERT INTO t_sys_rolefunction VALUES ('36550', '1', '340');
INSERT INTO t_sys_rolefunction VALUES ('36551', '1', '458');
INSERT INTO t_sys_rolefunction VALUES ('36552', '1', '144');

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
) ENGINE=InnoDB AUTO_INCREMENT=18960 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_rolemodule
-- ----------------------------
INSERT INTO t_sys_rolemodule VALUES ('16703', '43', '4');
INSERT INTO t_sys_rolemodule VALUES ('16704', '43', '7');
INSERT INTO t_sys_rolemodule VALUES ('16705', '43', '51');
INSERT INTO t_sys_rolemodule VALUES ('18835', '5', '153');
INSERT INTO t_sys_rolemodule VALUES ('18836', '5', '155');
INSERT INTO t_sys_rolemodule VALUES ('18898', '2', '153');
INSERT INTO t_sys_rolemodule VALUES ('18899', '2', '324');
INSERT INTO t_sys_rolemodule VALUES ('18900', '2', '325');
INSERT INTO t_sys_rolemodule VALUES ('18952', '1', '153');
INSERT INTO t_sys_rolemodule VALUES ('18953', '1', '155');
INSERT INTO t_sys_rolemodule VALUES ('18954', '1', '323');
INSERT INTO t_sys_rolemodule VALUES ('18955', '1', '324');
INSERT INTO t_sys_rolemodule VALUES ('18956', '1', '2');
INSERT INTO t_sys_rolemodule VALUES ('18957', '1', '4');
INSERT INTO t_sys_rolemodule VALUES ('18958', '1', '7');
INSERT INTO t_sys_rolemodule VALUES ('18959', '1', '51');

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
  `idnum` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t_sys_user_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO t_sys_user VALUES ('1', 'admin', 'b827912e55da9755cc587497e273dab8', '083066', '1', '管理员', '1', null, null, '1', '1', '');
INSERT INTO t_sys_user VALUES ('57', '0100002', '04da8c71d83abe62001327a5f9dd3d02', '005243', '1', '李绅', null, '2017-05-24 10:23:20', '管理员', '2', '2', '140421198520153520');
INSERT INTO t_sys_user VALUES ('58', '0100003', '0c97e74d15dc8a1bba2d854bcf22f48f', '747411', '1', '张伟', null, '2017-05-24 10:23:20', '管理员', '2', '2', '140421198520153622');
INSERT INTO t_sys_user VALUES ('59', '0100004', '80c7688e8fdb6eb8a65a900e549196cb', '866222', '1', '王庆庆', null, '2017-05-24 10:23:20', '管理员', '2', '2', '140421198520153621');
INSERT INTO t_sys_user VALUES ('60', '0200001', '50d0aee22acd354849314a6d5830feab', '659592', '1', '张益达', null, '2017-05-24 10:31:53', '管理员', '2', '2', null);
INSERT INTO t_sys_user VALUES ('61', '0000001', '4cc96daaf420bfec4321e61bec3db3bd', '087973', '1', '许艳刚主任', null, '2017-05-24 10:36:30', '管理员', '2', '2', null);
INSERT INTO t_sys_user VALUES ('62', '0000002', 'b5c46071c8e8a057054538bcca69e13d', '330502', '1', '袁四春参谋', null, '2017-05-24 10:36:51', '管理员', '2', '2', null);
INSERT INTO t_sys_user VALUES ('63', '0000003', '1f53fd6a76e1c2e6261a75156a7d2a61', '155154', '1', '钱志教导员', null, '2017-05-24 10:37:18', '管理员', '2', '2', null);
INSERT INTO t_sys_user VALUES ('64', '0100005', '77a1fba4a5f8b010aa7d70dbbbff1db0', '745970', '1', '测试', null, '2017-06-05 13:13:42', '管理员', '2', '2', null);
INSERT INTO t_sys_user VALUES ('68', 'liukai111', '508a6c1ecb17217a233d3973f50aeff9', '487632', '1', '刘凯', null, '2017-10-18 23:22:22', '管理员', '2', '2', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=746 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_userlogin VALUES ('637', '1', '2017-10-18 06:51:30', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('638', '1', '2017-10-18 09:17:53', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('639', '1', '2017-10-18 10:35:21', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('640', '1', '2017-10-18 11:19:34', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('641', '1', '2017-10-18 13:50:09', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('642', '1', '2017-10-18 15:22:40', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('643', '1', '2017-10-18 16:17:40', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('644', '1', '2017-10-18 16:44:12', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('645', '1', '2017-10-18 22:24:33', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('646', '1', '2017-10-18 23:05:12', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('647', '1', '2017-10-19 02:12:50', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('648', '1', '2017-10-19 02:45:23', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('649', '1', '2017-10-19 21:43:17', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('650', '1', '2017-10-19 21:49:28', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('651', '1', '2017-10-19 23:55:34', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('652', '1', '2017-10-20 00:12:31', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('653', '1', '2017-10-20 00:54:19', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('654', '1', '2017-10-21 10:21:11', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('655', '1', '2017-10-21 10:41:28', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('656', '1', '2017-10-21 10:41:35', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('657', '1', '2017-10-21 11:18:09', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('658', '1', '2017-10-21 11:18:10', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('659', '1', '2017-10-21 14:35:15', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('660', '1', '2017-10-21 14:35:15', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('661', '1', '2017-10-21 14:38:53', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('662', '1', '2017-10-21 14:40:37', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('663', '1', '2017-10-21 14:57:41', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('664', '1', '2017-10-21 23:47:33', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('665', '1', '2017-10-21 23:55:00', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('666', '1', '2017-10-21 23:58:46', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('667', '1', '2017-10-22 00:31:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('668', '1', '2017-10-22 00:34:18', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('669', '1', '2017-10-22 00:36:45', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('670', '1', '2017-10-22 00:39:25', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('671', '1', '2017-10-22 01:52:26', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('672', '1', '2017-10-22 02:26:18', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('673', '1', '2017-10-22 03:01:25', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('674', '1', '2017-10-22 10:53:54', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('675', '1', '2017-10-22 10:53:54', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('676', '1', '2017-10-22 11:04:52', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('677', '1', '2017-10-22 11:23:02', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('678', '1', '2017-10-22 11:23:41', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('679', '1', '2017-10-22 11:23:47', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('680', '1', '2017-10-22 11:28:48', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('681', '1', '2017-10-22 11:43:13', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('682', '57', '2017-10-22 11:45:23', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('683', '57', '2017-10-22 11:45:54', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('684', '1', '2017-10-22 11:46:01', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('685', '57', '2017-10-22 11:46:20', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('686', '57', '2017-10-22 11:51:20', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('687', '57', '2017-10-22 11:52:14', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('688', '57', '2017-10-22 11:52:20', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('689', '1', '2017-10-22 11:53:02', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('690', '57', '2017-10-22 11:56:09', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('691', '57', '2017-10-22 12:02:37', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('692', '1', '2017-10-22 12:02:52', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('693', '57', '2017-10-22 12:03:13', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('694', '1', '2017-10-22 12:03:44', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('695', '57', '2017-10-22 12:04:32', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('696', '57', '2017-10-22 12:12:37', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('697', '1', '2017-10-22 12:17:45', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('698', '57', '2017-10-22 12:20:18', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('699', '57', '2017-10-22 12:21:30', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('700', '57', '2017-10-22 12:27:42', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('701', '57', '2017-10-22 12:28:19', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('702', '57', '2017-10-22 12:28:57', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('703', '57', '2017-10-22 12:29:03', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('704', '57', '2017-10-22 12:55:01', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('705', '57', '2017-10-22 12:55:01', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('706', '57', '2017-10-22 14:07:14', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('707', '57', '2017-10-22 14:10:47', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '60.0.3112.78');
INSERT INTO t_sys_userlogin VALUES ('708', '1', '2017-10-22 21:20:10', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('709', '57', '2017-10-22 21:24:07', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('710', '57', '2017-10-22 21:30:30', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('711', '57', '2017-10-22 21:32:30', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('712', '1', '2017-10-22 21:51:04', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('713', '1', '2017-10-23 11:26:40', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('714', '1', '2017-10-25 15:02:46', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('715', '1', '2017-10-25 15:02:47', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('716', '1', '2017-10-25 15:42:26', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('717', '57', '2017-10-25 19:06:27', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('718', '1', '2017-10-25 19:10:40', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('719', '1', '2017-10-25 21:35:08', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('720', '1', '2017-10-25 21:47:21', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('721', '1', '2017-10-25 21:53:20', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('722', '1', '2017-10-25 21:55:20', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('723', '1', '2017-10-25 22:17:55', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('724', '1', '2017-10-25 22:50:12', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('725', '1', '2017-10-25 22:59:17', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('726', '1', '2017-10-26 00:21:04', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('727', '57', '2017-10-26 00:21:27', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('728', '62', '2017-10-26 00:22:40', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('729', '1', '2017-10-26 00:58:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('730', '62', '2017-10-26 01:30:06', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('731', '1', '2017-10-26 01:58:26', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('732', '68', '2017-10-26 02:01:59', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('733', '1', '2017-10-26 15:28:07', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('734', '1', '2017-11-06 18:17:15', '127.0.0.1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('735', '1', '2017-11-06 18:19:38', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('736', '68', '2017-11-06 18:19:56', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('737', '1', '2017-11-06 18:20:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('738', '1', '2017-11-06 18:56:42', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('739', '1', '2017-11-06 22:04:11', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('740', '1', '2017-11-06 22:08:06', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('741', '68', '2017-11-06 22:08:41', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('742', '1', '2017-11-06 22:25:55', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('743', '1', '2017-11-06 22:30:25', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('744', '1', '2017-11-08 18:33:40', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('745', '1', '2017-11-08 19:01:50', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
