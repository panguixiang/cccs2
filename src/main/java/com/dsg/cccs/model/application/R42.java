package com.dsg.cccs.model.application;

public class R42 {

	private Long id;
	private String flow_num;
	private String evidence;//撤销依据 最终司法判决 著作权行政管理部门作出的行政处罚决定
	private String originalRegType;//登记类别 软件著作权登记 软件著作权转让合同登记 软件著作权专有许可合同登记
    private String handleNumber;//登记号
    private String handleDate;//登记日期
    private String originalChangeNumber;//变更/补充登记证明编号
    private String softName;//软件名称及版本号
    private String reason;//撤销软件登记理由
    private String applyType;
    private String agent_desc;
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
	public String getEvidence() {
		return evidence;
	}
	public void setEvidence(String evidence) {
		this.evidence = evidence;
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
