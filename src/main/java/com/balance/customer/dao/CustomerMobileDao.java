package com.balance.customer.dao;

import com.balance.customer.model.CustomerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import redis.clients.jedis.PipelineBase;

import java.util.List;

/**
 * Created by liukai on 2017/10/20.
 */
@Repository
public class CustomerMobileDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 获取客户信息
     *
     * @param user_id
     * @return
     */
    public CustomerInfo getMobile(int user_id,int remark_status) {
        String sql = "SELECT * from t_customer_info where user_id = ? and remark_status = ? order BY id asc  limit 1";
        List<CustomerInfo> list = jdbcTemplate.query(sql,new Object[]{user_id,remark_status}, BeanPropertyRowMapper.newInstance(CustomerInfo.class));
        return list.size() > 0 ? list.get(0) : null;
    }

    /**
     * 根据手机号查询客户信息
     * @param id
     * @return
     */
    public CustomerInfo findByMobile(String id){
        String sql="SELECT * FROM t_customer_info WHERE id=?";
        List<CustomerInfo> list=jdbcTemplate.query(sql,new Object[]{id},BeanPropertyRowMapper.newInstance(CustomerInfo.class));
        if(list.size()>0){
            return list.get(0);
        }
        return null;
    }
public CustomerInfo findPrevious(String id,int userId){
        String sql="select * from t_customer_info where id<? and user_id=? ORDER BY id desc";
        List<CustomerInfo>list=jdbcTemplate.query(sql,new Object[]{id,userId},BeanPropertyRowMapper.newInstance(CustomerInfo.class));
        if(list.size()>0){
            return list.get(0);
        }
        return null;
}
    /**
     * 存储备注
     *
     * @param id
     * @param remark
     * @return
     */
    public int saveRemark(String remark, String user_name, String id,Integer customer_status) {
        String sql = "UPDATE t_customer_info set remark=?,remark_status =1, operate_by =? ,operate_at=now(),customer_status=? where id =?";
        return jdbcTemplate.update(sql, remark, user_name, customer_status, id);
    }

    /**
     * 根据手机号码查询备注信息
     * @param mobile
     * @return
     */
    public CustomerInfo searchRemarkByMobile(String mobile,int user_id){
        String sql = "select * from t_customer_info where mobile = ? and user_id=? and remark_status = 1 ";
        List<CustomerInfo> list = jdbcTemplate.query(sql, new Object[] { mobile ,user_id}, BeanPropertyRowMapper.newInstance(CustomerInfo.class));
        return list.size() > 0 ? list.get(0) : null;
    }
}

