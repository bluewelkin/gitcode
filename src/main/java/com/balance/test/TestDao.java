package com.balance.test;


import org.apache.commons.lang3.ArrayUtils;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by liukai on 2017/9/20.
 */
public class TestDao {
    ApplicationContext ac=new ClassPathXmlApplicationContext("spring/applicationContext.xml");
    JdbcTemplate template=ac.getBean("jdbcTemplate",JdbcTemplate.class);
    @Test
    public void test(){
        String sql="select order_name from t_order_info where id=?";
        Object[]param=new Object[]{1};
        String name=(String)template.queryForObject(sql,param,String.class);
        System.out.println(name);
    }
    @Test
    public void test1(){


        List list1=new ArrayList();
       int []bus=new int[]{1,3};
       int a=bus[0];
       int b,c;
       String str;
       for(int i=1;i<bus.length;i++){
           b=bus[i-1];
           c=bus[i];
           if(b+1!=c){
            str=a+"-"+b;
            list1.add(str);
            a=c;
           }
           if(i==bus.length-1){
               str=a+"-"+c;
               list1.add(str);
           }
       }
        System.out.println(list1);
    }
    @Test
    public void test3(){
      String str=  String.format("%08d",123);
        System.out.println(str);

    }
    @Test
    public void test4(){
        List<Integer>arg=new ArrayList<>();
        arg.add(1);
        arg.add(5);
        arg.add(6);
        arg.add(8);
        arg.add(9);
        arg.add(10);

        List<String> list=new ArrayList();
        List<Integer> ids=arg;
        int a=ids.get(0);
        int b,c;
        String str;
        if(ids.size()==1){
            str=String.format("%08d", a)+"-"+String.format("%08d", a);
            list.add(str);
            System.out.println("长度1："+list);
            return ;
        }
        for(int i=1;i<ids.size();i++){
            b=ids.get(i-1);
            c=ids.get(i);
            if(b+1!=c){
                str=String.format("%08d", a)+"-"+String.format("%08d", b);
                list.add(str);
                a=c;
            }
            if(i==ids.size()-1){
                if(b+1!=c){
                    str=String.format("%08d", a)+"-"+String.format("%08d", c);
                    list.add(str);
                }else{
                    str=String.format("%08d", a)+"-"+String.format("%08d", c);
                    list.add(str);
                }
            }
        }
        System.out.println("长度n："+list);
    }


}
