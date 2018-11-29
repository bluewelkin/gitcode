package com.balance.statistics.dao;

import com.balance.customer.model.User;
import com.balance.statistics.VO.StatisticsSearchVO;
import com.balance.statistics.model.Statistics;
import com.balance.util.page.PageUtil;
import com.balance.util.string.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by liukai on 2018/3/20.
 */
@Repository
public class StatisticsResourcesDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 查询名单总数
     *
     * @param statisticsSearchVO
     * @return
     */
    public int countTotal(StatisticsSearchVO statisticsSearchVO) {
        String sql = "select count(*) from t_customer_info";

        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(statisticsSearchVO);
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
        int count = namedParameterJdbcTemplate.queryForObject(sql, sqlParameterSource, Integer.class);
        return count;
    }

    /**
     * 查询尚未分配名单总数
     *
     * @return
     */
    public int countNotAlloted() {
        String sql = "select count(*) from t_customer_info t where t.status=0";
        int count = jdbcTemplate.queryForObject(sql, Integer.class);
        return count;
    }

    public int count(StatisticsSearchVO statisticsSearchVO) {
        String sql = "select count(DISTINCT(resources)) from t_customer_info  t where t.resources is not null";
        sql += createSql(statisticsSearchVO);
        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(statisticsSearchVO);
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
        int count = namedParameterJdbcTemplate.queryForObject(sql, sqlParameterSource, Integer.class);
        //返回业务员条数+总和（1条）
        return count + 1;
    }

    public List listAll(StatisticsSearchVO statisticsSearchVO,int pageIndex, int pageSize) {
        String sql1 = "select '合计' resources,\n" +
                "count(*) as total,\n"+
                "sum(case t.`status` when 0 then 1 else 0 end) as notAlloted,\n"+
                "sum(case t.`status` when 1 then 1 else 0 end ) as alloted ,\n" +
                "sum(case t.customer_status when 0 then 0 else 1 end ) as called,\n" +
                "sum(case t.customer_status when\t0 then 1 else 0\tend ) as status0, \n" +
                "sum(case t.customer_status when\t1 then 1 else 0\tend ) as status1,\n" +
                "sum(case t.customer_status when\t2 then 1 else 0\tend ) as status2, \n" +
                "sum(case t.customer_status when\t3 then 1 else 0\tend ) as status3,\n" +
                "sum(case t.customer_status when\t4 then 1 else 0\tend ) as status4, \n" +
                "sum(case t.customer_status when\t5 then 1 else 0\tend ) as status5,\n" +
                "sum(case t.customer_status when\t6 then 1 else 0\tend ) as status6, \n" +
                "sum(case t.customer_status when\t7 then 1 else 0\tend ) as status7 \n" +
                "from t_customer_info t  where 1=1 \n";
        String sql2 = " UNION ALL\n" +
                "select t.resources,\n" +
                "count(t.resources) as total,\n"+
                "sum(case t.`status` when 0 then 1 else 0 end) as notAlloted,\n"+
                "sum(case t.`status` when 1 then 1 else 0 end ) as alloted ,\n" +
                "sum(case t.customer_status when 0 then 0 else 1 end ) as called,\n" +
                "sum(case t.customer_status when\t0 then 1 else 0\tend ) as status0, \n" +
                "sum(case t.customer_status when\t1 then 1 else 0\tend ) as status1,\n" +
                "sum(case t.customer_status when\t2 then 1 else 0\tend ) as status2, \n" +
                "sum(case t.customer_status when\t3 then 1 else 0\tend ) as status3,\n" +
                "sum(case t.customer_status when\t4 then 1 else 0\tend ) as status4, \n" +
                "sum(case t.customer_status when\t5 then 1 else 0\tend ) as status5,\n" +
                "sum(case t.customer_status when\t6 then 1 else 0\tend ) as status6, \n" +
                "sum(case t.customer_status when\t7 then 1 else 0\tend ) as status7 \n" +
                "from t_customer_info t  where 1=1 ";
        String sql3 = " GROUP BY t.resources  ";
        String sql = sql1 + createSql(statisticsSearchVO) + sql2 + createSql(statisticsSearchVO) + sql3;
        sql = PageUtil.createMysqlPageSql(sql, pageIndex, pageSize);
        SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(statisticsSearchVO);
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
        return namedParameterJdbcTemplate.query(sql, sqlParameterSource, new BeanPropertyRowMapper<>(Statistics.class));
    }

    public String createSql(StatisticsSearchVO statisticsSearchVO) {
        String sql = "  ";
        if (statisticsSearchVO.getStartTime() != null) {
            sql+=" and operate_at>=str_to_date(:startTime,'%Y-%m-%d')";
        }
        if (statisticsSearchVO.getEndTime() != null) {
            sql+=" and operate_at<=str_to_date(:endTime,'%Y-%m-%d')";
        }

        if (StringUtil.isNotNullOrEmpty(statisticsSearchVO.getResources())) {
            sql += " and resources like :resourcesParm ";
        }
        return sql;
    }

    /**
     * 查询所有业务员
     *
     * @return
     */
    public List<User> findUserList() {
        String sql = "select * from t_sys_user t where t.role_id=2";
        return jdbcTemplate.query(sql, new RowMapper<User>() {
            public User mapRow(ResultSet rs, int i) throws SQLException {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setRealname(rs.getString("realname"));
                return user;
            }
        });
    }
}
