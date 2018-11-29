package com.balance.sys.dao;

import com.balance.sys.model.SysNotice;
import com.balance.sys.vo.SysNoticeSearchVO;
import com.balance.util.page.PageUtil;
import com.balance.util.string.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SysNoticeDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	/**
	 * 新增
	 * @param sysNotice
	 * @return
	 */
	public int add(SysNotice sysNotice) {
		NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
		String sql = "insert into t_sys_notice(title,release_person,release_date,type) " + "values(:title,:release_person,:release_date,:type)";
		SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysNotice);
		return namedParameterJdbcTemplate.update(sql, paramSource);
	}

	/**
	 * 修改
	 * @param sysNotice
	 * @return
	 */
	public int update(SysNotice sysNotice) {
		String sql = "update t_sys_notice set title=:title  where id=:id ";
		NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
		SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysNotice);
		return namedParameterJdbcTemplate.update(sql, paramSource);
	}

	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int delete(int id) {
		String sql = "delete from t_sys_notice where id=? ";
		return jdbcTemplate.update(sql, id);
	}

	/**
	 * 列表
	 * @param sysNoticeSearchVO
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<SysNotice> list(SysNoticeSearchVO sysNoticeSearchVO, int pageIndex, int pageSize) {
		String sql = "select t.*,(select realname from t_sys_user where code=release_person)release_personname " + "from t_sys_notice t where 1=1 ";
		sql += createSearchSql(sysNoticeSearchVO);
		sql += " order by id desc";
		sql = PageUtil.createMysqlPageSql(sql, pageIndex, pageSize);
		NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
		SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysNoticeSearchVO);
		List<SysNotice> list = namedParameterJdbcTemplate.query(sql, paramSource, new BeanPropertyRowMapper(SysNotice.class));
		return list;
	}

	/**
	 * 总数
	 * @param sysNoticeSearchVO
	 * @return
	 */
	public int listCount(SysNoticeSearchVO sysNoticeSearchVO) {
		String sql = "select count(*) from t_sys_notice where 1=1 ";
		sql += createSearchSql(sysNoticeSearchVO);
		NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
		SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysNoticeSearchVO);
		return namedParameterJdbcTemplate.queryForObject(sql, paramSource, Integer.class);
	}

	private String createSearchSql(SysNoticeSearchVO sysNoticeSearchVO) {
		String sql = "";
		if (!sysNoticeSearchVO.getTitle().equals("%%")) {
			sql += " and title like :title";
		}
		if (StringUtil.isNotNullOrEmpty(sysNoticeSearchVO.getStart_date())) {
			sql += " and date(release_date) >= :start_date  ";
		}
		if (StringUtil.isNotNullOrEmpty(sysNoticeSearchVO.getEnd_date())) {
			sql += " and date(release_date) <= :end_date";
		}

		if (StringUtil.isNotNullOrEmpty(sysNoticeSearchVO.getType())) {
			sql += " and type=:type";
		}

		///经销商只能看人工通知
		if (StringUtil.isNotNullOrEmpty(sysNoticeSearchVO.getUser_type())) {
			if (sysNoticeSearchVO.getUser_type().equals("11") || sysNoticeSearchVO.getUser_type().equals("12")) {
				sql += " and type='01'";
			}
		}

		return sql;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<SysNotice> getTop10(String user_type) {
		String sql = "select t.*,(select realname from t_sys_user where code=release_person)release_personname  from t_sys_notice t where 1=1";
		if (user_type.equals("11") || user_type.equals("12")) {
			sql += " and type='01'";
		}
		sql += " order by id desc limit 0,10";
		List<SysNotice> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper(SysNotice.class));
		return list;
	}
}
