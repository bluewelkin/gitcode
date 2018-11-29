package com.balance.statistics.controller;

import com.balance.customer.model.User;
import com.balance.statistics.VO.StatisticsSearchVO;
import com.balance.statistics.model.Statistics;
import com.balance.statistics.service.StatisticsResourcesService;
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
@RequestMapping("/statistics/resources")
public class StatisticsResourcesController extends BaseController {
    @Autowired
    private StatisticsResourcesService statisticsResourcesService;
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
        int count = statisticsResourcesService.count(statisticsSearchVO);
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数
        String url = createUrl(statisticsSearchVO, pageIndex, pageSize);
        PageNavigate pageNavigate = new PageNavigate(url, pageIndex, pageSize, count);//
         List<Statistics>resourcesList=statisticsResourcesService.listAll(statisticsSearchVO,pageIndex,  pageSize);
         mv.addObject("pageNavigate",pageNavigate);
        mv.addObject("resourcesList",resourcesList);
        mv.addObject("backUrl", StringUtil.encodeUrl(url));
        mv.setViewName("statistics/resources/index");
        return mv;
    }
    /**
     * 导出业务统计信息
     */
    @RequestMapping("/export")
    public void export(HttpServletRequest request, HttpServletResponse response, StatisticsSearchVO statisticsSearchVO) {
        String templatePath = request.getRealPath("/template") + File.separator + "resourcesTemplate.xls";
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数
        statisticsResourcesService.export(statisticsSearchVO,templatePath, response,pageIndex,  pageSize);
    }


    private String createUrl(StatisticsSearchVO statisticsSearchVO, int pageIndex, int pageSize) {
        String url = pubConfig.getDynamicServer() + "/statistics/Resources/index.htm?";
       if(statisticsSearchVO.getStartTime()!=null){
            url+="&startTime="+statisticsSearchVO.getStartTime();
       }
        if(statisticsSearchVO.getEndTime()!=null){
            url+="&endTime="+statisticsSearchVO.getEndTime();
        }
        if(StringUtil.isNotNullOrEmpty(statisticsSearchVO.getResources())){
            url+="&resources="+statisticsSearchVO.getResourcesParm();
        }

        return url;
    }

}
