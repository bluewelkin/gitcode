package com.balance.customer.model;

import java.util.Date;

/**
 * Created by liukai on 2018/4/20.
 */
public class Section {
    private String id_max;//号段起
    private String id_min;//号段末
    private Integer user_id;//业务员id
    private String user_name;//业务员名字
    private String resources;//名单来源
    private String allot_at;//分配时间

    public String getId_max() {
        return id_max;
    }

    public void setId_max(String id_max) {
        this.id_max = id_max;
    }

    public String getId_min() {
        return id_min;
    }

    public void setId_min(String id_min) {
        this.id_min = id_min;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getResources() {
        return resources;
    }

    public void setResources(String resources) {
        this.resources = resources;
    }

    public String getAllot_at() {
        return allot_at;
    }

    public void setAllot_at(String allot_at) {
        this.allot_at = allot_at;
    }

    @Override
    public String toString() {
        return "Section{" +
                "id_max='" + id_max + '\'' +
                ", id_min='" + id_min + '\'' +
                ", user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", resources='" + resources + '\'' +
                ", allot_at=" + allot_at +
                '}';
    }
}
