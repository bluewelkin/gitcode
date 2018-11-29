package com.balance.common.service;

import com.balance.common.dao.CommonDao;
import com.balance.common.vo.ComboboxVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonService {
    @Autowired
    private CommonDao commonDao;

    /**
     * 获取上一条客户信息的id
     * @return
     */
    public String getCustomerId(){
        return commonDao.getCustomerId();
    }
    /**
     * 下拉列表取值
     *
     * @param table_name   表名
     * @param value        下拉框值
     * @param content下拉框显示
     * @param order        排序
     * @param sort         升序还是降序
     * @param condition    查询条件
     * @return
     */
    public List<ComboboxVO> listCombobox(String table_name, String value, String content, String order, String sort,
                                         String condition) {
        return commonDao.listCombobox(table_name, value, content, order, sort, condition);
    }

    /**
     * 班级列表
     *
     * @return
     */
    public List<ComboboxVO> listClass() {
        return commonDao.listClass();
    }

    /**
     * 课程列表
     *
     * @return
     */
    public List<ComboboxVO> listCourse() {
        return commonDao.listCourse();
    }

    public List<ComboboxVO> listCourseByUser(int create_id) {
        return commonDao.listCourseByUser(create_id);
    }

    /**
     * 课程列表
     *
     * @return
     */
    public List<ComboboxVO> listCourse(int type) {
        return commonDao.listCourse(type);
    }

    /**
     * 教员列表
     *
     * @return
     */
    public List<ComboboxVO> listTeacher() {
        return commonDao.listTeacher();
    }

    /**
     * 上课教员列表
     *
     * @return
     */
    public List<ComboboxVO> listClassTeacher() {
        return commonDao.listClassTeacher();
    }

    /**
     * 课程类型列表
     *
     * @return
     */
    public List<ComboboxVO> listCourseType() {
        return commonDao.listCourseType();
    }

}
