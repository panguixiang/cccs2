package com.dsg.cccs.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName: CommonUtil
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-7 下午9:19:31
 * 
 */
public class CommonUtil {

	public static String ToString(String[] strs) {
		if (strs == null) {
			return "";
		}
		String str = "";
		for (int i = 1; i < strs.length; i++)
			str = str + strs[i] + ",";
		str = str.substring(0, str.length() - 1);
		return str;
	}

	public static String ToStringWith0(String[] strs) {
		String str = "";
		for (int i = 0; i < strs.length; i++)
			str = str + strs[i] + ",";
		str = str.substring(0, str.length() - 1);
		return str;
	}

	public static List<String> String2List(String str) {
		List<String> list = new ArrayList<String>();
		if (null != str) {
			String[] temps = str.split(",");
			for (String temp : temps) {
				list.add(temp);
			}
		}
		return list;
	}

	public static String List2String(List<String> list) {
		String str = "";
		if (null != list) {
			for (int i = 0; i < list.size(); i++)
				str = str + list.get(i) + ",";
			str = str.substring(0, str.length() - 1);
		}
		return str;
	}

}
