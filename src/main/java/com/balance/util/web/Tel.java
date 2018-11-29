package com.balance.util.web;

/**
 * Created by liukai on 2018/3/16.
 */
public class Tel {
    private int id;
    private String userName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "Tel{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                '}';
    }
}
