package com.dsg.cccs.model.application;

/**
 * r43和r44两个表单的model z51
 * @author panguixiang
 *
 */
public class R43_4 {
	
	private Long id;
	private String flow_num;
	private String originalRegType;//登记类别   or r45 补发或换发证书类型   z52=撤销方式
	private String handleNumber;//登记号   or r43=登记受理号  or r45=原登记号    z52=质权登记号
	private String handleDate;//登记日期    or r43 登记受理日期 or r45 版本号
	private String originalChangeNumber;//变更/补充登记证明编号  or r45 原变更/补充登记证明编号
	private String softName;//软件名称及版本号   or r45 软件全称   z52=涉及作品名称
	private String reason;//撤销登记理由  or r45 补发或者换发的理由  z52=撤销说明
	private String hasGtsqr;//有共同登记人
	private String gtsqrName;//共同登记人名称   or r45 软件简称
	private String gtsqrIdea;//共同登记人意见 
	private String applyType;
	private String agent_desc;
	private String isAgent; //z52 由代理人申请 
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
	public String getOriginalRegType() {
		return originalRegType;
	}
	public void setOriginalRegType(String originalRegType) {
		this.originalRegType = originalRegType;
	}
	public String getHandleNumber() {
		return handleNumber;
	}
	public void setHandleNumber(String handleNumber) {
		this.handleNumber = handleNumber;
	}
	public String getHandleDate() {
		return handleDate;
	}
	public void setHandleDate(String handleDate) {
		this.handleDate = handleDate;
	}
	public String getOriginalChangeNumber() {
		return originalChangeNumber;
	}
	public void setOriginalChangeNumber(String originalChangeNumber) {
		this.originalChangeNumber = originalChangeNumber;
	}
	public String getSoftName() {
		return softName;
	}
	public void setSoftName(String softName) {
		this.softName = softName;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getHasGtsqr() {
		return hasGtsqr;
	}
	public void setHasGtsqr(String hasGtsqr) {
		this.hasGtsqr = hasGtsqr;
	}
	public String getGtsqrName() {
		return gtsqrName;
	}
	public void setGtsqrName(String gtsqrName) {
		this.gtsqrName = gtsqrName;
	}
	public String getGtsqrIdea() {
		return gtsqrIdea;
	}
	public void setGtsqrIdea(String gtsqrIdea) {
		this.gtsqrIdea = gtsqrIdea;
	}
	public String getApplyType() {
		return applyType;
	}
	public void setApplyType(String applyType) {
		this.applyType = applyType;
	}
	public String getAgent_desc() {
		return agent_desc;
	}
	public void setAgent_desc(String agent_desc) {
		this.agent_desc = agent_desc;
	}
	public String getIsAgent() {
		return isAgent;
	}
	public void setIsAgent(String isAgent) {
		this.isAgent = isAgent;
	}
	
	

}
