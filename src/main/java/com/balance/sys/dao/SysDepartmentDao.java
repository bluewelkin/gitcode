package com.balance.sys.dao;

import com.balance.sys.model.SysDepartment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SysDepartmentDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int add(SysDepartment sysDepartment) {
		NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
		String sql = "insert into t_sys_department( name,parent_id,description,display_order) values(:name,:parent_id,:description,:display_order)";
		SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysDepartment);
		return namedParameterJdbcTemplate.update(sql, paramSource);
	}

	public int update(SysDepartment sysDepartment) {
		String sql = "update t_sys_department set name=:name,parent_id=:parent_id, description=:description,display_order=:display_order where id=:id";
		NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
		SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysDepartment);
		return namedParameterJdbcTemplate.update(sql, paramSource);
	}

	public int delete(int id) {
		String sql = "delete from t_sys_department where id=?";
		return jdbcTemplate.update(sql, id);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public SysDepartment get(int id) {
		String sql = "select * from t_sys_department where id=?";
		Object[] params = new Object[] { id };
		List<SysDepartment> list = jdbcTemplate.query(sql, params, new BeanPropertyRowMapper(SysDepartment.class));
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<SysDepartment> list() {
		String sql = "select m.*,(select count(*) from t_sys_department where parent_id=m.id) cnt from t_sys_department m order by parent_id, display_order";
		List<SysDepartment> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper(SysDepartment.class));
		return list;
	}

	/**
	 * 获取下级节点总数
	 * @param id
	 * @return
	 */
	public int getChildCount(int id) {
		String sql = "select count(*) from t_sys_department where parent_id=?";
		Object[] objects = new Object[] { id };
		return jdbcTemplate.queryForObject(sql, objects, Integer.class);
	}
}
