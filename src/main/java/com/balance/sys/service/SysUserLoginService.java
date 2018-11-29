package com.balance.sys.service;

import com.balance.sys.dao.SysUserLoginDao;
import com.balance.sys.model.SysUserLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysUserLoginService {
	@Autowired
	private SysUserLoginDao sysUserLoginDao;

	/**
	 * 登录时新增登录信息
	 * @param sysUserLogin
	 * @return
	 */
	@Async
	public void add(SysUserLogin sysUserLogin) {
		sysUserLoginDao.add(sysUserLogin);
	}

	/**
	 * 取得最后登录信息
	 * @param user_id
	 * @return
	 */
	public SysUserLogin getLastLogin(int user_id) {
		return sysUserLoginDao.getLastLogin(user_id);
	}

	public List<SysUserLogin> list(int user_id, int pageIndex, int pageSize) {
		return sysUserLoginDao.list(user_id, pageIndex, pageSize);
	}

	/**
	 * 查询用户登录总数
	 * 
	 * @param sysUserSearchVO
	 * @return
	 */
	public int listCount(int user_id) {
		return sysUserLoginDao.listCount(user_id);
	}

}
