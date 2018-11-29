package com.balance.customer.service;


import com.balance.common.dao.CommonDao;
import com.balance.customer.VO.CustomerInfoSearchVO;
import com.balance.customer.dao.CustomerArchiveDao;
import com.balance.customer.model.CustomerInfo;
import com.balance.customer.model.User;
import com.balance.customer.util.StatusUtil;
import com.balance.util.date.DateUtil;
import com.balance.util.excel.Excel2007Util;
import com.balance.util.excel.ExcelUtil;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by dsy on 2017/4/17.
 * 学员档案  Service
 */
@Service
public class CustomerArchiveService {
    @Autowired
    private CustomerArchiveDao customerArchiveDao;
    @Autowired
    private CommonDao commonDao;
    /**
     * 查询
     */
    public List<CustomerInfo> search(CustomerInfoSearchVO customerInfoSearchVO, int pageIndex, int pageSize) {
        return customerArchiveDao.search(customerInfoSearchVO, pageIndex, pageSize);
    }

    public int count(CustomerInfoSearchVO customerInfoSearchVO) {

        return customerArchiveDao.count(customerInfoSearchVO);
    }
    /**
     * 查询业务员list
     */
    public List<User>findUserList(){
        return customerArchiveDao.findUserList();
    }


    /**
     * 解除归档
     * @param customerInfoSearchVO
     * @return
     */
    public int updateReleve (CustomerInfoSearchVO customerInfoSearchVO){
        return customerArchiveDao.releve(customerInfoSearchVO);
}




public void export(CustomerInfoSearchVO customerInfoSearchVO,HttpServletResponse response){
    List<CustomerInfo>dataList=customerArchiveDao.export(customerInfoSearchVO);
        String[][] data = null;
    long sumMoney = 0;
//    if (dataList.size() <= 10000) {
        data = new String[dataList.size() + 2][8];
        data[0][0] = "客户编号";
        data[0][1] = "姓名";
        data[0][2] = "电话号码";
        data[0][3] = "备注";
        data[0][4] = "客户状态";
        data[0][5] = "所属业务员编号";
        data[0][6] = "所属业务员姓名";
        data[0][7] = "归档时间";

        for (int i = 0; i < dataList.size(); i++) {
            CustomerInfo customerInfo = dataList.get(i);
            data[i + 1][0] = WebUtil.getSafeStr(customerInfo.getId());
            data[i + 1][1] = WebUtil.getSafeStr(customerInfo.getName());
            data[i + 1][2] = WebUtil.getSafeStr(customerInfo.getMobile());
            data[i + 1][3] = WebUtil.getSafeStr(customerInfo.getRemark());
            data[i + 1][4] = WebUtil.getSafeStr(StatusUtil.parseStatus(customerInfo.getCustomer_status()));
            data[i + 1][5] = WebUtil.getSafeStr(customerInfo.getUser_id());
            data[i + 1][6] = WebUtil.getSafeStr(customerInfo.getUser_name());
            data[i + 1][7] = WebUtil.getSafeStr(DateUtil.dateToString(customerInfo.getArchive_time(),"yyyy-MM-dd HH:mm:ss"));
        }
//    }
//    if (dataList.size() + 1 > 6000) {
//        data = new String[2][13];
//        data[0][0] = "客户编号";
//        data[0][1] = "姓名";
//        data[0][2] = "电话号码";
//        data[0][3] = "备注";
//        data[0][4] = "所属业务员编号";
//        data[0][5] = "所属业务员姓名";
//        data[0][6] = "归档时间";
//        data[1][1] = "数据总数大于10000行无法导出，请缩小查询范围！";
//    }

    String report_name = "客户电话资料" ;
    String titleName = "客户电话资料";
    HSSFWorkbook wb;
    wb = ExcelUtil.createExcelWithTitle(data, titleName);
    OutputStream os = null;
    try {
        response.setContentType("application/msexcel");
        response.reset();
        response.setHeader("content-disposition", "attachment; filename=" + new String(report_name.getBytes("gb2312"), "ISO-8859-1") + ".xls");
        System.setProperty("org.apache.poi.util.POILogger", "org.apache.poi.util.POILogger");
        os = response.getOutputStream();
        wb.write(os);
        os.flush();
    } catch (IOException e) {
        e.printStackTrace();
    } finally {
        try {
            os.close();
            os = null;
            response.flushBuffer();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}


}
