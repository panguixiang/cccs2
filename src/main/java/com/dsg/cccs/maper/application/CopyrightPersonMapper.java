package com.dsg.cccs.maper.application;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.CopyrightPerson;
import com.dsg.cccs.model.application.PartByAdd;

/**
 * @ClassName: CopyrightPerson
 * @Description:
 * @author proteus modoucc_gmail_com
 * @date 2011-8-7 下午12:06:21
 * 
 */
public interface CopyrightPersonMapper {
	@Insert("insert into copyright_person(flow_num,name,people_type,country,province,city,id_type,id_number,sign,opus_sign,addr,type," +
			"english_name,garden,busType,hasLetter)"
			+ "values(#{cp.flow_num},#{cp.name},#{cp.people_type},#{cp.country},#{cp.province},#{cp.city},#{cp.id_type},#{cp.id_number}," +
			"#{cp.sign},#{cp.opus_sign},#{cp.addr},#{cp.type},#{cp.english_name},#{cp.garden},#{cp.busType},#{cp.hasLetter})")
	public void addCopyrightPerson(@Param("cp") CopyrightPerson cp);

	@Update("Update copyright_person set name=#{cp.name},people_type=#{cp.people_type},country=#{cp.country},province=#{cp.province},city=#{cp.city}," +
			"id_type=#{cp.id_type},id_number=#{cp.id_number},sign=#{cp.sign},opus_sign=#{cp.opus_sign}," +
			"addr=#{cp.addr},type=#{cp.type} where flow_num=#{cp.flow_num} and id=#{cp.id};")
	public void updateCopyrightPerson(@Param("cp") CopyrightPerson cp);
	
	@Select("select * from copyright_person where flow_num = #{flow_num}")
	public CopyrightPerson getCopyrightPerson(@Param("flow_num") String flow_num);

	@Select("select * from copyright_person where flow_num = #{flow_num}")
	public List<CopyrightPerson> getCopyrightPersons(
			@Param("flow_num") String flow_num);

	@Select("select * from copyright_person where flow_num = #{flow_num} and type=#{type}")
	public List<CopyrightPerson> getCopyrightPersonsByType(
			@Param("flow_num") String flow_num, @Param("type") Integer type);

	@Delete("delete from copyright_person ${condition};")
	public void deleteCopyrightPerson(@Param("condition") String condition);
	
	@Insert("insert into partbyadd(name,phone,flow_num)"
			+ "values(#{part.name},#{part.phone},#{part.flow_num})")
	public void addPartByAdd(@Param("part") PartByAdd part);
	
	@Select("select * from partbyadd ${condition};")
	public List<PartByAdd> getPartAddList(
			@Param("condition") String condition);
	
	@Delete("delete from partbyadd ${condition};")
	public void deletePartByAdd(@Param("condition") String condition);
}
