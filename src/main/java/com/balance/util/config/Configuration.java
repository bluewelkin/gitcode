package com.balance.util.config;

/**
 * 系统参数配置信息
 * @author chykong
 *
 */
public class Configuration {
	private String CRMWebService;//定义CRM webservice地址

	public String getCRMWebService() {
		return CRMWebService;
	}

	public void setCRMWebService(String cRMWebService) {
		CRMWebService = cRMWebService;
	}

}