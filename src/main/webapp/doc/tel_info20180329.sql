/*
Navicat MySQL Data Transfer

Source Server         : mysql5.7
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : tel_info

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2018-03-30 08:54:24
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
  `customer_status` tinyint(4) DEFAULT '0' COMMENT '客户状态  为空 空号、拒接、无人接听、尝试加微信、加微信通过，已经邀约、不需要、',
  `user_name` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '分配状态 0-未分配；1-已分配',
  `create_by` varchar(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL COMMENT '导入时间',
  `allot_by` varchar(20) DEFAULT NULL COMMENT '分配人',
  `allot_at` datetime DEFAULT NULL COMMENT '分配时间',
  `archive_status` tinyint(4) unsigned zerofill DEFAULT '0000' COMMENT '归档状态 0-未归档  1-已归档',
  `archive_time` datetime DEFAULT NULL COMMENT '归档时间',
  `operate_at` datetime DEFAULT NULL COMMENT '操作时间（更改状态时间）',
  `operate_by` varchar(11) DEFAULT NULL COMMENT '操作人（更改状态的业务员）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_info
-- ----------------------------
INSERT INTO t_customer_info VALUES ('00000002', '张三1', '18502312012', null, '0', '名单1', '0', '赵康辉', '76', '1', '管理员', '2018-03-29 08:26:02', '管理员', '2018-03-29 08:28:15', '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000003', '张三2', '18502312013', null, '0', '名单1', '0', '赵康辉', '76', '1', '管理员', '2018-03-29 08:26:02', '管理员', '2018-03-29 08:28:15', '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000004', '张三3', '18502312014', null, '0', '名单1', '0', '赵康辉', '76', '1', '管理员', '2018-03-29 08:26:02', '管理员', '2018-03-29 08:28:15', '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000005', '张三4', '18502312015', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000006', '张三5', '18502312016', null, '0', '名单1', '0', '吴晓华', '77', '1', '管理员', '2018-03-29 08:26:02', '管理员', '2018-03-29 08:28:34', '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000007', '张三6', '18502312017', null, '0', '名单1', '0', '吴晓华', '77', '1', '管理员', '2018-03-29 08:26:02', '管理员', '2018-03-29 08:28:34', '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000008', '张三7', '18502312018', null, '0', '名单1', '0', '吴晓华', '77', '1', '管理员', '2018-03-29 08:26:02', '管理员', '2018-03-29 08:28:34', '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000009', '张三8', '18502312019', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000010', '张三9', '18502312020', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000011', '张三10', '18502312021', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000012', '张三11', '18502312022', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000013', '张三12', '18502312023', null, '0', '名单1', '0', '赵康辉', '76', '1', '管理员', '2018-03-29 08:26:02', '管理员', '2018-03-29 08:28:51', '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000014', '张三13', '18502312024', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000015', '张三14', '18502312025', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000016', '张三15', '18502312026', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000017', '张三16', '18502312027', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000018', '张三17', '18502312028', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000019', '张三18', '18502312029', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000020', '张三19', '18502312030', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000021', '张三20', '18502312031', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000022', '张三21', '18502312032', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000023', '张三22', '18502312033', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);
INSERT INTO t_customer_info VALUES ('00000024', '张三23', '18502312034', null, '0', '名单1', '0', null, null, '0', '管理员', '2018-03-29 08:26:02', null, null, '0000', null, null, null);

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
INSERT INTO t_max_num VALUES ('00000024');

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
) ENGINE=InnoDB AUTO_INCREMENT=774 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_log VALUES ('707', '1', '2017-11-09 16:40:45', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@2@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('708', '1', '2017-11-10 18:14:42', '0:0:0:0:0:0:0:1', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2Flocalhost%3A8080%2Ftel_info_manager%2Fsys%2Fuser%2Findex.htm%3F&username=liukai112&realname=刘凯&idnum=140215198602023265&role_id=2&');
INSERT INTO t_sys_log VALUES ('709', '1', '2017-11-10 18:19:32', '0:0:0:0:0:0:0:1', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2Flocalhost%3A8080%2Ftel_info_manager%2Fsys%2Fuser%2Findex.htm%3F&username=liukai113&realname=刘凯&idnum=140421198502025232&role_id=2&');
INSERT INTO t_sys_log VALUES ('710', '1', '2017-11-10 18:41:48', '0:0:0:0:0:0:0:1', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=69&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('711', '1', '2017-11-10 18:41:53', '0:0:0:0:0:0:0:1', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=70&backUrl=http://localhost:8080/tel_info_manager/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('712', '1', '2017-11-10 18:54:43', '0:0:0:0:0:0:0:1', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2Flocalhost%3A8080%2Ftel_info_manager%2Fsys%2Fuser%2Findex.htm%3F&username=liukai115&realname=五星&idnum=140421198502025237&role_id=2&');
INSERT INTO t_sys_log VALUES ('713', '1', '2017-11-10 18:56:39', '0:0:0:0:0:0:0:1', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2Flocalhost%3A8080%2Ftel_info_manager%2Fsys%2Fuser%2Findex.htm%3F&username=liukai116&realname=张宇&idnum=140421198502025239&role_id=2&');
INSERT INTO t_sys_log VALUES ('714', '1', '2017-11-13 23:20:48', '103.101.177.28', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=57&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('715', '1', '2017-11-13 23:21:07', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=58&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('716', '1', '2017-11-13 23:21:14', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=58&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('717', '1', '2017-11-13 23:21:20', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=60&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('718', '1', '2017-11-13 23:21:24', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=60&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('719', '1', '2017-11-13 23:21:34', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=64&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('720', '1', '2017-11-13 23:21:45', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=71&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('721', '1', '2017-11-13 23:21:50', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=72&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('722', '1', '2017-11-13 23:22:02', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=63&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('723', '1', '2017-11-13 23:22:07', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=62&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('724', '1', '2017-11-13 23:22:11', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=61&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('725', '1', '2017-11-13 23:22:16', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=59&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('726', '1', '2017-11-13 23:22:52', '223.72.76.158', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=zhangs&realname=张三&idnum=140421198502025232&role_id=2&');
INSERT INTO t_sys_log VALUES ('727', '1', '2017-11-13 23:23:38', '223.72.76.158', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=lisi&realname=李四&idnum=140421198708216963&role_id=2&');
INSERT INTO t_sys_log VALUES ('728', '1', '2017-11-13 23:25:54', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=73&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('729', '1', '2017-11-14 00:47:03', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=68&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('730', '1', '2017-11-14 00:47:13', '223.72.76.158', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=74&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('731', '1', '2017-11-14 08:41:44', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=cd001&realname=见见&idnum=440105198209081765&role_id=1&');
INSERT INTO t_sys_log VALUES ('732', '1', '2017-11-14 08:41:52', '202.105.56.132', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=1&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('733', '75', '2017-11-15 15:05:24', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00001&realname=赵康辉&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('734', '75', '2017-11-15 15:05:59', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00002&realname=吴晓华&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('735', '75', '2017-11-15 15:06:44', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00003&realname=冯妙婵&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('736', '75', '2017-11-15 15:07:22', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00004&realname=梁洪岚&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('737', '75', '2017-11-15 15:08:03', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00005&realname=陈道纳&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('738', '75', '2017-11-15 15:08:32', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00006&realname=赵亚菊&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('739', '75', '2017-11-15 15:08:57', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00007&realname=张云杰&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('740', '75', '2017-11-15 15:09:40', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00008&realname=何东伦&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('741', '75', '2017-11-15 15:10:13', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00009&realname=钟颖&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('742', '75', '2017-11-15 15:10:35', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00010&realname=李佳丽&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('743', '75', '2017-11-15 15:11:27', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00011&realname=劳锐宇&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('744', '75', '2017-11-15 15:12:05', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00012&realname=黄志华&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('745', '75', '2017-11-15 15:12:39', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00013&realname=罗树焕&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('746', '75', '2017-11-15 15:13:37', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00014&realname=郭锦鹏&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('747', '75', '2017-11-15 15:14:11', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00015&realname=黄家相&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('748', '75', '2017-11-15 15:14:40', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00016&realname=杨丽娟&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('749', '75', '2017-11-15 15:15:05', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00017&realname=刘莉&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('750', '75', '2017-11-15 15:15:43', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00018&realname=廖东邦&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('751', '75', '2017-11-15 15:16:10', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00019&realname=何杰海&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('752', '75', '2017-11-15 15:17:12', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00020&realname=杨裕婷&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('753', '75', '2017-11-15 15:17:43', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00021&realname=蔡小倩&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('754', '75', '2017-11-15 15:18:15', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00022&realname=张苒苒&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('755', '75', '2017-11-15 15:18:36', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00023&realname=悠悠&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('756', '75', '2017-11-15 15:18:58', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00024&realname=雄亮&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('757', '75', '2017-11-15 15:19:20', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=yw00025&realname=小宝&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('758', '74', '2017-11-16 15:21:22', '222.35.24.51', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=xiaoming&realname=小明&idnum=140421198502025232&role_id=1&');
INSERT INTO t_sys_log VALUES ('759', '101', '2017-11-16 15:22:09', '222.35.24.51', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=101&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&realname=%E5%B0%8F%E6%98%8E&');
INSERT INTO t_sys_log VALUES ('760', '74', '2017-11-16 15:29:45', '222.35.24.51', '用户管理', '删除', '1', 'sys/user/delete.htm', 'id=3&backUrl=http://103.101.177.28:8080/tel_info/sys/user/index.htm?&');
INSERT INTO t_sys_log VALUES ('761', '74', '2017-11-16 15:37:34', '202.105.56.132', '用户管理', '新增', '1', 'sys/user/add.htm', 'backUrl=http%3A%2F%2F103.101.177.28%3A8080%2Ftel_info%2Fsys%2Fuser%2Findex.htm%3F&username=cd002&realname=见见&idnum=440105198209081765&role_id=2&');
INSERT INTO t_sys_log VALUES ('762', '6', '2017-11-21 03:55:04', '223.72.76.158', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@326@@2@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('763', '74', '2018-03-20 23:39:47', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@326@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('764', '74', '2018-03-20 23:41:11', '0:0:0:0:0:0:0:1', '模块管理', '新增模块', '1', 'sys/module/add.htm', 'backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=来源管理&parent_name=客户信息管理&parent_id=153&code=Resources&url=resources/index.htm&target=main&iconImg=&search=&icon_color=&display_order=5&');
INSERT INTO t_sys_log VALUES ('765', '74', '2018-03-20 23:41:21', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@326@@327@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('766', '74', '2018-03-21 00:04:45', '0:0:0:0:0:0:0:1', '模块管理', '修改模块', '1', 'sys/module/update.htm', 'id=327&backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=来源管理&parent_id=153&parent_name=客户信息管理&code=Resources&url=customer/resources/index.htm&target=main&iconImg=&search=&icon_color=&display_order=5&');
INSERT INTO t_sys_log VALUES ('767', '74', '2018-03-21 00:05:08', '0:0:0:0:0:0:0:1', '模块管理', '修改模块', '1', 'sys/module/update.htm', 'id=327&backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=来源管理&parent_id=153&parent_name=客户信息管理&code=Resources&url=resources/index.htm&target=main&iconImg=&search=&icon_color=&display_order=5&');
INSERT INTO t_sys_log VALUES ('768', '74', '2018-03-21 22:29:37', '0:0:0:0:0:0:0:1', '模块管理', '新增模块', '1', 'sys/module/add.htm', 'backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=统计分析&parent_name=&parent_id=&code=Statistics&url=#&target=main&iconImg=&search=&icon_color=&display_order=2&');
INSERT INTO t_sys_log VALUES ('769', '74', '2018-03-21 22:30:55', '0:0:0:0:0:0:0:1', '模块管理', '新增模块', '1', 'sys/module/add.htm', 'backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=业务统计&parent_name=统计分析&parent_id=328&code=StatisticsBusiness&url=/statistics/business/index.htm&target=main&iconImg=&search=&icon_color=&display_order=1&');
INSERT INTO t_sys_log VALUES ('770', '74', '2018-03-21 22:32:45', '0:0:0:0:0:0:0:1', '模块管理', '新增模块', '1', 'sys/module/add.htm', 'backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=名单统计&parent_name=统计分析&parent_id=328&code=StatisticsResources&url=/statistics/resources/index.htm&target=main&iconImg=&search=&icon_color=&display_order=2&');
INSERT INTO t_sys_log VALUES ('771', '74', '2018-03-21 22:33:01', '0:0:0:0:0:0:0:1', '角色管理', '修改', '1', 'sys/role/update.htm', 'backUrl=%2Fsys%2Frole%2Findex.htm%3F&id=1&moduleArr=153@@155@@323@@326@@327@@328@@329@@330@@2@@3@@4@@7@@51@@&functionArr=639@@640@@641@@145@@148@@149@@151@@152@@153@@133@@134@@135@@138@@162@@165@@167@@168@@169@@340@@458@@144@@&name=系统管理员&description=系统管理员&module=153&function=639&');
INSERT INTO t_sys_log VALUES ('772', '74', '2018-03-27 22:35:14', '0:0:0:0:0:0:0:1', '模块管理', '修改模块', '1', 'sys/module/update.htm', 'id=327&backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=来源管理&parent_id=153&parent_name=客户信息管理&code=Resources&url=customer/resources/index.htm&target=main&iconImg=&search=&icon_color=&display_order=5&');
INSERT INTO t_sys_log VALUES ('773', '74', '2018-03-28 14:46:25', '0:0:0:0:0:0:0:1', '模块管理', '修改模块', '1', 'sys/module/update.htm', 'id=328&backUrl=%2Fsys%2Fmodule%2Findex.htm%3F&name=统计分析&parent_id=1&parent_name=&code=Statistics&url=#&target=main&iconImg=fa-calculator&search=&icon_color=#3a96ff&display_order=2&');

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
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_module VALUES ('326', '客户归档管理', 'CustomerArchive', '153', 'customer/archive/index.htm', 'main', '', '3', null, '');
INSERT INTO t_sys_module VALUES ('327', '来源管理', 'Resources', '153', 'customer/resources/index.htm', 'main', '', '5', null, '');
INSERT INTO t_sys_module VALUES ('328', '统计分析', 'Statistics', '1', '#', 'main', 'fa-calculator', '2', null, '#3a96ff');
INSERT INTO t_sys_module VALUES ('329', '业务统计', 'StatisticsBusiness', '328', '/statistics/business/index.htm', 'main', '', '1', null, '');
INSERT INTO t_sys_module VALUES ('330', '名单统计', 'StatisticsResources', '328', '/statistics/resources/index.htm', 'main', '', '2', null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=36658 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_rolefunction VALUES ('36637', '1', '639');
INSERT INTO t_sys_rolefunction VALUES ('36638', '1', '640');
INSERT INTO t_sys_rolefunction VALUES ('36639', '1', '641');
INSERT INTO t_sys_rolefunction VALUES ('36640', '1', '145');
INSERT INTO t_sys_rolefunction VALUES ('36641', '1', '148');
INSERT INTO t_sys_rolefunction VALUES ('36642', '1', '149');
INSERT INTO t_sys_rolefunction VALUES ('36643', '1', '151');
INSERT INTO t_sys_rolefunction VALUES ('36644', '1', '152');
INSERT INTO t_sys_rolefunction VALUES ('36645', '1', '153');
INSERT INTO t_sys_rolefunction VALUES ('36646', '1', '133');
INSERT INTO t_sys_rolefunction VALUES ('36647', '1', '134');
INSERT INTO t_sys_rolefunction VALUES ('36648', '1', '135');
INSERT INTO t_sys_rolefunction VALUES ('36649', '1', '138');
INSERT INTO t_sys_rolefunction VALUES ('36650', '1', '162');
INSERT INTO t_sys_rolefunction VALUES ('36651', '1', '165');
INSERT INTO t_sys_rolefunction VALUES ('36652', '1', '167');
INSERT INTO t_sys_rolefunction VALUES ('36653', '1', '168');
INSERT INTO t_sys_rolefunction VALUES ('36654', '1', '169');
INSERT INTO t_sys_rolefunction VALUES ('36655', '1', '340');
INSERT INTO t_sys_rolefunction VALUES ('36656', '1', '458');
INSERT INTO t_sys_rolefunction VALUES ('36657', '1', '144');

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
) ENGINE=InnoDB AUTO_INCREMENT=19007 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_rolemodule VALUES ('18994', '1', '153');
INSERT INTO t_sys_rolemodule VALUES ('18995', '1', '155');
INSERT INTO t_sys_rolemodule VALUES ('18996', '1', '323');
INSERT INTO t_sys_rolemodule VALUES ('18997', '1', '326');
INSERT INTO t_sys_rolemodule VALUES ('18998', '1', '327');
INSERT INTO t_sys_rolemodule VALUES ('18999', '1', '328');
INSERT INTO t_sys_rolemodule VALUES ('19000', '1', '329');
INSERT INTO t_sys_rolemodule VALUES ('19001', '1', '330');
INSERT INTO t_sys_rolemodule VALUES ('19002', '1', '2');
INSERT INTO t_sys_rolemodule VALUES ('19003', '1', '3');
INSERT INTO t_sys_rolemodule VALUES ('19004', '1', '4');
INSERT INTO t_sys_rolemodule VALUES ('19005', '1', '7');
INSERT INTO t_sys_rolemodule VALUES ('19006', '1', '51');

-- ----------------------------
-- Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `randomcode` varchar(6) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `realname` varchar(20) DEFAULT NULL,
  `department_id` int(10) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_person` varchar(20) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `idnum` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t_sys_user_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO t_sys_user VALUES ('6', 'ceshi', 'b827912e55da9755cc587497e273dab8', '083066', '1', '管理员', null, null, '管理员', '1', '1', null);
INSERT INTO t_sys_user VALUES ('7', 'ceshi1', 'b827912e55da9755cc587497e273dab8', '083066', '1', 'dd', null, null, 'dd', '2', '2', null);
INSERT INTO t_sys_user VALUES ('74', 'admin', 'b827912e55da9755cc587497e273dab8', '083066', '1', '管理员', null, null, '管理员', '1', '1', null);
INSERT INTO t_sys_user VALUES ('75', 'cd001', '203455ac53d6e0297af8f0fb6ef7b109', '831490', '1', '见见', null, '2017-11-14 08:41:43', '管理员', '1', '1', '440105198209081765');
INSERT INTO t_sys_user VALUES ('76', 'yw00001', 'f22bd1065405b094ad515aecf4ccd7fe', '394437', '1', '赵康辉', null, '2017-11-15 15:05:23', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('77', 'yw00002', '3022ef43e96669ba90bb8d35c69280c9', '301033', '1', '吴晓华', null, '2017-11-15 15:05:58', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('78', 'yw00003', 'c39563b6c8532251b22a392f3bbb7f4a', '566581', '1', '冯妙婵', null, '2017-11-15 15:06:44', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('79', 'yw00004', '36bf6dd52d6eb84fe968fc04385b789a', '932625', '1', '梁洪岚', null, '2017-11-15 15:07:22', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('80', 'yw00005', '16921e20ae57c27aa96e16a9e05faf13', '174771', '1', '陈道纳', null, '2017-11-15 15:08:02', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('81', 'yw00006', 'b3cff3123189eb33902caf686a919ae2', '965168', '1', '赵亚菊', null, '2017-11-15 15:08:31', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('82', 'yw00007', '958e65c313e98872e1cbd81af67fcf10', '013802', '1', '张云杰', null, '2017-11-15 15:08:56', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('83', 'yw00008', '381e226f0e93e6226edf009dc7f9b423', '855571', '1', '何东伦', null, '2017-11-15 15:09:40', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('84', 'yw00009', 'a0195f1a3ab84442f19fe61dc01a29a5', '580184', '1', '钟颖', null, '2017-11-15 15:10:13', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('85', 'yw00010', 'acf00a367c3cf98404c4c13a3bd3b507', '190980', '1', '李佳丽', null, '2017-11-15 15:10:35', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('86', 'yw00011', '07ebe8960ce15c4c2afb6110c9a97b6f', '847775', '1', '劳锐宇', null, '2017-11-15 15:11:27', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('87', 'yw00012', '57c00bac8f0c939e06f3d4fe2c088b0f', '503552', '1', '黄志华', null, '2017-11-15 15:12:05', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('88', 'yw00013', '0a233d06a364ccdb5889e9de0e1eae82', '303936', '1', '罗树焕', null, '2017-11-15 15:12:39', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('89', 'yw00014', 'd1355b17aa569ad911e9310e8272d17a', '910049', '1', '郭锦鹏', null, '2017-11-15 15:13:37', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('90', 'yw00015', '271d91865aa9b57a8c81293a1c55502f', '830081', '1', '黄家相', null, '2017-11-15 15:14:11', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('91', 'yw00016', 'c43ad7ed6926fc9ed7cda1ee1d6c6bf9', '261638', '1', '杨丽娟', null, '2017-11-15 15:14:40', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('92', 'yw00017', '051f686b6e6b8f803212809777010b9f', '436735', '1', '刘莉', null, '2017-11-15 15:15:04', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('93', 'yw00018', '295e5db581c93bccd770cee08891e6e1', '607116', '1', '廖东邦', null, '2017-11-15 15:15:43', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('94', 'yw00019', '40e89f0b06f0a95d3590adaa0e6bd59e', '645495', '1', '何杰海', null, '2017-11-15 15:16:09', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('95', 'yw00020', '3983784cdb78814fb5aee54a37597ba8', '625181', '1', '杨裕婷', null, '2017-11-15 15:17:12', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('96', 'yw00021', '39fffd3b540c5af3cd6a585be479fed7', '436254', '1', '蔡小倩', null, '2017-11-15 15:17:42', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('97', 'yw00022', '21f3acf32876650e91146115499f2d45', '930968', '1', '张苒苒', null, '2017-11-15 15:18:14', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('98', 'yw00023', 'c15935b65f98bbcaee1a517aa14f899d', '085049', '1', '悠悠', null, '2017-11-15 15:18:36', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('99', 'yw00024', '17e5f8b6649fc395575940c0487d0229', '663554', '1', '雄亮', null, '2017-11-15 15:18:58', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('100', 'yw00025', 'fbbb7a677c6e433ce662502ee10ddfda', '390602', '1', '小宝', null, '2017-11-15 15:19:20', '见见', '2', '2', '440105198209081765');
INSERT INTO t_sys_user VALUES ('102', 'cd002', '3b2ea43bb839a57ce6254ec1a97f18c0', '518157', '1', '见见', null, '2017-11-16 15:37:33', '管理员', '2', '2', '440105198209081765');

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
) ENGINE=InnoDB AUTO_INCREMENT=1354 DEFAULT CHARSET=utf8;

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
INSERT INTO t_sys_userlogin VALUES ('746', '1', '2017-11-09 00:03:43', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('747', '68', '2017-11-09 12:50:35', '172.168.0.100', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('748', '68', '2017-11-09 12:51:35', '172.168.0.100', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('749', '1', '2017-11-09 12:53:40', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('750', '68', '2017-11-09 14:57:44', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('751', '1', '2017-11-09 14:58:17', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('752', '68', '2017-11-09 14:59:13', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('753', '1', '2017-11-09 15:04:07', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('754', '68', '2017-11-09 15:04:44', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('755', '1', '2017-11-09 15:12:16', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('756', '68', '2017-11-09 15:12:36', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('757', '1', '2017-11-09 15:22:57', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('758', '68', '2017-11-09 15:23:23', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('759', '1', '2017-11-09 15:29:35', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('760', '68', '2017-11-09 16:08:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('761', '1', '2017-11-09 16:18:31', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('762', '68', '2017-11-09 16:22:57', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('763', '1', '2017-11-09 16:40:31', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('764', '1', '2017-11-10 09:25:22', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('765', '68', '2017-11-10 17:33:46', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('766', '1', '2017-11-10 18:01:22', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('767', '1', '2017-11-10 18:18:37', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('768', '1', '2017-11-10 18:18:56', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('769', '68', '2017-11-10 18:32:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('770', '1', '2017-11-10 18:32:58', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('771', '68', '2017-11-10 18:42:12', '0:0:0:0:0:0:0:1', 'Android', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('772', '1', '2017-11-10 18:54:18', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('773', '1', '2017-11-13 23:16:50', '223.72.76.158', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('774', '1', '2017-11-13 23:16:54', '223.72.76.158', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('775', '68', '2017-11-13 23:18:46', '117.136.0.119', 'Android', 'safari', '4.0');
INSERT INTO t_sys_userlogin VALUES ('776', '1', '2017-11-13 23:19:43', '103.101.177.28', 'PC', 'IE', '11.0');
INSERT INTO t_sys_userlogin VALUES ('777', '1', '2017-11-13 23:25:05', '223.72.76.158', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('778', '1', '2017-11-13 23:50:33', '103.101.177.28', 'PC', 'IE', '11.0');
INSERT INTO t_sys_userlogin VALUES ('779', '1', '2017-11-14 08:40:52', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('780', '75', '2017-11-14 08:42:26', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('781', '75', '2017-11-15 15:04:25', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('782', '76', '2017-11-15 15:32:44', '117.136.32.108', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('783', '86', '2017-11-15 19:27:52', '117.136.40.144', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('784', '82', '2017-11-15 19:28:05', '14.16.41.134', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('785', '78', '2017-11-15 19:28:08', '117.136.31.216', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('786', '90', '2017-11-15 19:28:15', '219.137.191.252', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('787', '81', '2017-11-15 19:28:20', '219.137.191.252', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('788', '88', '2017-11-15 19:28:22', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('789', '87', '2017-11-15 19:28:28', '14.16.199.171', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('790', '83', '2017-11-15 19:28:28', '219.137.191.252', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('791', '80', '2017-11-15 19:28:30', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('792', '78', '2017-11-15 19:28:35', '117.136.31.216', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('793', '86', '2017-11-15 19:28:43', '117.136.40.144', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('794', '95', '2017-11-15 19:28:44', '117.136.79.36', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('795', '91', '2017-11-15 19:28:57', '219.137.191.252', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('796', '89', '2017-11-15 19:29:00', '117.136.32.103', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('797', '97', '2017-11-15 19:29:02', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('798', '94', '2017-11-15 19:29:02', '14.30.126.143', 'Android', 'chrome', '53.0.2785.146');
INSERT INTO t_sys_userlogin VALUES ('799', '80', '2017-11-15 19:29:03', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('800', '77', '2017-11-15 19:29:03', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('801', '89', '2017-11-15 19:29:08', '117.136.32.103', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('802', '80', '2017-11-15 19:29:16', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('803', '78', '2017-11-15 19:29:22', '117.136.31.216', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('804', '88', '2017-11-15 19:29:33', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('805', '79', '2017-11-15 19:29:35', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('806', '86', '2017-11-15 19:29:38', '117.136.40.144', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('807', '93', '2017-11-15 19:29:39', '219.137.191.252', 'Android', 'chrome', '45.0.2454.94');
INSERT INTO t_sys_userlogin VALUES ('808', '81', '2017-11-15 19:29:41', '219.137.191.252', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('809', '84', '2017-11-15 19:29:44', '219.137.191.252', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('810', '78', '2017-11-15 19:29:55', '223.104.1.240', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('811', '89', '2017-11-15 19:29:58', '117.136.32.103', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('812', '85', '2017-11-15 19:30:03', '219.137.189.235', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('813', '78', '2017-11-15 19:30:40', '117.136.31.216', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('814', '82', '2017-11-15 19:30:44', '219.137.191.252', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('815', '89', '2017-11-15 19:31:41', '117.136.32.103', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('816', '80', '2017-11-15 19:31:44', '117.136.32.51', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('817', '88', '2017-11-15 19:31:44', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('818', '92', '2017-11-15 19:32:17', '117.136.40.150', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('819', '96', '2017-11-15 19:32:37', '223.104.1.240', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('820', '86', '2017-11-15 19:32:48', '117.136.40.144', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('821', '82', '2017-11-15 19:32:58', '14.16.41.134', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('822', '82', '2017-11-15 19:33:02', '14.16.41.134', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('823', '82', '2017-11-15 19:33:05', '14.16.41.134', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('824', '82', '2017-11-15 19:33:14', '14.16.41.134', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('825', '82', '2017-11-15 19:33:17', '14.16.41.134', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('826', '82', '2017-11-15 19:33:17', '14.16.41.134', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('827', '82', '2017-11-15 19:33:18', '14.16.41.134', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('828', '96', '2017-11-15 19:33:35', '117.136.79.36', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('829', '94', '2017-11-15 19:33:36', '14.30.126.143', 'Android', 'chrome', '53.0.2785.146');
INSERT INTO t_sys_userlogin VALUES ('830', '96', '2017-11-15 19:34:32', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('831', '96', '2017-11-15 19:34:33', '117.136.79.36', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('832', '87', '2017-11-15 19:34:54', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('833', '95', '2017-11-15 19:35:41', '117.136.79.36', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('834', '79', '2017-11-15 19:36:07', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('835', '87', '2017-11-15 19:36:13', '219.137.191.252', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('836', '92', '2017-11-15 19:36:15', '117.136.40.150', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('837', '96', '2017-11-15 19:36:51', '223.104.1.240', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('838', '78', '2017-11-15 19:37:56', '117.136.31.216', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('839', '76', '2017-11-15 19:38:41', '219.137.191.252', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('840', '94', '2017-11-15 19:39:08', '219.137.191.252', 'Android', 'chrome', '53.0.2785.146');
INSERT INTO t_sys_userlogin VALUES ('841', '75', '2017-11-15 19:40:16', '219.137.191.252', 'PC', 'IE', '8.0');
INSERT INTO t_sys_userlogin VALUES ('842', '79', '2017-11-15 19:42:13', '219.137.191.252', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('843', '75', '2017-11-15 20:00:14', '219.137.191.252', 'PC', 'IE', '8.0');
INSERT INTO t_sys_userlogin VALUES ('844', '3', '2017-11-15 23:01:49', '223.72.76.158', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('845', '3', '2017-11-15 23:01:54', '223.72.76.158', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('846', '3', '2017-11-15 23:32:36', '223.72.76.158', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('847', '3', '2017-11-16 01:32:29', '223.72.76.158', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('848', '86', '2017-11-16 07:16:33', '117.136.40.149', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('849', '93', '2017-11-16 09:22:36', '117.136.32.86', 'Android', 'chrome', '45.0.2454.94');
INSERT INTO t_sys_userlogin VALUES ('850', '78', '2017-11-16 09:29:53', '117.136.41.65', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('851', '3', '2017-11-16 09:33:37', '222.35.24.51', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('852', '75', '2017-11-16 14:48:49', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('853', '76', '2017-11-16 14:52:09', '117.136.40.165', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('854', '76', '2017-11-16 15:05:17', '117.136.40.165', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('855', '88', '2017-11-16 15:06:56', '219.137.191.183', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('856', '82', '2017-11-16 15:07:00', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('857', '90', '2017-11-16 15:07:27', '219.137.191.183', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('858', '84', '2017-11-16 15:07:28', '219.137.191.183', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('859', '79', '2017-11-16 15:07:36', '219.137.191.183', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('860', '76', '2017-11-16 15:07:39', '117.136.40.165', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('861', '76', '2017-11-16 15:07:39', '117.136.40.165', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('862', '86', '2017-11-16 15:08:29', '117.136.40.151', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('863', '82', '2017-11-16 15:08:42', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('864', '97', '2017-11-16 15:09:39', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('865', '93', '2017-11-16 15:09:41', '219.137.191.183', 'Android', 'chrome', '45.0.2454.94');
INSERT INTO t_sys_userlogin VALUES ('866', '97', '2017-11-16 15:09:46', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('867', '83', '2017-11-16 15:10:07', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('868', '84', '2017-11-16 15:10:15', '219.137.191.183', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('869', '97', '2017-11-16 15:11:07', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('870', '90', '2017-11-16 15:11:20', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('871', '97', '2017-11-16 15:11:22', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('872', '89', '2017-11-16 15:11:33', '219.137.191.183', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('873', '97', '2017-11-16 15:12:44', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('874', '84', '2017-11-16 15:12:58', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('875', '77', '2017-11-16 15:13:12', '219.137.191.183', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('876', '81', '2017-11-16 15:13:48', '219.137.191.183', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('877', '78', '2017-11-16 15:14:23', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('878', '79', '2017-11-16 15:15:08', '14.16.125.36', 'Android', 'chrome', '45.0.2454.94');
INSERT INTO t_sys_userlogin VALUES ('879', '3', '2017-11-16 15:15:27', '222.35.24.51', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('880', '89', '2017-11-16 15:15:31', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('881', '89', '2017-11-16 15:15:37', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('882', '85', '2017-11-16 15:15:41', '219.137.189.69', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('883', '89', '2017-11-16 15:15:44', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('884', '89', '2017-11-16 15:15:49', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('885', '81', '2017-11-16 15:16:51', '219.137.191.183', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('886', '78', '2017-11-16 15:18:49', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('887', '74', '2017-11-16 15:20:21', '222.35.24.51', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('888', '93', '2017-11-16 15:20:24', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('889', '80', '2017-11-16 15:20:55', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('890', '80', '2017-11-16 15:21:01', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('891', '101', '2017-11-16 15:21:46', '222.35.24.51', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('892', '78', '2017-11-16 15:24:56', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('893', '92', '2017-11-16 15:28:51', '117.136.79.4', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('894', '74', '2017-11-16 15:29:37', '222.35.24.51', 'PC', 'chrome', '61.0.3163.100');
INSERT INTO t_sys_userlogin VALUES ('895', '90', '2017-11-16 15:29:54', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('896', '96', '2017-11-16 15:32:01', '219.137.191.183', 'IOS', 'safari', '8.0');
INSERT INTO t_sys_userlogin VALUES ('897', '74', '2017-11-16 15:32:33', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('898', '95', '2017-11-16 15:32:49', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('899', '95', '2017-11-16 15:33:17', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('900', '95', '2017-11-16 15:35:13', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('901', '96', '2017-11-16 15:35:30', '219.137.191.183', 'IOS', 'safari', '8.0');
INSERT INTO t_sys_userlogin VALUES ('902', '85', '2017-11-16 15:35:52', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('903', '102', '2017-11-16 15:40:09', '14.30.114.208', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('904', '85', '2017-11-16 15:44:06', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('905', '85', '2017-11-16 16:01:58', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('906', '85', '2017-11-16 16:05:13', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('907', '76', '2017-11-16 16:08:17', '117.136.40.165', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('908', '91', '2017-11-16 16:10:37', '219.137.191.183', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('909', '92', '2017-11-16 16:11:00', '117.136.79.4', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('910', '83', '2017-11-16 16:12:41', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('911', '79', '2017-11-16 16:22:37', '219.137.191.183', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('912', '86', '2017-11-16 16:26:47', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('913', '86', '2017-11-16 16:29:20', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('914', '76', '2017-11-16 16:30:14', '14.30.99.248', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('915', '86', '2017-11-16 16:32:16', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('916', '83', '2017-11-16 16:32:18', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('917', '94', '2017-11-16 16:45:40', '14.16.188.202', 'Android', 'chrome', '53.0.2785.146');
INSERT INTO t_sys_userlogin VALUES ('918', '86', '2017-11-16 17:04:10', '117.136.40.151', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('919', '87', '2017-11-16 17:23:24', '14.16.199.171', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('920', '83', '2017-11-16 17:33:16', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('921', '96', '2017-11-16 17:38:45', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('922', '85', '2017-11-16 17:39:51', '219.137.191.183', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('923', '81', '2017-11-16 18:06:55', '219.137.191.183', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('924', '76', '2017-11-16 18:07:00', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('925', '89', '2017-11-16 18:07:37', '219.137.191.183', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('926', '83', '2017-11-16 18:08:56', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('927', '87', '2017-11-16 18:20:58', '14.16.199.171', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('928', '76', '2017-11-16 18:21:13', '219.137.191.183', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('929', '87', '2017-11-16 18:49:42', '14.16.199.171', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('930', '96', '2017-11-16 18:50:50', '219.137.191.183', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('931', '76', '2017-11-16 18:53:48', '112.96.33.62', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('932', '89', '2017-11-16 19:08:26', '219.137.191.183', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('933', '89', '2017-11-16 19:29:09', '219.137.191.183', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('934', '91', '2017-11-17 09:30:24', '219.137.189.189', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('935', '76', '2017-11-17 09:33:52', '14.16.241.38', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('936', '76', '2017-11-17 09:37:43', '112.96.100.29', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('937', '81', '2017-11-17 09:40:12', '219.137.189.189', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('938', '83', '2017-11-17 09:40:42', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('939', '78', '2017-11-17 09:43:25', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('940', '76', '2017-11-17 09:43:47', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('941', '88', '2017-11-17 09:47:08', '219.137.189.189', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('942', '87', '2017-11-17 09:49:49', '14.24.209.53', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('943', '78', '2017-11-17 09:56:46', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('944', '89', '2017-11-17 09:58:34', '117.136.79.43', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('945', '95', '2017-11-17 10:07:55', '219.137.189.189', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('946', '100', '2017-11-17 10:10:53', '117.136.31.228', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('947', '83', '2017-11-17 10:16:21', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('948', '96', '2017-11-17 10:24:01', '219.137.189.189', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('949', '96', '2017-11-17 10:25:45', '219.137.189.189', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('950', '96', '2017-11-17 10:26:13', '219.137.189.189', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('951', '95', '2017-11-17 10:26:13', '219.137.189.189', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('952', '96', '2017-11-17 10:26:39', '219.137.189.189', 'IOS', 'safari', '8.0');
INSERT INTO t_sys_userlogin VALUES ('953', '95', '2017-11-17 10:29:36', '219.137.189.189', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('954', '100', '2017-11-17 10:31:26', '117.136.31.228', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('955', '75', '2017-11-17 10:36:46', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('956', '100', '2017-11-17 10:37:06', '117.136.31.228', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('957', '88', '2017-11-17 10:41:48', '219.137.189.189', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('958', '88', '2017-11-17 10:41:48', '219.137.189.189', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('959', '87', '2017-11-17 10:42:17', '14.24.209.53', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('960', '76', '2017-11-17 10:56:04', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('961', '95', '2017-11-17 11:01:07', '219.137.189.189', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('962', '79', '2017-11-17 11:08:25', '219.137.189.189', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('963', '76', '2017-11-17 11:11:04', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('964', '89', '2017-11-17 11:31:49', '219.137.189.189', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('965', '76', '2017-11-17 12:12:47', '112.96.164.119', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('966', '89', '2017-11-17 13:51:16', '219.137.189.189', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('967', '88', '2017-11-17 14:00:54', '219.137.189.189', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('968', '87', '2017-11-17 14:02:34', '14.24.209.53', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('969', '78', '2017-11-17 14:04:27', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('970', '85', '2017-11-17 14:07:19', '183.42.43.52', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('971', '81', '2017-11-17 14:12:15', '219.137.189.189', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('972', '76', '2017-11-17 14:14:10', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('973', '96', '2017-11-17 14:16:19', '219.137.189.189', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('974', '83', '2017-11-17 14:16:57', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('975', '83', '2017-11-17 14:19:22', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('976', '87', '2017-11-17 14:19:44', '14.24.209.53', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('977', '87', '2017-11-17 14:19:54', '14.24.209.53', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('978', '95', '2017-11-17 14:21:05', '219.137.189.189', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('979', '76', '2017-11-17 14:25:39', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('980', '76', '2017-11-17 15:04:55', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('981', '100', '2017-11-17 15:39:19', '117.136.31.228', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('982', '81', '2017-11-17 16:08:33', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('983', '78', '2017-11-17 16:12:17', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('984', '76', '2017-11-17 16:27:47', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('985', '76', '2017-11-17 17:21:28', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('986', '76', '2017-11-17 17:34:06', '219.137.189.189', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('987', '85', '2017-11-17 17:52:41', '219.137.189.189', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('988', '87', '2017-11-18 15:02:43', '14.16.174.122', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('989', '80', '2017-11-18 22:06:53', '117.136.41.57', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('990', '86', '2017-11-19 15:23:37', '117.136.12.94', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('991', '75', '2017-11-20 08:42:30', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('992', '80', '2017-11-20 09:27:05', '219.137.191.111', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('993', '85', '2017-11-20 09:27:23', '14.16.224.71', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('994', '91', '2017-11-20 09:27:30', '219.137.191.111', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('995', '85', '2017-11-20 09:27:32', '14.16.224.71', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('996', '87', '2017-11-20 09:27:49', '14.16.174.122', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('997', '86', '2017-11-20 09:27:49', '117.136.79.39', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('998', '89', '2017-11-20 09:27:52', '219.137.191.111', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('999', '76', '2017-11-20 09:27:53', '219.137.191.111', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1000', '95', '2017-11-20 09:27:55', '219.137.191.111', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1001', '87', '2017-11-20 09:28:03', '14.16.174.122', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1002', '81', '2017-11-20 09:28:15', '219.137.191.111', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1003', '79', '2017-11-20 09:28:50', '219.137.191.111', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1004', '88', '2017-11-20 09:30:37', '219.137.191.111', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1005', '75', '2017-11-20 09:35:21', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1006', '86', '2017-11-20 09:35:33', '219.137.191.111', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1007', '89', '2017-11-20 09:40:28', '223.104.1.248', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1008', '92', '2017-11-20 09:49:37', '14.16.226.194', 'Android', 'chrome', '57.0.2987.108');
INSERT INTO t_sys_userlogin VALUES ('1009', '76', '2017-11-20 09:59:06', '219.137.191.111', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1010', '83', '2017-11-20 10:01:03', '219.137.191.111', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1011', '78', '2017-11-20 10:03:12', '219.137.191.111', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1012', '97', '2017-11-20 10:08:41', '219.137.191.111', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1013', '80', '2017-11-20 10:15:06', '219.137.191.111', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1014', '80', '2017-11-20 10:15:17', '219.137.191.111', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1015', '80', '2017-11-20 10:15:41', '219.137.191.111', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1016', '82', '2017-11-20 10:16:47', '219.137.191.111', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1017', '78', '2017-11-20 10:21:05', '219.137.191.111', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1018', '87', '2017-11-20 10:23:43', '14.16.174.122', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1019', '96', '2017-11-20 10:26:54', '219.137.191.173', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1020', '96', '2017-11-20 10:27:38', '219.137.191.173', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1021', '95', '2017-11-20 10:32:08', '117.136.40.128', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1022', '88', '2017-11-20 10:52:00', '219.137.189.76', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1023', '85', '2017-11-20 11:18:15', '14.16.224.71', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1024', '87', '2017-11-20 11:18:40', '14.16.174.122', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1025', '88', '2017-11-20 11:28:29', '219.137.189.76', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1026', '87', '2017-11-20 12:18:56', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1027', '78', '2017-11-20 13:50:14', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1028', '83', '2017-11-20 13:51:26', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1029', '87', '2017-11-20 13:54:09', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1030', '86', '2017-11-20 13:54:11', '219.137.191.173', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1031', '81', '2017-11-20 13:54:44', '219.137.191.173', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1032', '89', '2017-11-20 13:56:51', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1033', '76', '2017-11-20 14:15:34', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1034', '89', '2017-11-20 14:18:35', '219.137.191.173', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1035', '88', '2017-11-20 14:20:57', '219.137.189.76', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1036', '89', '2017-11-20 14:25:36', '219.137.191.173', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1037', '77', '2017-11-20 15:00:42', '219.137.191.173', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('1038', '78', '2017-11-20 15:43:05', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1039', '86', '2017-11-20 15:56:08', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1040', '76', '2017-11-20 16:02:19', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1041', '79', '2017-11-20 16:16:41', '219.137.191.173', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1042', '87', '2017-11-20 16:54:28', '14.16.212.90', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1043', '87', '2017-11-20 17:07:24', '14.16.212.90', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1044', '76', '2017-11-20 17:08:05', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1045', '88', '2017-11-20 17:08:49', '219.137.191.173', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1046', '81', '2017-11-20 17:11:21', '219.137.191.173', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1047', '78', '2017-11-20 17:14:57', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1048', '79', '2017-11-20 17:20:34', '219.137.191.173', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1049', '75', '2017-11-20 17:26:53', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1050', '78', '2017-11-20 17:33:46', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1051', '81', '2017-11-20 18:02:01', '219.137.191.173', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1052', '81', '2017-11-20 18:18:48', '219.137.191.173', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1053', '87', '2017-11-20 18:23:02', '14.16.212.90', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1054', '86', '2017-11-20 18:29:21', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1055', '89', '2017-11-20 18:42:42', '219.137.191.173', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1056', '95', '2017-11-20 18:49:08', '219.137.191.173', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1057', '78', '2017-11-20 18:50:46', '219.137.191.173', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1058', '89', '2017-11-20 18:56:26', '117.136.41.41', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1059', '88', '2017-11-20 19:03:30', '219.137.191.173', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1060', '6', '2017-11-21 03:54:14', '223.72.76.158', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1061', '6', '2017-11-21 03:54:14', '223.72.76.158', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1062', '7', '2017-11-21 03:58:53', '223.72.76.158', 'Android', 'safari', '4.0');
INSERT INTO t_sys_userlogin VALUES ('1063', '94', '2017-11-21 09:18:22', '219.137.189.181', 'Android', 'chrome', '53.0.2785.146');
INSERT INTO t_sys_userlogin VALUES ('1064', '92', '2017-11-21 09:18:46', '14.25.114.206', 'Android', 'chrome', '57.0.2987.108');
INSERT INTO t_sys_userlogin VALUES ('1065', '91', '2017-11-21 09:19:19', '219.137.189.181', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('1066', '87', '2017-11-21 09:21:02', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1067', '89', '2017-11-21 09:25:26', '219.137.189.181', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1068', '81', '2017-11-21 09:29:44', '219.137.189.181', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1069', '85', '2017-11-21 09:30:25', '14.16.224.71', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1070', '6', '2017-11-21 09:32:01', '222.35.24.51', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1071', '76', '2017-11-21 09:33:59', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1072', '86', '2017-11-21 09:34:58', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1073', '90', '2017-11-21 09:36:24', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1074', '88', '2017-11-21 09:38:09', '117.136.41.81', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1075', '75', '2017-11-21 09:41:20', '222.35.24.51', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1076', '75', '2017-11-21 09:41:21', '222.35.24.51', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1077', '92', '2017-11-21 09:42:53', '14.25.114.206', 'Android', 'chrome', '57.0.2987.108');
INSERT INTO t_sys_userlogin VALUES ('1078', '83', '2017-11-21 09:44:00', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1079', '75', '2017-11-21 09:46:35', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1080', '79', '2017-11-21 09:48:16', '219.137.189.181', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1081', '78', '2017-11-21 09:50:06', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1082', '91', '2017-11-21 10:00:23', '219.137.189.181', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('1083', '96', '2017-11-21 10:03:54', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1084', '95', '2017-11-21 10:04:11', '117.136.41.59', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1085', '76', '2017-11-21 10:04:16', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1086', '96', '2017-11-21 10:04:19', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1087', '80', '2017-11-21 10:15:18', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1088', '85', '2017-11-21 10:19:48', '14.16.224.71', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1089', '78', '2017-11-21 10:32:38', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1090', '88', '2017-11-21 10:34:37', '219.137.189.76', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1091', '86', '2017-11-21 10:40:31', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1092', '79', '2017-11-21 10:43:11', '14.30.76.179', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1093', '85', '2017-11-21 10:48:19', '14.16.205.98', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1094', '88', '2017-11-21 10:48:25', '219.137.189.76', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1095', '79', '2017-11-21 10:51:13', '219.137.189.181', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1096', '78', '2017-11-21 10:52:13', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1097', '95', '2017-11-21 10:52:33', '117.136.41.59', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1098', '78', '2017-11-21 11:10:58', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1099', '79', '2017-11-21 11:11:18', '14.30.76.179', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1100', '78', '2017-11-21 11:30:00', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1101', '88', '2017-11-21 11:32:59', '219.137.189.76', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1102', '89', '2017-11-21 11:33:15', '223.104.1.244', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1103', '90', '2017-11-21 11:44:26', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1104', '90', '2017-11-21 11:44:33', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1105', '90', '2017-11-21 11:44:36', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1106', '90', '2017-11-21 11:44:39', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1107', '90', '2017-11-21 11:44:45', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1108', '90', '2017-11-21 11:44:50', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1109', '90', '2017-11-21 11:45:00', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1110', '90', '2017-11-21 11:45:07', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1111', '75', '2017-11-21 13:34:32', '222.35.24.51', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1112', '86', '2017-11-21 13:52:21', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1113', '87', '2017-11-21 13:57:05', '14.16.212.213', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1114', '83', '2017-11-21 13:58:58', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1115', '81', '2017-11-21 14:00:53', '219.137.189.181', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1116', '78', '2017-11-21 14:02:02', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1117', '78', '2017-11-21 14:02:07', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1118', '78', '2017-11-21 14:02:16', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1119', '76', '2017-11-21 14:05:39', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1120', '75', '2017-11-21 14:08:59', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1121', '89', '2017-11-21 14:09:06', '219.137.189.181', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1122', '88', '2017-11-21 14:15:17', '219.137.189.181', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1123', '92', '2017-11-21 14:16:52', '14.25.114.206', 'Android', 'chrome', '57.0.2987.108');
INSERT INTO t_sys_userlogin VALUES ('1124', '95', '2017-11-21 14:28:05', '117.136.32.55', 'IOS', 'safari', '9.0');
INSERT INTO t_sys_userlogin VALUES ('1125', '75', '2017-11-21 14:30:21', '222.35.24.51', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1126', '76', '2017-11-21 14:41:31', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1127', '75', '2017-11-21 14:45:48', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1128', '75', '2017-11-21 14:47:24', '222.35.24.51', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1129', '75', '2017-11-21 14:51:16', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1130', '75', '2017-11-21 14:53:40', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1131', '83', '2017-11-21 14:56:40', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1132', '78', '2017-11-21 15:22:42', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1133', '76', '2017-11-21 15:31:07', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1134', '78', '2017-11-21 15:38:03', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1135', '78', '2017-11-21 15:49:53', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1136', '86', '2017-11-21 15:51:53', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1137', '90', '2017-11-21 15:54:06', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1138', '90', '2017-11-21 15:55:25', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1139', '90', '2017-11-21 15:55:28', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1140', '90', '2017-11-21 15:56:00', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1141', '90', '2017-11-21 15:58:35', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1142', '90', '2017-11-21 15:58:37', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1143', '90', '2017-11-21 15:58:46', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1144', '90', '2017-11-21 15:58:48', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1145', '90', '2017-11-21 15:58:56', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1146', '90', '2017-11-21 15:59:06', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1147', '90', '2017-11-21 15:59:24', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1148', '90', '2017-11-21 15:59:34', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1149', '90', '2017-11-21 15:59:40', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1150', '90', '2017-11-21 16:02:04', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1151', '90', '2017-11-21 16:02:09', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1152', '90', '2017-11-21 16:02:11', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1153', '90', '2017-11-21 16:02:12', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1154', '90', '2017-11-21 16:02:13', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1155', '90', '2017-11-21 16:02:14', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1156', '90', '2017-11-21 16:02:17', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1157', '90', '2017-11-21 16:02:18', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1158', '90', '2017-11-21 16:02:26', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1159', '90', '2017-11-21 16:02:32', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1160', '90', '2017-11-21 16:02:47', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1161', '90', '2017-11-21 16:02:49', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1162', '90', '2017-11-21 16:02:50', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1163', '90', '2017-11-21 16:02:52', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1164', '90', '2017-11-21 16:02:56', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1165', '90', '2017-11-21 16:03:16', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1166', '90', '2017-11-21 16:03:17', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1167', '90', '2017-11-21 16:03:19', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1168', '90', '2017-11-21 16:03:20', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1169', '90', '2017-11-21 16:03:23', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1170', '90', '2017-11-21 16:03:28', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1171', '90', '2017-11-21 16:03:32', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1172', '90', '2017-11-21 16:03:33', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1173', '90', '2017-11-21 16:03:35', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1174', '90', '2017-11-21 16:03:35', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1175', '90', '2017-11-21 16:04:46', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1176', '90', '2017-11-21 16:05:01', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1177', '90', '2017-11-21 16:05:10', '112.96.188.72', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1178', '88', '2017-11-21 16:06:55', '219.137.189.181', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1179', '90', '2017-11-21 16:12:29', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1180', '90', '2017-11-21 16:12:35', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1181', '90', '2017-11-21 16:12:42', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1182', '90', '2017-11-21 16:12:47', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1183', '90', '2017-11-21 16:12:50', '219.137.189.181', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1184', '86', '2017-11-21 17:01:14', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1185', '87', '2017-11-21 17:07:22', '14.16.212.213', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1186', '76', '2017-11-21 17:11:33', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1187', '83', '2017-11-21 17:29:50', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1188', '78', '2017-11-21 17:40:17', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1189', '81', '2017-11-21 17:46:10', '219.137.189.181', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1190', '86', '2017-11-21 17:46:37', '117.136.41.74', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1191', '86', '2017-11-21 17:51:24', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1192', '88', '2017-11-21 17:52:19', '117.136.41.37', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1193', '82', '2017-11-21 17:56:27', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1194', '81', '2017-11-21 17:56:39', '219.137.189.181', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1195', '78', '2017-11-21 17:57:34', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1196', '83', '2017-11-21 17:59:09', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1197', '78', '2017-11-21 18:06:01', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1198', '79', '2017-11-21 18:08:19', '14.30.76.179', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1199', '86', '2017-11-21 18:08:20', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1200', '79', '2017-11-21 18:09:15', '14.30.76.179', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1201', '76', '2017-11-21 18:15:53', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1202', '81', '2017-11-21 18:17:48', '219.137.189.181', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1203', '86', '2017-11-21 18:43:05', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1204', '86', '2017-11-21 18:43:16', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1205', '86', '2017-11-21 19:02:36', '219.137.189.181', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1206', '87', '2017-11-22 09:37:36', '14.16.212.213', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1207', '92', '2017-11-22 09:42:18', '14.16.193.194', 'Android', 'chrome', '57.0.2987.108');
INSERT INTO t_sys_userlogin VALUES ('1208', '86', '2017-11-22 09:47:40', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1209', '79', '2017-11-22 09:49:55', '14.25.68.43', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1210', '89', '2017-11-22 09:51:52', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1211', '76', '2017-11-22 09:54:15', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1212', '78', '2017-11-22 09:55:55', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1213', '81', '2017-11-22 09:56:11', '219.137.191.91', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1214', '88', '2017-11-22 09:56:17', '219.137.191.22', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1215', '80', '2017-11-22 09:57:02', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1216', '90', '2017-11-22 10:02:14', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1217', '90', '2017-11-22 10:02:24', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1218', '90', '2017-11-22 10:02:33', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1219', '90', '2017-11-22 10:02:45', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1220', '90', '2017-11-22 10:02:53', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1221', '90', '2017-11-22 10:02:55', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1222', '90', '2017-11-22 10:02:57', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1223', '90', '2017-11-22 10:02:59', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1224', '90', '2017-11-22 10:03:01', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1225', '90', '2017-11-22 10:03:08', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1226', '90', '2017-11-22 10:03:12', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1227', '90', '2017-11-22 10:03:15', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1228', '91', '2017-11-22 10:03:25', '219.137.191.91', 'Android', 'chrome', '53.0.2785.49');
INSERT INTO t_sys_userlogin VALUES ('1229', '90', '2017-11-22 10:04:10', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1230', '90', '2017-11-22 10:04:18', '219.137.191.91', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1231', '90', '2017-11-22 10:04:44', '219.137.191.91', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1232', '83', '2017-11-22 10:09:07', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1233', '87', '2017-11-22 10:15:36', '14.16.212.213', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1234', '78', '2017-11-22 10:18:55', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1235', '89', '2017-11-22 10:23:22', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1236', '85', '2017-11-22 10:24:16', '14.24.208.123', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1237', '98', '2017-11-22 10:25:05', '117.136.79.39', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1238', '89', '2017-11-22 10:25:38', '117.136.79.57', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1239', '89', '2017-11-22 10:25:41', '117.136.79.57', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1240', '76', '2017-11-22 10:32:08', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1241', '98', '2017-11-22 10:33:11', '117.136.79.39', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1242', '98', '2017-11-22 10:33:17', '117.136.79.39', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1243', '98', '2017-11-22 10:33:42', '117.136.79.39', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1244', '100', '2017-11-22 10:33:44', '117.136.32.56', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1245', '98', '2017-11-22 10:34:58', '117.136.79.39', 'IOS', 'safari', '10.0');
INSERT INTO t_sys_userlogin VALUES ('1246', '86', '2017-11-22 10:46:58', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1247', '79', '2017-11-22 11:10:51', '14.25.68.43', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1248', '76', '2017-11-22 11:24:46', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1249', '81', '2017-11-22 11:40:47', '219.137.191.91', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1250', '75', '2017-11-22 12:45:38', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1251', '75', '2017-11-22 12:52:18', '222.35.24.51', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1252', '75', '2017-11-22 12:53:39', '222.35.24.51', 'PC', 'IE', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1253', '75', '2017-11-22 13:02:18', '222.35.24.51', 'Android', 'safari', '4.0');
INSERT INTO t_sys_userlogin VALUES ('1254', '7', '2017-11-22 13:26:31', '222.35.24.51', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1255', '75', '2017-11-22 13:45:09', '202.105.56.132', 'PC', 'chrome', '51.0.2704.79');
INSERT INTO t_sys_userlogin VALUES ('1256', '76', '2017-11-22 13:50:28', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1257', '79', '2017-11-22 13:54:26', '14.25.68.43', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1258', '87', '2017-11-22 13:56:22', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1259', '78', '2017-11-22 13:58:19', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1260', '83', '2017-11-22 13:58:46', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1261', '92', '2017-11-22 14:01:37', '14.16.193.194', 'Android', 'chrome', '57.0.2987.108');
INSERT INTO t_sys_userlogin VALUES ('1262', '81', '2017-11-22 14:05:06', '219.137.191.91', 'Android', 'chrome', '48.0.2564.116');
INSERT INTO t_sys_userlogin VALUES ('1263', '85', '2017-11-22 14:06:35', '14.24.208.123', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1264', '88', '2017-11-22 14:07:54', '219.137.191.91', 'IOS', 'safari', '11.0');
INSERT INTO t_sys_userlogin VALUES ('1265', '76', '2017-11-22 14:21:50', '112.96.179.162', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1266', '76', '2017-11-22 14:21:50', '112.96.179.162', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1267', '76', '2017-11-22 14:21:50', '112.96.179.162', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1268', '76', '2017-11-22 14:21:50', '112.96.179.162', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1269', '76', '2017-11-22 14:21:50', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1270', '76', '2017-11-22 14:21:53', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1271', '80', '2017-11-22 14:21:53', '117.136.32.106', '', '', '');
INSERT INTO t_sys_userlogin VALUES ('1272', '94', '2017-11-22 14:22:03', '14.16.224.204', 'Android', 'chrome', '53.0.2785.146');
INSERT INTO t_sys_userlogin VALUES ('1273', '89', '2017-11-22 14:22:30', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1274', '85', '2017-11-22 14:22:57', '219.137.191.91', 'Android', 'chrome', '40.0.2214.89');
INSERT INTO t_sys_userlogin VALUES ('1275', '86', '2017-11-22 14:25:23', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1276', '78', '2017-11-22 14:31:06', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1277', '94', '2017-11-22 14:33:29', '14.16.224.204', 'Android', 'chrome', '53.0.2785.146');
INSERT INTO t_sys_userlogin VALUES ('1278', '76', '2017-11-22 14:34:46', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1279', '86', '2017-11-22 14:38:34', '219.137.191.91', 'Android', 'chrome', '37.0.0.0');
INSERT INTO t_sys_userlogin VALUES ('1280', '75', '2017-11-22 17:09:40', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1281', '75', '2017-11-22 17:29:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1282', '75', '2017-11-22 17:38:49', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1283', '75', '2017-11-23 01:09:01', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1284', '6', '2017-11-24 00:05:46', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1285', '75', '2017-11-28 22:29:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1286', '75', '2017-11-28 22:35:42', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1287', '75', '2017-11-28 22:41:08', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1288', '75', '2017-11-28 22:43:21', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1289', '75', '2017-11-28 22:44:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1290', '74', '2017-11-28 23:21:04', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1291', '74', '2017-11-29 00:51:15', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1292', '74', '2017-11-29 10:32:38', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1293', '74', '2017-11-29 10:36:19', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1294', '74', '2017-11-29 13:40:41', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1295', '74', '2017-11-29 13:51:03', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1296', '74', '2017-11-29 13:55:06', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1297', '74', '2017-11-29 14:04:19', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1298', '74', '2017-11-29 14:07:11', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1299', '74', '2017-11-30 22:50:59', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '62.0.3202.94');
INSERT INTO t_sys_userlogin VALUES ('1300', '74', '2017-12-20 02:15:22', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1301', '74', '2017-12-20 02:51:18', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1302', '74', '2017-12-20 03:09:47', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1303', '74', '2017-12-20 03:10:48', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1304', '74', '2017-12-20 03:11:45', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1305', '74', '2017-12-20 03:14:04', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1306', '74', '2017-12-20 03:14:26', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1307', '74', '2017-12-20 03:14:48', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1308', '74', '2017-12-21 00:35:48', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '63.0.3239.84');
INSERT INTO t_sys_userlogin VALUES ('1309', '74', '2018-03-16 14:25:55', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1310', '74', '2018-03-16 15:20:45', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1311', '74', '2018-03-20 22:28:49', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1312', '74', '2018-03-20 23:37:06', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1313', '74', '2018-03-20 23:44:48', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1314', '74', '2018-03-20 23:48:43', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1315', '74', '2018-03-20 23:53:36', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1316', '74', '2018-03-20 23:58:11', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1317', '74', '2018-03-21 00:07:04', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1318', '74', '2018-03-21 00:09:18', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1319', '74', '2018-03-21 22:26:31', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1320', '74', '2018-03-21 23:02:51', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '64.0.3282.186');
INSERT INTO t_sys_userlogin VALUES ('1321', '74', '2018-03-22 22:24:42', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1322', '74', '2018-03-22 23:24:42', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1323', '74', '2018-03-23 13:27:23', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1324', '74', '2018-03-23 13:54:48', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1325', '74', '2018-03-24 22:11:30', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1326', '74', '2018-03-24 22:16:54', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1327', '74', '2018-03-24 23:23:20', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1328', '74', '2018-03-25 09:33:30', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1329', '74', '2018-03-25 13:51:42', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1330', '74', '2018-03-25 14:38:14', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1331', '74', '2018-03-25 15:56:18', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1332', '74', '2018-03-25 21:39:38', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1333', '74', '2018-03-26 00:23:52', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1334', '74', '2018-03-26 10:48:03', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1335', '74', '2018-03-26 13:54:16', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1336', '74', '2018-03-26 22:37:33', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1337', '74', '2018-03-26 23:51:49', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1338', '74', '2018-03-26 23:53:41', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1339', '74', '2018-03-27 00:32:53', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1340', '74', '2018-03-27 08:33:49', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1341', '74', '2018-03-27 09:04:55', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1342', '74', '2018-03-27 09:37:04', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1343', '74', '2018-03-27 10:30:53', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1344', '74', '2018-03-27 13:12:14', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1345', '74', '2018-03-27 22:19:38', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1346', '74', '2018-03-28 00:05:57', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1347', '74', '2018-03-28 00:32:02', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1348', '74', '2018-03-28 08:25:11', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1349', '74', '2018-03-28 08:56:27', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1350', '74', '2018-03-28 12:15:47', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1351', '74', '2018-03-28 14:19:12', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1352', '74', '2018-03-29 08:24:06', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
INSERT INTO t_sys_userlogin VALUES ('1353', '74', '2018-03-29 13:11:14', '0:0:0:0:0:0:0:1', 'PC', 'chrome', '65.0.3325.181');
