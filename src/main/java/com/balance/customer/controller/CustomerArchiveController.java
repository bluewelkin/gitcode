package com.balance.customer.controller;

import com.balance.customer.VO.CustomerInfoSearchVO;
import com.balance.customer.model.CustomerInfo;
import com.balance.customer.model.User;
import com.balance.customer.service.CustomerArchiveService;
import com.balance.customer.service.CustomerArchiveService;
import com.balance.util.code.SerialNumUtil;
import com.balance.util.config.PubConfig;
import com.balance.util.date.DateUtil;
import com.balance.util.file.FileUtil;
import com.balance.util.global.GlobalConst;
import com.balance.util.page.PageNavigate;
import com.balance.util.session.SessionUtil;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.List;

/**
 * 归档客户管理
 * Created by liukai on 2017/11/20.
 */
@Controller
@RequestMapping("/customer/archive")
public class CustomerArchiveController {
    @Autowired
    private CustomerArchiveService customerArchiveService;
    @Autowired
    private PubConfig pubConfig;

    /**
     *
     *
     * @return 页面
     */
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, CustomerInfoSearchVO customerInfoSearchVO) {
//        setBtnAutho(request, "CustomerInfo");
        ModelAndView mv = new ModelAndView();
        int count = customerArchiveService.count(customerInfoSearchVO);
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数
        String url = createUrl(customerInfoSearchVO, pageIndex, pageSize);
        PageNavigate pageNavigate = new PageNavigate(url, pageIndex, pageSize, count);//
        List<CustomerInfo> customerInfoList = customerArchiveService.search(customerInfoSearchVO, pageIndex, pageSize);
        List<User>userList=customerArchiveService.findUserList();
        mv.addObject("userList",userList);
        mv.addObject("customerInfoList", customerInfoList);
        mv.addObject("pageNavigate", pageNavigate);
        mv.addObject("backUrl", StringUtil.encodeUrl(url));
        mv.setViewName("customer/archive/index");

        return mv;
    }

    private String createUrl(CustomerInfoSearchVO customerInfoSearchVO, int pageIndex, int pageSize) {
        String url = pubConfig.getDynamicServer() + "/customer/customerInfo/index.htm?";
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getName())) {
            url += " &name=" + customerInfoSearchVO.getName();
        }
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getMobile())) {
            url += " &mobile=" + customerInfoSearchVO.getMobile();
        }
        if (customerInfoSearchVO.getStatus() != null) {
            url += " &status=" + customerInfoSearchVO.getStatus();
        }
        if (customerInfoSearchVO.getUser_id() != null) {
            url += " &user_id=" + customerInfoSearchVO.getUser_id();
        }
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getCustomer_id_start())) {
            url += " &customer_id_start=" + customerInfoSearchVO.getCustomer_id_start();
        }
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getCustomer_id_end())) {
            url += " &customer_id_end=" + customerInfoSearchVO.getCustomer_id_end();
        }
        if(StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getResources())){
            url+="&resources="+customerInfoSearchVO.getResources();
        }
        if(customerInfoSearchVO.getCustomer_status()!=null){
            url+="&customer_status="+customerInfoSearchVO.getCustomer_status();
        }
        return url;
    }
    @RequestMapping("/relieve")
    public String relieve(CustomerInfoSearchVO customerInfoSearchVO){
        int flag = customerArchiveService.updateReleve(customerInfoSearchVO);
        if(flag==0){
            return "forward:/error.htm?msg="+StringUtil.encodeUrl("解除归档失败");
        }else{
            return "forward:/success.htm?msg="+StringUtil.encodeUrl("解除归档成功");
        }
    }

    /**
     * 导出客户资料
     */
    @RequestMapping("/export")
    public void export(HttpServletRequest request, HttpServletResponse response, CustomerInfoSearchVO customerInfoSearchVO) {
        customerArchiveService.export(customerInfoSearchVO, response);
    }
   
}
