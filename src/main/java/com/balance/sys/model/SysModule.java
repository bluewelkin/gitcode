package com.balance.sys.model;

/**
 * 功能模块vo
 * 
 * @author chykong
 * 
 */
public class SysModule {
	private int id;
	private String name;
	private String code;// 代码
	private Integer parent_id;// 上级节点
	private String parent_name;// 上级名称
	private String url;// 链接
	private String iconImg;//
	private String icon_color;// 图标颜色
	private String target;//
	private int display_order;//
	private int cnt;

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getParent_id() {
		return parent_id;
	}

	public void setParent_id(Integer parent_id) {
		this.parent_id = parent_id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public int getDisplay_order() {
		return display_order;
	}

	public void setDisplay_order(int display_order) {
		this.display_order = display_order;
	}

	public String getIconImg() {
		return iconImg;
	}

	public void setIconImg(String iconImg) {
		this.iconImg = iconImg;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getParent_name() {
		return parent_name;
	}

	public void setParent_name(String parent_name) {
		this.parent_name = parent_name;
	}

	public String getIcon_color() {
		return icon_color;
	}

	public void setIcon_color(String icon_color) {
		this.icon_color = icon_color;
	}
}
