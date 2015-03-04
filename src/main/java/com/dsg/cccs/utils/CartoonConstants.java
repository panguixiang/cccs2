package com.dsg.cccs.utils;

public class CartoonConstants {

	// public static String[] letters = { "A", "B", "C", "D", "E", "F", "G",
	// "H",
	// "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
	// "V", "W", "X", "Y", "Z" };

	public static String[] themes = { "热血", "推理", "唯美", "搞笑", "战争", "恋爱", "恐怖",
			"科幻", "娱乐", "体育", "国学", "职场", "校园", "益智", "亲子", "宠物", "武侠", "名著",
			"神魔", "剧情", "冒险", "励志", "童话", "神话", "真人", "悬疑", "历史", "公益", "其他" };

	public static String[] types = { "动漫形象", "动漫场景", "剧本", "歌词", "动画歌曲",
			"动画音效", "动画背景音乐", "漫画书", "文字及图片混合的作品", "动画短片", "动画电影", "动画电视剧",
			"真人动画", "动漫游戏软件" };

	public static String[] lengths = { "短片(13集以下)", "中片(14-26集)",
			"中长片(26-51集)", "长片(52集以上)" };

	public static String[] years = new String[301];
	static {
		for (int i = 0; i <= 300; i++) {
			years[i] = ((Integer) (i + 1800)).toString();
		}
	}

	public static String[] areas = { "国产", "日本", "欧美", "其他" };

	public static String[] yearzones = { "幼儿", "少儿", "青少年", "成人", "全年龄" };

}
