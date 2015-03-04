package com.dsg.cccs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsg.cccs.maper.CartoonMapper;
import com.dsg.cccs.model.Cartoon;
import com.dsg.cccs.model.application.ApplyKnow;
import com.dsg.cccs.utils.Page;

@Service
public class CartoonService {

	@Autowired
	private CartoonMapper ctMapper;

	@Transactional
	public void addCartoon(Cartoon cartoon) {
		ctMapper.add(cartoon);
	}

	public Long updateCartoon(Cartoon cartoon) {
		Long lastInsertID;
		if (null == cartoon.getId()) {
			ctMapper.add(cartoon);
			lastInsertID = ctMapper.getLastInsertID();
		} else {
			ctMapper.update(cartoon);
			lastInsertID = cartoon.getId();
		}
		return lastInsertID;
	}

	public Cartoon getOne(Long id) {
		return ctMapper.getOne(id);
	}

	public Page getPageBySQL(String sqlStr, Integer start, Integer size) {
		List<Cartoon> cartoons = ctMapper.getListBySql(sqlStr, start, size);
		Integer count = ctMapper.countBySql(sqlStr);
		Page page = new Page(cartoons, count);
		return page;
	}
	
	public Page getPage(Integer start, Integer size) {
		List<Cartoon> cartoons = ctMapper.getList(start, size);
		Integer count = ctMapper.count();
		Page page = new Page(cartoons, count);
		return page;
	}
	
	public void delete(Long id){
		ctMapper.delete(id);
	}
	
	/**
	 * 按条件查询资源中心列表
	 * @param condition
	 * @param start
	 * @param size
	 * @return
	 */
	public Page getCartoonPage(String condition, Integer start, Integer size) {
		return new Page(ctMapper.getListBySql(condition, start, size), 
				ctMapper.getCartoonCount(condition));
	}
	
	public void updateCartoonByCondition(String condition) throws Exception{
		ctMapper.updateCartoonByCondition(condition);
	}
	
	/**
	 * 按条件获得单个填表须知
	 * 
	 * @param condition
	 * @return
	 */
	public ApplyKnow getApplyKnow(String condition) {
		return ctMapper.getApplyKnow(condition);
	}
	
}
