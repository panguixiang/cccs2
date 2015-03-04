package com.dsg.cccs.model;

import java.io.Serializable;
import java.util.Date;

/**
 * 站内信
 * @author panguixiang
 *
 */
public class StationMail implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1667619357815019320L;
	/**
	 * UUID
	 */
	private String id;
	/**
	 * 发件人
	 */
	private String addresser;
	/**
	 * 前台发邮件时收件人为null;
	 * 收件人名称
	 */
	private String recipients;
	/**
	 * 标题
	 */
	private String title;
	/**
	 * 正文
	 */
	private String context;
	/**
	 * 创建时间
	 */
	private Date createdate;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAddresser() {
		return addresser;
	}
	public void setAddresser(String addresser) {
		this.addresser = addresser;
	}
	public String getRecipients() {
		return recipients;
	}
	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
}
