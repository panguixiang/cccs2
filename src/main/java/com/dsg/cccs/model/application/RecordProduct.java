package com.dsg.cccs.model.application;

/**
 * z71-->录音制品  z72-->影视作品信息
 * @author panguixiang
 *
 */
public class RecordProduct {
	private String id;     
    //流水号
	private String flow_num;
	//中文名  or z72 影视作品名称  中文名       
	private String ch_name;
	//英文名 or z72 影视作品名称  英文名
	private String en_name;
	//首次出品地
	private String first_address;
	// 出品时间
	private String create_date;
	
	private String opusType;// z72 作品类别  父类
	private String opusTypeSon ;// z72 作品类别 子类
	private String opusDesc;// z72 作品类别 说明
	
	private int methodWay;//只为修改表单时做录音制品信息处理 1=新增 2=修改 3=删除
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFlow_num() {
		return flow_num;
	}
	public void setFlow_num(String flow_num) {
		this.flow_num = flow_num;
	}
	public String getCh_name() {
		return ch_name;
	}
	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
	}
	public String getEn_name() {
		return en_name;
	}
	public void setEn_name(String en_name) {
		this.en_name = en_name;
	}
	public String getFirst_address() {
		return first_address;
	}
	public void setFirst_address(String first_address) {
		this.first_address = first_address;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getOpusType() {
		return opusType;
	}
	public void setOpusType(String opusType) {
		this.opusType = opusType;
	}
	public String getOpusTypeSon() {
		return opusTypeSon;
	}
	public void setOpusTypeSon(String opusTypeSon) {
		this.opusTypeSon = opusTypeSon;
	}
	public String getOpusDesc() {
		return opusDesc;
	}
	public void setOpusDesc(String opusDesc) {
		this.opusDesc = opusDesc;
	}
	public int getMethodWay() {
		return methodWay;
	}
	public void setMethodWay(int methodWay) {
		this.methodWay = methodWay;
	}
	
}
