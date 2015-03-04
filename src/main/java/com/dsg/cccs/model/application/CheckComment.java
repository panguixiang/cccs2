package com.dsg.cccs.model.application;

import java.util.Date;

/**
 * 表单审核记录跟踪表实体类
 * @author xiefeng
 *
 */
public class CheckComment {

	private Long id;
	private String flow_num;
	private String app_name;
	private String check_person;
	private Date update_time;
	private Integer state;
	private String comment;
	private String stateStr;
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
	public String getApp_name() {
		return app_name;
	}
	public void setApp_name(String app_name) {
		this.app_name = app_name;
	}
	public String getCheck_person() {
		return check_person;
	}
	public void setCheck_person(String check_person) {
		this.check_person = check_person;
	}
	public Date getUpdate_time() {
		return update_time;
	}
	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getStateStr() {
		if(state != null) {
			if(state == 1) {
				return stateStr = "申请表未完成";
			}
			if(state == 2) {
				return stateStr = "申请表已提交";
			}
			if(state == 3) {
				return stateStr = "申请表未通过";
			}
			if(state == 4) {
				return stateStr = "递交材料中";
			}
			if(state == 5) {
				return stateStr = "初审中";
			}
			if(state == 6) {
				return stateStr = "初审未通过";
			}
			if(state == 7) {
				return stateStr = "缴费中";
			}
			if(state == 8) {
				return stateStr = "复审中";
			}
			if(state == 9) {
				return stateStr = "复审未通过";
			}
			if(state == 10) {
				return stateStr = "终审中";
			}
			
			if(state == 11) {
				return stateStr = "终审未通过";
			}
			if(state == 12) {
				return stateStr = "证书已发放";
			}
		}
		return stateStr;
	}
	public void setStateStr(String stateStr) {
		this.stateStr = stateStr;
	}
	
}
