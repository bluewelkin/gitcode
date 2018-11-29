package com.balance.sys.service;

import com.balance.sys.dao.SysDepartmentDao;
import com.balance.sys.model.SysDepartment;
import com.balance.util.string.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysDepartmentService {
	@Autowired
	private SysDepartmentDao sysDepartmentDao;

	public int add(SysDepartment sysDepartment) {
		return sysDepartmentDao.add(sysDepartment);
	}

	public int update(SysDepartment sysDepartment) {
		return sysDepartmentDao.update(sysDepartment);
	}

	public int delete(int id) {
		if (sysDepartmentDao.getChildCount(id) > 0)
			return 2;
		else
			return sysDepartmentDao.delete(id);
	}

	public SysDepartment get(int id) {
		return sysDepartmentDao.get(id);
	}

	public List<SysDepartment> list() {
		return sysDepartmentDao.list();
	}

	/**
	 * 取得组织结构 treegrid json
	 * 
	 * @return
	 */
	public String getTreeGridJson() {
		List<SysDepartment> list = list();
		String json = "";
		json = createTreeGridJson(list, 0);
		return "[" + json + "]";
	}

	private String createTreeGridJson(List<SysDepartment> list, int parent_id) {
		String str = "";
		for (SysDepartment sysDepartment : list) {
			if (sysDepartment.getParent_id() == parent_id) {
				str += "{\"id\":" + sysDepartment.getId() + ",\"code\":\"" + sysDepartment.getCode() + "\",\"parent_id\":" + sysDepartment.getParent_id()
						+ ",\"name\":\"" + sysDepartment.getName() + "\"" + ",\"principal\":\"" + sysDepartment.getPrincipal() + "\"" + ",\"description\":\""
						+ sysDepartment.getDescription() + "\"" + ",\"display_order\":" + sysDepartment.getDisplay_order();
				if (sysDepartment.getCnt() > 0)
					str += ",\"leaf\":false,\"expanded\":true,\"children\":[" + createTreeGridJson(list, sysDepartment.getId()) + "]";
				else
					str += ",\"leaf\":true";
				str += "},";
			}
		}
		str = StringUtil.subTract(str);
		return str;
	}

	/**
	 * 取得组织结构 comboboxTree json
	 * 
	 * @return
	 */
	public String getComboboxTreeJson() {
		List<SysDepartment> list = sysDepartmentDao.list();
		String json = "";
		json = createComboboxTreeJson(list, 0);
		return "[" + json + "]";
	}

	private String createComboboxTreeJson(List<SysDepartment> list, int parent_id) {
		String str = "";
		for (SysDepartment sysDepartment : list) {
			if (sysDepartment.getParent_id() == parent_id) {
				str += "{\"id\":\"" + sysDepartment.getId() + "\",\"parent_id\":" + sysDepartment.getParent_id() + ",\"text\":\"" + sysDepartment.getName()
						+ "\"";
				if (sysDepartment.getParent_id() == 0) {
					str += ",\"expanded\":" + true + "";
				} else {
					str += ",\"expanded\":" + false + "";
				}
				if (sysDepartment.getCnt() > 0)
					str += ",\"children\":[" + createComboboxTreeJson(list, sysDepartment.getId()) + "]";
				else {
					str += ",\"leaf\":true";
				}
				str += "},";
			}
		}
		str = StringUtil.subTract(str);
		return str;
	}

	public int getChildCount(int id) {
		return sysDepartmentDao.getChildCount(id);
	}
}
