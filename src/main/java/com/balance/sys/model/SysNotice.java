package com.balance.sys.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 通知
 * @author chykong
 *
 */
public class SysNotice {
	private int id;
	private String title;
	private String content;
	private String release_person;
	private String release_personname;
	private Date release_date;
	private String type;//

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRelease_person() {
		return release_person;
	}

	public void setRelease_person(String release_person) {
		this.release_person = release_person;
	}

	public String getRelease_personname() {
		return release_personname;
	}

	public void setRelease_personname(String release_personname) {
		this.release_personname = release_personname;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "GMT+8")
	public Date getRelease_date() {
		return release_date;
	}

	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
