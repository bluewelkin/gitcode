package com.balance.sys.controller;

import com.balance.sys.model.SysFunction;
import com.balance.sys.model.SysModule;
import com.balance.sys.service.SysFunctionService;
import com.balance.sys.service.SysModuleService;
import com.balance.util.backurl.BackUrlUtil;
import com.balance.util.config.PubConfig;
import com.balance.util.controller.BaseController;
import com.balance.util.json.JsonUtil;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/sys/function")
public class SysFunctionController extends BaseController {
	@Autowired
	private SysFunctionService sysFunctionService;
	@Autowired
	private SysModuleService sysModuleService;
	@Autowired
	private PubConfig pubConfig;

	/**
	 * 功能设置列表
	 * 
	 * @param request
	 * @param response
	 * @param fysFunction
	 * @param module_id
	 * @param operaMessage
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response, int module_id) {
		setBtnAutho(request, "SysModule");
		ModelAndView mv = new ModelAndView();
		List<SysFunction> functionList = sysFunctionService.list(module_id);
		mv.addObject("functionList", functionList);// 把获取的记录放到mv里面
		SysModule sysModule = sysModuleService.get(module_id);
		mv.addObject("sysModule", sysModule);
		String url = "/sys/function/index.htm?module_id=" + sysModule.getId();
		mv.addObject("backUrl", StringUtil.encodeUrl(url));
		mv.setViewName("/sys/function");

		return mv;
	}

	/**
	 * 新增功能列表
	 * 
	 * @param request
	 * @param response
	 * @param sysUser
	 * @return
	 */
	@RequestMapping("/toAdd")
	public ModelAndView toAdd(HttpServletRequest request, HttpServletResponse response, int module_id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("module_id", module_id);
		mv.setViewName("/sys/functionAdd");
		BackUrlUtil.setBackUrl(mv, request);// 设置返回的url
		return mv;
	}

	/**
	 * 修改功能列表
	 * 
	 * @param request
	 * @param response
	 * @param sysFunction
	 * @return
	 */
	@RequestMapping("/toUpdate")
	public ModelAndView toUpdate(HttpServletRequest request, HttpServletResponse response, int id) {
		ModelAndView mv = new ModelAndView();
		SysFunction sysFunction = sysFunctionService.get(id);
		mv.addObject("sysFunction", sysFunction);
		mv.setViewName("/sys/functionUpdate");
		BackUrlUtil.setBackUrl(mv, request);// 设置返回的url
		return mv;
	}

	@RequestMapping("/update")
	public String update(HttpServletRequest request, HttpServletResponse response, SysFunction sysFunction) {
		int flag = sysFunctionService.update(sysFunction);
		if (flag == 0)
			return "forward:/error.htm?msg=" + StringUtil.encodeUrl("修改功能按钮失败");
		else
			return "forward:/success.htm?msg=" + StringUtil.encodeUrl("修改功能按钮成功");
	}

	@RequestMapping("/add")
	public String add(HttpServletRequest request, HttpServletResponse response, SysFunction sysFunction) {
		int flag = sysFunctionService.add(sysFunction);
		if (flag == 0)
			return "forward:/error.htm?msg=" + StringUtil.encodeUrl("新增功能按钮失败");
		else
			return "forward:/success.htm?msg=" + StringUtil.encodeUrl("新增功能按钮成功");
	}

	/**
	 * 删除模块
	 * 
	 * @param request
	 * @param response
	 * @param id
	 * @param redirectAttributes
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, HttpServletResponse response, int id) {
		int flag = sysFunctionService.delete(id);
		if (flag == 0)
			return "forward:/error.htm?msg=" + StringUtil.encodeUrl("删除功能按钮失败");
		else
			return "forward:/success.htm?msg=" + StringUtil.encodeUrl("删除功能按钮成功");
	}

	/**
	 * 操作 grid列表
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listJson")
	public void listJson(HttpServletRequest request, HttpServletResponse response, int module_id) {
		List<SysFunction> list = sysFunctionService.list(module_id);
		WebUtil.out(response, JsonUtil.toStr(list));
	}

	/**
	 * 该角色对应的模块下功能列表
	 */
	@RequestMapping("/listRoleModuleFunction")
	public void listRoleModuleFunction(HttpServletRequest request, HttpServletResponse response) {
		int role_id = WebUtil.getSafeInt(request.getParameter("role_id"));
		int module_id = WebUtil.getSafeInt(request.getParameter("module_id"));
		String json = JsonUtil.toStr(sysFunctionService.listRoleModuleFunction(role_id, module_id));
		WebUtil.out(response, json);
	}

}
