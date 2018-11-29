package com.balance.util.config;

import java.io.InputStream;
import java.util.Properties;

public class ConfigUtil {
	public static Properties configProps = null;

	static {
		InputStream is = ConfigUtil.class.getResourceAsStream("/conf/application.properties");
		configProps = new Properties();
		try {
			configProps.load(is);
		} catch (Exception e) {
			System.out.println("不能读取属性文件. " + "请确保db.properties在CLASSPATH指定的路径中");
		}
	}

	/**
	 * 获取对应的属性值
	 * @param param
	 * @return
	 */
	public static String getConfig(String param) {
		return (String) configProps.get(param);
	}

	public static void main(String[] args) {
		System.out.println(ConfigUtil.getConfig("serverIp"));
	}
}
