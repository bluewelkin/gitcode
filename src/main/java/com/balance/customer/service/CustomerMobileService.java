package com.balance.customer.service;

import com.balance.customer.dao.CustomerMobileDao;
import com.balance.customer.model.CustomerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liukai on 2017/10/20.
 */
@Service
public class CustomerMobileService {

    @Autowired
    private CustomerMobileDao customerMobileDao;

    /**
     * 获取客户信息
     *
     * @param user_id
     * @return
     */
    public CustomerInfo getMobile(int user_id,int remark_status) {
        return customerMobileDao.getMobile(user_id,remark_status);
    }

    /**
     * 根据手机号查询客户信息
     * @return
     */
    public CustomerInfo findByMobile(String id){
        return customerMobileDao.findByMobile(id);
    }

    /**
     * 查询上一条记录
     * @param id
     * @param userId
     * @return
     */
    public CustomerInfo findPrevious(String id ,int userId){
        return customerMobileDao.findPrevious(id, userId);
    }
    /**
     * 存储备注
     *
     * @param id
     * @param remark
     * @return
     */
    public int saveRemark(String remark, String user_name, String id,Integer customer_status) {
        return customerMobileDao.saveRemark(remark, user_name, id,customer_status);
    }

    /**
     * 根据手机号查询备注
     * @param mobile
     * @return
     */
    public CustomerInfo searchRemarkByMobile(String mobile,int user_id){
        return customerMobileDao.searchRemarkByMobile(mobile,user_id);
    }

}
