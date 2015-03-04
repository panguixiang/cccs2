package com.dsg.cccs.model.application;

/**
 * @ClassName: CopyrightPerson
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-6 下午9:10:28
 * 
 */
public class CopyrightPerson {

	private Long id;
	private String flow_num; // 流水号
	/**
	 *   姓名/单位名称  ,z71 名称(中英文)
	 */
	private String name;
	private String people_type; // 类别 z51=类别
	/**
	 * 国籍 z71 国别或地区
	 */
	private String country; 
	/**
	 * 省份
	 */
	private String province;
	/**
	 * 城市 
	 */
	private String city;
	private String id_type; // 证件类型
	/**
	 * 证件号码  z71 电话号码 z51=证件号码
	 */
	private String id_number;
	/**
	 * 署名情况  z71 传真号码 z51=联系人电话
	 */
	private String sign;
	/**
	 * 别名 z71 联系人  z51=联系人
	 */
	private String opus_sign;
	/**
	 *  地址
	 */
	private String addr; 
    /**
     * 园区 z71 Email 	z51=邮政编码
     */
	private String garden; //r11 
	/**
	 * 企业类别   z51=出质人类型
	 */
	private String busType;//r11
	/**
	 * 申请证书副本  z51=法定代表人
	 */
	private String hasLetter; //r11
	
	private Integer type; // 类别 1=拥有者,出质人信息        2=受让方,质权人信息   3=z56的受让人信息
	
	/**
	 * z41-->英文名称 
	 */
	private String english_name;

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	// 著作权人信息结束
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
	 * @return the flow_num
	 */
	public String getFlow_num() {
		return flow_num;
	}

	/**
	 * @param flow_num
	 *            the flow_num to set
	 */
	public void setFlow_num(String flow_num) {
		this.flow_num = flow_num;
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
	 * @return the people_type
	 */
	public String getPeople_type() {
		return people_type;
	}

	/**
	 * @param people_type
	 *            the people_type to set
	 */
	public void setPeople_type(String people_type) {
		this.people_type = people_type;
	}

	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param country
	 *            the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
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
	 * @return the id_type
	 */
	public String getId_type() {
		return id_type;
	}

	/**
	 * @param id_type
	 *            the id_type to set
	 */
	public void setId_type(String id_type) {
		this.id_type = id_type;
	}

	/**
	 * @return the id_number
	 */
	public String getId_number() {
		return id_number;
	}

	/**
	 * @param id_number
	 *            the id_number to set
	 */
	public void setId_number(String id_number) {
		this.id_number = id_number;
	}

	/**
	 * @return the sign
	 */
	public String getSign() {
		return sign;
	}

	/**
	 * @param sign
	 *            the sign to set
	 */
	public void setSign(String sign) {
		this.sign = sign;
	}

	/**
	 * @return the opus_sign
	 */
	public String getOpus_sign() {
		return opus_sign;
	}

	/**
	 * @param opus_sign
	 *            the opus_sign to set
	 */
	public void setOpus_sign(String opus_sign) {
		this.opus_sign = opus_sign;
	}

	public String getEnglish_name() {
		return english_name;
	}

	public void setEnglish_name(String english_name) {
		this.english_name = english_name;
	}

	public String getGarden() {
		return garden;
	}

	public void setGarden(String garden) {
		this.garden = garden;
	}

	public String getBusType() {
		return busType;
	}

	public void setBusType(String busType) {
		this.busType = busType;
	}

	public String getHasLetter() {
		return hasLetter;
	}

	public void setHasLetter(String hasLetter) {
		this.hasLetter = hasLetter;
	}

	
}
