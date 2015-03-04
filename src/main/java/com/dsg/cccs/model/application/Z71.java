package com.dsg.cccs.model.application;


public class Z71 {
  private Long id;	
  private String flow_num;	
  private String isPublic;//是否公办
  private String recordType_;//出版合同主要内容-->出版类型
  private String recordTypeSon_;//出版合同主要内容-->出版类型-->子类
  private String recordDesc;//出版合同主要内容-->出版类型-->说明
  private String isProprietary;//出版合同主要内容-->是否专有
  private String publishScope;//出版合同主要内容-->发行范围
  private String contractSignDate;//出版合同主要内容-->合同签订日期
  private String validStartDate;//出版合同主要内容-->授权有效期      自    
  private String validEndDate;//出版合同主要内容-->授权有效期      至
  private String otherInfo;//出版合同主要内容-->其他
  private String certOrg;//认证情况-->认证机构   
  private String certNum;//认证情况-->证明书编号   
  private String replyResult;//认证情况-->回复结果 
  private String emedium;//留存作品样本-->电子介质
  private String ecount;//留存作品样本-->电子介质共n件
  private String applyType;//applyType
  private String agent_desc;
  
  private String langType;//节目类型  华语节目    外语节目      z72
  private String isOffical;//节目授权方 国家版权局指定认证机构会员    非国家版权局指定认证机构会员     z72
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
public String getIsPublic() {
	return isPublic;
}
public void setIsPublic(String isPublic) {
	this.isPublic = isPublic;
}
public String getRecordType_() {
	return recordType_;
}
public void setRecordType_(String recordType_) {
	this.recordType_ = recordType_;
}
public String getRecordTypeSon_() {
	return recordTypeSon_;
}
public void setRecordTypeSon_(String recordTypeSon_) {
	this.recordTypeSon_ = recordTypeSon_;
}
public String getRecordDesc() {
	return recordDesc;
}
public void setRecordDesc(String recordDesc) {
	this.recordDesc = recordDesc;
}
public String getIsProprietary() {
	return isProprietary;
}
public void setIsProprietary(String isProprietary) {
	this.isProprietary = isProprietary;
}
public String getPublishScope() {
	return publishScope;
}
public void setPublishScope(String publishScope) {
	this.publishScope = publishScope;
}

public String getContractSignDate() {
	return contractSignDate;
}
public void setContractSignDate(String contractSignDate) {
	this.contractSignDate = contractSignDate;
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
public String getOtherInfo() {
	return otherInfo;
}
public void setOtherInfo(String otherInfo) {
	this.otherInfo = otherInfo;
}
public String getCertOrg() {
	return certOrg;
}
public void setCertOrg(String certOrg) {
	this.certOrg = certOrg;
}
public String getCertNum() {
	return certNum;
}
public void setCertNum(String certNum) {
	this.certNum = certNum;
}
public String getReplyResult() {
	return replyResult;
}
public void setReplyResult(String replyResult) {
	this.replyResult = replyResult;
}
public String getEmedium() {
	return emedium;
}
public void setEmedium(String emedium) {
	this.emedium = emedium;
}
public String getEcount() {
	return ecount;
}
public void setEcount(String ecount) {
	this.ecount = ecount;
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
public String getLangType() {
	return langType;
}
public void setLangType(String langType) {
	this.langType = langType;
}
public String getIsOffical() {
	return isOffical;
}
public void setIsOffical(String isOffical) {
	this.isOffical = isOffical;
}

  
}
