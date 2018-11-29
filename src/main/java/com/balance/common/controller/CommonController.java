package com.balance.common.controller;

import com.balance.common.service.CommonService;
import com.balance.dic.service.DicProvinceService;
import com.balance.sys.service.SysDepartmentService;
import com.balance.sys.service.SysModuleService;
import com.balance.sys.service.SysUserService;
import com.balance.sys.vo.SysUserSearchVO;
import com.balance.util.global.GlobalConst;
import com.balance.util.json.JsonUtil;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 系统公共数据源访问功能，各下拉列表的数据都从该地方获取
 * 
 * @author chykong
 *
 */
@RequestMapping("/common")
@Controller
public class CommonController {
	@Autowired
	private CommonService commonService;
	@Autowired
	private SysDepartmentService sysDepartmentService;
	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private SysModuleService sysModuleService;
	@Autowired
	private DicProvinceService dicProvinceService;

	/**
	 * 下拉列表，公共方法
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listCombobox")
	public void listCombobox(HttpServletRequest request, HttpServletResponse response) {
		String table_name = WebUtil.getSafeStr(request.getParameter("table_name"));
		String value = WebUtil.getSafeStr(request.getParameter("value"));
		String content = WebUtil.getSafeStr(request.getParameter("content"));
		String condition = WebUtil.getSafeStr(request.getParameter("condition"));
		String order = WebUtil.getSafeStr(request.getParameter("order"));
		String sort = WebUtil.getSafeStr(request.getParameter("sort"));
		WebUtil.out(response,
				JsonUtil.toStr(commonService.listCombobox(table_name, value, content, order, sort, condition)));
	}

	/**
	 * 部门 combobox tree
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/getSysDepartmentComboboxTree")
	public void getSysDepartmentComboboxTree(HttpServletRequest request, HttpServletResponse response) {
		String json = sysDepartmentService.getComboboxTreeJson();
		WebUtil.out(response,  json);
	}

	/**
	 * 所有人员列表
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listAllSysUser")
	public void listAllSysUser(HttpServletRequest request, HttpServletResponse response) {
		WebUtil.out(response, JsonUtil.toStr(sysUserService.listAllUser()));
	}

	/**
	 * 所有人员列表
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listAllSysUserBobox")
	public void listAllSysUserBobox(HttpServletRequest request, HttpServletResponse response) {
		WebUtil.out(response,
				JsonUtil.toStr(commonService.listCombobox("t_sys_user", "realname", "realname", "username", "", "")));
	}

	/**
	 * 系统功能模块combobox tree
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/getSysModuleComboboxTree")
	public void getSysModuleComboboxTree(HttpServletRequest request, HttpServletResponse response) {
		String json = sysModuleService.getComboboxTreeJson();
		WebUtil.out(response, json);
	}

	/**
	 * 弹出用户选择窗口
	 * 
	 * @param request
	 * @param response
	 * @param sysUserSearchVO
	 */
	@RequestMapping("/listUser")
	public void listUser(HttpServletRequest request, HttpServletResponse response, SysUserSearchVO sysUserSearchVO) {
		int count = sysUserService.listCount(sysUserSearchVO);
		int pageIndex = WebUtil.getSafeInt(request.getParameter("page"), 1);
		int pageSize = WebUtil.getSafeInt(request.getParameter("limit"), GlobalConst.pageSize);
		String json = JsonUtil.createExtjsPageJson(count, sysUserService.list(sysUserSearchVO, pageIndex, pageSize));
		WebUtil.out(response, json);
	}

	/**
	 * 省份列表
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listProvince")
	public void listProvince(HttpServletRequest request, HttpServletResponse response) {
		WebUtil.out(response, JsonUtil.toStr(dicProvinceService.listProvince()));
	}

	/**
	 * 城市列表
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listCityByProvince")
	public void listCityByProvince(HttpServletRequest request, HttpServletResponse response, String province_code) {
		WebUtil.out(response, JsonUtil.toStr(dicProvinceService.listCityByProvince_code(province_code)));
	}

	/**
	 * 区县列表
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listDistrictByCity")
	public void listDistrictByCity(HttpServletRequest request, HttpServletResponse response, String city_code) {
		WebUtil.out(response, JsonUtil.toStr(dicProvinceService.listDistrictByCity_code(city_code)));
	}

	/**
	 * 部门信息下拉树 combobox tree
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/getDepartmentComboboxTree")
	public void getDepartmentComboboxTree(HttpServletRequest request, HttpServletResponse response) {
		String json = sysDepartmentService.getComboboxTreeJson();
		WebUtil.out(response, json);
	}

	/**
	 * 获取课程类型
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listCourseType")
	public void listCourseType(HttpServletRequest request, HttpServletResponse response) {
		WebUtil.out(response,
				JsonUtil.toStr(commonService.listCombobox("t_base_coursetype", "id", "name", "id", "", "")));
	}

	/**
	 * 根据课程类型获取课程
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("/listCourseByType")
	public void listCourseByType(HttpServletRequest request, HttpServletResponse response, Integer type) {
		WebUtil.out(response, JsonUtil
				.toStr(commonService.listCombobox("t_base_course", "id", "name", "id", "", " type=" + type)));
	}

}
