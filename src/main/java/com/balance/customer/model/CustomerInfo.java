package com.balance.customer.model;

import java.util.Date;

/**
 * Created by dsy on 2017/9/18.
 * 用户信息表  model
 */
public class CustomerInfo {

	private String id;// 主键
	private String name; // 姓名
	private String mobile;// 电话
	private String remark;// 备注
	private Integer remark_status;//备注状态0-未备注；1-已备注
	private Integer user_id;//关联用户id
	private String user_name;//关联用户名
	private Integer status;//状态0--未分配1--已分配
	private String resources;//客户信息来源
	private Integer customer_status;//客户状态 空号、拒接、无人接听、已经加微信、已经邀约、不需要
	private Integer archive_status;//归档状态 0-未归档；1-已归档
	private String create_by;//创建人
	private Date create_at;//创建时间
	private String operate_by;//修改人
	private Date operate_at;//修改时间
	private Date archive_time;//归档时间
private String allot_by;//分配人
private Date allot_at;//分配时间

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getRemark_status() {
		return remark_status;
	}

	public void setRemark_status(Integer remark_status) {
		this.remark_status = remark_status;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getResources() {
		return resources;
	}

	public void setResources(String resources) {
		this.resources = resources;
	}

	public Integer getCustomer_status() {
		return customer_status;
	}

	public void setCustomer_status(Integer customer_status) {
		this.customer_status = customer_status;
	}

	public Integer getArchive_status() {
		return archive_status;
	}

	public void setArchive_status(Integer archive_status) {
		this.archive_status = archive_status;
	}

	public String getCreate_by() {
		return create_by;
	}

	public void setCreate_by(String create_by) {
		this.create_by = create_by;
	}

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}

	public String getOperate_by() {
		return operate_by;
	}

	public void setOperate_by(String operate_by) {
		this.operate_by = operate_by;
	}

	public Date getOperate_at() {
		return operate_at;
	}

	public void setOperate_at(Date operate_at) {
		this.operate_at = operate_at;
	}

	public Date getArchive_time() {
		return archive_time;
	}

	public void setArchive_time(Date archive_time) {
		this.archive_time = archive_time;
	}

	public String getAllot_by() {
		return allot_by;
	}

	public void setAllot_by(String allot_by) {
		this.allot_by = allot_by;
	}

	public Date getAllot_at() {
		return allot_at;
	}

	public void setAllot_at(Date allot_at) {
		this.allot_at = allot_at;
	}

	@Override
	public String toString() {
		return "CustomerInfo{" +
				"id='" + id + '\'' +
				", name='" + name + '\'' +
				", mobile='" + mobile + '\'' +
				", remark='" + remark + '\'' +
				", remark_status=" + remark_status +
				", user_id=" + user_id +
				", user_name='" + user_name + '\'' +
				", status=" + status +
				", resources='" + resources + '\'' +
				", customer_status=" + customer_status +
				", archive_status=" + archive_status +
				", create_by='" + create_by + '\'' +
				", create_at=" + create_at +
				", operate_by='" + operate_by + '\'' +
				", operate_at=" + operate_at +
				", archive_time=" + archive_time +
				", allot_by='" + allot_by + '\'' +
				", allot_at=" + allot_at +
				'}';
	}
}
