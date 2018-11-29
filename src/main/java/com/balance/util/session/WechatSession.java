package com.balance.util.session;

import java.io.Serializable;

/**
 * 微信Session，存储在redis中
 * @author chykong
 *
 */
public class WechatSession implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;//
	private String cust_code;


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "UserSession [id=" + id + ", cust_code=" + cust_code + "]";
	}

	public String getCust_code() {
		return cust_code;
	}

	public void setCust_code(String cust_code) {
		this.cust_code = cust_code;
	}

}
