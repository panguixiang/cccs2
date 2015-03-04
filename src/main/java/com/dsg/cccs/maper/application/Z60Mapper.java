package com.dsg.cccs.maper.application;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.Z60;

/**
 * @ClassName: Z11Mapper
 * @Description: 
 * @author proteus modoucc_gmail_com
 * @date 2011-8-7 上午11:45:32
 * 
 */
public interface Z60Mapper {
	@Insert("insert into z60(flow_num,register_type,opus_name,more_opus,right_type,opus_en_name,"
			+ "original_reg_num,orig_admissible_num,register_date,change_type,reason,rev_type,evidence,apply_type,agent,agent_desc)"
			+ "values(#{obj.flow_num},#{obj.register_type},#{obj.opus_name},#{obj.more_opus},#{obj.right_type},#{obj.opus_en_name},"
			+ "#{obj.original_reg_num},#{obj.orig_admissible_num},#{obj.register_date},#{obj.change_type},#{obj.reason},#{obj.rev_type},#{obj.evidence},#{obj.apply_type},#{obj.agent},#{obj.agent_desc})")
	public void addZ60(@Param("obj") Z60 z60);

	@Select("select * from z60 where flow_num = #{flow_num} limit 1;")
	public Z60 getZ60(@Param("flow_num") String flow_num);
	
	@Update("update z60 set register_type=#{obj.register_type},opus_name=#{obj.opus_name},more_opus=#{obj.more_opus},right_type=#{obj.right_type},opus_en_name=#{obj.opus_en_name},"
			+ "original_reg_num=#{obj.original_reg_num},orig_admissible_num=#{obj.orig_admissible_num},register_date=#{obj.register_date},change_type=#{obj.change_type}," +
			"reason=#{obj.reason},rev_type=#{obj.rev_type},evidence=#{obj.evidence},apply_type=#{obj.apply_type},agent=#{obj.agent},agent_desc=#{obj.agent_desc}"
			+ " where flow_num=#{obj.flow_num};")
	public void updateZ60(@Param("obj") Z60 z60);
}
