package com.balance.customer.controller;

import com.balance.customer.model.CustomerInfo;
import com.balance.customer.service.CustomerMobileService;
import com.balance.util.config.PubConfig;
import com.balance.util.json.JsonUtil;
import com.balance.util.session.SessionUtil;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 电话管理
 * Created by LIXM on 2017\10\20 .
 */
@RequestMapping("/customer/mobile")
@Controller
public class CustomerMobileController {

    @Autowired
    private CustomerMobileService customerMobileService;
    @Autowired
    private PubConfig pubConfig;

    /**
     * 去往电话管理界面
     *
     * @return
     */
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        CustomerInfo customerInfo = customerMobileService.getMobile(SessionUtil.getUserSession(request).getUser_id(), 0);
        if(customerInfo==null){
            mv.addObject("flag",0 );
        }else{
            mv.addObject("flag",1 );
        }
        mv.addObject("customerInfo",customerInfo );
        mv.setViewName("/customer/mobile/index");
        mv.addObject("backUrl", pubConfig.getDynamicServer() + "/customer/mobile/index.htm");
        return mv;
    }

    @RequestMapping("/index1")
    public void index1(HttpServletRequest request, HttpServletResponse response) {
        CustomerInfo customerInfo = customerMobileService.getMobile(SessionUtil.getUserSession(request).getUser_id(), 0);
        if(customerInfo==null){
            WebUtil.outJson(response,"\"flag\":"+0);
        }else{
            WebUtil.outJson(response,customerInfo);
        }
    }
    /**
     * 查询上一条记录
     * @param request
     * @param response
     * @param id
     */
    @RequestMapping("/searchLast")
    public void searchLast(HttpServletRequest request,HttpServletResponse response,String id){
       int userId=SessionUtil.getUserSession(request).getUser_id();
        CustomerInfo customerInfo=customerMobileService.findPrevious(id,userId);
        if(customerInfo!=null){
            WebUtil.out(response,JsonUtil.toStr(customerInfo));
        }
    }

//    @RequestMapping("/searchLast")
//    public void searchLast(HttpServletRequest request,HttpServletResponse response,String id){
//        CustomerInfo customerInfo=customerMobileService.findByMobile(id);
//        if(customerInfo!=null){
//            WebUtil.out(response,JsonUtil.toStr(customerInfo));
//        }
//    }

    @RequestMapping("/saveRemark")
    public void saveRemark(HttpServletRequest request,HttpServletResponse response, String remark, String id,Integer customer_status) {
        int flag = customerMobileService.saveRemark(remark, SessionUtil.getUserSession(request).getRealname(), id,customer_status);
         CustomerInfo customerInfo =  customerMobileService.getMobile(SessionUtil.getUserSession(request).getUser_id(), 0);
        if (flag == 0) {
            WebUtil.out(response,"{\"success\":"+false+"}");
        } else {
            if(customerInfo!=null) {
                WebUtil.out(response, "{\"success\":" + true + ",\"mobile\":\"" + customerInfo.getMobile() + "\",\"id\":\"" + customerInfo.getId() + "\"}");
            }else{
                WebUtil.out(response,"{\"success\":"+null+"}");
            }
        }
    }
//    @RequestMapping("/saveRemark")
//    public String saveRemark(HttpServletRequest request, String remark, String id) {
//        int flag = customerMobileService.saveRemark(remark, SessionUtil.getUserSession(request).getRealname(), id);
//        if (flag == 0) {
//            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("备注添加失败！");
//        } else {
//            return "forward:index.htm";
//        }
//    }

    /**
     * 已备注界面
     *
     * @param request
     * @return
     */
    @RequestMapping("/toRemark")
    public ModelAndView toRemark(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
//        mv.addObject("customerInfo", customerMobileService.getMobile(SessionUtil.getUserSession(request).getUser_id(), 1));
        mv.setViewName("/customer/mobile/searchMobile");
        mv.addObject("backUrl", pubConfig.getDynamicServer() + "/customer/mobile/toRemark.htm");
        return mv;
    }

    /**
     * 根据手机号获取信息
     *
     * @param request
     * @param mobile
     * @return
     */
//    @RequestMapping("/searchRemark")
//    public void searchRemark(HttpServletRequest request,HttpServletResponse response, String mobile) {
//        ModelAndView mv = new ModelAndView();
//        Integer user_id=SessionUtil.getUserSession(request).getUser_id();
//        CustomerInfo customerInfo = customerMobileService.searchRemarkByMobile(mobile,user_id);
//        if (customerInfo == null) {
//            WebUtil.out(response,"\"flag:\""+0);
//        } else {
//            WebUtil.outJson(response,customerInfo);
//        }
//    }
    @RequestMapping("/searchRemark")
    public ModelAndView searchRemark(HttpServletRequest request, String mobile) {
        ModelAndView mv = new ModelAndView();
        Integer user_id=SessionUtil.getUserSession(request).getUser_id();
        CustomerInfo customerInfo = customerMobileService.searchRemarkByMobile(mobile,user_id);
        if (customerInfo == null) {
            mv.addObject("flag", 0);//手机号不存在
            mv.addObject("mobile", mobile);
        } else {
            mv.addObject("flag", 1);
            mv.addObject("customerInfo", customerInfo);
        }

        mv.setViewName("/customer/mobile/searchMobile");
        mv.addObject("backUrl", pubConfig.getDynamicServer() + "/customer/mobile/toRemark.htm");

        return mv;
    }
    /**
     * 修改备注
     *
     * @param request
     * @param remark
     * @param id
     * @return
     */
    @RequestMapping("/updateRemark")
    public String updateRemark(HttpServletRequest request, String remark, String id,Integer customer_status) {
        int flag = customerMobileService.saveRemark(remark, SessionUtil.getUserSession(request).getRealname(), id,customer_status);
        if (flag == 0) {
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("备注修改失败！");
        } else {
            return "forward:index.htm";
        }
    }

}
