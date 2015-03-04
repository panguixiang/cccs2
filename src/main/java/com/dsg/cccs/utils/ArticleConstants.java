package com.dsg.cccs.utils;

import java.util.HashMap;
import java.util.Map;

import com.dsg.cccs.model.ArticleSubject;

/**
 * @ClassName: ArticleUtil
 * @Description: 
 * @author proteus modoucc_gmail_com
 * @date 2011-7-27 下午1:49:23
 * 
 */
public class ArticleConstants {
	public static Map<String, ArticleSubject> subjects = new HashMap<String, ArticleSubject>();
	static {
		subjects.put("yw", new ArticleSubject("xw", "新闻动态", "yw", "版权要闻"));
		subjects.put("dt", new ArticleSubject("xw", "新闻动态", "dt", "中心动态"));
		subjects.put("zx", new ArticleSubject("xw", "新闻动态", "zx", "业界资讯"));
		subjects.put("gz", new ArticleSubject("xw", "新闻动态", "gz", "热点关注"));
		subjects.put("fzxxw",
				new ArticleSubject("fzx", "地方分中心", "fzxxw", "分中心新闻"));
		subjects.put("flfw",
				new ArticleSubject("bqfw", "版权服务", "flfw", "版权法律服务"));

	}
	
	public static Map<String,String> appArticleType = new HashMap<String,String>();
	static{
		
	}
	
	/**
	 * 获取后台所有权限（MOD id）
	 * @return
	 * 
	 * 
	 * 
	 * 
	 */
	public static Map<String, String> getSuperResources() {
		Map<String, String> resourceMap = new HashMap<String, String>();
		String menuResouceArr = "aftmeu1,aftmeu11,aftmeu12,aftmeu13,aftmeu2,aftmeu21,aftmeu22,aftmeu23,"+
				 "aftmeu24,aftmeu3,aftmeu31,aftmeu32,aftmeu33,aftmeu34,aftmeu35,aftmeu36,aftmeu4,aftmeu41,"+
				"aftmeu5,aftmeu51,aftmeu511,aftmeu512,aftmeu52,aftmeu521,aftmeu522,aftmeu6,aftmeu61,aftmeu611," +
				"aftmeu612,aftmeu62,aftmeu621,aftmeu622,aftmeu63,aftmeu631,aftmeu632,aftmeu64,aftmeu641,aftmeu642,aftmeu7,aftmeu71,aftmeu711,"+
				"aftmeu712,aftmeu72,aftmeu721,aftmeu722,aftmeu73,aftmeu731,aftmeu732,aftmeu74,aftmeu741,aftmeu742,aftmeu8,aftmeu81,aftmeu810,aftmeu811,"+
				"aftmeu812,aftmeu813,aftmeu814,aftmeu815,aftmeu816,aftmeu817,aftmeu818,aftmeu819,aftmeu8110,"+
				"aftmeu82,aftmeu821,aftmeu822,aftmeu823,aftmeu824,aftmeu825,aftmeu826,aftmeu83,aftmeu831,"+
				"aftmeu832,aftmeu833,aftmeu834,aftmeu835,aftmeu9,aftmeu91,aftmeu10,aftmeu101,aftmeu102";
		String buttResourceArr = "aft111,aft112,aft113,aft121,aft1211,aft122,aft131,aft132,aft133,aft211,"+
				"aft212,aft213,aft221,aft222,aft223,aft231,aft232,aft233,aft241,aft242,aft243,aft311,"+
				"aft312,aft313,aft321,aft322,aft323,aft331,aft332,aft333,aft341,aft342,aft343,aft351,aft352,"+
				"aft353,aft361,aft362,aft363,aft411,aft412,aft413,aft5111,aft5112,aft5121,aft5122,aft5211,aft5212," +
				"aft5221,aft5222,aftarea110,aftarea210,aftarea310,aftarea120,aftarea220,aftarea320,aftarea111,aftarea211,aftarea311"+
				",aftarea121,aftarea221,aftarea321,aft6211,aft6212,aft6221,aft6222,aftarea130,aftarea230,aftarea330,aftarea140,aftarea240,aftarea340" +
				",aftarea131,aftarea231,aftarea331,aftarea141,aftarea241,aftarea341,aft7211,aft7212,aft7221,aft7222,aft8101,aft8102,aft8103,aft8111,"+
				"aft8112,aft8113,aft8121,aft8122,aft8123,aft8131,aft8132,aft8133,aft8141,aft8142,aft8143,aft8151,aft8152,aft8153,"+
				"aft8161,aft8162,aft8163,aft8171,aft8172,aft8173,aft8181,aft8182,aft8183,aft8191,aft8192,aft8193,"+
				"aft81101,aft81102,aft81103,aft8211,aft8212,aft8213,aft8221,aft8222,aft8223,aft8231,aft8232,aft8233,"+
				"aft8241,aft8242,aft8243,aft8251,aft8252,aft8253,aft8261,aft8262,aft8263,aft8311,aft8312,aft8313,"+
				"aft8321,aft8322,aft8323,aft8331,aft8332,aft8333,aft8341,aft8342,aft8343,aft8351,aft8352,aft8353,"+
				"aft911,aft1011,aft1012,aft1013,aft1014,aft1021,aft1022,aft1023";
		resourceMap.put("menuResouceArr", menuResouceArr);
		resourceMap.put("buttResourceArr", buttResourceArr);
		return resourceMap;
	}

}
