package com.balance.sys.service;

import com.balance.sys.dao.SysUserLoginDao;
import com.balance.sys.model.SysUserLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class SysLoginService {
	@Autowired
	private SysUserLoginDao sysUserLoginDao;

	/**
	 * 校验登录
	 *
	 * @param username
	 * @param password
	 * @param verifyCode
	 * @return
	 */
	public String checkLogin(String username, String password, String verifyCode) {
		return null;
	}

	/**
	 * 登录时新增登录信息
	 *
	 * @param sysUserLogin
	 * @return
	 */
	@Async
	public void add(SysUserLogin sysUserLogin) {
		sysUserLoginDao.add(sysUserLogin);
	}

}
