package com.dsg.cccs.maper.application;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.dsg.cccs.model.application.ContentInfo;

public interface ContentInfoMapper {

	@Insert("INSERT INTO content_info(flow_num,item,before_content,after_content)"
			+ "VALUES(#{obj.flow_num},#{obj.item},#{obj.before_content},#{obj.after_content})")
	public void addContentInfo(@Param("obj") ContentInfo obj);

	@Select("SELECT * FROM content_info WHERE flow_num = #{flow_num}")
	public List<ContentInfo> getContentInfoByFlowNum(
			@Param("flow_num") String flow_num);
	
	@Delete("delete from content_info ${condition};")
	public void deleteInfo(@Param("condition") String condition);

}
