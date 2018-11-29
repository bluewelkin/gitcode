package com.balance.util.code;

import com.balance.util.date.DateUtil;

/**
 * 公共代码生成
 * @author chykong
 *
 */
public class CodeUtil {

	/**
	 * 生成采购单号
	 * @return
	 */
	public static String createPurchaseCode() {
		return "CG" + DateUtil.getShortSystemDate() + SerialNumUtil.createRandowmNum(6);
	}

	/**
	 * 生成调拨单号
	 * @return
	 */
	public static String createTransferCode() {
		return "TR" + DateUtil.getShortSystemDate() + SerialNumUtil.createRandowmNum(6);
	}

	/**
	 * 生成出库单号
	 * @return
	 */
	public static String createDeliveryCode() {
		return "CK" + DateUtil.getShortSystemDate() + SerialNumUtil.createRandowmNum(6);
	}

	/**
	 * 生成盘盈单号
	 * @return
	 */
	public static String createProfitCode() {
		return "PY" + DateUtil.getShortSystemDate() + SerialNumUtil.createRandowmNum(6);
	}

	/**
	 * 生成盘亏单号
	 * @return
	 */
	public static String createLossCode() {
		return "PK" + DateUtil.getShortSystemDate() + SerialNumUtil.createRandowmNum(6);
	}

	/**
	 * 生成退货单号
	 * @return
	 */
	public static String createRefundCode() {
		return DateUtil.getShortSystemDate() + SerialNumUtil.createRandowmNum(6);
	}


	/**
	 *
	 * @return
	 */
	public static String createWithdraw_code() {
		return DateUtil.getShortSystemTime() + SerialNumUtil.createRandowmNum(6);//
	}
}
