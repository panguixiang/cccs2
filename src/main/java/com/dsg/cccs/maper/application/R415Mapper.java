package com.dsg.cccs.maper.application;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.R41;
import com.dsg.cccs.model.application.R42;
import com.dsg.cccs.model.application.R43_4;

public interface R415Mapper {

	@Insert("insert into r41(flow_num,softFullName,originalRegType,originalRegNumber,originalChangeNumber"
			+ ",reason,applyingType,applyType,agent_desc,isAgent) "
			+ "values(#{obj.flow_num},#{obj.softFullName},#{obj.originalRegType},#{obj.originalRegNumber},#{obj.originalChangeNumber},"
			+ "#{obj.reason},#{obj.applyingType},#{obj.applyType},#{obj.agent_desc},#{obj.isAgent});")
	public void addR41(@Param("obj") R41 r41);

	@Update("update r41 set softFullName=#{obj.softFullName},originalRegType=#{obj.originalRegType},originalRegNumber=#{obj.originalRegNumber},"
			+ "originalChangeNumber=#{obj.originalChangeNumber},reason=#{obj.reason},applyingType=#{obj.applyingType},applyType=#{obj.applyType},"
			+ "agent_desc=#{obj.agent_desc},isAgent=#{obj.isAgent} where flow_num=#{obj.flow_num};")
	public void updateR41(@Param("obj") R41 r41);

	@Select("select * from r41 ${condition} limit 1;")
	public R41 getR41(@Param("condition") String condition);

	@Insert("insert into r42(flow_num,evidence,originalRegType,handleNumber,handleDate"
			+ ",originalChangeNumber,softName,reason,applyType,agent_desc) "
			+ "values(#{obj.flow_num},#{obj.evidence},#{obj.originalRegType},#{obj.handleNumber},#{obj.handleDate},"
			+ "#{obj.originalChangeNumber},#{obj.softName},#{obj.reason},#{obj.applyType},#{obj.agent_desc});")
	public void addR42(@Param("obj") R42 r42);

	@Update("update r42 set evidence=#{obj.evidence},originalRegType=#{obj.originalRegType},handleNumber=#{obj.handleNumber},"
			+ "handleDate=#{obj.handleDate},originalChangeNumber=#{obj.originalChangeNumber},softName=#{obj.softName},reason=#{obj.reason},"
			+ "applyType=#{obj.applyType},agent_desc=#{obj.agent_desc} where flow_num=#{obj.flow_num};")
	public void updateR42(@Param("obj") R42 r42);

	@Select("select id,flow_num,evidence,originalRegType,handleNumber,handleDate,originalChangeNumber"
			+ ",softName,reason,applyType,agent_desc from r42 ${condition} limit 1;")
	public R42 getR42(@Param("condition") String condition);
	
	
	@Insert("insert into r43_4(flow_num,originalRegType,handleNumber,handleDate,originalChangeNumber,softName"
			+ ",reason,hasGtsqr,gtsqrName,gtsqrIdea,applyType,agent_desc,isAgent) "
			+ "values(#{obj.flow_num},#{obj.originalRegType},#{obj.handleNumber},#{obj.handleDate},#{obj.originalChangeNumber},"
			+ "#{obj.softName},#{obj.reason},#{obj.hasGtsqr},#{obj.gtsqrName},#{obj.gtsqrIdea}," +
			"#{obj.applyType},#{obj.agent_desc},#{obj.isAgent});")
	public void addR43_4(@Param("obj") R43_4 obj);

	@Update("update r43_4 set originalRegType=#{obj.originalRegType},handleNumber=#{obj.handleNumber},handleDate=#{obj.handleDate},"
			+ "originalChangeNumber=#{obj.originalChangeNumber},softName=#{obj.softName},reason=#{obj.reason},hasGtsqr=#{obj.hasGtsqr},"
			+ "gtsqrName=#{obj.gtsqrName},gtsqrIdea=#{obj.gtsqrIdea},applyType=#{obj.applyType},agent_desc=#{obj.agent_desc}," +
			" isAgent=#{obj.isAgent} where flow_num=#{obj.flow_num};")
	
	public void updateR43_4(@Param("obj") R43_4 obj);
	
	@Select("select id,flow_num,originalRegType,handleNumber,handleDate,originalChangeNumber,softName"
			+ ",reason,hasGtsqr,gtsqrName,gtsqrIdea,applyType,agent_desc,isAgent from r43_4 ${condition} limit 1;")
	public R43_4 getR43_4(@Param("condition") String condition);
}
