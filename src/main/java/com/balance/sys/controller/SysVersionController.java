package com.balance.sys.controller;

import com.balance.util.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/sys/version")
public class SysVersionController extends BaseController {

	/**
	 * 进入版本查看界面
	 * 
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sys/version");
		setBtnAutho(request, "SysVersion");//设置按钮权限
		return mv;
	}
}
