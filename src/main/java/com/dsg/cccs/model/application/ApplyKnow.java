package com.dsg.cccs.model.application;

public class ApplyKnow {

	private Integer id;
	private String content;
	private int orders;//不代表排序，而是 1=著作权登记申请在线填表 2=著作权质权登记申请在线填表  3=资源中心
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getOrders() {
		return orders;
	}
	public void setOrders(int orders) {
		this.orders = orders;
	}
	
}
