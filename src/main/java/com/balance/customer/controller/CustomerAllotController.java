package com.balance.customer.controller;

import com.balance.customer.VO.CustomerAllotSearchVO;
import com.balance.customer.model.CustomerInfo;
import com.balance.customer.model.User;
import com.balance.customer.service.CustomerAllotService;
import com.balance.customer.service.CustomerInfoService;
import com.balance.util.config.PubConfig;
import com.balance.util.global.GlobalConst;
import com.balance.util.page.PageNavigate;
import com.balance.util.session.SessionUtil;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

/**
 * Created by liukai on 2017/10/18.
 */
@Controller
@RequestMapping("/customer/allot")
public class CustomerAllotController {
    @Autowired
    private CustomerAllotService customerAllotService;
    @Autowired
    private CustomerInfoService customerInfoService;
    @Autowired
    private PubConfig pubConfig;

    /**
     * 资料分发首页
     *
     * @return 页面
     */
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, CustomerAllotSearchVO customerAllotSearchVO) {
//        setBtnAutho(request, "CustomerInfo");
        ModelAndView mv = new ModelAndView();
        int count = customerAllotService.count(customerAllotSearchVO);
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数

        String url = createUrl(customerAllotSearchVO, pageIndex, pageSize);
        PageNavigate pageNavigate = new PageNavigate(url, pageIndex, pageSize, count);//
        List<User> userList = customerAllotService.getUser();
        List<CustomerInfo> customerInfoList = customerAllotService.search(customerAllotSearchVO, pageIndex, pageSize);
        mv.addObject("customerInfoList", customerInfoList);
        mv.addObject("pageNavigate", pageNavigate);
        mv.addObject("backUrl", StringUtil.encodeUrl(url));
        mv.addObject("userList", userList);
        mv.setViewName("customer/allot/index");

        return mv;
    }

    private String createUrl(CustomerAllotSearchVO customerAllotSearchVO, int pageIndex, int pageSize) {
        String url = pubConfig.getDynamicServer() + "/customer/allot/index.htm?";
        if (StringUtil.isNotNullOrEmpty(customerAllotSearchVO.getCustomer_id_start())) {
            url += " &customer_id_start=" + customerAllotSearchVO.getCustomer_id_start();
        }
        if (StringUtil.isNotNullOrEmpty(customerAllotSearchVO.getCustomer_id_end())) {
            url += " &customer_id_end=" + customerAllotSearchVO.getCustomer_id_end();
        }
        if(customerAllotSearchVO.getStatus()!=null){
            url+=" &status="+customerAllotSearchVO.getStatus();
        }
        if(customerAllotSearchVO.getCustomer_status()!=null){
            url+=" &customer_status="+customerAllotSearchVO.getCustomer_status();
        }
        if(customerAllotSearchVO.getUser_id()!=null){
            url+="&user_id="+customerAllotSearchVO.getUser_id();
        }
        return url;
    }

    /**
     * 取消分发
     * @param request
     * @param customer_id_start
     * @param customer_id_end
     * @param response
     * @return
     */
    @RequestMapping("/saveCancel")
    public String saveCancel(HttpServletRequest request, String customer_id_start, String customer_id_end,Integer user_id, HttpServletResponse response) {

        int flag = customerAllotService.saveCancel(customer_id_start, customer_id_end,user_id, SessionUtil.getUserSession(request).getRealname());
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("操作失败！");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("操作成功！");
    }

    /**
     * 分配客户资料
     * @param request
     * @param response
     * @param customer_id_start
     * @param customer_id_end
     * @param user_id
     * @param username
     * @return
     */
    @RequestMapping("/saveAllot")
    public String saveAllot(HttpServletRequest request, HttpServletResponse response,String customer_id_start, String customer_id_end, Integer user_id, String username) {
        String allot_by=SessionUtil.getUserSession(request).getRealname();
        Date allot_at=new Date();
        int flag = customerAllotService.saveAllot(customer_id_start,customer_id_end, user_id, username,allot_by,allot_at);
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("客户分配失败！");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("客户分配成功！");
    }

}
