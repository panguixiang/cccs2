package com.dsg.cccs.model.application;

import java.util.Date;

import com.dsg.cccs.utils.SystemUtils;

public class Z51 {
	 private Long id;
	 private String flow_num;
	 private String opusName;//涉及作品名称  
	 private String opusType_;//涉及作品种类
	 private String completedDate;//创作完成日期 
	 private String appearDate;//首次发表日期
	 private String isImpower;//出质前该著作权是否授权 是 否  
	 private String impowerDesc;//授权情况说明：   
	 private String zzqRegNumber;//著作权登记号   
	 private String isAppraise;//评估情况 是 否  
	 private String isAppraiseNum;//评估价值： (元)  
	 private String isAppraiseName;//评估机构名称： 
	 private String contractNum;//合同编号   
	 private String creditorAmount;//主债务数额   
	 private String debtDateInfo;//主债务履行期限   
	 private String copyrightType;//出质著作权种类   
	 private String copyrightScope;//出质著作权范围   
	 private String impawnSum;//质权担保金额   
	 private String assureScope;//质权担保范围   
	 private String bailDateInfo;//质权担保期限 
     private String applyType;//
     private String isAgent;//
     private String agentDesc;//
     
     private Date completedDateStr;
     private Date appearDateStr;
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
	public String getOpusName() {
		return opusName;
	}
	public void setOpusName(String opusName) {
		this.opusName = opusName;
	}
	public String getOpusType_() {
		return opusType_;
	}
	public void setOpusType_(String opusType_) {
		this.opusType_ = opusType_;
	}
	public String getCompletedDate() {
		return completedDate;
	}
	public void setCompletedDate(String completedDate) {
		this.completedDate = completedDate;
	}
	public String getAppearDate() {
		return appearDate;
	}
	public void setAppearDate(String appearDate) {
		this.appearDate = appearDate;
	}
	public String getIsImpower() {
		return isImpower;
	}
	public void setIsImpower(String isImpower) {
		this.isImpower = isImpower;
	}
	public String getImpowerDesc() {
		return impowerDesc;
	}
	public void setImpowerDesc(String impowerDesc) {
		this.impowerDesc = impowerDesc;
	}
	public String getZzqRegNumber() {
		return zzqRegNumber;
	}
	public void setZzqRegNumber(String zzqRegNumber) {
		this.zzqRegNumber = zzqRegNumber;
	}
	public String getIsAppraise() {
		return isAppraise;
	}
	public void setIsAppraise(String isAppraise) {
		this.isAppraise = isAppraise;
	}
	public String getIsAppraiseNum() {
		return isAppraiseNum;
	}
	public void setIsAppraiseNum(String isAppraiseNum) {
		this.isAppraiseNum = isAppraiseNum;
	}
	public String getIsAppraiseName() {
		return isAppraiseName;
	}
	public void setIsAppraiseName(String isAppraiseName) {
		this.isAppraiseName = isAppraiseName;
	}
	public String getContractNum() {
		return contractNum;
	}
	public void setContractNum(String contractNum) {
		this.contractNum = contractNum;
	}
	public String getCreditorAmount() {
		return creditorAmount;
	}
	public void setCreditorAmount(String creditorAmount) {
		this.creditorAmount = creditorAmount;
	}
	public String getDebtDateInfo() {
		return debtDateInfo;
	}
	public void setDebtDateInfo(String debtDateInfo) {
		this.debtDateInfo = debtDateInfo;
	}
	public String getCopyrightType() {
		return copyrightType;
	}
	public void setCopyrightType(String copyrightType) {
		this.copyrightType = copyrightType;
	}
	public String getCopyrightScope() {
		return copyrightScope;
	}
	public void setCopyrightScope(String copyrightScope) {
		this.copyrightScope = copyrightScope;
	}
	public String getImpawnSum() {
		return impawnSum;
	}
	public void setImpawnSum(String impawnSum) {
		this.impawnSum = impawnSum;
	}
	public String getAssureScope() {
		return assureScope;
	}
	public void setAssureScope(String assureScope) {
		this.assureScope = assureScope;
	}
	public String getBailDateInfo() {
		return bailDateInfo;
	}
	public void setBailDateInfo(String bailDateInfo) {
		this.bailDateInfo = bailDateInfo;
	}
	public String getApplyType() {
		return applyType;
	}
	public void setApplyType(String applyType) {
		this.applyType = applyType;
	}
	public String getIsAgent() {
		return isAgent;
	}
	public void setIsAgent(String isAgent) {
		this.isAgent = isAgent;
	}
	public String getAgentDesc() {
		return agentDesc;
	}
	public void setAgentDesc(String agentDesc) {
		this.agentDesc = agentDesc;
	}
	public Date getCompletedDateStr() {
		if(completedDate != null && !completedDate.equals("")) {
			completedDateStr = SystemUtils.stringToDate(completedDate, "yyyy-MM-dd");
		}
		return completedDateStr;
	}
	public Date getAppearDateStr() {
		if(appearDate != null && !appearDate.equals("")) {
			appearDateStr = SystemUtils.stringToDate(appearDate, "yyyy-MM-dd");
		}
		return appearDateStr;
	}
     
   
}
