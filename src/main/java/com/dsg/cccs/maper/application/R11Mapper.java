package com.dsg.cccs.maper.application;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.R11;
import com.dsg.cccs.model.application.R21;

public interface R11Mapper {

	@Insert("insert into r11(flow_num,softFullName,softForShort,softNumber,editionNumber,developCircs,developCircsExplain," +
			"origSoftRegCircs,origRegisterNumber,origSoftModifyDescription,completeDate,publishStatus,appearDate," +
			"appearAreaCountry,appearAreaCity,developMode,rightObtainMode,inheritanceMode,isSoftReg,regNumber,isSoftChanged," +
 "changeNumber,rightScope,rightScope_,hardwareEnv,softwareEnv,programLanguage,sourceCodeCapacity,softFunctionAndSpecialty" +
			",applyType,agent_desc,difmatReferMode,isMutilDoc,mutilDocType,difmatReferModeExcep,difmatReferPages) " +
 "values(#{obj.flow_num},#{obj.softFullName},#{obj.softForShort},#{obj.softNumber},#{obj.editionNumber},#{obj.developCircs}," +
   "#{obj.developCircsExplain},#{obj.origSoftRegCircs},#{obj.origRegisterNumber},#{obj.origSoftModifyDescription}," +
  "#{obj.completeDate},#{obj.publishStatus},#{obj.appearDate},#{obj.appearAreaCountry},#{obj.appearAreaCity}," +
  "#{obj.developMode},#{obj.rightObtainMode},#{obj.inheritanceMode},#{obj.isSoftReg},#{obj.regNumber},#{obj.isSoftChanged}," +
  "#{obj.changeNumber},#{obj.rightScope},#{obj.rightScope_},#{obj.hardwareEnv},#{obj.softwareEnv},#{obj.programLanguage}," +
  "#{obj.sourceCodeCapacity},#{obj.softFunctionAndSpecialty},#{obj.applyType},#{obj.agent_desc},#{obj.difmatReferMode}," +
  "#{obj.isMutilDoc},#{obj.mutilDocType},#{obj.difmatReferModeExcep},#{obj.difmatReferPages});")
	public void insertR11(@Param("obj") R11 r11);
	
	@Update("update r11 set flow_num=#{obj.flow_num},softFullName=#{obj.softFullName},softForShort=#{obj.softForShort},softNumber=#{obj.softNumber},editionNumber=#{obj.editionNumber},developCircs=#{obj.developCircs},developCircsExplain=#{obj.developCircsExplain},origSoftRegCircs=#{obj.origSoftRegCircs}," +
			"origRegisterNumber=#{obj.origRegisterNumber},origSoftModifyDescription=#{obj.origSoftModifyDescription},completeDate=#{obj.completeDate},publishStatus=#{obj.publishStatus},appearDate=#{obj.appearDate},appearAreaCountry=#{obj.appearAreaCountry},appearAreaCity=#{obj.appearAreaCity}," +
			"developMode=#{obj.developMode},rightObtainMode=#{obj.rightObtainMode},inheritanceMode=#{obj.inheritanceMode},isSoftReg=#{obj.isSoftReg},regNumber=#{obj.regNumber},isSoftChanged=#{obj.isSoftChanged},changeNumber=#{obj.changeNumber},rightScope=#{obj.rightScope},rightScope_=#{obj.rightScope_}," +
			"hardwareEnv=#{obj.hardwareEnv},softwareEnv=#{obj.softwareEnv},programLanguage=#{obj.programLanguage},sourceCodeCapacity=#{obj.sourceCodeCapacity},softFunctionAndSpecialty=#{obj.softFunctionAndSpecialty},applyType=#{obj.applyType},agent_desc=#{obj.agent_desc},difmatReferMode=#{obj.difmatReferMode}," +
			"isMutilDoc=#{obj.isMutilDoc},mutilDocType=#{obj.mutilDocType},difmatReferModeExcep=#{obj.difmatReferModeExcep},difmatReferPages=#{obj.difmatReferPages};")
			public void updateR11(@Param("obj") R11 r11);

	@Select("select id,flow_num,softFullName,softForShort,softNumber,editionNumber,developCircs,developCircsExplain," +
			"origSoftRegCircs,origRegisterNumber,origSoftModifyDescription,completeDate,publishStatus,appearDate," +
			"appearAreaCountry,appearAreaCity,developMode,rightObtainMode,inheritanceMode,isSoftReg,regNumber,isSoftChanged," +
            "changeNumber,rightScope,rightScope_,hardwareEnv,softwareEnv,programLanguage,sourceCodeCapacity,softFunctionAndSpecialty" +
			",applyType,agent_desc,difmatReferMode,isMutilDoc,mutilDocType,difmatReferModeExcep,difmatReferPages from r11 where flow_num=#{flow_num} limit 1;")
	public R11 getR11(@Param("flow_num") String flow_num);
	
	@Insert("insert into r21(flow_num,softFullName,softForShort,edition,origRegNumber,originalChangeNumber,contractType," +
			"rightScope,regionScope,regionScope_,validStartDate,validEndDate,applyType,agent_desc) " +
			"values(#{obj.flow_num},#{obj.softFullName},#{obj.softForShort},#{obj.edition},#{obj.origRegNumber},#{obj.originalChangeNumber}" +
			",#{obj.contractType},#{obj.rightScope},#{obj.regionScope},#{obj.regionScope_},#{obj.validStartDate},#{obj.validEndDate},#{obj.applyType}" +
			",#{obj.agent_desc});")
	public void insertR21(@Param("obj") R21 r21);
	
	@Update("update r21 set softFullName=#{obj.softFullName},softForShort=#{obj.softForShort},edition=#{obj.edition},origRegNumber=#{obj.origRegNumber}," +
			"originalChangeNumber=#{obj.originalChangeNumber},contractType=#{obj.contractType},rightScope=#{obj.rightScope},regionScope=#{obj.regionScope}," +
			"regionScope_=#{obj.regionScope_},validStartDate=#{obj.validStartDate},validEndDate=#{obj.validEndDate},applyType=#{obj.applyType},agent_desc=#{obj.agent_desc} where flow_num = #{obj.flow_num};")
	public void updateR21(@Param("obj") R21 r21);
	
	@Select("select id,flow_num,softFullName,softForShort,edition,origRegNumber,originalChangeNumber,contractType," +
			"rightScope,regionScope,regionScope_,validStartDate,validEndDate,applyType,agent_desc from r21 where flow_num = #{flow_num};")
	public R21 getR21(@Param("flow_num") String flow_num);
}
