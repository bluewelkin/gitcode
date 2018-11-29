package com.balance.util.excel;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;

import java.awt.*;

public class ExcelUtil {

	@SuppressWarnings("deprecation")
	public static HSSFWorkbook createExcel(String[][] excel,String sheetName) {
		HSSFWorkbook wb = new HSSFWorkbook();
		// sheet创建一个工作页
		HSSFSheet sheet = wb.createSheet(sheetName);
		sheet.setDefaultColumnWidth((short) 8);
		HSSFCellStyle style = wb.createCellStyle();//设置边框及对齐方式
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		for (short i = 0; i < excel.length; i++) {
			// HSSFRow,对应一行
			HSSFRow row = sheet.createRow(i);
			for (short j = 0; j < excel[i].length; j++) {
				// HSSFCell对应一格
				HSSFCell cell = row.createCell(j);
				cell.setCellValue(excel[i][j]);
							cell.setCellStyle(style);
			}
		}
		return wb;
	}
	/**
	 * 添加标题及日期
	 * @param excel
	 * @author LINAN
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static HSSFWorkbook createExcelWithTitle(String[][] excel, String titleName ) {
		HSSFWorkbook wb = new HSSFWorkbook();
		// sheet创建一个工作页
		HSSFSheet sheet = wb.createSheet(titleName);
		sheet.setDefaultColumnWidth((short) 16);
		HSSFCellStyle style = wb.createCellStyle();//设置边框及对齐方式
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		//title （完善可加入时间，考虑到会有单笔单笔订单，目前未加入）
		HSSFRow rowtitle = sheet.createRow(0);
		HSSFCell celltitle = rowtitle.createCell(0);
		HSSFFont titleFont = wb.createFont();
		titleFont.setFontName("宋体");
		titleFont.setFontHeightInPoints((short)15);
		titleFont.setBoldweight((short) Font.BOLD);
		HSSFCellStyle titleStyle = wb.createCellStyle();
		titleStyle.setFont(titleFont);
		titleStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		celltitle.setCellValue(titleName);
		celltitle.setCellStyle(titleStyle);


		int length = excel[0].length;
		sheet.addMergedRegion(new CellRangeAddress(0,0,0,length-1));
		for (short i = 0; i < excel.length; i++) {
			// HSSFRow,对应一行
			HSSFRow row = sheet.createRow(i+1);
			for (short j = 0; j < excel[i].length; j++) {
				// HSSFCell对应一格
				HSSFCell cell = row.createCell(j);
				cell.setCellValue(excel[i][j]);
				cell.setCellStyle(style);
			}
		}
		//完善可加入总额，考虑到不一定有意义，未加入
		return wb;
	}

	/**
	 * 添加标题\对应日期类型和时间
	 *
	 * @param excel  数据
	 * @param titleName 文件名称
	 * @param dateType 日期类型
	 * @param startDate 起始时间
	 * @param endDate 结束时间
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static HSSFWorkbook createExcelWithTitle(String[][] excel, String titleName,String dateType, String startDate,String endDate ) {
		HSSFWorkbook wb = new HSSFWorkbook();
		// sheet创建一个工作页
		HSSFSheet sheet = wb.createSheet(titleName);
		sheet.setDefaultColumnWidth((short) 12);
		HSSFCellStyle style = wb.createCellStyle();//设置边框及对齐方式
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		//title （完善可加入时间，考	虑到会有单笔单笔订单，目前未加入）
		HSSFRow rowtitle = sheet.createRow(0);
		HSSFCell celltitle = rowtitle.createCell(0);
		HSSFFont titleFont = wb.createFont();
		titleFont.setFontName("宋体");
		titleFont.setFontHeightInPoints((short)15);
		titleFont.setBoldweight((short)Font.BOLD);
		HSSFCellStyle titleStyle = wb.createCellStyle();
		titleStyle.setFont(titleFont);
		titleStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		celltitle.setCellValue(titleName);
		celltitle.setCellStyle(titleStyle);
		//合并单元格
		CellRangeAddress cra =new CellRangeAddress(1, 1, 1, 12); // 起始行, 终止行, 起始列, 终止列
		sheet.addMergedRegion(cra);
		//日期类型和时间
		HSSFRow rowdate = sheet.createRow(1);
		HSSFCell celldate = rowdate.createCell(1);
		HSSFFont dateFont = wb.createFont();
		dateFont.setFontName("宋体");
		dateFont.setFontHeightInPoints((short)10);
		dateFont.setBoldweight((short)Font.BOLD);
		HSSFCellStyle dateStyle = wb.createCellStyle();
		dateStyle.setFont(dateFont);
		dateStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		celldate.setCellValue(dateType+":"+startDate+" 至 "+endDate);
		celldate.setCellStyle(dateStyle);

		int length = excel[0].length;
		sheet.addMergedRegion(new CellRangeAddress(0,0,0,length-1));
		for (short i = 0; i < excel.length; i++) {
			// HSSFRow,对应一行
			HSSFRow row = sheet.createRow(i+2);
			for (short j = 0; j < excel[i].length; j++) {
				// HSSFCell对应一格
				HSSFCell cell = row.createCell(j);
				cell.setCellValue(excel[i][j]);
				cell.setCellStyle(style);
			}
		}
		//完善可加入总额，考虑到不一定有意义，未加入
		return wb;
	}
}
