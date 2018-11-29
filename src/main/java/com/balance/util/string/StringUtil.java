package com.balance.util.string;

import com.balance.util.date.DateUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.*;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 用户字符串操作333
 * 
 * @author kcy
 * 
 */
public class StringUtil {



	public static String createCustomerId(String id){
		int id_old=Integer.parseInt(id);
		id_old++;
		String id_new=String.valueOf(id_old);
		int length=8-id_new.length();
		for(int i=0;i<length;i++){
			id_new="0"+id_new;
		}
		return id_new;
	}
//	private static String hexString = "0123456789ABCDEF";

	/**
	 * 判断是否是整数
	 * 
	 * @param integer
	 * @return
	 */
	public static boolean isInteger(String integer) {
		Pattern p = Pattern.compile("\\d*");
		Matcher m = p.matcher(integer);
		boolean b = m.matches();
		return b;
	}

	/**
	 * 判断是否是正整数
	 * 
	 * @param integer
	 * @return
	 */
	public static boolean isInteger2(String integer) {
		Pattern p = Pattern.compile("^[0-9]*[1-9][0-9]*$");
		Matcher m = p.matcher(integer);
		boolean b = m.matches();
		return b;
	}

	/**
	 * 根据字段序号取得数据表对应的字段名称
	 * 
	 * @param id
	 * @return
	 */
	public static String dealFieldStr(int id) {
		if (id < 10)
			return "data_00" + id;
		else if (id < 100)
			return "data_0" + id;
		else
			return "data_" + id;
	}

	public static String dealFieldStr(String report_name, int id) {
		if (id < 10)
			return report_name + "_00" + id;
		else if (id < 100)
			return report_name + "_0" + id;
		else
			return report_name + "_" + id;
	}

	/**
	 * 把前台传过来的含中文的url字符串转换成标准中文，比如%25E5%258C%2597%25E4%25BA%25AC转换成北京
	 */
	public static String decodeUrl(String url) {
		if (url == null)
			return "";
		String str = "";
		try {
			str = URLDecoder.decode(url, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return str;
	}

	/**
	 * 把比如北京转换成%25E5%258C%2597%25E4%25BA%25AC
	 */
	public static String encodeUrl(String url) {
		if (url == null)
			return "";
		String str = "";
		try {
			str = URLEncoder.encode(url, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return str;
	}

	/**
	 * 取字符除最后一位的子串，比如 aaa,bbb, 返回aaa,bbb
	 * 
	 * @param str
	 * @return
	 */
	public static String subTract(String str) {
		if (str.length() == 0)
			return "";
		else
			return str.substring(0, str.length() - 1);
	}

	/**
	 * 判断字符串是null或空
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNullOrEmpty(String str) {
		if (str == null || str.equals(""))
			return true;
		else
			return false;
	}

	/**
	 * 把字符串里面的\r\n替换掉，json处理
	 * 
	 * @param str
	 * @return
	 */
	public static String dealJsonFormat(String str) {
		str = str.replace("\r", "");
		str = str.replace("\n", "");
		return str;
	}

	/**
	 * 把字符串里面的"-"和空格" "替换掉，并截取年月日成八位数日期字符串（18点日期格式），日期处理
	 * 
	 * @param str
	 * @return
	 */
	public static String dealDateFormat(String str) {
		str = str.replace("-", "");
		str = str.replace(" ", "");
		str = str.substring(0, 8);
		return str;
	}

	public static boolean checkFileExist(String path) {
		File file = new File(path);
		if (file.isFile() && file.exists()) {
			return true;
		} else
			return false;
	}

	/**
	 * 判断字符串是null或空
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNotNullOrEmpty(String str) {
		if (str != null && !str.equals(""))
			return true;
		else
			return false;
	}

	/**
	 * 如果为null不trim
	 * 
	 * @param str
	 * @return
	 */
	public static String isNullNoTrim(String str) {
		if (!(str == null)) {

			return str.trim();
		} else {
			return str;
		}
	}

	/**
	 * 格式化小数
	 * 
	 * @param val
	 *
	 * @return
	 */
	public static String formatDouble(String val, int point) {
		String str = "";
		DecimalFormat nf = new DecimalFormat();
		nf.setMaximumFractionDigits(point);
		str = nf.format(Double.parseDouble(val));
		return str.replace(",", "");
	}

	/**
	 * 格式化小数
	 * 
	 * @param val
	 *
	 * @return
	 */
	public static double formatDouble(double val, int point) {
		String str = "";
		DecimalFormat nf = new DecimalFormat();
		nf.setMaximumFractionDigits(point);
		str = nf.format(val);
		return Double.parseDouble(str.replace(",", ""));
	}

	/**
	 * 格式化两位小数
	 * 
	 * @param val
	 *
	 * @return
	 */
	public static String formatDouble(String val) {
		String str = "";
		DecimalFormat nf = new DecimalFormat();
		nf.setMaximumFractionDigits(2);
		str = nf.format(Double.parseDouble(val));
		return str.replace(",", "");
	}

	/**
	 * 格式化两位小数
	 * 
	 * @param val
	 *
	 * @return
	 */
	public static double formatDouble(double val) {
		String str = "";
		DecimalFormat nf = new DecimalFormat();
		nf.setMaximumFractionDigits(2);
		str = nf.format(val);
		return Double.parseDouble(str.replace(",", ""));
	}

	/**
	 * 格式化两位小数
	 * 
	 * @param val
	 *
	 * @return
	 */
	public static float formatFloat(float val) {
		String str = "";
		DecimalFormat nf = new DecimalFormat();
		nf.setMaximumFractionDigits(2);
		str = nf.format(val);
		return Float.parseFloat(str.replace(",", ""));
	}

	/**
	 * 格式化两位小数
	 * 
	 * @param val
	 * @return
	 */
	public static float formatFloat(String val) {
		String str = "";
		DecimalFormat nf = new DecimalFormat();
		nf.setMaximumFractionDigits(2);
		str = nf.format(Float.parseFloat(val));
		return Float.parseFloat(str.replace(",", ""));
	}

	/**
	 * 格式化一位小数
	 * 
	 * @param val
	 *
	 * @return
	 */
	public static String formatFloat1(float val) {
		String str = "";
		DecimalFormat nf = new DecimalFormat();
		nf.setMaximumFractionDigits(1);
		str = nf.format(val);
		return str.replace(",", "");
	}

	/**
	 * 格式化金钱
	 * 
	 * @param val
	 *
	 * @return
	 */
	public static String formatAmount(double val) {
		NumberFormat nf = new DecimalFormat("#,###.##");
		String str = nf.format(val);
		return str;
	}

	/**
	 * 判断是否是ajax请求
	 * @param request
	 * @return
	 */
	public static boolean checkAjaxRequest(HttpServletRequest request) {
		String requestType = request.getHeader("X-Requested-With");
		if (requestType != null && requestType.equalsIgnoreCase("XMLHttpRequest")) {
			return true;
		} else
			return false;
	}

	/**
	 * 把数字补零，比如传入T001，需要处理成T002，如果超出最大长度，返回"";
	 * @param pre 代码前缀
	 * @param code 已经存在的最大代码
	 * @param numLength 数字长度
	 * @return
	 */
	public static String addZero(String pre, String code, int numLength) {
		String str = "";
		if (StringUtil.isNullOrEmpty(code)) {
			str = pre;
			for (int i = 0; i < numLength - 1; i++) {
				str += "0";
			}
			str += "1";
		} else {
			str = pre;
			int num = Integer.parseInt(code.substring(pre.length(), code.length())) + 1;
			for (int i = 0; i < numLength - String.valueOf(num).length(); i++) {
				str += "0";
			}
			str += num;
		}
		if (str.length() > pre.length() + numLength)
			return "";
		else
			return str;
	}

	/*	public static String addZeroByType(String pre, String code) {
			String str = "";
			if (StringUtil.isNullOrEmpty(code)) {
				str = pre;
				for (int i = 0; i < numLength - 1; i++) {
					str += "0";
				}
				str += "1";
			} else {
				str = pre;
				int num = Integer.parseInt(code.substring(pre.length(), code.length())) + 1;
				int numLength1 = code.substring(pre.length(),code.length()-String.valueOf(num).length()).length();
				for (int i = 0; i < numLength; i++) {
					str += "0";
				}
				str += num;
			}
			if (str.length() > pre.length() + numLength)
				return "";
			else
				return str;
		}*/
	/**
	 * 获取ip地址
	 * @param request
	 * @return
	 */
	public static String getIp(HttpServletRequest request) {
		String szClientIP = request.getHeader("x-forwarded-for");
		if (szClientIP == null || szClientIP.length() == 0 || "unknown".equalsIgnoreCase(szClientIP))
			szClientIP = request.getHeader("Proxy-Client-IP");
		if (szClientIP == null || szClientIP.length() == 0 || "unknown".equalsIgnoreCase(szClientIP))
			szClientIP = request.getHeader("WL-Proxy-Client-IP");
		if (szClientIP == null || szClientIP.length() == 0 || "unknown".equalsIgnoreCase(szClientIP))
			szClientIP = request.getRemoteAddr();
		return szClientIP;
	}

	/**
	 * 获取物料类型的数字编号，比如T001，就是001
	 * @param protype
	 * @return
	 */
	public static String getProtypeNum(String protype) {
		if (protype != null && protype.length() >= 4)
			return protype.substring(1, 4);
		else
			return "";
	}

	/** 
	 *  
	 * @Title: processFileName 
	 *  
	 * @Description: ie,chrom,firfox下处理文件名显示乱码 
	 */
	public static String processFileName(HttpServletRequest request, String fileNames) {
		String codedfilename = null;
		try {
			String agent = request.getHeader("USER-AGENT");
			if (null != agent && -1 != agent.indexOf("MSIE") || null != agent && -1 != agent.indexOf("Trident")) {// ie  
				String name = URLEncoder.encode(fileNames, "UTF8");
				codedfilename = name;
			} else if (null != agent && -1 != agent.indexOf("Mozilla")) {// 火狐,chrome等  
				codedfilename = new String(fileNames.getBytes("UTF-8"), "iso-8859-1");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return codedfilename;
	}

	/**
	 * 把数字转换成字符串，前面带0
	 * @param num
	 * @return
	 */
	public static String addZero4(int num) {
		if (num < 10)
			return "000" + num;
		else if (num < 100)
			return "00" + num;
		else if (num < 1000)
			return "0" + num;
		else
			return String.valueOf(num);
	}

	/**
	 * 取到当前机器的IP地址
	 * 
	 * @return
	 */
	public static String getTerminalIp() {
		String hostIp = null;
		if (hostIp == null) {
			List<String> ips = new ArrayList<String>();
			Enumeration<NetworkInterface> netInterfaces = null;
			try {
				netInterfaces = NetworkInterface.getNetworkInterfaces();
				while (netInterfaces.hasMoreElements()) {
					NetworkInterface netInterface = netInterfaces.nextElement();
					Enumeration<InetAddress> inteAddresses = netInterface.getInetAddresses();
					while (inteAddresses.hasMoreElements()) {
						InetAddress inetAddress = inteAddresses.nextElement();
						if (!inetAddress.isLoopbackAddress() && inetAddress instanceof Inet4Address) {
							ips.add(inetAddress.getHostAddress());
						}
					}
				}
			} catch (SocketException ex) {
				ex.printStackTrace();
			}
			hostIp = collectionToDelimitedString(ips, ",");
		}
		return hostIp;
	}

	private static String collectionToDelimitedString(Collection<String> coll, String delim) {
		if (coll == null || coll.isEmpty()) {
			return "";
		}
		StringBuilder sb = new StringBuilder();
		Iterator<?> it = coll.iterator();
		while (it.hasNext()) {
			sb.append(it.next());
			if (it.hasNext()) {
				sb.append(delim);
			}
		}
		return sb.toString();
	}

	/**
	 * 生成MD5字符串
	 * @param s
	 * @return
	 */
	public static String MD5(String s) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
		try {
			byte[] btInput = s.getBytes("UTF-8");
			// 获得MD5摘要算法的 MessageDigest 对象
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			// 使用指定的字节更新摘要
			mdInst.update(btInput);
			// 获得密文
			byte[] md = mdInst.digest();
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 获取随机字符串
	 * @return
	 */
	public static String getNonceStr() {
		// 随机数
		String currTime = DateUtil.dateToString(new Date(), "yyyyMMddHHmmss");
		// 8位日期
		String strTime = currTime.substring(8, currTime.length());
		// 四位随机数
		String strRandom = buildRandom(4) + "";
		// 10位序列号,可以自行调整。
		return strTime + strRandom;
	}

	/**
	* 取出一个指定长度大小的随机正整数.
	* 
	* @param length
	*            int 设定所取出随机数的长度。length小于11
	* @return int 返回生成的随机数。
	*/
	public static int buildRandom(int length) {
		int num = 1;
		double random = Math.random();
		if (random < 0.1) {
			random = random + 0.1;
		}
		for (int i = 0; i < length; i++) {
			num = num * 10;
		}
		return (int) ((random * num));
	}

	/**
	 * 把可用金额+-+客户代码md5加密
	 * @param avail_amount
	 * @param cust_code
	 * @return
	 */
	public static String createAvail_md5(float avail_amount, String cust_code) {
		return StringUtil.MD5(StringUtil.formatFloat1(avail_amount) + "-" + cust_code);
	}

	/**
	 * 元转换成分
	 * @param amount
	 * @return
	 */
	public static int getMoney(float amount) {
		Float f = new Float(Math.round(amount * 100));
		int fen = f.intValue();
		return fen;
	}

	/**
	 * 获取订单状态
	 * @param val
	 * @return
	 */
	public static String getOrderStatus(int val) {
		if (val == 0) {
			return "未付款";
		} else if (val == 10) {
			return "已付款待审核";
		} else if (val == 20) {
			return "已审核待处理";
		} else if (val == 25) {
			return "已处理待打包";
		} else if (val == 30) {
			return "已打包待审核";
		} else if (val == 40) {
			return "已发货";
		} else if (val == 50) {
			return "已签收";
		} else if (val == 60) {
			return "退货待处理";
		} else if (val == 70) {
			return "退货已返款";
		} else if (val == 80) {
			return "已关闭";
		} else if (val == 90) {
			return "取消待处理";
		} else if (val == 95) {
			return "取消已返款";
		} else if (val == 100) {
			return "已返佣";
		} else
			return "";
	}

	/**
	 * 把模糊查询里面的特殊字符转过滤一下
	 * @param str
	 * @return
	 */
	public static String filterSpecialCharacter(String str) {
		if (StringUtil.isNullOrEmpty(str))
			return "";
		else
			return str.replaceAll("'", "");
	}

	/**
	 * 过滤表情
	 * @param source
	 * @return
	 */
	public static String filterEmoji(String source) {
		if (StringUtil.isNotNullOrEmpty(source)) {
			return source.replaceAll("[\\ud800\\udc00-\\udbff\\udfff\\ud800-\\udfff]", "*");
		} else {
			return source;
		}
	}

	/**
	 * 获取url地址
	 * @param request 请求
	 * @return url地址
	 */
	public static String getUrlPath(HttpServletRequest request) {
		String url;
		if (request.getServerPort() == 80) {
			url = request.getScheme() + "://" + request.getServerName() + request.getRequestURI();
		} else {
			url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getRequestURI();
		}
		if (url.contains("#")) {
			url = url.substring(0, url.indexOf("#"));
		}
		return url;
	}

	/**
	 * 十六进制字符串转数字
	 * @param str
	 * @return
	 */
	public static int hexTrans(String str) {
		return Integer.parseInt(str.replaceAll("^0[x|X]", ""), 16);
	}

	public static void main(String[] args) {
		System.out.println(createCustomerId("00000012"));
		System.out.println(StringUtil.hexTrans("0xFFFFFF"));
	}

}
