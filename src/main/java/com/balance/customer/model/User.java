package com.balance.customer.model;

/**
 * Created by liukai on 2017/10/18.
 */
public class User {
    private Integer id;//业务员id
    private String realname;//业务员姓名

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", realname='" + realname + '\'' +
                '}';
    }
}
