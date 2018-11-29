package com.balance.common.controller;

import com.balance.util.config.PubConfig;
import com.balance.util.session.SessionUtil;
import com.balance.util.string.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/")
public class SuccessController {
	@Autowired
	private PubConfig pubConfig;

	@RequestMapping("success")
	public ModelAndView success(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		String backUrl = request.getParameter("backUrl");
		if (backUrl.indexOf("http") == -1)
			backUrl = pubConfig.getDynamicServer() + backUrl;
		if(SessionUtil.getUserSession(request).getType()==2){
			mv.setViewName("successSalesman");
			mv.addObject("backUrl", "/logout.htm");
		}else{
			mv.setViewName("success");
			mv.addObject("backUrl", StringUtil.decodeUrl(backUrl));
		}
		mv.addObject("msg", StringUtil.decodeUrl(request.getParameter("msg")));

		return mv;
	}
}
