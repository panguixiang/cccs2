package com.dsg.cccs.model;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Account {

	private Long id;

	private Integer type;//二期默认全部为1 表示非资源中心用户

	@NotNull
	@Size(min = 4, max = 25, message = "用户名的输入格式有误,长度必须在{min}和{max}之间")
	private String passport;
	@NotNull
	@Size(min = 4, max = 40, message = "密码的输入格式有误,长度必须在{min}和{max}之间")
	private String passwd;
	@NotNull
	@Size(min = 1, message = "E-Mail的格式输入有误")
	private String email;
	@NotNull
	@Size(min = 2, max = 25, message = "公司名称或者常用笔名的输入格式有误")
	private String name;//姓名或单位名称,企业名称,真实姓名
	@NotNull
	@Size(min = 2, max = 25, message = "姓名的输入格式有误,长度必须在{min}和{max}之间")
	private String p_name;//联系人,法人姓名

	@NotNull
	@Size(min = 1, message = "请选择公司法人或者个人信息的性别")
	private String sex;
	@NotNull
	@Size(min = 1, message = "请选择公司法人或者个人信息的省份")
	private String province;
	@NotNull
	@Size(min = 1, message = "请选择公司法人或者个人信息的城市")
	private String city;
	@NotNull
	@Size(min = 1, message = "请选择公司法人或者个人信息的身份证号")
	private String card; // 证件类型
    private Date create_time;
    private Date update_time;
	private Integer level;//是否升级为资源中心用户 2 为资源中心用户，1为默认

	private String business_file; // 上传证件的扫描件,上传法人证件的扫描件

	private String enterprise_file; // 上传企业证明文件
	
	private String updatepaswd;//找回密码链接失效 为空为失效或没有修改密码需求，否则则可以（所以新增用户时不需要）
	
	
	private String address;
	private String postcode;
	private String phone;
	private String peremail;
	private String mobile;
	private String fax;
	
	private String portraitimg;//头像
	private Long long_time;//在线时长
	private int login_number;//登录次数
	private Date last_login_time;//最后访问时间
	//升级资源中心用户数据库补充信息
	private int center_update;//1=不可修改资源中心信息，2=可以修改资源中心信息
	private String center_type;//个人、企业
	private String country;//国籍
	private String card_number;//证件号码
	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
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
	 * @return the type
	 */
	public Integer getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(Integer type) {
		this.type = type;
	}

	/**
	 * @return the passport
	 */
	public String getPassport() {
		return passport;
	}

	/**
	 * @param passport
	 *            the passport to set
	 */
	public void setPassport(String passport) {
		this.passport = passport;
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

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
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
	 * @return the p_name
	 */
	public String getP_name() {
		return p_name;
	}

	/**
	 * @param p_name
	 *            the p_name to set
	 */
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * @param sex
	 *            the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * @return the province
	 */
	public String getProvince() {
		return province;
	}

	/**
	 * @param province
	 *            the province to set
	 */
	public void setProvince(String province) {
		this.province = province;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city
	 *            the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the card
	 */
	public String getCard() {
		return card;
	}

	/**
	 * @param card
	 *            the card to set
	 */
	public void setCard(String card) {
		this.card = card;
	}

	
	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public Date getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}

	/**
	 * @return the business_file
	 */
	public String getBusiness_file() {
		return business_file;
	}

	/**
	 * @param business_file
	 *            the business_file to set
	 */
	public void setBusiness_file(String business_file) {
		this.business_file = business_file;
	}

	/**
	 * @return the enterprise_file
	 */
	public String getEnterprise_file() {
		return enterprise_file;
	}

	/**
	 * @param enterprise_file
	 *            the enterprise_file to set
	 */
	public void setEnterprise_file(String enterprise_file) {
		this.enterprise_file = enterprise_file;
	}

	
	public String getUpdatepaswd() {
		return updatepaswd;
	}

	public void setUpdatepaswd(String updatepaswd) {
		this.updatepaswd = updatepaswd;
	}
	
	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPeremail() {
		return peremail;
	}

	public void setPeremail(String peremail) {
		this.peremail = peremail;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getPortraitimg() {
		return portraitimg;
	}

	public void setPortraitimg(String portraitimg) {
		this.portraitimg = portraitimg;
	}

	public Long getLong_time() {
		return long_time;
	}

	public void setLong_time(Long long_time) {
		this.long_time = long_time;
	}

	public int getLogin_number() {
		return login_number;
	}

	public void setLogin_number(int login_number) {
		this.login_number = login_number;
	}

	public Date getLast_login_time() {
		return last_login_time;
	}

	public void setLast_login_time(Date last_login_time) {
		this.last_login_time = last_login_time;
	}

	public int getCenter_update() {
		return center_update;
	}

	public void setCenter_update(int center_update) {
		this.center_update = center_update;
	}

	public String getCenter_type() {
		return center_type;
	}

	public void setCenter_type(String center_type) {
		this.center_type = center_type;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}

	
}