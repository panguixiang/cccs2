package com.dsg.cccs.model.application;

import java.util.Date;

import com.dsg.cccs.utils.SystemUtils;

public class Z21 {
	private Long id;
	private String flow_num; // 流水号
	private String contract_type; // 合同类型
	private String right_scope; // 权利范围
	private String right_desc; // 权利说明
	private String appear_country; // 地域范围:国家
	private String appear_city; // 地域范围:城市
	private String valid_start_date; // 合同有效开始时间
	private String valid_end_date; // 合同有效结束时间
	private String opus_name; // 作品名称
	private String more_opus;// 作品量大于5个
	private String opus_type; // 作品类别
	
	private String apply_type;// 申请方式
	private String agent; // 代理
	private String agent_desc;// 代理理由
	
	private String opus_en_name;//z41 期刊英文名称

	private Date start_date;
	private Date end_date;
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

	public String getContract_type() {
		return contract_type;
	}

	public void setContract_type(String contract_type) {
		this.contract_type = contract_type;
	}

	public String getRight_scope() {
		return right_scope;
	}

	public void setRight_scope(String right_scope) {
		this.right_scope = right_scope;
	}

	public String getRight_desc() {
		return right_desc;
	}

	public void setRight_desc(String right_desc) {
		this.right_desc = right_desc;
	}

	public String getAppear_country() {
		return appear_country;
	}

	public void setAppear_country(String appear_country) {
		this.appear_country = appear_country;
	}

	public String getAppear_city() {
		return appear_city;
	}

	public void setAppear_city(String appear_city) {
		this.appear_city = appear_city;
	}

	public String getValid_start_date() {
		return valid_start_date;
	}

	public void setValid_start_date(String valid_start_date) {
		this.valid_start_date = valid_start_date;
	}

	public String getValid_end_date() {
		return valid_end_date;
	}

	public void setValid_end_date(String valid_end_date) {
		this.valid_end_date = valid_end_date;
	}

	public String getOpus_name() {
		return opus_name;
	}

	public void setOpus_name(String opus_name) {
		this.opus_name = opus_name;
	}

	public String getMore_opus() {
		return more_opus;
	}

	public void setMore_opus(String more_opus) {
		this.more_opus = more_opus;
	}

	public String getOpus_type() {
		return opus_type;
	}

	public void setOpus_type(String opus_type) {
		this.opus_type = opus_type;
	}

	public String getApply_type() {
		return apply_type;
	}

	public void setApply_type(String apply_type) {
		this.apply_type = apply_type;
	}

	public String getAgent() {
		return agent;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getAgent_desc() {
		return agent_desc;
	}

	public void setAgent_desc(String agent_desc) {
		this.agent_desc = agent_desc;
	}

	public String getOpus_en_name() {
		return opus_en_name;
	}

	public void setOpus_en_name(String opus_en_name) {
		this.opus_en_name = opus_en_name;
	}
	public Date getStart_date() {
		if(valid_start_date != null && !valid_start_date.trim().equals("")) {
			start_date = SystemUtils.stringToDate(valid_start_date, "yyyy-MM-dd");
		}
		return start_date;
	}
	public Date getEnd_date() {
		if(valid_end_date != null && !valid_end_date.trim().equals("")) {
			end_date = SystemUtils.stringToDate(valid_end_date, "yyyy-MM-dd");
		}
		return end_date;
	}
	
}
