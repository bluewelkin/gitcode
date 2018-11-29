package com.balance.customer.dao;

import com.alibaba.druid.util.MySqlUtils;
import com.balance.customer.model.*;
import com.balance.util.page.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 来源管理
 * Created by liukai on 2018/3/27.
 */
@Repository
public class ResourcesDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 查询
     *
     * @return 客户信息列表
     */
    public List<ResourcesInfo> list(int pageIndex, int pageSize) {
        String sql = "select t.resources,date_format(t.create_at,'%Y-%m-%d') import_time,count(*) total from t_customer_info t GROUP BY resources, import_time order by import_time desc ";
        sql = PageUtil.createMysqlPageSql(sql, pageIndex, pageSize);
        List<ResourcesInfo> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(ResourcesInfo.class));
        if (list.size() > 0) {
            return list;
        }
        return null;
    }



    public int count() {
        String sql = "select count(*) from (select t.resources,date_format(t.create_at,'%Y-%m-%d') import_time,count(*) from t_customer_info t GROUP BY resources,import_time ) r";
        int count = jdbcTemplate.queryForObject(sql, Integer.class);
        return count;
    }

    /**
     * 解除该导入时间的，同一来源的名单
     * @param resources
     * @param create_at
     * @return
     */
    public int relieve(String resources, String create_at) {
        String sql = "UPDATE t_customer_info t SET remark=null,remark_status=0, user_name=null, user_id=null ,status=0,customer_status=0,allot_at=null,allot_by=null,operate_at=null,operate_by=null where t.resources=? and date_format(t.create_at,'%Y-%m-%d')=? and t.archive_status=0";
        return jdbcTemplate.update(sql, resources, create_at);
    }
    public int delete(String resources, String create_at) {
        String sql = "DELETE  from  t_customer_info  where resources=? and date_format(create_at,'%Y-%m-%d')=? ";
        return jdbcTemplate.update(sql, resources, create_at);
    }

    public int countSection(String resources,String create_at){
        String sql="select count(*) from (SELECT user_id,user_name,resources,allot_at,gn,min(id) id_min,max(id) id_max " +
                "FROM(SELECT user_id,user_name,resources,allot_at,id - rownum gn,id FROM(SELECT @ROW :=@ROW + 1 AS rownum,id,user_id,user_name,resources,allot_at FROM(SELECT(SELECT @ROW := 0),id,user_id,user_name ,resources,date_format(allot_at,'%Y-%m-%d')  allot_at FROM t_customer_info where resources=? and date_format(create_at,'%Y-%m-%d')=? ORDER BY resources,user_id,allot_at,id )a)b)c GROUP BY user_id,gn order by resources,user_id,allot_at,id_min) d";
        return jdbcTemplate.queryForObject(sql,new Object[]{resources,create_at},Integer.class);

    }
    public List<Section>listSection(String resources,String create_at,int pageIndex,int pageSize){
        String sql="SELECT user_id,user_name,resources,allot_at,gn,min(id) id_min,max(id) id_max " +
                "FROM(SELECT user_id,user_name,resources,allot_at,id - rownum gn,id FROM(SELECT @ROW :=@ROW + 1 AS rownum,id,user_id,user_name,resources,allot_at FROM(SELECT(SELECT @ROW := 0),id,user_id,user_name ,resources,date_format(allot_at,'%Y-%m-%d') allot_at FROM t_customer_info where resources=? and date_format(create_at,'%Y-%m-%d')=? ORDER BY resources,user_id,allot_at,id )a)b)c GROUP BY user_id,gn order by resources,user_id,allot_at,id_min";
       sql= PageUtil.createMysqlPageSql(sql, pageIndex, pageSize);
        return jdbcTemplate.query(sql,new Object[]{resources,create_at},BeanPropertyRowMapper.newInstance(Section.class));
    }

    public int updateRelieves(String id_start, String id_end) {
        String sql = "UPDATE t_customer_info SET remark=null,remark_status=0, user_name=null, user_id=null ,status=0,customer_status=0,allot_at=null,allot_by=null,operate_at=null,operate_by=null  WHERE archive_status=0 and id>=? and id<=?";
        int count= jdbcTemplate.update(sql,id_start,id_end);
        return count;
    }
}
