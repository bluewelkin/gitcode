package com.balance.sys.service;

import com.balance.sys.dao.SysNoticeDao;
import com.balance.sys.model.SysNotice;
import com.balance.sys.vo.SysNoticeSearchVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class SysNoticeService {

	@Autowired
	private SysNoticeDao sysNoticeDao;

	/**
	 * 列表
	 * @param sysNoticeSearchVO
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	public List<SysNotice> list(SysNoticeSearchVO sysNoticeSearchVO, int pageIndex, int pageSize) {
		return sysNoticeDao.list(sysNoticeSearchVO, pageIndex, pageSize);
	}

	/**
	 * 总数
	 * @param sysNoticeSearchVO
	 * @return
	 */
	public int listCount(SysNoticeSearchVO sysNoticeSearchVO) {
		return sysNoticeDao.listCount(sysNoticeSearchVO);
	}

	/**
	 * 新增
	 * @param sysNotice
	 * @return
	 */
	public int add(SysNotice sysNotice) {
		return sysNoticeDao.add(sysNotice);
	}

	/**
	 * 新增系统通知，异步操作
	 * @param sysNotice
	 * @return
	 */
	@Async
	public void addSysNotice(String title) {
		SysNotice sysNotice = new SysNotice();
		sysNotice.setTitle(title);
		sysNotice.setRelease_date(new Date());
		sysNotice.setType("02");
		sysNoticeDao.add(sysNotice);
	}

	/**
	 * 修改
	 * @param sysNotice
	 * @return
	 */
	public int update(SysNotice sysNotice) {
		return sysNoticeDao.update(sysNotice);
	}

	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int delete(int id) {
		return sysNoticeDao.delete(id);
	}

	/**
	 * 获取最新10条记录
	 * @param user_code
	 * @return
	 */
	public List<SysNotice> getTop10(String user_type) {
		return sysNoticeDao.getTop10(user_type);
	}
}
