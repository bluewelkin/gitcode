package com.balance.util.page;

import java.util.List;

/**
 * 类说明：页码显示效果类 。1：TextModel “第一页 上一页 下一页 最后一页”；2：NumModel “第一页 2 3 4 最后一页”；
 * 
 * @author 作者: LiuJunGuang
 * @version 创建时间：2011-11-9 下午04:09:22
 */
@SuppressWarnings("rawtypes")
public class PageModel<T> {
	/**
	 * 文本类型：形如：“第一页 上一页 下一页 最后一页”
	 */
	public static final int TEXT_MODEL = 1;

	/**
	 * 数字类型：形如：NumModel “第一页 2 3 4 最后一页”
	 */
	public static final int NUM_MODEL = 2;
	/**
	 * 页码显示模型
	 */
	private int model = 1;
	/**
	 * 页码连接URL，不需要添加页码参数
	 */
	private String url;
	/**
	 * 页码信息的封装
	 */

	private Page page = null;
	/**
	 * 模型类型的页码
	 */
	private StringBuffer strHtml = null;

	/**
	 * 数字类型的页码模型中间数字显示个数，例如：第一页 1 2 3 4 5 最后一页，numCount = 5; 默认显示 5个数字
	 */
	private int numCount = 5;

	/**
	 * 页码的模式默认的文字类型的样式
	 * 
	 * @param page
	 *            页面信息
	 * @param url
	 *            页面的url地址
	 */
	public PageModel(Page page, String url) {
		super();
		this.url = url;
		this.page = page;
	}

	/**
	 * 页码的模型
	 * 
	 * @param page
	 *            页面信息
	 * @param url
	 *            页面的url地址
	 * @param model
	 *            页码的显示样式
	 */
	public PageModel(Page page, String url, int model) {
		super();
		this.model = model;
		this.url = url;
		this.page = page;
	}

	/**
	 * 页码的模型
	 * 
	 * @param page
	 *            页面信息
	 * @param url
	 *            页面的url地址
	 * @param model
	 *            页码的显示样式
	 * @param numCount
	 *            数字类型的页码，共显示的个数
	 */
	public PageModel(Page page, String url, int model, int numCount) {
		super();
		this.model = model;
		this.url = url;
		this.page = page;
		this.numCount = numCount;
	}

	/**
	 * 返回页面的模型
	 * 
	 * @return
	 */
	public String getPageModel() {
		// 组装页码模型
		createURL();
		return createModel();
	}

	/**
	 * 构建URL
	 */
	private void createURL() {
		url = url.contains("?") ? url + "&page=" : url + "?page=";
	}

	/**
	 * 组装页码模型
	 */
	private String createModel() {
		strHtml = new StringBuffer();
		switch (model) {
		case TEXT_MODEL:// 文本模型
			buildTextModel();
			break;
		case NUM_MODEL:// 数字模型
			buildNumModel();
			break;
		default:// 文本模型
			buildNumModel();
			break;
		}
		return strHtml.toString();
	}

	/**
	 * 组件数字类型的页码模型
	 */
	private void buildNumModel() {
		int currentPage = page.getCurrentPage();
		int countPage = page.getCountPage();
		strHtml.append("<table width='100%'  border='0' cellspacing='0' cellpadding='0'>").append("<tr><td height='24' align='center'>");
		// 构造格式：第一页 1 2 3 4 5 最后一页
		PageIndex pageIndex = PageIndex.getPageIndex(numCount, currentPage, countPage);
		// 不是第一页时，显示首页
		if (currentPage > 1) {
			strHtml.append("<a href='").append(url).append("1'>首页</a>&nbsp;&nbsp;");
		}
		if (currentPage <= countPage) {
			for (int i = pageIndex.getStartIndex(); i <= pageIndex.getEndIndex(); i++) {
				// 当前页加粗
				if (currentPage == i) {
					strHtml.append("<b>").append(i).append("</b>&nbsp;&nbsp;");
				} else {
					strHtml.append("<a href='").append(url).append(i).append("'>").append(i).append("</a>&nbsp;&nbsp;");
				}
			}
			// 不是最后一页显示末页
			if (currentPage < countPage) {
				strHtml.append("<a href='").append(url).append(countPage).append("'>末页</a>");
			}
		}
		strHtml.append("</td></tr></table>");
	}

	/**
	 * 组件文本类型的页码
	 */
	private void buildTextModel() {
		int currentPage = page.getCurrentPage();
		int countPage = page.getCountPage();
		strHtml.append("<table width='100%'  border='0' cellspacing='0' cellpadding='0'>").append("<tr> <td height='24' align='center'>当前页数：[").append(currentPage).append("/").append(countPage)
				.append("]&nbsp;&nbsp;");
		if (currentPage > 1) {
			strHtml.append("<a href='").append(url).append("1'>首页</a>").append("&nbsp;&nbsp;<a href='").append(url).append(currentPage - 1).append("'>上一页</a>");
		}
		if (currentPage < countPage) {
			strHtml.append("&nbsp;&nbsp;<a href='").append(url).append(currentPage + 1).append("'>下一页</a>&nbsp;&nbsp;<a href='").append(url).append(countPage).append("'>末页</a>");
		}
		strHtml.append("</td></tr></table>");
	}

	@SuppressWarnings("unchecked")
	public List<T> getList() {
		return page.getList();
	}
}
