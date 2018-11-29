package com.balance.util.alert;

import javax.servlet.http.HttpServletRequest;

public class AlertUtil {
	/**
	 * 生成提示框 这地方通过ajax请求来获取是否显示及加载内容，而不是直接页面加载输入提示框 
	 * 这样返回页面的时候不会再次提示，效果比较好
	 * 
	 * @param div的id值
	 * @param desc提示内容
	 * @param type 提示类型，success，warning
	 * @return
	 */
	public static String createOperaAlert(String operaId, String desc, String type) {
		StringBuffer sb = new StringBuffer("<script type=\"text/javascript\">");
		// sb.append("jQuery(document).ready(function() {");
		// sb.append("App.alert({	container : '#" + operaId +
		// "',place : 'prepend',type : '" + type + "',	message : '" + desc
		// +
		// "',	close : true,	reset : false,	focus : true,closeInSeconds : 5,icon : 'fa fa-info-circle'});");
		// sb.append("});");
		sb.append(" window.onload = function () {");
		sb.append("App.alert({	container : '#" + operaId + "',place : 'prepend',type : '" + type + "',	message : '" + desc
				+ "',	close : true,	reset : false,	focus : true,closeInSeconds : 5,icon : 'fa fa-info-circle'});");
		sb.append("};");
		sb.append("</script>");
		return sb.toString();
	}

	public static String createOperaAlert(String desc, String type) {
		return createOperaAlert("operaDiv", desc, type);
	}

	public static String createOperaAlert(String desc) {
		return createOperaAlert("operaDiv", desc, "success");
	}

	/**
	 * 操作完毕后设置提示值
	 * @param request
	 * @param alertInfo
	 */
	public static void setAlert(HttpServletRequest request, AlertInfo alertInfo) {
		request.getSession().setAttribute("alertInfo", alertInfo);
	}

	public static void setAlert(HttpServletRequest request, String msg, String type) {
		AlertInfo alertInfo = new AlertInfo(msg, type);
		request.getSession().setAttribute("alertInfo", alertInfo);
	}

	public static void setAlert(HttpServletRequest request, String msg) {
		AlertInfo alertInfo = new AlertInfo(msg);
		request.getSession().setAttribute("alertInfo", alertInfo);
	}
}
