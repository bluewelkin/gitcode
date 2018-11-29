package com.balance.statistics.service;

import com.balance.customer.model.User;
import com.balance.statistics.VO.StatisticsSearchVO;
import com.balance.statistics.dao.StatisticsResourcesDao;
import com.balance.statistics.model.Statistics;
import com.balance.util.excel.Excel2007Util;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by liukai on 2018/3/20.
 */
@Service
public class StatisticsResourcesService {
    @Autowired
private StatisticsResourcesDao statisticsResourcesDao;
    public List<User> findUserList(){
        return statisticsResourcesDao.findUserList();
    }
    public List listAll(StatisticsSearchVO statisticsSearchVO,int pageIndex, int pageSize){
        return statisticsResourcesDao.listAll(statisticsSearchVO,pageIndex,  pageSize);
    }
    public int count(StatisticsSearchVO statisticsSearchVO){
        return statisticsResourcesDao.count(statisticsSearchVO);
    }
    public int countTotal(StatisticsSearchVO statisticsSearchVO){
    return statisticsResourcesDao.countTotal(statisticsSearchVO);
    }
    public int countNotAlloted(){
        return statisticsResourcesDao.countNotAlloted();
    }
    public void export(StatisticsSearchVO statisticsSearchVO, String templatePath, HttpServletResponse response,int pageIndex, int pageSize) {
        List<Statistics> dataList = statisticsResourcesDao.listAll(statisticsSearchVO,pageIndex,  pageSize);
        //名单总数
        int total=statisticsResourcesDao.countTotal(statisticsSearchVO);
        //尚未分配名单
        int notAlloted=statisticsResourcesDao.countNotAlloted();
        String[][] data = null;

        long sumMoney = 0;
//    if (dataList.size() <= 10000) {
        data = new String[dataList.size()][13];

        for (int i = 0; i < dataList.size(); i++) {
            Statistics statistics=dataList.get(i);
            data[i][0] = WebUtil.getSafeStr(statistics.getResources());
            data[i][1] = WebUtil.getSafeStr(statistics.getTotal());
            data[i][2] = WebUtil.getSafeStr(statistics.getNotAlloted());
            data[i][3] = WebUtil.getSafeStr(statistics.getAlloted());
            data[i][4] = WebUtil.getSafeStr(statistics.getCalled());
            data[i][5] = WebUtil.getSafeStr(statistics.getStatus0());
            data[i][6] = WebUtil.getSafeStr(statistics.getStatus1());
            data[i][7] = WebUtil.getSafeStr(statistics.getStatus2());
            data[i][8] = WebUtil.getSafeStr(statistics.getStatus3());
            data[i][9] = WebUtil.getSafeStr(statistics.getStatus4());
            data[i][10] = WebUtil.getSafeStr(statistics.getStatus5());
            data[i][11] = WebUtil.getSafeStr(statistics.getStatus6());
            data[i][12] = WebUtil.getSafeStr(statistics.getStatus7());

        }
//    }

        Excel2007Util excel2007Util = new Excel2007Util();
        excel2007Util.writeExcel(data, templatePath, "名单统计分析", response, 1, 300);

    }
}
