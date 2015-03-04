package com.dsg.cccs.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dsg.cccs.service.ArticleService;

/**
 * @ClassName: HomeController
 * @Description: 首页
 * @author proteus
 * @date 2011-7-14 上午11:14:32
 * 
 */
@Controller
public class HomeController {
	
	@Autowired
	private ArticleService articleService;

	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("now", new Date());
		model.addAttribute("yw", articleService.getArticleBySize("yw", 6));
		model.addAttribute("dt", articleService.getArticleBySize("dt", 6));
		model.addAttribute("zx", articleService.getArticleBySize("zx", 6));
		model.addAttribute("gz", articleService.getArticleBySize("gz", 6));
		model.addAttribute("fzxxw", articleService.getArticleBySize("fzxxw", 10));
		model.addAttribute("flfw", articleService.getArticleBySize("flfw", 10));
		//作品著作权信息公示前台首页展示
		model.addAttribute("zpxgs", articleService.getInfoList(" WHERE app_type IN('z11','z21','z31','z41','z61','z62','z64','z71','z72','z73','z75') LIMIT 0,3;"));
		//作品著作权质权信息公示前台首页展示
		model.addAttribute("zpzqxgs", articleService.getInfoList(" WHERE app_type IN('z51','z52','z53','z54','z55','z56') LIMIT 0,3;"));
		//SELECT * FROM info ;
		//获得产品中心滚动栏的内容
		model.addAttribute("page", articleService.getIndexNewsList(" order by squen",0,5));
		/*List<FriendsConnection> friends = articleService.getFriendsList(" ORDER BY create_date DESC LIMIT 0,10 ");
		if(null != friends && friends.size()>0) {
			model.addAttribute("friends", friends);
		}*/
		model.addAttribute("friends", articleService.getFriendsList(" ORDER BY create_date DESC LIMIT 0,10 "));
		return "index";

	}
	
	@RequestMapping(value = "hint")
	public String hint() {
		return "hint";

	}

	@RequestMapping(value = "bcenter")
	public String bcenter() {
		return "bcenter";

	}
	

	@RequestMapping(value = "develop")
	public String develop() {
		return "develop";

	}

	@RequestMapping(value = "about")
	public String about() {
		return "about";

	}

	@RequestMapping(value = "about_en")
	public String aboutEn() {
		return "about_en";

	}
}
