package com.dsg.cccs.model.application;

/**
 * @ClassName: Person
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-6 下午9:22:24
 * 
 */
public class Person {
	private Long id;
	private String flow_num; // 流水号
	private Integer type; // 类型1：本人，2代理
	private String name;// 姓名或单位名称
	private String address;// 地址
	private String post_code;// 邮编
	private String contact_person;// 联系人
	private String phone;// 电话号码
	private String email;
	private String mobile;
	private String fax;

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
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the post_code
	 */
	public String getPost_code() {
		return post_code;
	}

	/**
	 * @param post_code
	 *            the post_code to set
	 */
	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}

	/**
	 * @return the contact_person
	 */
	public String getContact_person() {
		return contact_person;
	}

	/**
	 * @param contact_person
	 *            the contact_person to set
	 */
	public void setContact_person(String contact_person) {
		this.contact_person = contact_person;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone
	 *            the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
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
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}

	/**
	 * @param mobile
	 *            the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	/**
	 * @return the fax
	 */
	public String getFax() {
		return fax;
	}

	/**
	 * @param fax
	 *            the fax to set
	 */
	public void setFax(String fax) {
		this.fax = fax;
	}

}
