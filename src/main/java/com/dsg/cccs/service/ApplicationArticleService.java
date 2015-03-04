package com.dsg.cccs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsg.cccs.maper.ApplicationArticleMapper;
import com.dsg.cccs.model.ApplicationArticle;
import com.dsg.cccs.utils.Page;

@Service
public class ApplicationArticleService {

	@Autowired
	private ApplicationArticleMapper aaMapper;

	@Transactional
	public void addArticle(ApplicationArticle article) {
		aaMapper.addArticle(article);
	}

	@Transactional
	public void updateArticle(ApplicationArticle article) {
		if (null == article.getId()) {
			aaMapper.addArticle(article);
		} else {
			aaMapper.updateArticle(article);
		}
	}

	@Transactional
	public void deleteArticle(Long id) {
		aaMapper.deleteArticle(id);
	}

	public List<ApplicationArticle> getArticles(String type) {
		return aaMapper.getArticles(type);
	}
	
	public List<ApplicationArticle> getAllArticles(String condition) {
		return aaMapper.getAllArticles(condition);
	}
	
	public ApplicationArticle getArticle(Long id){
		return aaMapper.getArticle(id);
	}
	
	public Page getAllArticlesPages(String condition, int start, int size) {
		return new Page(aaMapper.getAllArticlesTwo(condition,start,size),aaMapper.getAllArticlesCount(condition));
	}
}
