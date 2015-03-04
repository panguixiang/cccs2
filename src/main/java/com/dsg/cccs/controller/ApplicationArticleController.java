package com.dsg.cccs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dsg.cccs.model.ApplicationArticle;
import com.dsg.cccs.service.ApplicationArticleService;

/**
 * @ClassName: ArticleController
 * @Description: 
 * @author proteus modoucc_gmail_com
 * @date 2011-7-27 上午9:47:16
 * 
 */
@Controller
@RequestMapping(value = "/app_article")
public class ApplicationArticleController {

	@Autowired
	private ApplicationArticleService articleService;

	@RequestMapping(value = "{type}/{apptype}", method = RequestMethod.GET)
	public String list(@PathVariable("type") String type, @PathVariable("apptype") Integer apptype,Model model) {
		List<ApplicationArticle> articles = articleService.getArticles(type);
		model.addAttribute("articles", articles);
		model.addAttribute("type", type);
		model.addAttribute("apptype", apptype);
		return "copyright_info";
	}
	
	/**
	 * 首页  -- 版权登记的重要性
	 * @return
	 */
	@RequestMapping(value = "important", method = RequestMethod.GET)
	public String copyRightImportant() {
		return "important";
	}

}
