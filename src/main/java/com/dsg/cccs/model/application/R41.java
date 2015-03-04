package com.dsg.cccs.model.application;

/**
 * r41 z53
 * @author panguixiang
 *
 */
public class R41 {

	private Long id;
	private String flow_num;
	private String softFullName;//软件名称及版本号   or z53=涉及作品种类
	private String originalRegType;//原登记类别 
	private String originalRegNumber;//原登记号  or z53=原登质权记号
	private String originalChangeNumber;//原变更/补充登记证明编号  or z53=变更理由说明
	private String reason;//补充理由说明 or z53=涉及作品名称
	private String applyingType;//申请类型 or z53=原质权登记日期
	private String applyType;//
	private String agent_desc;
	private String isAgent;
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
	public String getOriginalRegType() {
		return originalRegType;
	}
	public void setOriginalRegType(String originalRegType) {
		this.originalRegType = originalRegType;
	}
	public String getOriginalRegNumber() {
		return originalRegNumber;
	}
	public void setOriginalRegNumber(String originalRegNumber) {
		this.originalRegNumber = originalRegNumber;
	}
	public String getOriginalChangeNumber() {
		return originalChangeNumber;
	}
	public void setOriginalChangeNumber(String originalChangeNumber) {
		this.originalChangeNumber = originalChangeNumber;
	}
	public String getApplyingType() {
		return applyingType;
	}
	public void setApplyingType(String applyingType) {
		this.applyingType = applyingType;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
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
