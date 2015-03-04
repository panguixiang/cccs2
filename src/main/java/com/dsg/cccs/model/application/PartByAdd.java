package com.dsg.cccs.model.application;

/**   
 * 此表只为添加表单中部分模块可以添加部分内容服务
 * 下面个字段注释为其代表意义
 * @author panguixiang
 *
 */
public class PartByAdd {
	
	private Long id;
	/**
	 * 各表单流水号
	 */
	private String flow_num;
    /**
     * 1.z11-->申请办理信息-->申请办理信息-->姓名或名称   
     * 2.z52-->出质人信息-->出质人姓名或名称or质权人姓名或名称
     */
	private String name;
	/**
	 * 1.z11-->申请办理信息-->申请办理信息-->电话号码
	 * 2.z52-->出质人信息-->czr=出质人         or   zqr=质权人
	 */
	private String phone;
	
	
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
