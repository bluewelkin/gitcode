package com.balance.sys.service;

import com.balance.common.vo.ComboboxVO;
import com.balance.sys.dao.SysFunctionDao;
import com.balance.sys.dao.SysModuleDao;
import com.balance.sys.dao.SysRoleDao;
import com.balance.sys.model.*;
import com.balance.util.cache.EhCacheUtil;
import com.balance.util.config.PubConfig;
import com.balance.util.session.SessionUtil;
import com.balance.util.session.UserSession;
import com.balance.util.string.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class SysRoleService {

	@Autowired
	private SysRoleDao sysRoleDao;
	@Autowired
	private SysModuleDao sysModuleDao;
	@Autowired
	private SysFunctionDao sysFunctionDao;
	@Autowired
	private PubConfig pubConfig;

	public int add(SysRole sysRole, String moduleArr, String functionArr) {
		int role_id = sysRoleDao.add(sysRole);
		sysRoleDao.deleteRoleModule(role_id);
		sysRoleDao.deleteRoleFunction(role_id);
		String[] moduleSplit = moduleArr.split("@@");
		for (int i = 0; i < moduleSplit.length; i++) {
			if (StringUtil.isNotNullOrEmpty(moduleSplit[i])) {
				sysRoleDao.addRoleModule(role_id, Integer.parseInt(moduleSplit[i]));
			}
		}
		String[] functionSplit = functionArr.split("@@");
		for (int i = 0; i < functionSplit.length; i++) {
			if (StringUtil.isNotNullOrEmpty(functionSplit[i])) {
				sysRoleDao.addRoleFunction(role_id, Integer.parseInt(functionSplit[i]));
			}
		}
		return 1;
	}

	/**
	 * 修改角色
	 * 
	 * @param sysRole
	 * @param moduleArr
	 * @param functionArr
	 * @return
	 */
	public int update(SysRole sysRole, String moduleArr, String functionArr) {
		sysRoleDao.update(sysRole);
		sysRoleDao.deleteRoleModule(sysRole.getId());
		sysRoleDao.deleteRoleFunction(sysRole.getId());
		String[] moduleSplit = moduleArr.split("@@");
		for (int i = 0; i < moduleSplit.length; i++) {
			if (StringUtil.isNotNullOrEmpty(moduleSplit[i])) {
				sysRoleDao.addRoleModule(sysRole.getId(), Integer.parseInt(moduleSplit[i]));
			}
		}
		String[] functionSplit = functionArr.split("@@");
		for (int i = 0; i < functionSplit.length; i++) {
			if (StringUtil.isNotNullOrEmpty(functionSplit[i])) {
				sysRoleDao.addRoleFunction(sysRole.getId(), Integer.parseInt(functionSplit[i]));
			}
		}
		EhCacheUtil.remove("sysCache", "hashRoleFunction_" + sysRole.getId());
		EhCacheUtil.remove("sysCache", "menu_" + sysRole.getId());
		return 1;
	}

	public int delete(int id) {
		int flag = 0;
		flag = sysRoleDao.delete(id);
		if (flag == 1) {
			sysRoleDao.deleteRoleModule(id);
			sysRoleDao.deleteRoleModule(id);
			EhCacheUtil.remove("sysCache", "hashRoleFunction_" + id);
			EhCacheUtil.remove("sysCache", "menu_" + id);
		}
		return flag;
	}

	/**
	 * 通过js来设置选中的模块和按钮
	 * 
	 * @param role_id
	 * @return
	 */
	public String checkModuleAndFunction(int role_id) {
		List<SysRoleModule> listRoleModule = sysRoleDao.listRoleModule(role_id);// 角色模块列表
		List<SysRoleFunction> listRoleFunction = sysFunctionDao.listRoleFunctionByRole_id(role_id);// 角色对应功能
		StringBuilder sb = new StringBuilder();
		for (SysRoleModule sysRoleModule : listRoleModule) {
			sb.append("$('#mod_" + sysRoleModule.getModule_id() + "').prop('checked',true);\r\n");
		}
		for (SysRoleFunction sysRoleFunction : listRoleFunction) {
			sb.append("$('#function_" + sysRoleFunction.getFunction_id() + "').prop('checked',true);\r\n");
		}
		return sb.toString();
	}

	public SysRole get(int id) {
		return sysRoleDao.get(id);
	}

	public List<SysRole> list(int role_id) {
		return sysRoleDao.list(role_id);
	}

	public List<ComboboxVO> listCombo() {
		return sysRoleDao.listCombo();
	}

	/**
	 * 根据角色id获取该角色对应模块列表checkbox
	 * 
	 * @param role_id
	 * @return
	 */
	public String listRoleModuleJson(int role_id) {
		List<SysModule> listModule = sysModuleDao.list();// 模块列表
		String json = "";
		List<SysRoleModule> listRoleModule = sysRoleDao.listRoleModule(role_id);// 角色模块列表
		List<SysFunction> listFunction = sysFunctionDao.list();// 功能列表
		List<SysRoleFunction> listRoleFunction = sysFunctionDao.listRoleFunctionByRole_id(role_id);// 角色对应功能
		HashMap<Integer, Integer> hashRoleFunction = new HashMap<Integer, Integer>();// 角色对应功能hash
		for (SysRoleFunction sysRoleFunction : listRoleFunction) {
			hashRoleFunction.put(sysRoleFunction.getFunction_id(), sysRoleFunction.getFunction_id());
		}
		json = createRoleModuleJson(listModule, listRoleModule, listFunction, hashRoleFunction, 1);// 从根节点开始查找模块，不计算根节点
		return "[" + json + "]";
	}

	private String createRoleModuleJson(List<SysModule> listModule, List<SysRoleModule> listRoleModule,
			List<SysFunction> listFunction, HashMap<Integer, Integer> hashRoleFunction, int parent_id) {
		String str = "";
		for (SysModule sysModule : listModule) {
			if (sysModule.getParent_id() == parent_id) {
				str += "{\"id\":" + sysModule.getId() + ",\"text\":\"" + sysModule.getName() + "\",\"function\":\""
						+ createFunction(listFunction, hashRoleFunction, sysModule.getId()) + "\"";
				if (sysModule.getCnt() > 0) {
					str += ",\"leaf\":false";
					boolean flag = false;
					for (SysRoleModule sysRoleModule : listRoleModule) {
						if (sysRoleModule.getModule_id() == sysModule.getId()) {
							flag = true;
							break;
						}
					}
					str += ",\"checked\":" + flag;
					if (sysModule.getCnt() > 0)
						str += ",\"expanded\":true";
					str += ",\"children\":[" + createRoleModuleJson(listModule, listRoleModule, listFunction,
							hashRoleFunction, sysModule.getId()) + "]";
				} else {
					str += ",\"leaf\":true";
					boolean flag = false;
					for (SysRoleModule sysRoleModule : listRoleModule) {
						if (sysRoleModule.getModule_id() == sysModule.getId()) {
							flag = true;
							break;
						}
					}
					str += ",\"checked\":" + flag;
				}
				str += "},";
			}
		}
		str = StringUtil.subTract(str);
		return str;
	}

	private String createFunction(List<SysFunction> listFunction, HashMap<Integer, Integer> hashRoleFunction,
			int module_id) {
		String function = "";
		for (SysFunction sysFunction : listFunction) {
			if (sysFunction.getModule_id() == module_id && sysFunction.getType() == 1) {
				function += sysFunction.getId() + "@" + sysFunction.getName() + "@";
				if (hashRoleFunction.containsKey(sysFunction.getId())) {
					function += "1";
				} else {
					function += "0";
				}
				function += ",";
			}
		}
		function = StringUtil.subTract(function);
		return function;
	}

	/**
	 * 修改角色对应模块。目前的流程是，权限设置只设置写按钮的权限，只读的随模块选中一起设置。 处理逻辑如下：1、删除角色对应模块、角色对应按钮权限
	 * 2、新增角色对应模块，角色对应按钮 3、把模块下面的所有只读按钮也取出来，插入角色对应按钮
	 * 
	 * @param role_id
	 * @param moduleList
	 *            模块列表
	 * @param buttonIdList
	 *            按钮列表
	 * @return
	 */
	public int updateRoleModule(int role_id, String moduleList, String functionList) {
		System.out.println(functionList);
		int flag = 0;
		String moduleArr[] = null;
		String functionArr[] = null;
		sysRoleDao.deleteRoleModule(role_id);
		moduleArr = moduleList.split("@@");

		String moduleArrIn = "";
		for (int i = 0; i < moduleArr.length; i++) {
			sysRoleDao.addRoleModule(role_id, Integer.parseInt(moduleArr[i]));
			moduleArrIn += "'" + moduleArr[i] + "',";
		}
		moduleArrIn = StringUtil.subTract(moduleArrIn);
		if (moduleArrIn.equals(""))
			moduleArrIn = "''";
		List<Integer> listReadFunction = sysFunctionDao.listReadByModule_id(moduleArrIn);// 模块下的只读按钮

		sysRoleDao.deleteRoleFunction(role_id);
		functionArr = functionList.split("@@");
		for (int i = 0; i < functionArr.length; i++) {
			if (!functionArr[i].equals(""))
				sysRoleDao.addRoleFunction(role_id, Integer.parseInt(functionArr[i]));
		}
		// 插入只读功能的id
		for (Integer functionId : listReadFunction) {
			sysRoleDao.addRoleFunction(role_id, functionId);
		}

		EhCacheUtil.removeAll("sysCache");
		flag = 1;
		return flag;
	}

	/**
	 * 判断按钮是否在角色中
	 *
	 * @param button_code
	 * @return
	 */
	public boolean checkBtnPrivilege(String button_code) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		UserSession userSession = SessionUtil.getUserSession(request);
		HashMap<String, String> hashRoleFunction = EhCacheUtil.get("sysCache",
				"hashRoleFunction_" + userSession.getRole_id());
		if (hashRoleFunction == null) {
			System.out.println("初始化角色对应功能" + userSession.getRole_id());
			hashRoleFunction = sysFunctionDao.hashRoleFunctionByRole_id(userSession.getRole_id());// 角色对应功能hash
			EhCacheUtil.put("sysCache", "hashRoleFunction_" + userSession.getRole_id(), hashRoleFunction);
		}
		if (hashRoleFunction.containsKey(button_code))
			return true;
		else
			return false;
	}

	/**
	 * 校验按钮权限，防止不通过浏览器提交
	 * 
	 * @param listRoles
	 * @param path
	 * @return
	 */
	public boolean checkAuthority(int role_id, String path) {
		HashMap<String, String> hashRoleFunction = EhCacheUtil.get("sysCache", "hashRoleFunction_" + role_id);
		if (hashRoleFunction == null) {
			System.out.println("初始化角色对应功能" + role_id);
			hashRoleFunction = sysFunctionDao.hashRoleFunctionByRole_id(role_id);// 角色对应功能hash
			EhCacheUtil.put("sysCache", "hashRoleFunction_" + role_id, hashRoleFunction);
		}
		if (hashRoleFunction.containsValue(path))
			return true;
		else
			return false;
	}

	/**
	 * 根据角色id生成该角色对应的菜单
	 *
	 * @param role_id
	 * @return
	 */
	public String createMenuStr(int role_id) {
		String menu = EhCacheUtil.get("sysCache", "menu_" + role_id);
		if (menu == null || menu.equals("")) {
			StringBuffer sb = new StringBuffer();
			List<SysModule> listModule = sysModuleDao.list();// 模块列表
			List<SysRoleModule> listRoleModule = sysRoleDao.listRoleModule(role_id);// 角色模块列表
			List<Integer> displayModuleIdList = new ArrayList();
			for (SysRoleModule sysRoleModule : listRoleModule) {
				displayModuleIdList.add(sysRoleModule.getModule_id());
			}
			for (SysModule sysModule : listModule) {
				if (sysModule.getParent_id() == 1 && displayModuleIdList.contains(sysModule.getId())) {
					sb.append("<li class=\"\"><a href=\"#\" class=\"dropdown-toggle\"> <i class=\"menu-icon fa "
							+ sysModule.getIconImg() + "\" style=\"color:" + sysModule.getIcon_color() +"\"></i> <span class=\"menu-text\"> " + sysModule.getName()
							+ " </span> <b class=\"arrow fa fa-angle-down\"></b></a> <b class=\"arrow\"></b><ul class=\"submenu\">");
					for (SysModule sysModuleChild : listModule) {
						if (sysModuleChild.getParent_id() == sysModule.getId()
								&& displayModuleIdList.contains(sysModuleChild.getId())) {
							sb.append("<li id=\"module_" + sysModuleChild.getId() + "\" class=\"\"><a href=\""
									+ pubConfig.getDynamicServer() + "/" + sysModuleChild.getUrl()
									+ "\"> <i class=\"menu-icon fa " + sysModuleChild.getIconImg() +"\" style=\"color:" + sysModuleChild.getIcon_color() + "\"></i>" + sysModuleChild.getName()
									+ "</a> <b class=\"arrow\"></b></li>");
						}
					}
					sb.append("</ul></li>");
				}
			}
			menu = sb.toString();
			EhCacheUtil.put("sysCache", "menu_" + role_id, menu);
		}
		/*
		 * String checkStr = "<script>"; //设置选中，根据url来判断是哪一个菜单选中
		 * System.out.println(url); SysModule sysModule =
		 * sysModuleDao.getByUrl(url); if (sysModule != null) { checkStr +=
		 * "$(\"#module_" + sysModule.getId() + "\").addClass(\"active\")";
		 * checkStr += "$(\"#module_" + sysModule.getId() +
		 * "\").parent().parent()addClass(\"active open\")"; } checkStr +=
		 * "</script>";
		 */

		return menu;
	}

	/**
	 * 根据角色id生成该角色对应的提醒注意事项
	 *
	 */
	public String createWarnStr() {
		String warn = "";
		StringBuffer sb = new StringBuffer();
		sb.append("<a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"#\">");
		sb.append("<i class=\"ace-icon fa fa-bell icon-animated-bell\"></i>");
		sb.append("<span class=\"badge badge-important\">"+0+"</span></a>");
		sb.append("<ul class=\"dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close\">");
		sb.append("<li class=\"dropdown-header\"><i class=\"ace-icon fa fa-envelope-o\"></i> 待处理业务</li>");
		sb.append("<li class=\"dropdown-content\">");
		sb.append("<ul class=\"dropdown-menu dropdown-navbar navbar-pink\">");
		sb.append("<li><a href=\""+pubConfig.getDynamicServer()+"/ops/order/orderCheck.htm\"><div class=\"clearfix\"><span class=\"pull-left\"> <i class=\"btn btn-xs no-hover btn-pink fa fa-comment\"></i> 待审核订单"
						+ "</span>");
		sb.append("</div></a></li>");
		sb.append(
				"<li><a href=\""+pubConfig.getDynamicServer()+"/ops/return/index.htm\"><div class=\"clearfix\"><span class=\"pull-left\"> <i class=\"btn btn-xs no-hover btn-pink fa fa-comments-o\"></i> 退货待处理订单"
						+ "</span>");
		sb.append("</div></a></li>");
		sb.append("</ul>");
		sb.append("</li>");
		sb.append("</ul>");
		warn = sb.toString();
		return warn;
	}
}
