package com.balance.statistics.model;

/**
 * Created by liukai on 2018/3/21.
 */
public class Statistics {
    private String resources;//名单来源
    private String user_name;;//业务员姓名
    private Integer total;//名单总数
    private Integer notAlloted;//尚未分配名单
    private Integer alloted;//已经分配的名单数
    private Integer called;//已呼叫的客户数
    private Integer status0;//未呼叫的客户数
    private Integer status1;//空号数
    private Integer status2;//拒接数量
    private Integer status3;//无人接听数量
    private Integer status4;//尝试家微信
    private Integer status5;//加微信通过
    private Integer status6;//已经邀约数量
    private Integer status7;//不需要数量

    @Override
    public String toString() {
        return "Statistics{" +
                "resources='" + resources + '\'' +
                ", user_name='" + user_name + '\'' +
                ", total=" + total +
                ", notAlloted=" + notAlloted +
                ", alloted=" + alloted +
                ", called=" + called +
                ", status0=" + status0 +
                ", status1=" + status1 +
                ", status2=" + status2 +
                ", status3=" + status3 +
                ", status4=" + status4 +
                ", status5=" + status5 +
                ", status6=" + status6 +
                ", status7=" + status7 +
                '}';
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Integer getNotAlloted() {
        return notAlloted;
    }

    public void setNotAlloted(Integer notAlloted) {
        this.notAlloted = notAlloted;
    }

    public String getResources() {
        return resources;
    }

    public void setResources(String resources) {
        this.resources = resources;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public Integer getAlloted() {
        return alloted;
    }

    public void setAlloted(Integer alloted) {
        this.alloted = alloted;
    }

    public Integer getCalled() {
        return called;
    }

    public void setCalled(Integer called) {
        this.called = called;
    }

    public Integer getStatus0() {
        return status0;
    }

    public void setStatus0(Integer status0) {
        this.status0 = status0;
    }

    public Integer getStatus1() {
        return status1;
    }

    public void setStatus1(Integer status1) {
        this.status1 = status1;
    }

    public Integer getStatus2() {
        return status2;
    }

    public void setStatus2(Integer status2) {
        this.status2 = status2;
    }

    public Integer getStatus3() {
        return status3;
    }

    public void setStatus3(Integer status3) {
        this.status3 = status3;
    }

    public Integer getStatus4() {
        return status4;
    }

    public void setStatus4(Integer status4) {
        this.status4 = status4;
    }

    public Integer getStatus5() {
        return status5;
    }

    public void setStatus5(Integer status5) {
        this.status5 = status5;
    }

    public Integer getStatus6() {
        return status6;
    }

    public void setStatus6(Integer status6) {
        this.status6 = status6;
    }

    public Integer getStatus7() {
        return status7;
    }

    public void setStatus7(Integer status7) {
        this.status7 = status7;
    }

}
