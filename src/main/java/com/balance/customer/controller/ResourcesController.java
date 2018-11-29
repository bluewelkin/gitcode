package com.balance.customer.controller;

import com.balance.customer.model.ResourcesInfo;
import com.balance.customer.model.Section;
import com.balance.customer.service.ResourcesService;
import com.balance.util.config.PubConfig;
import com.balance.util.controller.BaseController;
import com.balance.util.global.GlobalConst;
import com.balance.util.json.JsonUtil;
import com.balance.util.page.PageNavigate;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 来源管理
 * Created by liukai on 2018/3/20.
 */
@Controller
@RequestMapping("/customer/resources")
public class ResourcesController extends BaseController{
    @Autowired
    private ResourcesService resourcesService;
    @Autowired
    private PubConfig pubConfig;
    public final  static int pageSize_f = 50;//定义每页数据记录数
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = pageSize_f;// 直接取全局变量，每页记录数
        String url = pubConfig.getDynamicServer() + "/customer/resources/index.htm?";
        List<ResourcesInfo> list=resourcesService.list(pageIndex,pageSize);
       int  count=resourcesService.count();
        PageNavigate pageNavigate = new PageNavigate(url, pageIndex, pageSize, count);//

        mv.addObject("list",list);
        mv.addObject("pageNavigate",pageNavigate);
        mv.setViewName("/customer/resources/index");
        return mv;
    }

    /**
     * 解除
     * @param request
     * @param resources
     * @param create_at
     * @param response
     * @return
     */
    @RequestMapping("/relieve")
    public String relieve(HttpServletRequest request, String resources,String create_at, HttpServletResponse response) {
        int flag = resourcesService.updateRelieve(resources,create_at);
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("操作失败！");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("操作成功！");
    }

    /**
     * 分配显示页面的解除分配
     * @param idSection
     * @return
     */
    @RequestMapping("/relieves")
    public void relieves(HttpServletResponse response,String idSection ) {
        String[]ids=idSection.split("-");
        int flag = resourcesService.updateRelieves(ids[0],ids[1]);
        if (flag == 0)
           WebUtil.out(response, JsonUtil.toStr(false));
        else
            WebUtil.out(response, JsonUtil.toStr(true));
    }
    /**
     * 删除单个来源的全部名单
     * @param request
     * @param resources
     * @param create_at
     * @param response
     * @return
     */
    @RequestMapping("/deleteAll")
    public String delete(HttpServletRequest request, String resources,String create_at, HttpServletResponse response) {
        int flag = resourcesService.delete(resources,create_at);
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("操作失败！");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("操作成功！");
    }

    /**
     * 分配显示
     * @param request
     * @param create_at
     * @return
     */
    @RequestMapping("/allotShow")
    public ModelAndView showAll(HttpServletRequest request, String resources,String create_at) {
        ModelAndView mv = new ModelAndView();

        int count = resourcesService.countSection(resources,create_at);
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数
        List<Section>list=resourcesService.listSection(resources,create_at,pageIndex,pageSize);
        String url = pubConfig.getDynamicServer() + "/customer/customerInfo/listNumberSection.htm?";
        PageNavigate pageNavigate = new PageNavigate(url, pageIndex, pageSize, count);//
        mv.addObject("list", list);
        mv.addObject("pageNavigate",pageNavigate);
        mv.addObject("resources",resources);
        mv.addObject("create_at",create_at);
        mv.setViewName("/customer/resources/allotShow");
        return mv;
    }
}
