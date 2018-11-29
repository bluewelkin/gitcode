package com.balance.sys.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 系统用户
 * 
 * @author 孔垂云
 * 
 */
public class SysUser {
	private int id;
	private int role_id;//所属角色
	private String role_name;//角色描述
	private String username;//登录账号
	private String password;//登录密码
	private String randomcode;//随机数
	private int status;//账号状态
	private String realname;//姓名
	private Date create_date;//创建时间
	private String create_person;//创建人
	private int type;//类型
	private String idnum;//身份证号

	private String cover_url;//照片头像

	public String getIdnum() {
		return idnum;
	}

	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRandomcode() {
		return randomcode;
	}

	public void setRandomcode(String randomcode) {
		this.randomcode = randomcode;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "GMT+8")
	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public String getCreate_person() {
		return create_person;
	}

	public void setCreate_person(String create_person) {
		this.create_person = create_person;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public String getRole_name() {
		return role_name;
	}

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getCover_url() {
		return cover_url;
	}

	public void setCover_url(String cover_url) {
		this.cover_url = cover_url;
	}

	@Override
	public String toString() {
		return "SysUser{" +
				"id=" + id +
				", role_id=" + role_id +
				", role_name='" + role_name + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", randomcode='" + randomcode + '\'' +
				", status=" + status +
				", realname='" + realname + '\'' +
				", create_date=" + create_date +
				", create_person='" + create_person + '\'' +
				", type=" + type +
				", idnum='" + idnum + '\'' +
				", cover_url='" + cover_url + '\'' +
				'}';
	}
}
