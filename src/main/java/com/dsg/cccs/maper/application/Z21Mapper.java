package com.dsg.cccs.maper.application;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.Z21;

/**
 * @ClassName: Z11Mapper
 * @Description:
 * @author proteus modoucc_gmail_com
 * @date 2011-8-7 上午11:45:32
 * 
 */
public interface Z21Mapper {
	/**
	 * 插入Z21
	 * @param z61
	 */
	@Insert("INSERT INTO z21(flow_num,contract_type,right_scope,right_desc,appear_country,appear_city,"
			+ "valid_start_date,valid_end_date,opus_name,more_opus,opus_type,apply_type,agent,agent_desc,opus_en_name)"
			+ "VALUES(#{obj.flow_num},#{obj.contract_type},#{obj.right_scope},#{obj.right_desc},#{obj.appear_country},#{obj.appear_city},"
			+ "#{obj.valid_start_date},#{obj.valid_end_date},#{obj.opus_name},#{obj.more_opus},#{obj.opus_type},#{obj.apply_type},#{obj.agent},#{obj.agent_desc},#{obj.opus_en_name})")
	public void addZ21(@Param("obj") Z21 z21);

	@Select("SELECT * FROM z21 WHERE flow_num = #{flow_num}")
	public Z21 getZ21(@Param("flow_num") String flow_num);
	
	@Update("Update z21 set contract_type=#{z21.contract_type},right_scope=#{z21.right_scope},right_desc=#{z21.right_desc},appear_country=#{z21.appear_country},appear_city=#{z21.appear_city},"
			+ "valid_start_date=#{z21.valid_start_date},valid_end_date=#{z21.valid_end_date},opus_name=#{z21.opus_name},more_opus=#{z21.more_opus},opus_type=#{z21.opus_type},apply_type=#{z21.apply_type}," +
			"agent=#{z21.agent},agent_desc=#{z21.agent_desc},opus_en_name=#{z21.opus_en_name} where flow_num = #{z21.flow_num};")
	public void updateZ21(@Param("z21") Z21 z21);
	
}
