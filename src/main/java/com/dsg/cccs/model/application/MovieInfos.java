package com.dsg.cccs.model.application;

/**
 * z72,影视作品详细节目
 * @author panguixiang
 *
 */
public class MovieInfos {
	private Long id;
	private String flow_num;
	private String cnTitle_;//中文片名   
	private String enTitle_;//英文片名  
	private String company_;//制片公司（中英文）   
	private String proCountry_;//制片公司国    别   
	private String director_;//导演（中英文）  
	private String leadRole_;//主演（中英文）   
	private String publishDate_;//出品时间 
	private String country1;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFlow_num() {
		return flow_num;
	}
	public void setFlow_num(String flow_num) {
		this.flow_num = flow_num;
	}
	public String getCnTitle_() {
		return cnTitle_;
	}
	public void setCnTitle_(String cnTitle_) {
		this.cnTitle_ = cnTitle_;
	}
	public String getEnTitle_() {
		return enTitle_;
	}
	public void setEnTitle_(String enTitle_) {
		this.enTitle_ = enTitle_;
	}
	public String getCompany_() {
		return company_;
	}
	public void setCompany_(String company_) {
		this.company_ = company_;
	}
	public String getProCountry_() {
		return proCountry_;
	}
	public void setProCountry_(String proCountry_) {
		this.proCountry_ = proCountry_;
	}
	public String getDirector_() {
		return director_;
	}
	public void setDirector_(String director_) {
		this.director_ = director_;
	}
	public String getLeadRole_() {
		return leadRole_;
	}
	public void setLeadRole_(String leadRole_) {
		this.leadRole_ = leadRole_;
	}
	public String getPublishDate_() {
		return publishDate_;
	}
	public void setPublishDate_(String publishDate_) {
		this.publishDate_ = publishDate_;
	}
	public String getCountry1() {
		return country1;
	}
	public void setCountry1(String country1) {
		this.country1 = country1;
	}
    
   
}
