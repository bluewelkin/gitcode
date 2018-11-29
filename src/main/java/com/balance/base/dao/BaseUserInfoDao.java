package com.balance.base.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


/**
 * Created by dsy on 2017/4/19.
 * 学员档案表  Dao
 */
@Repository
public class BaseUserInfoDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;


}
