package com.dsg.cccs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dsg.cccs.model.Article;
import com.dsg.cccs.service.ArticleService;
import com.dsg.cccs.utils.ArticleConstants;
import com.dsg.cccs.utils.Page;

/**
 * @ClassName: ArticleController
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-7-27 上午9:47:16
 * 
 */
@Controller
@RequestMapping(value = "/article")
public class ArticleController {

	@Autowired
	private ArticleService articleService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(@RequestParam("subject") String subjectSign,
			@RequestParam("pager.offset") Integer offset, Model model) {
		Page page = articleService.getArticles(subjectSign, offset,
				Page.SIZE_PER_PAGE);

		model.addAttribute("page", page);
		model.addAttribute("subject",
				ArticleConstants.subjects.get(subjectSign));
		return "article_list";
	}

	@RequestMapping(value = "{id}", method = RequestMethod.GET)
	public String view(@PathVariable("id") Long id, Model model) {
		Article article = articleService.getArticle(id);
		if(article != null) {
			model.addAttribute("article", article);
			model.addAttribute("subject",
					ArticleConstants.subjects.get(article.getSubject()));
		}
		model.addAttribute("subj", article.getSubject());
		return "article";
	}
	@RequestMapping(value = "{subject}/top/{size}", method = RequestMethod.GET)
	public String top(@PathVariable String subject, @PathVariable Integer size,
			Model model) {
		List<Article> articles = articleService.getArticleBySize(subject, size);
		model.addAttribute("articles", articles);
		return "left_article";
	}
}
