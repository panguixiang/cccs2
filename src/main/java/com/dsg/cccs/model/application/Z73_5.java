package com.dsg.cccs.model.application;

public class Z73_5 {
	private Long id;
	private String flow_num;//流水号
	private String register_type; // 原登记类型
	private String cn_opus_name;//名称(中文名)
	private String en_opus_name;//名称(英文名)
	private String publish_type;//出版类型
	private String original_reg_num;// 原登记号 ,原受理号
	private String register_date;// 原登记日期 ,原受理日期
	private String publis_comp_name;//出版单位名称
	private String rev_type; // 撤销类型
	private String rev_desc;//撤销登记理由，变更理由说明，变更理由说明
	private String apply_type;// 申请方式
	private String agent_desc;// 代理理由
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
	public String getRegister_type() {
		return register_type;
	}
	public void setRegister_type(String register_type) {
		this.register_type = register_type;
	}
	public String getEn_opus_name() {
		return en_opus_name;
	}
	public void setEn_opus_name(String en_opus_name) {
		this.en_opus_name = en_opus_name;
	}
	public String getCn_opus_name() {
		return cn_opus_name;
	}
	public void setCn_opus_name(String cn_opus_name) {
		this.cn_opus_name = cn_opus_name;
	}
	public String getPublish_type() {
		return publish_type;
	}
	public void setPublish_type(String publish_type) {
		this.publish_type = publish_type;
	}
	public String getOriginal_reg_num() {
		return original_reg_num;
	}
	public void setOriginal_reg_num(String original_reg_num) {
		this.original_reg_num = original_reg_num;
	}
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	public String getPublis_comp_name() {
		return publis_comp_name;
	}
	public void setPublis_comp_name(String publis_comp_name) {
		this.publis_comp_name = publis_comp_name;
	}
	public String getRev_type() {
		return rev_type;
	}
	public void setRev_type(String rev_type) {
		this.rev_type = rev_type;
	}
	public String getRev_desc() {
		return rev_desc;
	}
	public void setRev_desc(String rev_desc) {
		this.rev_desc = rev_desc;
	}
	public String getApply_type() {
		return apply_type;
	}
	public void setApply_type(String apply_type) {
		this.apply_type = apply_type;
	}
	public String getAgent_desc() {
		return agent_desc;
	}
	public void setAgent_desc(String agent_desc) {
		this.agent_desc = agent_desc;
	}
	
	
}
