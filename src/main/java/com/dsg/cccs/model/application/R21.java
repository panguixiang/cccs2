package com.dsg.cccs.model.application;

public class R21 {
    private Long id;
    private String flow_num;
	private String softFullName;//软件全称   
	private String softForShort;//软件简称  
	private String edition;//版本号   
	private String origRegNumber;//软件著作权登记号   
	private String originalChangeNumber;//原变更/补充登记证明编号   
	private String contractType;//合同类型 转让合同 专有许可合同  
	
	private String rightScope;//转让权利范围   
	private String regionScope;//转让地域范围  
	private String regionScope_;//转让地域范围  -->其它地区
	private String validStartDate;//转让合同生效日期 许可权利期限 起始
	private String validEndDate;//许可权利期限 至
	private String applyType;//
	private String agent_desc;//
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
	public String getSoftFullName() {
		return softFullName;
	}
	public void setSoftFullName(String softFullName) {
		this.softFullName = softFullName;
	}
	public String getSoftForShort() {
		return softForShort;
	}
	public void setSoftForShort(String softForShort) {
		this.softForShort = softForShort;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	public String getOrigRegNumber() {
		return origRegNumber;
	}
	public void setOrigRegNumber(String origRegNumber) {
		this.origRegNumber = origRegNumber;
	}
	public String getOriginalChangeNumber() {
		return originalChangeNumber;
	}
	public void setOriginalChangeNumber(String originalChangeNumber) {
		this.originalChangeNumber = originalChangeNumber;
	}
	public String getContractType() {
		return contractType;
	}
	public void setContractType(String contractType) {
		this.contractType = contractType;
	}
	
	public String getRightScope() {
		return rightScope;
	}
	public void setRightScope(String rightScope) {
		this.rightScope = rightScope;
	}
	public String getRegionScope() {
		return regionScope;
	}
	public void setRegionScope(String regionScope) {
		this.regionScope = regionScope;
	}
	public String getRegionScope_() {
		return regionScope_;
	}
	public void setRegionScope_(String regionScope_) {
		this.regionScope_ = regionScope_;
	}
	public String getValidStartDate() {
		return validStartDate;
	}
	public void setValidStartDate(String validStartDate) {
		this.validStartDate = validStartDate;
	}
	public String getValidEndDate() {
		return validEndDate;
	}
	public void setValidEndDate(String validEndDate) {
		this.validEndDate = validEndDate;
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
	
	


}
