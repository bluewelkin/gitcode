package com.balance.util.alert;

/**
 * 弹出框内容，修改或删除后提示
 * @author chykong
 *
 */
public class AlertInfo {

	private String type;//类型 info,success,warning
	private String msg;//提示内容

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public AlertInfo() {
	}

	public AlertInfo(String msg, String type) {
		super();
		this.type = type;
		this.msg = msg;
	}

	public AlertInfo(String msg) {
		super();
		this.msg = msg;
		this.type = "success";//默认成功
	}

}
