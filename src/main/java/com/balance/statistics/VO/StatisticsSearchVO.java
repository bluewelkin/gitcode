package com.balance.statistics.VO;

import java.util.Date;

/**
 * Created by liukai on 2018/3/20.
 */
public class StatisticsSearchVO {
    private String startTime;
    private String endTime;
    private Integer user_id;
    private String resources;

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getResources() {
        return resources;
    }
    public String getResourcesParm(){
        return "%"+resources+"%";
    }

    public void setResources(String resources) {
        this.resources = resources;
    }

    @Override
    public String toString() {
        return "StatisticsSearchVO{" +
                "startTime=" + startTime +
                ", endTime=" + endTime +
                ", userId='" + user_id + '\'' +
                ", resources='" + resources + '\'' +
                '}';
    }
}
