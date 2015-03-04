package com.dsg.cccs.controller.manage;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dsg.cccs.model.Article;
import com.dsg.cccs.model.IndexNews;
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
@RequestMapping(value = "/manage/article")
public class ArticleManageController {

	@Autowired
	private ArticleService articleService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(@RequestParam("subject") String subjectSign,
			@RequestParam("pager.offset") Integer offset, Model model) {
		Page page = articleService.getArticles(subjectSign, offset,
				Page.SIZE_PER_PAGE);
		model.addAttribute("page", page);
		model.addAttribute("hidden", subjectSign);
		model.addAttribute("subject",
				ArticleConstants.subjects.get(subjectSign));
		return "manage/article_list";
	}

	/**
	 * 查询后台管理新闻动态轮播
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "indexnewslist", method = RequestMethod.GET)
	public String indexNewsList(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String image = request.getParameter("image");
		StringBuffer condition = new StringBuffer();
		if (null != image && !image.equals("")) {
			condition.append(" where image = '" + image + "' ");
		}
		String offset = request.getParameter("pager.offset");
		if (offset == null || offset.equals("")) {
			offset = "0";
		}
		Page page = articleService.getIndexNewsList(condition.toString()
				+ " order by squen desc", Integer.parseInt(offset),
				Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		return "manage/indexnews_list";
	}

	/**
	 * 初始化新增修改后台管理新闻动态轮播
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "initaddnews", method = RequestMethod.GET)
	public String initaddnews(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String id = request.getParameter("id");
		if (null != id && !id.equals("")) {
			IndexNews indexnew = articleService.getIndexNews(" where id = "
					+ Integer.parseInt(id));
			model.addAttribute("indexnew", indexnew);
		}
		return "manage/add_indexnews";
	}

	/**
	 * 新增修改后台管理新闻动态轮播
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "addnews", method = RequestMethod.POST)
	public String addnews(IndexNews indexnew, Model model,
			HttpServletRequest request, HttpServletResponse response) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyyMMdd");
		String datePath = dateformat.format(new Date());
		// 构建图片保存的目录
		String logoPathDir = "/upload/indexnews/" + datePath;
		// 得到图片保存目录的真实路径
		String logoRealPathDir = request.getSession().getServletContext()
				.getRealPath(logoPathDir);
		// 根据真实路径创建目录
		File logoSaveFile = new File(logoRealPathDir);
		if (!logoSaveFile.exists()) {
			logoSaveFile.mkdirs();
		}
		// 页面控件的文件流
		MultipartFile multipartFile = multipartRequest.getFile("file");
		String filename = multipartFile.getOriginalFilename();
		if (null == indexnew.getId()) {
			if (null == filename || filename.equals("")) {
				model.addAttribute("imagemesage",
						"<font color='red'>请上传图片</font>");
				model.addAttribute("indexnew", indexnew);
				return "manage/add_indexnews";
			}
			// 获取文件的后缀
			String suffix = filename.substring(filename.lastIndexOf("."));
			if (suffix.equalsIgnoreCase(".gif")
					|| suffix.equalsIgnoreCase(".jpg")) {
				// 使用UUID生成文件名称
				SimpleDateFormat dateformat2 = new SimpleDateFormat(
						"yyyyMMddHHmmss");
				String logImageName = dateformat2.format(new Date()) + suffix;// 构建文件名称
				// 拼成完整的文件保存路径加文件
				String fileName = logoRealPathDir + File.separator
						+ logImageName;
				File files = new File(fileName);
				try {
					multipartFile.transferTo(files);
					indexnew.setImage(datePath + "/" + logImageName);
					articleService.addIndexNews(indexnew);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return "redirect:/manage/article/indexnewslist?image="
						+ indexnew.getImage();
			} else {
				model.addAttribute("indexnew", indexnew);
				model.addAttribute("imagemesage",
						"<font color='red'>请上传正确格式的图片</font>");
				return "manage/add_indexnews";
			}
		} else {
			if (null == filename || filename.equals("")) {
				articleService.updateIndexNews(indexnew);
				return "redirect:/manage/article/indexnewslist?image="
						+ indexnew.getImage();
			} else {
				// 删除原有文件
				String delelogoPathDir = "/upload/indexnews/";
				String delelogoRealPathDir = request.getSession()
						.getServletContext().getRealPath(delelogoPathDir);
				String delefileName = delelogoRealPathDir + File.separator
						+ indexnew.getImage();
				File deleFile = new File(delefileName);
				if (deleFile.isFile() && deleFile.exists()) {
					deleFile.delete();
				}
				String suffix = filename.substring(filename.lastIndexOf("."));
				if (suffix.equalsIgnoreCase(".gif")
						|| suffix.equalsIgnoreCase(".jpg")) {
					// 使用UUID生成文件名称
					SimpleDateFormat dateformat2 = new SimpleDateFormat(
							"yyyyMMddHHmmss");
					String logImageName = dateformat2.format(new Date())
							+ suffix;// 构建文件名称
					// 拼成完整的文件保存路径加文件
					String fileName = logoRealPathDir + File.separator
							+ logImageName;
					File files = new File(fileName);
					try {
						multipartFile.transferTo(files);
						indexnew.setImage(datePath + "/" + logImageName);
						articleService.updateIndexNews(indexnew);
					} catch (Exception e) {
						e.printStackTrace();
					}
					return "redirect:/manage/article/indexnewslist?image="
							+ indexnew.getImage();
				} else {
					model.addAttribute("indexnew", indexnew);
					model.addAttribute("imagemesage",
							"<font color='red'>请上传正确格式的图片</font>");
					return "manage/add_indexnews";
				}
			}
		}
	}

	/**
	 * 后台删除新闻动态轮播
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "deleteindexnews", method = RequestMethod.GET)
	public String deleteIndexNews(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String id = request.getParameter("id");
		if (null != id && !id.equals("")) {
			IndexNews indexnew = articleService.getIndexNews(" where id="
					+ Integer.parseInt(id));
			if (indexnew != null) {
				articleService.deleteIndexNews(Integer.parseInt(id));
				// 构建图片保存的目录
				String logoPathDir = "/upload/indexnews/";
				// 得到图片保存目录的真实路径
				String logoRealPathDir = request.getSession()
						.getServletContext().getRealPath(logoPathDir);
				// 根据真实路径创建目录
				String fileName = logoRealPathDir + File.separator
						+ indexnew.getImage();
				File logoSaveFile = new File(fileName);
				if (logoSaveFile.isFile() && logoSaveFile.exists()) {
					logoSaveFile.delete();
				}
			}
		}
		return "redirect:/manage/article/indexnewslist";
	}

	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String list(@PathVariable Long id, Model model) {
		Article article = articleService.getArticle(id);
		model.addAttribute("article", article);
		model.addAttribute("subject",
				ArticleConstants.subjects.get(article.getSubject()));
		return "manage/article_edit";
	}

	@RequestMapping(value = "new", method = RequestMethod.GET)
	public String addArticle(@RequestParam("subject") String subject,
			Model model) {
		Article article = new Article();
		article.setChannel(ArticleConstants.subjects.get(subject)
				.getChannelSign());
		article.setSubject(subject);
		model.addAttribute(article);
		model.addAttribute("subject", ArticleConstants.subjects.get(subject));
		return "manage/article_edit";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid Article article, BindingResult result,
			Model model) {
		if(article.getPub_date() != null && !article.getPub_date().trim().equals("")) {
			SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//这里可以定义你想要监查的格式 
             try{ 
                  simpleDate.parse(article.getPub_date().trim()); 
	        	} catch(Exception e) {
	        		model.addAttribute("article", article);
	        		model.addAttribute("subject", 
	        				ArticleConstants.subjects.get(article.getSubject()));
	        		model.addAttribute("dataspan", "<font color='red'>请输入正确格式的日期,如：2008-10-10 12:12:12</font>");
	        		return "manage/article_edit";
	        	}
		}
		articleService.updateArticle(article);
		return "redirect:/manage/article/list?pager.offset=0&subject="
				+ article.getSubject();
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable Long id, Model model) {
		Article article = articleService.getArticle(id);
		articleService.deleteArticle(id);
		return "redirect:/manage/article/list?pager.offset=0&subject="
				+ article.getSubject();
	}
}
