package com.balance.util.web;

import ch.qos.logback.core.net.SyslogOutputStream;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by liukai on 2018/3/16.
 */
public class Test {
    public static void main(String[] args) {
        List<Tel>list=new ArrayList<>();
        for(int i=0;i<10;i++){
            Tel t=new Tel();
            t.setId(i);
            t.setUserName("dd");
            list.add(t);
        }
        for(int i=13;i<16;i++){
            Tel t=new Tel();
            t.setId(i);
            t.setUserName("dd");
            list.add(t);
        }
        for(int i=20;i<25;i++){
            Tel t=new Tel();
            t.setId(i);
            t.setUserName("dd");
            list.add(t);
        }
        List listCount=new ArrayList();
        for(int i=0;i<list.size();i++){
            listCount.add(list.get(i).getId());
        }

        int a,b;
        for(int i=0;i<listCount.size();i++){
            a=(int)listCount.get(i);
        }
    }

}
