package com.balance.customer.service;


import com.balance.common.dao.CommonDao;
import com.balance.customer.VO.CustomerInfoSearchVO;
import com.balance.customer.dao.CustomerAllotDao;
import com.balance.customer.dao.CustomerInfoDao;
import com.balance.customer.model.*;
import com.balance.customer.util.StatusUtil;
import com.balance.util.date.DateUtil;
import com.balance.util.excel.Excel2007Util;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.util.ArrayUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by dsy on 2017/4/17.
 * 客户信息  Service
 */
@Service
public class CustomerInfoService {
    /**
     * 正则表达式：验证手机号
     */
    public static final String REGEX_MOBILE = "^((17[0-9])|(14[0-9])|(13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";
    @Autowired
    private CustomerInfoDao customerInfoDao;
    @Autowired
    private CustomerAllotDao customerAllotDao;
    @Autowired
    private CommonDao commonDao;

    /**
     * 查询
     */
    public List<CustomerInfo> search(CustomerInfoSearchVO customerInfoSearchVO, int pageIndex, int pageSize) {
        return customerInfoDao.search(customerInfoSearchVO, pageIndex, pageSize);
    }
public List<Section>listSection(Integer user_id,int pageIndex, int pageSize){
        return customerInfoDao.listSection(user_id,pageIndex, pageSize);
}
    public int updateRelieve(String idStart, String idEnd) {
        customerInfoDao.updateRelieve(idStart, idEnd);
        return 1;
    }

    public int countSection(Integer user_id){
        return customerInfoDao.countSection(user_id);
    }
    public int updateAllot( String idStart, String idEnd, Integer userId, String userName, String allot_by, Date allot_at) {
        int count = customerInfoDao.updateAllot(idStart, idEnd, userId, userName, allot_by, allot_at);
        return count;
    }


    /**
     * 数字转成号段  如：1，2，3，5,6,7
     *
     * @param arg
     * @return
     */
    public List<String> toSection(List<String> arg) {
        List<String> list = new ArrayList();
        List<Integer> ids = new ArrayList();
        for(String str:arg){
            Integer num=Integer.valueOf(str);
            ids.add(num);
        }

        int a = ids.get(0);
        int b, c;
        String str;
        if (ids.size() == 1) {
            str = String.format("%08d", a) + "-" + String.format("%08d", a);
            list.add(str);
            System.out.println("长度1：" + list);
            return list;
        }
        for (int i = 1; i < ids.size(); i++) {
            b = ids.get(i - 1);
            c = ids.get(i);
            if (b + 1 != c) {
                str = String.format("%08d", a) + "-" + String.format("%08d", b);
                list.add(str);
                a = c;
            }
            if (i == ids.size() - 1) {
                if (b + 1 != c) {
                    str = String.format("%08d", a) + "-" + String.format("%08d", c);
                    list.add(str);
                } else {
                    str = String.format("%08d", a) + "-" + String.format("%08d", c);
                    list.add(str);
                }
            }
        }
        return list;
    }

    public int count(CustomerInfoSearchVO customerInfoSearchVO) {

        return customerInfoDao.count(customerInfoSearchVO);
    }

    /**
     * 查询业务员list
     */
    public List<User> findUserList() {
        return customerInfoDao.findUserList();
    }

    /**
     * 归档客户
     *
     * @param customer_id
     * @return
     */
    public int update(String customer_id) {
        return customerInfoDao.update(customer_id);
    }

    /**
     * 全部归档
     * @param customerInfoSearchVO
     * @return
     */
    public int update(CustomerInfoSearchVO customerInfoSearchVO) {
        return customerInfoDao.update(customerInfoSearchVO);
    }

    /**
     * 新增
     *
     * @param customerInfo
     * @return 成功1  失败0
     */
    public int add(CustomerInfo customerInfo) {
        return customerInfoDao.add(customerInfo);
    }

    /**
     * 修改
     *
     * @param customerInfo 客户信息
     * @return 成功1 失败0
     */
    public int update(CustomerInfo customerInfo) {

        return customerInfoDao.update(customerInfo);
    }

    /**
     * @return 客户信息
     */
    public CustomerInfo get(int id) {
        return customerInfoDao.getById(id);
    }


    /**
     * 删除
     *
     * @param customer_id_start
     * @param customer_id_end
     * @return
     */
    public int delete(String customer_id_start, String customer_id_end) {
        return customerInfoDao.delete(customer_id_start, customer_id_end);
    }

    /**
     * 批量导入客户资料信息
     * 如果校验错误，返回错误信息，如果正确，返回空值
     *
     * @param file_path excel地址
     * @return
     */
    public String saveImport(String file_path, String resources, String create_person) {
        // 1读取excel数据
        List<String[]> list = new Excel2007Util().readExcelContent(file_path, 2);
        // 2校验数据
        String checkResult = checkData(list);
        if (checkResult.length() != 0)
            return checkResult;
        // 3导入数据
        List<CustomerInfo> listTrans = transData(list);
        Date create_at = new Date();
        for (CustomerInfo customerInfo : listTrans) {
            String customer_old_id = commonDao.getCustomerId();
            customer_old_id = customer_old_id == null ? "00000001" : customer_old_id;
            String customer_id = StringUtil.createCustomerId(customer_old_id);
            customerInfo.setResources(resources);
            customerInfo.setId(customer_id);
            customerInfo.setStatus(0);
            customerInfo.setRemark_status(0);
            customerInfo.setCreate_by(create_person);// 导入人
            customerInfo.setCreate_at(create_at);
            customerInfoDao.batchAdd(customerInfo);
            commonDao.updateCustomerId(customer_id);
        }
        return "";
    }

    /**
     * 校验数据
     *
     * @param list
     * @return
     */
    private String checkData(List<String[]> list) {
        // 数据列序号 姓名 电话号码  技术等级 现职级时间 军衔

//        List<ComboboxVO> listClass = commonDao.listClass();
//        HashMap<String, String> hashClass = new HashMap();// 班级hashmap
//        for (ComboboxVO vo : listClass) {
//            hashClass.put(vo.getContent(), vo.getValue());
//        }
        //校验文件内电话是否重复
        StringBuffer sb = new StringBuffer();
       /*  String[] tels = new String[list.size()];
        int j = 0;
        for (String[] str : list) {
            tels[j] = str[1].trim();
            j++;
        }
        for (int a = 0; a < tels.length; a++) {
            String tel = tels[a];
            for (int b = 1 + a; b < tels.length; b++) {
                String tel_check = tels[b];
                if (tel.equals(tel_check)) {
                    sb.append("第" + (a + 2) + "行和" + (b + 2) + "电话号码重复<br/>");
                }
            }

        }*/
        //校验数据库是否重复
//        if (sb.length() != 0) {
//            return sb.toString();
//        }
        int i = 2;
        for (String[] str : list) {

            if (str.length != 2) {
                sb.append("第" + i + "行数据不全" + "<br/>");
            }
            if (StringUtil.isNullOrEmpty(str[0])) {
                sb.append("第" + i + "行姓名为空" + "<br/>");
            }
            if (str[1].length() > 30) {
                sb.append("第" + i + "行电话号码长度过长" + "<br/>");
            }
//            CustomerInfo customerInfo = customerInfoDao.getByMobile(str[1]);
//            if (customerInfo != null) {
//                sb.append("第" + i + "行电话号码已存在-" + str[1] + "<br/>");
//            }
            i++;
        }
        return sb.toString();
    }

    /**
     * 校验手机号
     *
     * @param mobile
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isMobile(String mobile) {
        return Pattern.matches(REGEX_MOBILE, mobile);
    }

    /**
     * 转换数据
     *
     * @param list
     * @return
     */
    private List<CustomerInfo> transData(List<String[]> list) {
        List<CustomerInfo> listTrans = new ArrayList();
        for (String[] str : list) {
            CustomerInfo customerInfo = new CustomerInfo();

            customerInfo.setName(str[0]);//姓名
            customerInfo.setMobile(str[1]);// 手机号码

            listTrans.add(customerInfo);
        }
        return listTrans;
    }

    public void export(CustomerInfoSearchVO customerInfoSearchVO, String templatePath, HttpServletResponse response) {
        List<CustomerInfo> dataList = customerInfoDao.export(customerInfoSearchVO);
        String[][] data = null;

        long sumMoney = 0;
//    if (dataList.size() <= 10000) {
        data = new String[dataList.size()][8];
//        data[0][0] = "客户编号";
//        data[0][1] = "姓名";
//        data[0][2] = "电话号码";
//        data[0][3] = "备注";
//        data[0][4] = "客户状态";
//        data[0][5] = "所属业务员编号";
//        data[0][6] = "所属业务员姓名";
//        data[0][7] = "操作日期";

        for (int i = 0; i < dataList.size(); i++) {
            CustomerInfo customerInfo = dataList.get(i);
            data[i][0] = WebUtil.getSafeStr(customerInfo.getId());
            data[i][1] = WebUtil.getSafeStr(customerInfo.getName());
            data[i][2] = WebUtil.getSafeStr(customerInfo.getMobile());
            data[i][3] = WebUtil.getSafeStr(customerInfo.getRemark());
            data[i][4] = WebUtil.getSafeStr(StatusUtil.parseStatus(customerInfo.getCustomer_status()));
            data[i][5] = WebUtil.getSafeStr(customerInfo.getUser_id());
            data[i][6] = WebUtil.getSafeStr(customerInfo.getUser_name());
            if (customerInfo.getOperate_at() == null) {
                data[i][7] = "";
            } else {
                data[i][7] = WebUtil.getSafeStr(DateUtil.dateToString(customerInfo.getOperate_at(), "yyyy-MM-dd HH:mm:ss"));
            }
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
//        data[0][6] = "操作日期";
//        data[1][1] = "数据总数大于10000行无法导出，请缩小查询范围！";
//    }
        Excel2007Util excel2007Util = new Excel2007Util();
        excel2007Util.writeExcel(data, templatePath, "客户电话资料", response, 1, 300);
      /*  String report_name = "客户电话资料";
        String titleName = "客户电话资料";
        HSSFWorkbook wb;
        wb = ExcelUtil.createExcelWithTitle(data, titleName);
        OutputStream os = null;
        try {
            response.setContentType("application/msexcel");
            response.reset();
            response.setHeader("content-disposition", "attachment; filename=" + new String(report_name.getBytes("gb2312"), "ISO-8859-1") + ".xlsx");
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
        }*/
    }

}
