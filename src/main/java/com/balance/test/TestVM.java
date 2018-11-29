package com.balance.test;

import com.balance.customer.model.CustomerInfo;
import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by liukai on 2018/4/12.
 */
public class TestVM {
    public static void main(String[] args) {
//        List<CustomerInfo> list=new ArrayList<CustomerInfo>();
//        for(int i=0;i<500000;i++){
//            CustomerInfo c=new CustomerInfo();
//            c.setCreate_at(new Date());
//            c.setResources("世联");
//            c.setRemark_status(1);
//            c.setRemark("dsjhfdsjgfsgkjsdhjf shkjfh skjf");
//            c.setUser_name("张三");
//            c.setUser_id(002);
//            c.setStatus(2);
//            c.setMobile("15236541256");
//            c.setName("wangwu ");
//            c.setAllot_at(new Date());
//            c.setAllot_by("wangwu");
//            c.setArchive_time(new Date());
//            c.setOperate_at(new Date());
//           list.add(c);
//        }
//        List<String>list=new ArrayList<>();
//        for(int i=0;i<500000;i++){
//            list.add("100");
//        }
//
//        System.out.println("free:"+Runtime.getRuntime().freeMemory());
//        System.out.println("max:"+Runtime.getRuntime().maxMemory());
//        System.out.println("total:"+Runtime.getRuntime().totalMemory()+"\n");
        System.out.println(StringUtils.leftPad("123", 8, '0'));
    }
}
