package com.balance.sys.controller;

import com.balance.sys.model.SysNotice;
import com.balance.sys.service.SysNoticeService;
import com.balance.sys.vo.SysNoticeSearchVO;
import com.balance.util.controller.BaseController;
import com.balance.util.global.GlobalConst;
import com.balance.util.json.JsonUtil;
import com.balance.util.session.SessionUtil;
import com.balance.util.session.UserSession;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

@Controller
@RequestMapping("/sys/notice")
public class SysNoticeController extends BaseController {
	@Autowired
	private SysNoticeService sysNoticeService;

	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sys/notice");
		setBtnAutho(request, "SysNotice");//设置按钮权限
		return mv;
	}

	@RequestMapping("/viewIndex")
	public ModelAndView viewIndex(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sys/noticeView");
		setBtnAutho(request, "SysNoticeView");//设置按钮权限
		return mv;
	}

	/**
	 * 列表
	 * @param request
	 * @param response
	 * @param title
	 * @param start_date
	 * @param end_date
	 */
	@RequestMapping("/search")
	public void search(HttpServletRequest request, HttpServletResponse response, String title, String start_date, String end_date,
			String type) {
		SysNoticeSearchVO sysNoticeSearchVO = new SysNoticeSearchVO();
		sysNoticeSearchVO.setTitle("%" + title + "%");
		sysNoticeSearchVO.setStart_date(start_date);
		sysNoticeSearchVO.setEnd_date(end_date);
		sysNoticeSearchVO.setType(type);
		int count = sysNoticeService.listCount(sysNoticeSearchVO);
		int pageIndex = WebUtil.getSafeInt(request.getParameter("page"), 1);
		int pageSize = WebUtil.getSafeInt(request.getParameter("limit"), GlobalConst.pageSize);
		String json = JsonUtil.createExtjsPageJson(count, sysNoticeService.list(sysNoticeSearchVO, pageIndex, pageSize));
		WebUtil.out(response, json);
	}

	/**
	 * 新增
	 * @param request
	 * @param response
	 * @param noticeManual
	 */
	@RequestMapping("/add")
	public void add(HttpServletRequest request, HttpServletResponse response, SysNotice sysNotice) {
		UserSession userSession = SessionUtil.getUserSession(request);
		sysNotice.setRelease_person(userSession.getRealname());
		sysNotice.setRelease_date(new Date());
		sysNotice.setType("01");
		int flag = sysNoticeService.add(sysNotice);
		WebUtil.outOpera(response, flag);
	}

	/**
	 * 修改
	 * @param request
	 * @param response
	 * @param noticeManual
	 */
	@RequestMapping("/update")
	public void update(HttpServletRequest request, HttpServletResponse response, SysNotice sysNotice) {
		int flag = sysNoticeService.update(sysNotice);
		WebUtil.outOpera(response, flag);
	}

	/**
	 * 删除
	 * @param request
	 * @param response
	 * @param id
	 */
	@RequestMapping("/delete")
	public void delete(HttpServletRequest request, HttpServletResponse response, int id) {
		int flag = sysNoticeService.delete(id);
		WebUtil.outOpera(response, flag);
	}

	/**
	 * 用户通知查看列表
	 * @param request
	 * @param response
	 * @param title
	 * @param start_date
	 * @param end_date
	 */
	@RequestMapping("/viewSearch")
	public void viewSearch(HttpServletRequest request, HttpServletResponse response, String title, String start_date, String end_date) {
		SysNoticeSearchVO sysNoticeSearchVO = new SysNoticeSearchVO();
		sysNoticeSearchVO.setTitle("%" + title + "%");
		sysNoticeSearchVO.setStart_date(start_date);
		sysNoticeSearchVO.setEnd_date(end_date);
		int count = sysNoticeService.listCount(sysNoticeSearchVO);
		int pageIndex = WebUtil.getSafeInt(request.getParameter("page"), 1);
		int pageSize = WebUtil.getSafeInt(request.getParameter("limit"), GlobalConst.pageSize);
		String json = JsonUtil.createExtjsPageJson(count, sysNoticeService.list(sysNoticeSearchVO, pageIndex, pageSize));
		WebUtil.out(response, json);
	}

}
