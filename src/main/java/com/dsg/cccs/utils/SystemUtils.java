package com.dsg.cccs.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import sun.misc.BASE64Decoder;

import com.dsg.cccs.model.application.Application;
public class SystemUtils {

	 // 默认格式化日期
    private static String DEFAULT_DATETIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
    /**
     * 使用系统默认配置格式化日期
     * 
    * @param date
     * @return
     */
    public static String dateFormatString(Date date) {
        return dateFormatString(date, DEFAULT_DATETIME_FORMAT);
    }

    /**
     * 根据指定格式格式化日期
     * 
    * @param date
     * @param format
     * @return
     */
    public static String dateFormatString(Date date, String pattern) {

       if (null == date) {
            return null;
        }
        SimpleDateFormat sdf = new SimpleDateFormat();
        sdf.applyPattern(pattern);
        return sdf.format(date);
    }

    /**
	 * 根据指定格式格式将String转日期
	 * @param strDate
	 * @param dateTimeFormat
	 * @return
	 */
	public static Date stringToDate(String strDate, String dateTimeFormat) {
		SimpleDateFormat sdf = new SimpleDateFormat(dateTimeFormat);
		Date date = null;
    	try {
    		date = sdf.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
    	return date;

	}
	
    public static String createEmail(String tourl,String username) {
    	Date date = new Date();
    	StringBuffer emailStr = new StringBuffer();
    	emailStr.append("亲爱的"+username+"用户:<br>您好!<br>您在").append(dateFormatString(date)).
    	append("提交了邮箱找回密码请求,请点击下面的链接修改密码。<br>").append("<a href='"+tourl+"'>").append(tourl+"</a>")
    	.append("<br>(如果您无法点击此链接,请将它复制到浏览器地址栏后访问)").append("<br>为了保证您账号的安全,该链接有效期为24小时,并且点击一次后失效!")
    	.append("<br><br><br><br><br><br>中国动漫作品版权服务平台<br>").append(dateFormatString(date,"yyyy-MM-dd"));
    	return emailStr.toString();
    }
    
    /**
     * 计算两个时间的天数差
     * @param startdata
     * @return
     */
    public static long comparaTwoDateByDay(String startdata) {
    	DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//定义时间格式
    	Date d1;
    	long days = 0;
		try {
			d1 = df.parse(SystemUtils.dateFormatString(new Date()));
			Date d2 = df.parse(startdata);//起始时间
			long diff = d1.getTime() - d2.getTime();//算出两个时间的秒数差
			days = diff / (1000 * 60 * 60 * 24);//算出两个时间的天树差
		} catch (ParseException e) {
			e.printStackTrace();
		}//最后时间
		return days;
    }
    
    /**
     * 计算两个时间的小时差   返回double小时差
     * @param date1
     * @param date2
     * @return
     * @throws Exception
     */
    public static double timeDispatchHour(String date1, String date2) throws Exception {
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-M-d HH:mm:ss");
		java.util.Date start = sdf.parse(date1);
		java.util.Date end = sdf.parse(date2);
		long cha = end.getTime() - start.getTime();
		double result = cha * 1.0 / (1000 * 60 * 60);
		return result;
	}
    
    /**
     * 计算两个时间的小时差   返回Long秒差
     * @param d1 
     * @param d2 要是d2的后天
     * @return
     * @throws Exception
     */
    public static Long timeDispatchMinus(String d1, String d2) throws Exception {
     DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
     Long minus=(long) 0;
     try {
    	 Date date2 = df.parse(d2);
    	 Date date1 = df.parse(d1);
    	 minus = ((date2.getTime() - date1.getTime())/1000);
     } catch (Exception e) {
        e.printStackTrace();
     }  
     return minus;
    }
    
  public static String createCompUrl(HttpServletRequest request) {
	    String scheme = request.getScheme();             // http
		String serverName = request.getServerName();     // hostname.com
		int serverPort = request.getServerPort();        // 80
		String contextPath = request.getContextPath();   // /mywebapp
		return  scheme+"://"+serverName+":"+serverPort+contextPath;

  }
  
  public static Map<Integer,Integer>  createMapAppStates(List<Application> applications) {
	int a=0,b=0,c=0,d=0,e=0,f=0,g=0,h=0,i=0,j=0,k=0,l=0;
	Map<Integer,Integer> stateMap = new HashMap<Integer,Integer>();
	for(Application app : applications) {
		switch(app.getState()) {  
		case 1:        
			stateMap.put(1, ++a);
			break;
        case 2: 
        	stateMap.put(2, ++b);
			break;
        case 3: 
        	stateMap.put(3, ++c);
			break;
        case 4: 
        	stateMap.put(4, ++d);
			break;	
        case 5: 
        	stateMap.put(5, ++e);
			break;	
        case 6: 
        	stateMap.put(6, ++f);
			break;	
        case 7: 
        	stateMap.put(7, ++g);
			break;	
        case 8: 
        	stateMap.put(8, ++h);
			break;	
        case 9: 
        	stateMap.put(9, ++i);
			break;	
        case 10: 
        	stateMap.put(10, ++j);
			break;	
        case 11: 
        	stateMap.put(11, ++k);
			break;	
        case 12: 
        	stateMap.put(12, ++l);
			break;	
        } 
	}
	return stateMap;
  }
  
  
  /**
	 * BASE64加密
	 * 
	 * @param src
	 * @param encoding
	 * @return
	 */
	public static String getBASE64(String s) {
		if (s == null) {
			return null;
		} else {
			return (new sun.misc.BASE64Encoder()).encode(s.getBytes());
		}
	}

	/**
	 * BASE64解密
	 * 
	 * @param src
	 * @param encoding
	 * @return
	 */
	public static String getFromBASE64(String s) {
		if (s == null) {
			return null;
		}
		BASE64Decoder decoder = new BASE64Decoder();
		try {
			byte[] b = decoder.decodeBuffer(s);
			return new String(b);
		} catch (Exception e) {
			return null;
		}
	}
	
	
  public static String createUUID() {
		UUID uuid = UUID.randomUUID();
     // System.out.println(uuid.toString());
      return uuid.toString();
	}
  
  public static String changeStr(String str) {
	  str = str.replace("\\","/");
	  str = str.replace("/","//");
	  str = str.replace("'","''");
	  str = str.replace("%","/%");
	  str = str.replace("[","/[");
	  return str.trim();
  }
}
