package com.balance.customer.controller;


import com.balance.customer.VO.CustomerInfoSearchVO;
import com.balance.customer.model.CustomerInfo;
import com.balance.customer.model.Section;
import com.balance.customer.model.User;
import com.balance.customer.service.CustomerInfoService;
import com.balance.util.code.SerialNumUtil;
import com.balance.util.config.PubConfig;
import com.balance.util.controller.BaseController;
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
import java.util.Date;
import java.util.List;

/**
 * Created by dsy on 2017/9/18.
 * 客户信息 Controller
 */
@Controller
@RequestMapping("/customer/customerInfo")
public class CustomerInfoController extends BaseController {

    @Autowired
    private CustomerInfoService customerInfoService;
    @Autowired
    private PubConfig pubConfig;

    /**
     * @return 页面
     */
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, CustomerInfoSearchVO customerInfoSearchVO) {
//        setBtnAutho(request, "CustomerInfo");
        ModelAndView mv = new ModelAndView();
        int count = customerInfoService.count(customerInfoSearchVO);
        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数
        String url = createUrl(customerInfoSearchVO, pageIndex, pageSize);
        PageNavigate pageNavigate = new PageNavigate(url, pageIndex, pageSize, count);//
        List<CustomerInfo> customerInfoList = customerInfoService.search(customerInfoSearchVO, pageIndex, pageSize);
        List<User> userList = customerInfoService.findUserList();
        mv.addObject("userList", userList);
        mv.addObject("customerInfoList", customerInfoList);
        mv.addObject("pageNavigate", pageNavigate);
        mv.addObject("backUrl", StringUtil.encodeUrl(url));
        mv.setViewName("customer/customerInfo/index");

        return mv;
    }

    /**
     * 业务员统计显示
     */
    @RequestMapping("/listNumberSection")
    public ModelAndView listNumberSection(HttpServletRequest request,Integer user_id) {
        ModelAndView mv = new ModelAndView();

        int pageIndex = WebUtil.getSafeInt(request.getParameter("pageIndex"), 1);// 获取当前页数
        int pageSize = GlobalConst.pageSize;// 直接取全局变量，每页记录数
        List<User> userList = customerInfoService.findUserList();
        List<Section> list = customerInfoService.listSection(user_id,pageIndex, pageSize);
        int count = customerInfoService.countSection(user_id);
        String url = pubConfig.getDynamicServer() + "/customer/customerInfo/listNumberSection.htm?";
        PageNavigate pageNavigate = new PageNavigate(url, pageIndex, pageSize, count);//
        mv.addObject("userList", userList);
        mv.addObject("list", list);
        mv.addObject("pageNavigate", pageNavigate);
        mv.addObject("backUrl", StringUtil.encodeUrl(url));
        mv.setViewName("customer/customerInfo/userStatistics");
        return mv;
    }


    /**
     * 解除该号段分配
     * @param request
     * @param idSection
     * @param response
     * @return
     */
    @RequestMapping("/relieve")
    public String relieve(HttpServletRequest request, String idSection,Integer id, HttpServletResponse response) {
        String[]ids=idSection.split("-");
        int flag = customerInfoService.updateRelieve(ids[0],ids[1]);
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("操作失败！");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("操作成功！");
    }

    /**
     * 分配该号段
     * @param request
     * @param idSection
     * @param userId
     * @param response
     * @return
     */
    @RequestMapping("/allot")
    public String allot(HttpServletRequest request, String idSection,Integer userId,String userName, HttpServletResponse response) {
        String[]ids=idSection.split("-");
        String allot_by=SessionUtil.getUserSession(request).getUser_name();
        Date allot_at=new Date();
        int flag = customerInfoService.updateAllot(ids[0],ids[1],userId,userName,allot_by,allot_at);
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("操作失败！");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("操作成功！");
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
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getResources())) {
            url += "&resources=" + customerInfoSearchVO.getResources();
        }
        if (customerInfoSearchVO.getCustomer_status() != null) {
            url += "&customer_status=" + customerInfoSearchVO.getCustomer_status();
        }
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getAllot_at_start())) {
            url += "&allot_at_start=" + customerInfoSearchVO.getAllot_at_start();
        }
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getAllot_at_end())) {
            url += "&allot_at_end=" + customerInfoSearchVO.getAllot_at_end();
        }
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getOperate_at_start())) {
            url += "&operate_at_start=" + customerInfoSearchVO.getOperate_at_start();
        }
        if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getOperate_at_end())) {
            url += "&operate_at_end=" + customerInfoSearchVO.getOperate_at_end();
        }
        return url;
    }

    /**
     * 导入客户资料
     *
     * @param excel_file
     * @param request
     * @param response
     */
    @RequestMapping("/importCustomerInfo")
    public void importUserInfo(@RequestParam(value = "excel_file", required = false) MultipartFile excel_file, String resources, HttpServletRequest request,
                               HttpServletResponse response) {
        String create_person = SessionUtil.getUserSession(request).getRealname();
        String uploadPath = pubConfig.getImageUploadPath();
        String storePath = "/customer_info/" + DateUtil.getShortSystemDate() + "/";
        String fileName = excel_file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
        // String fileName = new Date().getTime()+".jpg";
        String createFilename = DateUtil.getShortSystemTime() + SerialNumUtil.createRandowmNum(6) + "." + suffix;
        File targetFile = new File(uploadPath + storePath, createFilename);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        String json;

        if (excel_file.getSize() > 200 * 1024 * 1024) {
            json = "{success:" + false + ",msgText:'" + "文件超过200M" + "'}";
        } else {
            // 保存
            try {
                excel_file.transferTo(targetFile);
                String result = customerInfoService.saveImport(uploadPath + storePath + File.separator + createFilename, resources, create_person);
                if (result.equals("")) {
                    json = "{success:" + true + ",msgText:'" + "导入成功" + "'}";
                } else {
                    json = "{success:" + false + ",msgText:'" + "导入失败" + "',errorInfo:'" + result + "'}";
                }
                FileUtil.delete(uploadPath + storePath + File.separator + createFilename);
            } catch (Exception e) {
                json = "{success:" + false + ",msgText:'" + "上传失败" + e.getMessage() + "'}";
                e.printStackTrace();
            }
        }
        WebUtil.out(response, json);
    }

    /**
     * 导出客户资料
     */
    @RequestMapping("/export")
    public void export(HttpServletRequest request, HttpServletResponse response, CustomerInfoSearchVO customerInfoSearchVO) {
        String templatePath = request.getRealPath("/template") + File.separator + "template.xls";

        customerInfoService.export(customerInfoSearchVO, templatePath, response);
    }

    @RequestMapping("/delete")
    public String delete(String customer_id_start, String customer_id_end) {
        int flag = customerInfoService.delete(customer_id_start, customer_id_end);
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("客户信息删除失败");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("客户信息删除成功");
    }

    /**
     * 客户归档
     *
     * @param customer_id
     * @return
     */
    @RequestMapping("/archive")
    public String archive(String customer_id) {
        customer_id = customer_id.substring(0, customer_id.length() - 1);
        int flag = customerInfoService.update(customer_id);
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("客户信息归档失败");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("客户信息归档成功");

    }

    /**
     * 全部归档
     * @param customerInfoSearchVO
     * @return
     */
    @RequestMapping("/allArchive")
    public String allArchive(CustomerInfoSearchVO customerInfoSearchVO) {
        int flag = customerInfoService.update(customerInfoSearchVO);
        if (flag == 0)
            return "forward:/error.htm?msg=" + StringUtil.encodeUrl("客户信息归档失败");
        else
            return "forward:/success.htm?msg=" + StringUtil.encodeUrl("客户信息归档成功");

    }

}
