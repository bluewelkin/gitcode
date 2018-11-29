package com.balance.common.dao;

import com.balance.common.vo.ComboboxVO;
import com.balance.util.string.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommonDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public String getCustomerId(){
        String sql="select customer_id from t_max_num";
       String customer_id=(String)jdbcTemplate.queryForObject(sql,String.class);
       return customer_id;
    }
    public int updateCustomerId(String id){
        String sql="update t_max_num set customer_id=?";
        return jdbcTemplate.update(sql,id);
    }

    /**
     *
     * @param table_name
     * @param value
     * @param content
     * @param order
     * @param sort
     * @param condition
     * @return
     */
    @SuppressWarnings({"unchecked", "rawtypes"})
    public List<ComboboxVO> listCombobox(String table_name, String value, String content, String order, String sort,
                                         String condition) {
        String strSql = "select " + value + " value," + content + " content from " + table_name;
        if (StringUtil.isNotNullOrEmpty(condition))
            strSql += " where " + condition;
        if (StringUtil.isNotNullOrEmpty(order))
            strSql += " order by " + order;
        if (StringUtil.isNotNullOrEmpty(sort))
            strSql += sort;
        return jdbcTemplate.query(strSql, new BeanPropertyRowMapper(ComboboxVO.class));
    }

    /**
     * 班级列表
     *
     * @return
     */
    public List<ComboboxVO> listClass() {
        String strSql = "SELECT  id value, name content FROM t_base_class ORDER BY id DESC";
        return jdbcTemplate.query(strSql, BeanPropertyRowMapper.newInstance(ComboboxVO.class));
    }

    /**
     * 课程列表
     *
     * @return
     */
    public List<ComboboxVO> listCourse() {
        String strSql = "SELECT  id value, name content FROM t_base_course ORDER BY convert(name USING gbk) ASC";
        return jdbcTemplate.query(strSql, BeanPropertyRowMapper.newInstance(ComboboxVO.class));
    }

    public List<ComboboxVO> listCourseByUser(int create_id) {
        String strSql = "SELECT  id value, name content FROM t_base_course WHERE create_id=? ORDER BY convert(name USING gbk) ASC";
        return jdbcTemplate.query(strSql, new Object[]{create_id}, BeanPropertyRowMapper.newInstance(ComboboxVO.class));
    }

    /**
     * 课程列表
     *
     * @return
     */
    public List<ComboboxVO> listCourse(int type) {
        String strSql = "SELECT  id value, name content FROM t_base_course WHERE type= ? ORDER BY convert(name USING gbk) ASC";
        Object[] params = new Object[type];
        return jdbcTemplate.query(strSql, params, BeanPropertyRowMapper.newInstance(ComboboxVO.class));
    }

    /**
     * 教员列表
     *
     * @return
     */
    public List<ComboboxVO> listTeacher() {
        String strSql = "SELECT  id value, name content FROM t_base_teacherinfo ORDER BY convert(name USING gbk) ASC";
        return jdbcTemplate.query(strSql, BeanPropertyRowMapper.newInstance(ComboboxVO.class));
    }

    /**
     * 上课教员列表
     *
     * @return
     */
    public List<ComboboxVO> listClassTeacher() {
        String strSql = "SELECT  id value, name content FROM t_base_teacherinfo WHERE type=3 ORDER BY convert(name USING gbk) ASC";
        return jdbcTemplate.query(strSql, BeanPropertyRowMapper.newInstance(ComboboxVO.class));
    }

    /**
     * 课程类型列表
     *
     * @return
     */
    public List<ComboboxVO> listCourseType() {
        String strSql = "SELECT  id value, name content FROM t_base_coursetype ORDER BY convert(name USING gbk) ASC";
        return jdbcTemplate.query(strSql, BeanPropertyRowMapper.newInstance(ComboboxVO.class));
    }
}
