package com.dsg.cccs.maper.application;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.Z51;
/**
 * z51表单
 * @author 潘贵祥
 *
 */
public interface Z5XMapper {

	@Insert("insert into z51(flow_num,opusName,opusType_,completedDate,appearDate,isImpower,impowerDesc,zzqRegNumber,isAppraise,isAppraiseNum," +
			"isAppraiseName,contractNum,creditorAmount,debtDateInfo,copyrightType,copyrightScope,impawnSum,assureScope,bailDateInfo," +
			"applyType,isAgent,agentDesc) values(#{obj.flow_num},#{obj.opusName},#{obj.opusType_},#{obj.completedDate},#{obj.appearDate},#{obj.isImpower}" +
			",#{obj.impowerDesc},#{obj.zzqRegNumber},#{obj.isAppraise},#{obj.isAppraiseNum},#{obj.isAppraiseName},#{obj.contractNum},#{obj.creditorAmount},#{obj.debtDateInfo}" +
			",#{obj.copyrightType},#{obj.copyrightScope},#{obj.impawnSum},#{obj.assureScope},#{obj.bailDateInfo},#{obj.applyType},#{obj.isAgent},#{obj.agentDesc});")
	public void addZ51(@Param("obj") Z51 obj);
	
	@Update("update z51 set opusName=#{obj.opusName},opusType_=#{obj.opusType_},completedDate=#{obj.completedDate},appearDate=#{obj.appearDate}," +
			"isImpower=#{obj.isImpower},impowerDesc=#{obj.impowerDesc},zzqRegNumber=#{obj.zzqRegNumber},isAppraise=#{obj.isAppraise},isAppraiseNum=#{obj.isAppraiseNum}," +
			"isAppraiseName=#{obj.isAppraiseName},contractNum=#{obj.contractNum},creditorAmount=#{obj.creditorAmount},debtDateInfo=#{obj.debtDateInfo}," +
			"copyrightType=#{obj.copyrightType},copyrightScope=#{obj.copyrightScope},impawnSum=#{obj.impawnSum},assureScope=#{obj.assureScope}," +
			"bailDateInfo=#{obj.bailDateInfo},applyType=#{obj.applyType},isAgent=#{obj.isAgent}," +
			"agentDesc=#{obj.agentDesc} where flow_num=#{obj.flow_num};")
	public void updateZ51(@Param("obj") Z51 obj);
	
	@Select("select * from z51 ${condition} limit 1;")
	public Z51 queryZ51(@Param("condition") String condition);
}
