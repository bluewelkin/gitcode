package com.balance.customer.model;

import java.util.Date;

/**
 * Created by liukai on 2018/3/27.
 */
public class ResourcesInfo {
    private String resources;//名单来源
    private String import_time;//导入时间
    private Integer total;//同一来源名单数量

    public String getResources() {
        return resources;
    }

    public void setResources(String resources) {
        this.resources = resources;
    }

    public String getImport_time() {
        return import_time;
    }

    public void setImport_time(String import_time) {
        this.import_time = import_time;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "ResourcesInfo{" +
                "resources='" + resources + '\'' +
                ", import_time='" + import_time + '\'' +
                ", total=" + total +
                '}';
    }
}
