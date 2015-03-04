package com.dsg.cccs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
@RequestMapping(value = "/copyright")
public class CopyrightController {

	@Autowired
	private ArticleService articleService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request, Model model) {
		String apptype = request.getParameter("apptype");
		if(apptype != null) {
			model.addAttribute("apptype", Integer.parseInt(apptype));
		}
		return "copyright";
	}

	@RequestMapping(value = "{subject}", method = RequestMethod.GET)
	public String list(@PathVariable String subject, Model model) {
		Page page = articleService.getArticles(subject, 0, Page.SIZE_PER_PAGE);
		model.addAttribute("page", page);
		model.addAttribute("subject",
				ArticleConstants.subjects.get(subject));
		return "copyright_info";
	}
}
