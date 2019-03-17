package com.whzc.website.xiangxi.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 日期工具类
 * 默认使用 "yyyy-MM-dd HH:mm:ss" 格式化日期
 */
public class DateUtils {

	/**
	* 英文简写（默认）如：2010-12-01
	*/
	public static String FORMAT_SHORT = "yyyy-MM-dd";
	/**
	* 英文全称  如：2010-12-01 23:15:06
	*/
	public static String FORMAT_LONG = "yyyy-MM-dd HH:mm:ss";
	/**
	* 精确到毫秒的完整时间    如：yyyy-MM-dd HH:mm:ss.S
	*/
	public static String FORMAT_FULL = "yyyy-MM-dd HH:mm:ss.S";
	/**
	* 中文简写  如：2010年12月01日
	*/
	public static String FORMAT_SHORT_CN = "yyyy年MM月dd日";
	/**
	* 中文全称  如：2010年12月01日  23时15分06秒
	*/
	public static String FORMAT_LONG_CN = "yyyy年MM月dd日  HH时mm分ss秒";
	/**
	* 精确到毫秒的完整中文时间
	*/
	public static String FORMAT_FULL_CN = "yyyy年MM月dd日  HH时mm分ss秒SSS毫秒";
	
	/**
	* 获得默认的 date pattern
	*/
	public static String getDatePattern() {
		return FORMAT_LONG;
	}
	public DateUtils() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	* 根据预设格式返回当前日期
	* @return
	*/
	public static String getNow() {
	return format(new Date());
	}
	
	/**
	* 使用预设格式格式化日期
	* @param date
	* @return
	*/
	public static String format(Date date) {
	return format(date, getDatePattern());
	}
	
	/**
	* 使用用户格式格式化日期
	* @param date 日期
	* @param pattern 日期格式
	* @return
	*/
	public static String format(Date date, String pattern) {
	String returnValue = "";
	if (date != null) {
	SimpleDateFormat df = new SimpleDateFormat(pattern);
	returnValue = df.format(date);
	}
	return (returnValue);
	}
	
	/**
	* 获取日期年份
	* @param date 日期
	* @return
	*/
	public static String getYear(Date date) {
	return format(date).substring(0, 4);
	}
	
	/**
	* 使用预设格式提取字符串日期
	* @param strDate 日期字符串
	* @return
	*/
	public static Date parse(String strDate) {
	return parse(strDate, getDatePattern());
	}
	/**
	* 使用用户格式提取字符串日期
	* @param strDate 日期字符串
	* @param pattern 日期格式
	* @return
	*/
	public static Date parse(String strDate, String pattern) {
	SimpleDateFormat df = new SimpleDateFormat(pattern);
	try {
	return df.parse(strDate);
	} catch (ParseException e) {
	e.printStackTrace();
	return null;
	}
	}
	
	/**
	 * 将数据库的DateTime类型转换成自定义的String---年月日时分秒连接起来，中间没空格，方便测试的时候访问
	 * @param date
	 * @return String类型
	 */
	public static String DateToMySQLDateTimeString(Date date){
		final String[] MONTH={
				"Jan","Feb","Mar","Apr","May","Jun",
				"Jul","Aug","Sep","Oct","Nov","Dec",
		};
		StringBuffer dateString=new StringBuffer();
		String dateToString=date.toString();
		//添加年份
		dateString.append(dateToString.substring(24, 24+4));
		//获取月份
		String sMonth=dateToString.substring(4,4+3);
		//添加月份
		for(int i=0;i<12;i++){
			if(sMonth.equalsIgnoreCase(MONTH[i])){
				if((i+1)<10)
					dateString.append("-0");
				else
					dateString.append("-");
				dateString.append((i+1));
				break;
			}
		}
		//添加日期
		dateString.append("-");	
		dateString.append(dateToString.substring(8,8+2));
		//暂时不添加空格，因为测试的时候，不好访问，正式版本添加!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		dateString.append("_");
		dateString.append(dateToString.substring(11, 11+8));
		return dateString.toString();
	}
	
	public static Date MySQLDateStringToDateTime(String dateString){
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		//ParsePosition pos=new ParsePosition(0); 好像是设置解析开始的位置
		Date date=null;
		System.out.println(dateString);
		try {
			date=sdf.parse(dateString);
			
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("解析时间出错");
		}
		return date;
	}
	
	//获取最新日期
	public static Date SeekMaxDate(List<Date> list){
		Date MaxDate=list.get(0);
		for(int i=1;i<list.size();i++){
			if(list.get(i).compareTo(MaxDate)>0){
				MaxDate=list.get(i);
			}
		}
		return MaxDate;
	}
	
	/**
	 * 日期比较,传入字符串,字符串格式为FORMAT_LONG  yyyy-MM-dd HH:mm:ss
	 * @param Date1 yyyy-MM-dd HH:mm:ss
	 * @param Date2 yyyy-MM-dd HH:mm:ss
	 * @return 1 Date1在Date2前 -1在之后 0相等
	 */
	public static int compare_date(String Date1,String Date2){
		Date dt1 =parse(Date1, FORMAT_LONG);
		Date dt2 =parse(Date2, FORMAT_LONG);
		if(dt1.getTime() > dt2.getTime()){
			return 1;
		}else if(dt1.getTime() < dt2.getTime()){
			return -1;
		}else{
			return 0;
		}
			
	}
	
	
	public static void main(String[] args){
		Date date = new Date();
		System.out.println(format(date,FORMAT_SHORT_CN));
		System.out.println(parse("1997-01-22",FORMAT_SHORT));
	}
}
