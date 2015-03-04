package com.dsg.cccs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dsg.cccs.maper.ManagerMapper;
import com.dsg.cccs.model.Account;
import com.dsg.cccs.model.Manager;
import com.dsg.cccs.model.Role;
import com.dsg.cccs.utils.Page;

@Service
public class ManagerService {

	@Autowired
	private ManagerMapper mapper;

	/**
	 * 按条件查询管理用户
	 * @param username
	 * @return
	 */
	public Manager getManagerByName(String username) {
		return mapper.getManagerByName(username);
	}
	
	/**
	 * 按条件查询管理用户列表
	 * @param condition
	 * @param start
	 * @param size
	 * @return
	 */
	public Page pageMangerList(String condition, int start, int size) {
		 return new Page(mapper.mangeList(condition, start, size), mapper.mangeCount(condition));
	}
	
	/**
	 * 但条件查询单个Manager
	 * @param condition
	 * @return
	 */
	public Manager getOneManager(String condition) {
		return mapper.getOneManager(condition);
	}
	
	public Long addManager(Manager manger){
		 mapper.addManager(manger);
		 return manger.getId();
	}
	
	public void updateManager(Manager manger){
		mapper.updateManager(manger);
	}
	
	/**
	 * 管理员密码重置
	 * @param newpaswd
	 * @param id
	 * @throws Exception
	 */
	public void updateManagerPswd(String newpaswd, Long id) throws Exception{
		mapper.updateManagerPswd(newpaswd, id);
	}
	
	/**
	 * 按条件查询role Page
	 * @param condition
	 * @param start
	 * @param size
	 * @return
	 */
	public Page pageRoleList(String condition, int start, int size) {
		 return new Page(mapper.roleListPage(condition, start, size), mapper.roleCount(condition));
	}
	
	/**
	 * 按条件获得权限列表
	 * @param condition
	 * @return
	 */
	public List<Role> getRoleList(String condition) {
		return mapper.roleList(condition);
	}
	
	/**
	 * 按条件删除 角色  管理员或用户
	 * @param condition
	 * @throws Exception
	 */
	public void deleteObj(String condition) throws Exception {
		mapper.deleteObj(condition);
	}
	
	/**
	 * 但条件查询单个role
	 * @param condition
	 * @return
	 */
	public Role getOneRole(String condition) {
		return mapper.getOneRole(condition);
	}
	/**
	 * 新增role
	 * @param condition
	 */
	public void addRole(Role role) {
	    mapper.addRole(role);
	}
	
	/**
	 * 修改role
	 * @param condition
	 */
	public void updateRole(Role role) {
	    mapper.updateRole(role);
	}
	
	/**
	 * 按条件查询用户page
	 * @param condition
	 * @param start
	 * @param size
	 * @return
	 */
	public Page pageUsersList(String condition, int start, int size) {
		return new Page(mapper.pageUsers(condition, start, size), mapper.usersCount(condition));
	}
	
	/**
	 * 按条件获得用户明细
	 * @param condition
	 * @return
	 */
	public Account getAccountUser(String condition) {
		return mapper.getAccountUser(condition);
	}
}
