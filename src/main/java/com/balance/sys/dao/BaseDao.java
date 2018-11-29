package com.balance.sys.dao;

/**
 * Created by liukai on 2017/8/16.
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import java.lang.reflect.ParameterizedType;
import java.util.List;

public class BaseDao<T,S> {
    @Autowired
    protected JdbcTemplate jdbcTemplate;
    @Autowired
    protected NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    /**
     * 新增
     *
     * @param sql
     * @param t
     * @return
     */
    protected int insert(String sql, T t) {
        return namedParameterJdbcTemplate.update(sql, new BeanPropertySqlParameterSource(t));
    }

    /**
     * 修改，参数为model类
     * @param sql
     * @param t
     * @return
     */
    protected int update(String sql, T t){
        return namedParameterJdbcTemplate.update(sql,new BeanPropertySqlParameterSource(t));
    }

    /**
     * 修改，按照参数修改
     * @param sql
     * @param objects
     * @return
     */
    protected int update(String sql,Object...objects){
        return jdbcTemplate.update(sql,objects);

    }

    /**
     * 按照参数删除
     * @param sql
     * @param objects
     * @return
     */
    protected int delete(String sql,Object... objects){
        return jdbcTemplate.update(sql,objects);
    }
    protected T get(String sql,Object...objects){
        List<T> list=jdbcTemplate.query(sql,objects, BeanPropertyRowMapper.newInstance(getClazz()));
        if(list.size()>0){
            return list.get(0);
        }else{
            return null;
        }
    }
    private Class<T>getClazz(){
        return (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }

    /**
     * 直接根据sql获取列表
     * @param sql
     * @return
     */
    protected List<T>list(String sql){
        return jdbcTemplate.query(sql,BeanPropertyRowMapper.newInstance(getClazz()));
    }

    /**
     * 根据参数获取列表
     * @param sql
     * @param objects
     * @return
     */
    protected List<T>list(String sql,Object...objects){
        return jdbcTemplate.query(sql,objects,BeanPropertyRowMapper.newInstance(getClazz()));
    }

    /**
     * 查询总数
     * @param sql
     * @return
     */
    protected int count(String sql){
        return jdbcTemplate.queryForObject(sql,Integer.class);
    }

    /**
     * 带参数的查询总数
     * @param sql
     * @param objects
     * @return
     */
    protected int count(String sql,Object...objects){
        return jdbcTemplate.queryForObject(sql,objects,Integer.class);
    }

    /**
     * 带对象参数的查询总数
     * @param sql
     * @param s
     * @return
     */
    protected int count(String sql,S s){
        int a=3;
        return namedParameterJdbcTemplate.queryForObject(sql,new BeanPropertySqlParameterSource(s),Integer.class);
    }
}