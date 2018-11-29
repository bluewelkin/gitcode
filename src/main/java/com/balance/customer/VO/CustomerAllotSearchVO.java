package com.balance.customer.VO;

/**
 * 资料分配查询
 * Created by liukai on 2017/10/18.
 */
public class CustomerAllotSearchVO {
    private String customer_id_start;
    private String customer_id_end;
    private Integer status;
    private Integer user_id;
    private String user_name;
    private Integer customer_status;

    @Override
    public String toString() {
        return "CustomerAllotSearchVO{" +
                "customer_id_start='" + customer_id_start + '\'' +
                ", customer_id_end='" + customer_id_end + '\'' +
                ", status=" + status +
                ", user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", customer_status=" + customer_status +
                '}';
    }

    public Integer getCustomer_status() {
        return customer_status;
    }

    public void setCustomer_status(Integer customer_status) {
        this.customer_status = customer_status;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getCustomer_id_start() {
        return customer_id_start;
    }

    public void setCustomer_id_start(String customer_id_start) {
        this.customer_id_start = customer_id_start;
    }

    public String getCustomer_id_end() {
        return customer_id_end;
    }

    public void setCustomer_id_end(String customer_id_end) {
        this.customer_id_end = customer_id_end;
    }

}
