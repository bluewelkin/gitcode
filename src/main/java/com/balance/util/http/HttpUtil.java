package com.balance.util.http;

import com.balance.util.log.LogUtil;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SuppressWarnings("deprecation")
public class HttpUtil {

	/**
	 * 发送http请求， 参数是json串，获取返回值，返回值是json
	 * 
	 * @param url Url字符串
	 * @param jsonParam Json参数
	 * @return
	 */
	public static String getJsonFromUrlPost(String url, String jsonParam) {
		LogUtil.infoSys("请求url：" + url + ";请求参数：" + jsonParam);
		String getJson = "";
		HttpClient httpclient = null;
		HttpPost httpPost = null;
		try {
			httpclient = new DefaultHttpClient();
			httpPost = new HttpPost(url);
			StringEntity entity = new StringEntity(jsonParam.toString(), "utf-8");// 解决中文乱码问题
			entity.setContentEncoding("UTF-8");
			entity.setContentType("application/json");
			httpPost.setEntity(entity);
			HttpResponse response = httpclient.execute(httpPost);
			response.getStatusLine().getStatusCode();
			BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent(), "UTF-8"));
			String str = "";
			while ((str = rd.readLine()) != null) {
				getJson += str;
			}
			LogUtil.infoSys("返回值：" + getJson);
		} catch (Exception e) {
			LogUtil.infoSys(e.getMessage());
		} finally {
			httpPost.abort();
			httpPost.releaseConnection();
		}
		return getJson;
	}

	/**
	 * 根据url请求服务器，获取json
	 * 
	 * @param url
	 * @return
	 */
	public static String getJsonFromUrl(String url) {
		LogUtil.infoSys("请求url：" + url);
		String getJson = "";
		HttpClient httpclient = null;
		HttpGet httpgets = null;
		try {
			httpclient = new DefaultHttpClient();
			httpgets = new HttpGet(url);
			httpgets.addHeader("Content-Type", "text/html;charset=UTF-8");
			HttpResponse response = httpclient.execute(httpgets);
			response.getStatusLine().getStatusCode();
			BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent(), "UTF-8"));
			String str = "";
			while ((str = rd.readLine()) != null) {
				getJson += str;
			}
			LogUtil.infoSys("返回值：" + getJson);
		} catch (Exception e) {
			LogUtil.infoSys(e.getMessage());
		} finally {
			httpgets.abort();
			httpgets.releaseConnection();
		}
		return getJson;
	}

	/**
	 * 根据请求，获取map
	 * 
	 * @param request
	 * @return
	 */
	public static Map<String, String> parseXml(HttpServletRequest request) {
		// 解析结果存储在HashMap
		Map<String, String> map = new HashMap<String, String>();
		InputStream inputStream = null;
		try {
			inputStream = request.getInputStream();
			// 读取输入流
			SAXReader reader = new SAXReader();
			Document document = reader.read(inputStream);
			// 得到xml根元素
			Element root = document.getRootElement();
			// 得到根元素的所有子节点
			List<Element> elementList = root.elements();
			// 遍历所有子节点
			for (Element e : elementList)
				map.put(e.getName(), e.getText());
		} catch (Exception e) {
			e.printStackTrace();
			LogUtil.infoSys("解析xml报错：" + e.getMessage());
			LogUtil.infoSys("解析xml报错：" + inputStream.toString());
		} finally {
			try {
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			inputStream = null;
		}
		return map;
	}

}
