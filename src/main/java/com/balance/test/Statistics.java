package com.balance.test;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by liukai on 2018/3/22.
 */
public class Statistics {
    private String name;
    private Map map0;
    private Map map1;
    private Map map2;
    private Map map3;
    private Map map4;

    public Statistics(Map map0, Map map1, Map map2, Map map3, Map map4) {
        this.map0 = new HashMap(0,0);
        this.map1 = new HashMap(1,0);
        this.map2 = new HashMap(2,0);
        this.map3 = new HashMap(3,0);
        this.map4 = new HashMap(4,0);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map getMap0() {
        return map0;
    }

    public void setMap0(Map map0) {
        this.map0 = map0;
    }

    public Map getMap1() {
        return map1;
    }

    public void setMap1(Map map1) {
        this.map1 = map1;
    }

    public Map getMap2() {
        return map2;
    }

    public void setMap2(Map map2) {
        this.map2 = map2;
    }

    public Map getMap3() {
        return map3;
    }

    public void setMap3(Map map3) {
        this.map3 = map3;
    }

    public Map getMap4() {
        return map4;
    }

    public void setMap4(Map map4) {
        this.map4 = map4;
    }
}
