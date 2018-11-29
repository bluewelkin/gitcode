package com.balance.customer.service;

import com.balance.customer.dao.CustomerAllotDao;
import com.balance.customer.dao.ResourcesDao;
import com.balance.customer.model.*;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by liukai on 2018/3/27.
 */
@Service
public class ResourcesService {
    @Autowired
    private ResourcesDao resourcesDao;
    public int count(){
        return resourcesDao.count();
    }
    public int countSection(String resources,String create_at){
        return resourcesDao.countSection(resources,create_at);
    }
    public List<ResourcesInfo> list(int pageIndex, int pageSize){
        return resourcesDao.list(pageIndex,pageSize);
    }
    public int updateRelieve(String resources,String create_at){
        return resourcesDao.relieve(resources,create_at);
    }
    public int delete(String resources,String create_at){
        return resourcesDao.delete(resources,create_at);
    }
    public int updateRelieves(String id_start, String id_end) {

        resourcesDao.updateRelieves(id_start,id_end);
        return 1;
    }
public List<Section>listSection(String resources,String create_at,int pageIndex,int pageSize){
   return resourcesDao.listSection(resources,create_at,pageIndex,pageSize);
}
}
