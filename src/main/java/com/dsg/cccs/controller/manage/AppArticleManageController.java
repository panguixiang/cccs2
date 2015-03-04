package com.dsg.cccs.controller.manage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dsg.cccs.model.ApplicationArticle;
import com.dsg.cccs.service.ApplicationArticleService;
import com.dsg.cccs.utils.Page;

/**
 * @ClassName: ArticleController
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-7-27 上午9:47:16
 * 
 */
@Controller
@RequestMapping(value = "/manage/app_article")
public class AppArticleManageController {

	@Autowired
	private ApplicationArticleService articleService;

	@RequestMapping(value = "list/{objtype}", method = RequestMethod.GET)
	public String list(@PathVariable Integer objtype, Model model, HttpServletRequest request) {
		
		String offset = request.getParameter("pager.offset");
		if(offset == null || offset.equals("")) {
			offset="0";
		}
		Page page = articleService.getAllArticlesPages("where objtype="+objtype,Integer.parseInt(offset),Page.SIZE_PER_PAGE);
		model.addAttribute("page", page);//articles
		model.addAttribute("objtype", objtype);
		return "manage/app_article/list";
	}

	@RequestMapping(value = "new/{objtype}", method = RequestMethod.GET)
	public String create(@PathVariable Integer objtype, Model model, HttpServletRequest request) {
		ApplicationArticle article = new ApplicationArticle();
		article.setObjtype(objtype);
		model.addAttribute("article", article);
		return "manage/app_article/edit";
	}

	@RequestMapping(value = "{id}/update", method = RequestMethod.GET)
	public String update(@PathVariable Long id, Model model) {
		ApplicationArticle article = articleService.getArticle(id);
		model.addAttribute("article", article);
		return "manage/app_article/edit";
	}

	@RequestMapping(value = "tonew", method = RequestMethod.POST)
	public String update(MultipartHttpServletRequest request,ApplicationArticle article, Model model) {
		articleService.updateArticle(article);
		return "redirect:/manage/app_article/list/"+article.getObjtype();
	}

	@RequestMapping(value = "delete/{id}/{objtype}", method = RequestMethod.GET)
	public String delete(@PathVariable Long id, @PathVariable Integer objtype, Model model) {
		articleService.deleteArticle(id);
		return "redirect:/manage/app_article/list/"+objtype;
	}
	
}
