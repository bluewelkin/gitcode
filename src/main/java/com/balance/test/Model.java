package com.balance.test;

/**
 * Created by liukai on 2018/3/22.
 */
public class Model {
    private String name;
    private Integer status;
    private Integer count;

    public Model(String name, Integer status, Integer count) {
        this.name = name;
        this.status = status;
        this.count = count;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Model{" +
                "name='" + name + '\'' +
                ", status=" + status +
                ", count=" + count +
                '}';
    }
}
