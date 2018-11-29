package com.balance.customer.util;

/**
 * Created by liukai on 2017/11/21.
 */
public class StatusUtil {
    public static String parseStatus(int status){
        String statusStr="";
        switch (status){
            case 0:
                statusStr="为空";
                break;
            case 1:
                statusStr="空号";
                break;
            case 2:
                statusStr="拒接";
                break;
            case 3:
                statusStr="无人接听";
                break;
            case 4:
                statusStr="尝试加微信";
                break;
            case 5:
                statusStr="加微信通过";
                break;
            case 6:
                statusStr="已经邀约";
                break;
            case 7:
                statusStr="不需要";
                break;
        }
        return statusStr;
    }
}
