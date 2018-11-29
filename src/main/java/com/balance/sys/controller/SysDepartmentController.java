package com.balance.sys.controller;

import com.balance.sys.model.SysDepartment;
import com.balance.sys.service.SysDepartmentService;
import com.balance.util.controller.BaseController;
import com.balance.util.json.JsonUtil;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/sys/department")
public class SysDepartmentController extends BaseController {
	@Autowired
	private SysDepartmentService sysDepartmentService;

	/**
	 * 进入模块维护界面
	 * 
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sys/department");
		setBtnAutho(request, "SysDepartment");
		return mv;
	}

	/**
	 * 修改
	 * 
	 * @param request
	 * @param response
	 * @param baseDepartment
	 */
	@RequestMapping("/update")
	public void update(HttpServletRequest request, HttpServletResponse response, SysDepartment sysDepartment) {
		if (sysDepartment.getId() == sysDepartment.getParent_id()) {
			WebUtil.out(response, JsonUtil.createOperaStr(false, "不能和上级节点一样"));
		} else {
			int flag = sysDepartmentService.update(sysDepartment);
			if (flag == 0)
				WebUtil.out(response, JsonUtil.createOperaStr(false, "保存失败"));
			else if (flag == 1)
				WebUtil.out(response, JsonUtil.createOperaStr(true, "保存成功"));
			else if (flag == 2)
				WebUtil.out(response, JsonUtil.createOperaStr(false, "上级节点不存在"));
		}
	}

	/**
	 * 新增
	 * @param request
	 * @param response
	 * @param baseDepartment
	 */
	@RequestMapping("/add")
	public void add(HttpServletRequest request, HttpServletResponse response, SysDepartment sysDepartment) {
		int flag = sysDepartmentService.add(sysDepartment);
		if (flag == 0)
			WebUtil.out(response, JsonUtil.createOperaStr(false, "保存失败"));
		else if (flag == 1)
			WebUtil.out(response, JsonUtil.createOperaStr(true, "保存成功"));
	}

	@RequestMapping("/delete")
	public void delete(HttpServletRequest request, HttpServletResponse response, int id) {
		int flag = sysDepartmentService.delete(id);
		if (flag == 0)
			WebUtil.out(response, JsonUtil.createOperaStr(false, "删除失败"));
		else if (flag == 1)
			WebUtil.out(response, JsonUtil.createOperaStr(true, "删除成功"));
		else if (flag == 2)
			WebUtil.out(response, JsonUtil.createOperaStr(false, "还有下级节点，不能删除"));
	}

	/**
	 * 模块tree grid列表
	 * @param request
	 * @param response
	 */
	@RequestMapping("/getTreeGrid")
	public void getTreeGrid(HttpServletRequest request, HttpServletResponse response) {
		String json = sysDepartmentService.getTreeGridJson();
		WebUtil.out(response, json);
	}

}
