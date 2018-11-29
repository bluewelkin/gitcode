package com.balance.util.config;

import org.springframework.stereotype.Component;

@Component
public class PubConfig {
	private String imageServer;//图片显示服务器地址
	private String imageUploadPath;//图片路径
	private String staticServer;//
	private String dynamicServer;//

	private Integer teacher_role_id;  //上课教员  角色id
	private Integer audit_role_id;  //教务管理员  角色id
	private Integer student_role_id;  //学员角色 id

	private String appDomain;//webapp域名

	public String getImageServer() {
		return imageServer;
	}

	public void setImageServer(String imageServer) {
		this.imageServer = imageServer;
	}

	public String getImageUploadPath() {
		return imageUploadPath;
	}

	public void setImageUploadPath(String imageUploadPath) {
		this.imageUploadPath = imageUploadPath;
	}


	public String getStaticServer() {
		return staticServer;
	}

	public void setStaticServer(String staticServer) {
		this.staticServer = staticServer;
	}

	public String getDynamicServer() {
		return dynamicServer;
	}

	public void setDynamicServer(String dynamicServer) {
		this.dynamicServer = dynamicServer;
	}

	public String getAppDomain() {
		return appDomain;
	}

	public void setAppDomain(String appDomain) {
		this.appDomain = appDomain;
	}

	public Integer getTeacher_role_id() {
		return teacher_role_id;
	}

	public void setTeacher_role_id(Integer teacher_role_id) {
		this.teacher_role_id = teacher_role_id;
	}

	public Integer getAudit_role_id() {
		return audit_role_id;
	}

	public void setAudit_role_id(Integer audit_role_id) {
		this.audit_role_id = audit_role_id;
	}

	public Integer getStudent_role_id() {
		return student_role_id;
	}

	public void setStudent_role_id(Integer student_role_id) {
		this.student_role_id = student_role_id;
	}
}
