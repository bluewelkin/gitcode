package com.balance.customer.dao;

import com.balance.customer.VO.CustomerInfoSearchVO;
import com.balance.customer.model.CustomerInfo;
import com.balance.customer.model.User;
import com.balance.util.page.PageUtil;
import com.balance.util.string.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by dsy on 2017/9/18.
 * 用户信息表  Dao
 */
@Repository
public class CustomerArchiveDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/**
	 * 查询
	 *
	 * @param customerInfoSearchVO 查询条件
	 * @return 客户信息列表
	 */
	public List<CustomerInfo> search(CustomerInfoSearchVO customerInfoSearchVO, int pageIndex, int pageSize) {
		String sql = "SELECT * FROM t_customer_info WHERE archive_status=1";
		sql += createSql(customerInfoSearchVO);
		sql = PageUtil.createMysqlPageSql(sql, pageIndex, pageSize);
		SqlParameterSource params = new BeanPropertySqlParameterSource(customerInfoSearchVO);
		NamedParameterJdbcTemplate namedJdbc = new NamedParameterJdbcTemplate(jdbcTemplate);
		return namedJdbc.query(sql, params, new BeanPropertyRowMapper(CustomerInfo.class));
	}
	public List<User>findUserList(){
		String sql="select * from t_sys_user t where t.role_id=2";
		return jdbcTemplate.query(sql, new RowMapper<User>() {
			public User mapRow(ResultSet rs, int i) throws SQLException {
				User user=new User();
				user.setId(rs.getInt("id"));
				user.setRealname(rs.getString("realname"));
				return user;
			}
		});
	}
	/**
	 * 导出
	 *
	 * @param customerInfoSearchVO 查询条件
	 * @return 客户信息列表
	 */
	public List<CustomerInfo> export(CustomerInfoSearchVO customerInfoSearchVO) {
		String sql = "select * from t_customer_info t where t.archive_status=1";
		sql += createSql(customerInfoSearchVO);
		SqlParameterSource params = new BeanPropertySqlParameterSource(customerInfoSearchVO);
		NamedParameterJdbcTemplate namedJdbc = new NamedParameterJdbcTemplate(jdbcTemplate);
		return namedJdbc.query(sql, params, new BeanPropertyRowMapper(CustomerInfo.class));
	}

	/**
	 * 解除归档
	 * @param customerInfoSearchVO
	 * @return
	 */
	public int releve(CustomerInfoSearchVO customerInfoSearchVO){
		String sql="UPDATE t_customer_info set archive_status=0 where archive_status=1 ";
		sql += createSql(customerInfoSearchVO);
		SqlParameterSource params = new BeanPropertySqlParameterSource(customerInfoSearchVO);
		NamedParameterJdbcTemplate namedJdbc = new NamedParameterJdbcTemplate(jdbcTemplate);
		return namedJdbc.update(sql, params);
	}

	/**
	 * 统计查询数
	 *
	 * @param customerInfoSearchVO 查询条件 姓名
	 * @return 数目
	 */
	public int count(CustomerInfoSearchVO customerInfoSearchVO) {
		String sql = "select count(*) from t_customer_info t where t.archive_status=1 ";
		sql += createSql(customerInfoSearchVO);
		SqlParameterSource params = new BeanPropertySqlParameterSource(customerInfoSearchVO);
		NamedParameterJdbcTemplate namedJdbc = new NamedParameterJdbcTemplate(jdbcTemplate);
		return namedJdbc.queryForObject(sql, params, Integer.class);
	}

	private String createSql(CustomerInfoSearchVO customerInfoSearchVO) {
		String sql = " ";
		if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getName())) {
			sql += " and name like :nameParam";
		}
		if(StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getMobile())){
			sql += " and mobile =:mobile";
		}
		if(customerInfoSearchVO.getStatus()!=null){
			sql += " and status =:status";
		}
		if(customerInfoSearchVO.getUser_id()!=null){
			sql +=" and user_id=:user_id";
		}
		if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getCustomer_id_start())) {
			sql += " and id >= :customer_id_start";
		}
		if (StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getCustomer_id_end())) {
			sql += " and id <= :customer_id_end";
		}
		if(StringUtil.isNotNullOrEmpty(customerInfoSearchVO.getResources())){
			sql += " and resources like :resourcesParam";
		}
		if(customerInfoSearchVO.getCustomer_status()!=null){
			sql += " and customer_status = :customer_status";
		}
		return sql;
	}



}
