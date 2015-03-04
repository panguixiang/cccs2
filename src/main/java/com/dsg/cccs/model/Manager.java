package com.dsg.cccs.model;

import java.util.Date;

/**
 * @ClassName: Manager
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-8 上午3:13:11
 * 
 */
public class Manager {
	private Long id;
	private String username;
	private String passwd;
    private int level;//管理员等级（1=超级管理员，2=二级管理员）
	private String roleid;//用户所属角色，默认为‘’
	private Date create_time;//管理用户创建时间
	
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 *            the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the passwd
	 */
	public String getPasswd() {
		return passwd;
	}

	/**
	 * @param passwd
	 *            the passwd to set
	 */
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}


}
