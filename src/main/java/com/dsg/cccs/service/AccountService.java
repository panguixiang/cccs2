package com.dsg.cccs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsg.cccs.maper.AccountMapper;
import com.dsg.cccs.model.Account;
import com.dsg.cccs.model.FriendsConnection;
import com.dsg.cccs.model.StationMail;
import com.dsg.cccs.utils.Digest;
import com.dsg.cccs.utils.Page;

@Service("AccountService")
public class AccountService {

	@Autowired
	private AccountMapper accountMapper;

	@Transactional
	public Long addAccount(Account account) {
		// passwd MD5 加密
		account.setPasswd(Digest.MD5(account.getPasswd()));
		accountMapper.addAccount(account);
		return account.getId();
	}

	public Account getAccount(String condition) {
		return accountMapper.getAccount(condition);
	}

	public Account getAccountByPassport(String passport) {
		return accountMapper.getAccountByPassport(passport);
	}
	
	public void modifyPasswd(String passwd,Long id){
		accountMapper.modifyPasswd(Digest.MD5(passwd),id);
	}
	
	public void updateAccount(Account account){
		accountMapper.updateAccount(account);
	}
	
	public void updatepaswdState(String updatePswState, Long id) {
		accountMapper.updatepaswdState(updatePswState,id);
	}
	public void updateAccountPaswd(String password, Long id) {
		accountMapper.updateAccountPaswd(password,id);
	}
	public void updateAccountByCondition(String condition){
		accountMapper.updateAccountByCondition(condition);
	}
	public void updateAccountByCenter(Account account, String condition){
		accountMapper.updateAccountByCenter(account,condition);
	}
	
	/**
	 * 站内信查询
	 * @param condition
	 * @param start
	 * @param size
	 * @return
	 */
	public Page stationMailPage(String condition, int start, int size) {
		return new Page(accountMapper.stationMailList(condition, start, size), 
				accountMapper.stationMailCount(condition));
	}
	
	/**
	 * 按条件查询单个站内信
	 * @param condition
	 * @return
	 */
	public StationMail getStationMail(String condition) {
		return accountMapper.getStationMail(condition);
	}
	
	public void deleteMail(String condition) throws Exception {
		accountMapper.deleteMail(condition);
	}
	
	public void addStationMail(StationMail mail) {
		accountMapper.addStationMail(mail);
	}
	
	public List<String> getAccountNameList() {
		return accountMapper.getAccountNameList();
	}
	
	public Page getFriendsConnectionlist(String condition, int start, int size) {
		return new Page(accountMapper.getFriendsConnectionlist(condition, start, size), 
				accountMapper.getFriendsCount(condition));
	}
	
	public void deletFriend(String condition) throws Exception {
		accountMapper.deletFriend(condition);
	}
	
	/**
	 * 新增
	 * @param friend
	 * @throws Exception
	 */
	public void addFriend(FriendsConnection friend) throws Exception {
			accountMapper.addFriend(friend);
	}
	
	/**
	 * 修改友情连接
	 * @param friend
	 * @throws Exception
	 */
	public void updateFriend(String condition) throws Exception {
			accountMapper.updateFriend(condition);
	}
	
	/**
	 * 获取单个友情连接
	 * @param condition
	 * @return
	 */
	public FriendsConnection getOneFirend(String condition) {
		return accountMapper.getOneFirend(condition);
	}
	
	public Account getAccountByCondition(String condition) {
		return accountMapper.getAccountByCondition(condition);
	}
}
