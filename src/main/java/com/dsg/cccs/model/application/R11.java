package com.dsg.cccs.model.application;

import java.util.Date;

import com.dsg.cccs.utils.SystemUtils;


public class R11 {

	private Long id;
	private String flow_num;
	private String softFullName;//软件全称
	private String softForShort;//软件简称
	private String softNumber;//分类号
	private String editionNumber;//版本号
	private Integer developCircs;//软件作品说明(1=原创、2=修改)
	private Integer developCircsExplain;//软件作品说明-->修改-->是修改、翻译或合成别人软件，且需要原权利人授权的
	private Integer origSoftRegCircs;//软件作品说明-->修改-->原有软件已经登记
	private String origRegisterNumber;//软件作品说明-->修改-->原有软件已经登记-->原登记号
	private String origSoftModifyDescription;//软件作品说明-->修改-->修改合成或翻译说明
	private String completeDate;//开发完成日期
	private Integer publishStatus;//发表状态(1=已发表，0=未发表)
	private String appearDate;//已发表信息-->首次发表日期：  
	private String appearAreaCountry;//已发表信息-->首次发表地点-->国家
	private String appearAreaCity;//已发表信息-->首次发表地点--> 城市： 
	private Integer developMode;//开发方式 1=独立开发 2=合作开发  3=委托开发  4=下达任务开发
    private Integer rightObtainMode;//权利取得方式 1=原始取得 2=继受取得
    private Integer inheritanceMode;//权利取得方式 -->继受取得-->22=受让 23=承受 21=继承
    private Integer isSoftReg;//权利取得方式-->继受取得-->软件是否已登记 
    private String regNumber;//权利取得方式-->继受取得-->软件是否已登记 -->原登记号
    private Integer isSoftChanged;//权利取得方式-->继受取得-->原登记是否做过变更或补充
    private String changeNumber;//权利取得方式-->继受取得-->原登记是否做过变更或补充-->变更或补充证明编号
    private Integer rightScope;//权利范围 1=全部 2=部分
    private String rightScope_;//权利范围 -->权利
    private String hardwareEnv;//软件技术特点-->硬件环境;
    private String softwareEnv;//软件技术特点-->软件环境;
    private String programLanguage;//软件技术特点-->编程语言;
    private String sourceCodeCapacity;//软件技术特点-->源程序量;
    private String softFunctionAndSpecialty;//软件技术特点-->主要功能和技术特点;
    private String applyType;//申请办理信息-->申请办理方式
    private String agent_desc;//代理人信息-->申请人委托下述代理人办理登记事宜
    private Integer difmatReferMode;// 软件鉴别材料--> 1=一般交存 2=例外交存
    private String isMutilDoc;//软件鉴别材料-->一般交存--> oneDoc=一种文档   多种文档=mutilDoc
    private String mutilDocType;////软件鉴别材料-->一般交存--> 多种文档-->种类为
    private String difmatReferModeExcep;// 软件鉴别材料-->例外交存-->exp1=使用黑色宽斜线覆盖   exp2=前10页和任选连续的50页  exp3=目标程序的连续的前、后各30页和源程序任选连续的20页
    private String difmatReferPages;// 软件鉴别材料-->例外交存-->exp1=使用黑色宽斜线覆盖 -->页码为
    
    private Date completeDateStr;
    private Date appearDateStr;
	public Date getCompleteDateStr() {
		if(completeDate != null && !completeDate.trim().equals("")) {
			completeDateStr = SystemUtils.stringToDate(completeDate, "yyyy-MM-dd");
		}
		return completeDateStr;
	}
	public Date getAppearDateStr() {
		if(appearDate != null && !appearDate.trim().equals("")) {
			appearDateStr = SystemUtils.stringToDate(appearDate, "yyyy-MM-dd");
		}
		return appearDateStr;
	}
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
	public String getSoftNumber() {
		return softNumber;
	}
	public void setSoftNumber(String softNumber) {
		this.softNumber = softNumber;
	}
	public String getEditionNumber() {
		return editionNumber;
	}
	public void setEditionNumber(String editionNumber) {
		this.editionNumber = editionNumber;
	}
	public Integer getDevelopCircs() {
		return developCircs;
	}
	public void setDevelopCircs(Integer developCircs) {
		this.developCircs = developCircs;
	}
	public Integer getDevelopCircsExplain() {
		return developCircsExplain;
	}
	public void setDevelopCircsExplain(Integer developCircsExplain) {
		this.developCircsExplain = developCircsExplain;
	}
	public Integer getOrigSoftRegCircs() {
		return origSoftRegCircs;
	}
	public void setOrigSoftRegCircs(Integer origSoftRegCircs) {
		this.origSoftRegCircs = origSoftRegCircs;
	}
	public String getOrigRegisterNumber() {
		return origRegisterNumber;
	}
	public void setOrigRegisterNumber(String origRegisterNumber) {
		this.origRegisterNumber = origRegisterNumber;
	}
	public String getOrigSoftModifyDescription() {
		return origSoftModifyDescription;
	}
	public void setOrigSoftModifyDescription(String origSoftModifyDescription) {
		this.origSoftModifyDescription = origSoftModifyDescription;
	}
	public String getCompleteDate() {
		return completeDate;
	}
	public void setCompleteDate(String completeDate) {
		this.completeDate = completeDate;
	}
	public String getAppearDate() {
		return appearDate;
	}
	public void setAppearDate(String appearDate) {
		this.appearDate = appearDate;
	}
	public Integer getPublishStatus() {
		return publishStatus;
	}
	public void setPublishStatus(Integer publishStatus) {
		this.publishStatus = publishStatus;
	}
	
	public String getAppearAreaCountry() {
		return appearAreaCountry;
	}
	public void setAppearAreaCountry(String appearAreaCountry) {
		this.appearAreaCountry = appearAreaCountry;
	}
	public String getAppearAreaCity() {
		return appearAreaCity;
	}
	public void setAppearAreaCity(String appearAreaCity) {
		this.appearAreaCity = appearAreaCity;
	}
	public Integer getDevelopMode() {
		return developMode;
	}
	public void setDevelopMode(Integer developMode) {
		this.developMode = developMode;
	}
	public Integer getRightObtainMode() {
		return rightObtainMode;
	}
	public void setRightObtainMode(Integer rightObtainMode) {
		this.rightObtainMode = rightObtainMode;
	}
	public Integer getInheritanceMode() {
		return inheritanceMode;
	}
	public void setInheritanceMode(Integer inheritanceMode) {
		this.inheritanceMode = inheritanceMode;
	}
	public Integer getIsSoftReg() {
		return isSoftReg;
	}
	public void setIsSoftReg(Integer isSoftReg) {
		this.isSoftReg = isSoftReg;
	}
	public String getRegNumber() {
		return regNumber;
	}
	public void setRegNumber(String regNumber) {
		this.regNumber = regNumber;
	}
	public Integer getIsSoftChanged() {
		return isSoftChanged;
	}
	public void setIsSoftChanged(Integer isSoftChanged) {
		this.isSoftChanged = isSoftChanged;
	}
	public String getChangeNumber() {
		return changeNumber;
	}
	public void setChangeNumber(String changeNumber) {
		this.changeNumber = changeNumber;
	}
	public Integer getRightScope() {
		return rightScope;
	}
	public void setRightScope(Integer rightScope) {
		this.rightScope = rightScope;
	}
	public String getRightScope_() {
		return rightScope_;
	}
	public void setRightScope_(String rightScope_) {
		this.rightScope_ = rightScope_;
	}
	public String getHardwareEnv() {
		return hardwareEnv;
	}
	public void setHardwareEnv(String hardwareEnv) {
		this.hardwareEnv = hardwareEnv;
	}
	public String getSoftwareEnv() {
		return softwareEnv;
	}
	public void setSoftwareEnv(String softwareEnv) {
		this.softwareEnv = softwareEnv;
	}
	public String getProgramLanguage() {
		return programLanguage;
	}
	public void setProgramLanguage(String programLanguage) {
		this.programLanguage = programLanguage;
	}
	public String getSourceCodeCapacity() {
		return sourceCodeCapacity;
	}
	public void setSourceCodeCapacity(String sourceCodeCapacity) {
		this.sourceCodeCapacity = sourceCodeCapacity;
	}
	public String getSoftFunctionAndSpecialty() {
		return softFunctionAndSpecialty;
	}
	public void setSoftFunctionAndSpecialty(String softFunctionAndSpecialty) {
		this.softFunctionAndSpecialty = softFunctionAndSpecialty;
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
	public Integer getDifmatReferMode() {
		return difmatReferMode;
	}
	public void setDifmatReferMode(Integer difmatReferMode) {
		this.difmatReferMode = difmatReferMode;
	}
	public String getIsMutilDoc() {
		return isMutilDoc;
	}
	public void setIsMutilDoc(String isMutilDoc) {
		this.isMutilDoc = isMutilDoc;
	}
	public String getMutilDocType() {
		return mutilDocType;
	}
	public void setMutilDocType(String mutilDocType) {
		this.mutilDocType = mutilDocType;
	}
	public String getDifmatReferModeExcep() {
		return difmatReferModeExcep;
	}
	public void setDifmatReferModeExcep(String difmatReferModeExcep) {
		this.difmatReferModeExcep = difmatReferModeExcep;
	}
	public String getDifmatReferPages() {
		return difmatReferPages;
	}
	public void setDifmatReferPages(String difmatReferPages) {
		this.difmatReferPages = difmatReferPages;
	}
    
}
