package com.dsg.cccs.model;

import java.util.Date;

/**
 * @ClassName: Info
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-10 下午7:42:33
 * 
 */
public class Info {
	private Long id;
	//登记号,备案号,登记,原登记号，原质权登记号
	private String num;
	//作品名称,名称,期刊中文名称,录音制品名称,影视作品名称,中文名称，软件全称,涉及作品名称
	private String name;
	//作品类别,类别,出版类型,原登记类型，原登记类别,涉及作品种类
	private String type;
	//作品数量
	private Integer amount;
	//著作权人,转让（许可）方,首次出品地，出质人
	private String owner;
	//登记日期，备案时间
	private String date;
	//表单类型
	private String app_type;
	//受让（被许可）方,出品时间,质权人,转让人
	private String  transferee;
	//出版单位名称，软件简称,受让人
	private String publishUnitName;
	//期刊英文名称，英文名称
    private String englishname;
    //备案号，版本号(当表单同时存在登记号，备案号的时候这个东西指备案号)
    private String record;
    //分类号
    private String compcode;
    
    //创建时间，登记开始/结束时间
    private Date create_time;
    private String opusnumber;//作品编号
	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}


	/**
	 * @param date
	 *            the date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}

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
	 * @return the num
	 */
	public String getNum() {
		return num;
	}

	/**
	 * @param num
	 *            the num to set
	 */
	public void setNum(String num) {
		this.num = num;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the amount
	 */
	public Integer getAmount() {
		return amount;
	}

	/**
	 * @param amount
	 *            the amount to set
	 */
	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	/**
	 * @return the owner
	 */
	public String getOwner() {
		return owner;
	}

	/**
	 * @param owner
	 *            the owner to set
	 */
	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getApp_type() {
		return app_type;
	}

	public void setApp_type(String app_type) {
		this.app_type = app_type;
	}

	public String getTransferee() {
		return transferee;
	}

	public void setTransferee(String transferee) {
		this.transferee = transferee;
	}

	public String getPublishUnitName() {
		return publishUnitName;
	}

	public void setPublishUnitName(String publishUnitName) {
		this.publishUnitName = publishUnitName;
	}

	public String getEnglishname() {
		return englishname;
	}

	public void setEnglishname(String englishname) {
		this.englishname = englishname;
	}


	public String getRecord() {
		return record;
	}


	public void setRecord(String record) {
		this.record = record;
	}


	public String getCompcode() {
		return compcode;
	}


	public void setCompcode(String compcode) {
		this.compcode = compcode;
	}


	public Date getCreate_time() {
		return create_time;
	}


	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}


	public String getOpusnumber() {
		return opusnumber;
	}


	public void setOpusnumber(String opusnumber) {
		this.opusnumber = opusnumber;
	}
	
}
