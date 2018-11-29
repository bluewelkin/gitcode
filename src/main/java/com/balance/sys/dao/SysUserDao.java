package com.balance.sys.dao;

import com.balance.common.vo.ComboboxVO;
import com.balance.sys.model.SysUser;
import com.balance.sys.model.SysUserdata;
import com.balance.sys.vo.SysUserSearchVO;
import com.balance.util.page.PageUtil;
import com.balance.util.string.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SysUserDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int add(SysUser sysUser) {
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
        String sql = "insert into t_sys_user(username,password,randomcode,status,realname,idnum,create_date,create_person,role_id,type)";
        sql += " values(:username,:password,:randomcode,1,:realname,:idnum,now(),:create_person,:role_id,:role_id)";
        SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysUser);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        int rc = namedParameterJdbcTemplate.update(sql, paramSource, keyHolder);
        if (rc > 0) {
            return keyHolder.getKey().intValue();
        } else {
            return 0;
        }
    }

    public int update(SysUser sysUser) {
        String sql = "update t_sys_user set realname=:realname,role_id=:role_id,type=:role_id,idnum=:idnum where id=:id";
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
        SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysUser);
        return namedParameterJdbcTemplate.update(sql, paramSource);
    }

    /**
     * 修改密码
     *
     * @param code
     * @param newPass
     * @param randowmcode
     * @return
     */
    public int updatePass(int id, String newPass, String randowmcode) {
        String sql = "update t_sys_user set password=?,randomcode=?  where id=?";
        Object[] objects = new Object[]{newPass, randowmcode, id};
        return jdbcTemplate.update(sql, objects);
    }

    /**
     * 修改个人信息，用户自己操作
     *
     * @param sysUser
     * @return
     */
    public int updateInfo(SysUser sysUser) {
        String sql = "update t_sys_user set realname=:realname where id=:id";
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
        SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysUser);
        return namedParameterJdbcTemplate.update(sql, paramSource);
    }

    /**
     * 修改状态
     *
     * @param code
     * @param status
     * @return
     */
    public int updateStatus(int id, int status) {
        String sql = "update t_sys_user set status=?  where id=? ";
        Object[] objects = new Object[]{status, id};
        return jdbcTemplate.update(sql, objects);
    }

    public int delete(int id) {
        String sql = "delete from t_sys_user where id=?";
        return jdbcTemplate.update(sql, id);
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public SysUser get(int id) {
        String sql = "select * from t_sys_user where id=?";
        Object[] params = new Object[]{id};
        List<SysUser> list = jdbcTemplate.query(sql, params, new BeanPropertyRowMapper(SysUser.class));
        if (list.size() > 0)
            return list.get(0);
        else
            return null;
    }

    /**
     * 根据username获取sysUser
     *
     * @param username
     * @return
     */
    @SuppressWarnings({"unchecked", "rawtypes"})
    public SysUser getByUsername(String username) {
        String sql = "select *," +
                "(select name from t_sys_role where id=role_id) role_name from t_sys_user where username=?";
        Object[] params = new Object[]{username};
        List<SysUser> list = jdbcTemplate.query(sql, params, new BeanPropertyRowMapper(SysUser.class));
        if (list.size() > 0)
            return list.get(0);
        else
            return null;
    }

    /**
     * 查询该用户名是否已存在,根据email来判断
     *
     * @param username
     * @return
     */
    public int getUsernameCount(String username) {
        String sql = "select count(*) from t_sys_user where username=? ";
        Object[] objects = new Object[]{username};
        return jdbcTemplate.queryForObject(sql, objects, Integer.class);
    }

    /**
     * 查询用户信息
     *
     * @param sysUserSearchVO
     * @param pageIndex
     * @param pageSize
     * @return
     */
    @SuppressWarnings({"unchecked", "rawtypes"})
    public List<SysUser> list(SysUserSearchVO sysUserSearchVO, int pageIndex, int pageSize) {
        String sql = "select *,(select name from t_sys_role where id=role_id) role_name  from t_sys_user where 1=1 ";
        sql += createSearchSql(sysUserSearchVO);
        sql += " order by id asc";
        sql = PageUtil.createMysqlPageSql(sql, pageIndex, pageSize);
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
        SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysUserSearchVO);
        List<SysUser> list = namedParameterJdbcTemplate.query(sql, paramSource, new BeanPropertyRowMapper(SysUser.class));
        return list;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    public List<SysUser> listAll() {
        String sql = "select *,(select name from t_sys_role where id=role_id) role_name  from t_sys_user where 1=1 ";
        sql += " order by id asc";
        List<SysUser> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper(SysUser.class));
        return list;
    }

    /**
     * 查询用户总数
     *
     * @param sysUserSearchVO
     * @return
     */
    public int listCount(SysUserSearchVO sysUserSearchVO) {
        String sql = "select count(*) from t_sys_user where 1=1 ";
        sql += createSearchSql(sysUserSearchVO);
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
        SqlParameterSource paramSource = new BeanPropertySqlParameterSource(sysUserSearchVO);
        return namedParameterJdbcTemplate.queryForObject(sql, paramSource, Integer.class);
    }

    private String createSearchSql(SysUserSearchVO sysUserSearchVO) {
        String sql = "";
        if (StringUtil.isNotNullOrEmpty(sysUserSearchVO.getUsername())) {
            sql += " and username=:username";
        }
        if (StringUtil.isNotNullOrEmpty(sysUserSearchVO.getRealname())) {
            sql += " and realname like '%" + StringUtil.filterSpecialCharacter(sysUserSearchVO.getRealname()) + "%'";
        }
        if (sysUserSearchVO.getDepartment_id() != null) {
            sql += " and department_id =:department_id";
        }
        if (sysUserSearchVO.getRole_id() != null) {
            sql += " and role_id=:role_id";
        }
        if (sysUserSearchVO.getStatus() != null) {
            sql += " and status=:status";
        }
        if (sysUserSearchVO.getIdnum() != null) {
            sql += " and idnum=:idnum";
        }
        return sql;
    }

    /**
     * 所有人员列表，查询日志使用
     *
     * @return
     */
    @SuppressWarnings({"unchecked", "rawtypes"})
    public List<ComboboxVO> listAllUser() {
        String sql = "select id value,username content from t_sys_user  order by id";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper(ComboboxVO.class));
    }

    /**
     * 用户数据权限列表
     *
     * @return
     */
    @SuppressWarnings({"unchecked", "rawtypes"})
    public List<SysUserdata> listUserdatas(int user_id) {
        String sql = "select ifnull(u.user_id,0)user_id,p.id warehouse_id,p.name warehouse_name from t_base_warehouse p  left join (select * from t_sys_userdata where user_id=?) u ON u.warehouse_id=p.id order by p.display_order";
        Object[] params = new Object[]{user_id};
        return jdbcTemplate.query(sql, params, new BeanPropertyRowMapper(SysUserdata.class));
    }

    /**
     *
     * @param user_id
     * @param warehouse_id
     * @return
     */
    public int addUserdata(int user_id, int warehouse_id) {
        String sql = "insert into t_sys_userdata(user_id,warehouse_id) values(?,?)";
        Object[] objects = new Object[]{user_id, warehouse_id};
        return jdbcTemplate.update(sql, objects);
    }

    /**
     * 删除用户数据权限
     *
     * @param user_id
     * @return
     */
    public int deleteUserdata(int user_id) {
        String sql = "delete from t_sys_userdata where user_id=?";
        return jdbcTemplate.update(sql, user_id);
    }

}
