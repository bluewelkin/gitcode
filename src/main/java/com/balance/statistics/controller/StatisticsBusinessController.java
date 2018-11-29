package com.balance.statistics.controller;

import com.balance.customer.VO.CustomerInfoSearchVO;
import com.balance.customer.model.User;
import com.balance.statistics.VO.StatisticsSearchVO;
import com.balance.statistics.model.Statistics;
import com.balance.statistics.service.StatisticsBusinessService;
import com.balance.util.config.PubConfig;
import com.balance.util.controller.BaseController;
import com.balance.util.global.GlobalConst;
import com.balance.util.page.PageNavigate;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.List;

/**
 * 业务统计分析
 * Created by liukai on 2018/3/20.
 */
@Controller
@RequestMapping("/statistics/business")
public class StatisticsBusinessController extends BaseController {
    @Autowired
    private StatisticsBusinessService statisticsBusinessService;
    @Autowired
    private PubConfig pubConfig;

    /**
     * 首页
     * @param request
     * @return
     */
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request,StatisticsSearchVO statisticsSearchVO) {
//        setBtnAutho(request, "CustomerInfo");
        ModelAndView mv = new ModelAndView();
        int count = statisticsBusinessService.count(statisticsSearchVO);
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数
        String url = createUrl(statisticsSearchVO, pageIndex, pageSize);
        PageNavigate pageNavigate = new PageNavigate(url, pageIndex, pageSize, count);//
        List<User> userList = statisticsBusinessService.findUserList();
         List<Statistics>businessList=statisticsBusinessService.listAll(statisticsSearchVO,pageIndex,  pageSize);
         //名单总数
         int total=statisticsBusinessService.countTotal(statisticsSearchVO);
         //尚未分配名单
         int notAlloted=statisticsBusinessService.countNotAlloted();
         mv.addObject("total",total);
         mv.addObject("notAlloted",notAlloted);
        mv.addObject("userList", userList);
        mv.addObject("businessList",businessList);
        mv.addObject("backUrl", StringUtil.encodeUrl(url));
        mv.addObject("pageNavigate",pageNavigate);
        mv.setViewName("statistics/business/index");
        return mv;
    }
    /**
     * 导出业务统计信息
     */
    @RequestMapping("/export")
    public void export(HttpServletRequest request, HttpServletResponse response, StatisticsSearchVO statisticsSearchVO) {
        String templatePath = request.getRealPath("/template") + File.separator + "businessTemplate.xls";
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数
        statisticsBusinessService.export(statisticsSearchVO,templatePath, response, pageIndex, pageSize);
    }


    private String createUrl(StatisticsSearchVO statisticsSearchVO, int pageIndex, int pageSize) {
        String url = pubConfig.getDynamicServer() + "/statistics/business/index.htm?";
       if(statisticsSearchVO.getStartTime()!=null){
            url+="&startTime="+statisticsSearchVO.getStartTime();
       }
        if(statisticsSearchVO.getEndTime()!=null){
            url+="&endTime="+statisticsSearchVO.getEndTime();
        }
        if(StringUtil.isNotNullOrEmpty(statisticsSearchVO.getResources())){
            url+="&resources="+statisticsSearchVO.getResourcesParm();
        }
        if(statisticsSearchVO.getUser_id()!=null){
            url+="&userId="+statisticsSearchVO.getUser_id();
        }
        return url;
    }

}
