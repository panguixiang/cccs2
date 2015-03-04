package com.dsg.cccs.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsg.cccs.maper.ArticleMapper;
import com.dsg.cccs.model.Article;
import com.dsg.cccs.model.FriendsConnection;
import com.dsg.cccs.model.IndexNews;
import com.dsg.cccs.model.Info;
import com.dsg.cccs.utils.Page;

@Service
public class ArticleService {
	private static Logger logger = LoggerFactory
			.getLogger(ArticleService.class);

	@Autowired
	private ArticleMapper articleMapper;

	@Transactional
	public void addArticle(Article article) {
		articleMapper.addArticle(article);
		logger.info("article created success!");
	}

	@Transactional
	public void updateArticle(Article article) {
		if (null == article.getId()) {
			articleMapper.addArticle(article);
			logger.info("article created success!");
		} else {
			articleMapper.updateArticle(article);
			logger.info("article updated success!");
		}
	}

	@Transactional
	public void deleteArticle(Long id) {
		articleMapper.deleteArticle(id);
	}

	public Page getArticles(String subject, Integer offset, Integer pageSize) {
		List<Article> atList = articleMapper.getArticles(subject, offset,
				pageSize);
		int count = articleMapper.countArticleBySubject(subject);
		Page page = new Page(atList, count);
		return page;
	}

	@Transactional
	public Article getArticle(Long id) {
		Article article = articleMapper.getArticle(id);
		if(article != null) {
			article.setPvnum(article.getPvnum()+1);
			articleMapper.updateArticlePvNum(article);
		}
		return article;
	}

	public List<Article> getArticleBySize(String subject, Integer size) {
		return articleMapper.getArticlesBySize(subject, size);
	}
	
	/**
	 * 按照组装条件查询article列表
	 * @param condition
	 * @return
	 */
	public List<Article> getArticleList(String condition) {
		return articleMapper.getArticleList(condition);
	}
	
	/**
	 * 后台查询管理新闻动态轮播分页
	 * @param condition
	 * @param offset
	 * @param pageSize
	 * @return
	 */
	public Page getIndexNewsList(String condition, Integer offset, Integer pageSize) {
		return new Page(articleMapper.getIndexNewsList(condition, offset, pageSize),
				articleMapper.getIndexNewsCounts(condition));
	}
	
	
	/**
	 * 按条件查询单个indexNews
	 * @param condition
	 * @return
	 */
	public IndexNews getIndexNews(String condition) {
		return articleMapper.getIndexNews(condition);
	}
	
	/**
	 * 后台新增新闻动态轮播
	 * @param indexnew
	 */
	public void addIndexNews(IndexNews indexnew) {
		articleMapper.addIndexNews(indexnew);
	}
	
	/**
	 * 后台修改新闻动态轮播
	 * @param indexnew
	 */
   public void updateIndexNews(IndexNews indexnew) {
	   articleMapper.updateIndexNews(indexnew);
   }
   
   /**
    * 后台删除新闻动态轮播
    * @param id
    */
   public void deleteIndexNews(Integer id) {
	   articleMapper.deleteIndexNews(id);
   }
   
   /**
    * 获得友情连接列表
    */
   public List<FriendsConnection> getFriendsList(String condition) {
	   return articleMapper.getFriendsList(condition);
   }
   /**
    * 获得信息公示在前台展示
    */
   public List<Info> getInfoList(String condition) {
	   return articleMapper.getInfoList(condition);
   }
}
