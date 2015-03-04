package com.dsg.cccs.model;

import java.util.Date;

/**
 * 友情连接
 * @author panguixiang
 *
 */
public class FriendsConnection {

	private Long id;
	private String url;
	private String image;
	private Date create_date;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	
}
