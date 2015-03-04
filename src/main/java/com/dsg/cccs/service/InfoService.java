package com.dsg.cccs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsg.cccs.maper.InfoMapper;
import com.dsg.cccs.model.Info;
import com.dsg.cccs.utils.Page;

@Service
public class InfoService {

	@Autowired
	private InfoMapper mapper;

	@Transactional
	public Long addInfo(Info info) throws Exception {
		mapper.addInfo(info);
		return info.getId();
	}

	@Transactional
	public void deleteInfo(Long id) throws Exception{
		mapper.deleteInfo(id);
	}

	public Page getInfos(Integer offset, Integer pageSize) {
		List<Info> list = mapper.getInfos(offset, pageSize);
		int count = mapper.countInfo();
		Page page = new Page(list, count);
		return page;
	}
	
	public Page searchInfoListPage(String condition, Integer offset, Integer pageSize) {
		Page page = new Page(mapper.searchInfoListPage(condition,offset, pageSize), mapper.countInfoCondtion(condition));
		return page;
	}
	
	public List<Info> searchInfoList(String condition) {
	   return mapper.searchInfoList(condition);
	}
	
	public Info getInfo(String condition) {
		return mapper.getInfo(condition);
	}
	
	@Transactional
	public void updateInfo(Info info) throws Exception {
		mapper.updateInfo(info);
	}
}
