package com.dsg.cccs.maper.application;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.Author;
import com.dsg.cccs.model.application.Z11;
import com.dsg.cccs.model.application.Z73_5;

/**
 * @ClassName: Z11Mapper
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-7 上午11:45:32
 * 
 */
public interface Z11Mapper {
	@Insert("insert into z11(flow_num,opus_name,opus_type,opus_type_desc,author_name,author_sign,"
			+ "opus_indite_kind,opus_desc,create_date,create_country,create_city,publish_status,"
			+ "appear_date,appear_country,appear_city,obtain_mode,inherit_desc,right_own_mode,right_own_desc,"
			+ "right_scope,own_part_desc,emedium,ecount,pmedium,pcount,apply_type,agent_desc,scope)"
			+ "values(#{obj.flow_num},#{obj.opus_name},#{obj.opus_type},#{obj.opus_type_desc},#{obj.author_name},#{obj.author_sign},"
			+ "#{obj.opus_indite_kind},#{obj.opus_desc},#{obj.create_date},#{obj.create_country},#{obj.create_city},#{obj.publish_status},"
			+ "#{obj.appear_date},#{obj.appear_country},#{obj.appear_city},#{obj.obtain_mode},#{obj.inherit_desc},#{obj.right_own_mode},#{obj.right_own_desc},"
			+ "#{obj.right_scope},#{obj.own_part_desc},#{obj.emedium},#{obj.ecount},#{obj.pmedium},#{obj.pcount},#{obj.apply_type},#{obj.agent_desc},#{obj.scope})")
	public void addZ11(@Param("obj") Z11 z11);

	@Update("update z11 set opus_name=#{obj.opus_name},opus_type=#{obj.opus_type},opus_type_desc=#{obj.opus_type_desc},author_name=#{obj.author_name}," +
			"author_sign=#{obj.author_sign},opus_indite_kind=#{obj.opus_indite_kind},opus_desc=#{obj.opus_desc},create_date=#{obj.create_date}," +
			"create_country=#{obj.create_country},create_city=#{obj.create_city},publish_status=#{obj.publish_status},"
			+ "appear_date=#{obj.appear_date},appear_country=#{obj.appear_country},appear_city=#{obj.appear_city},obtain_mode=#{obj.obtain_mode}," +
			"inherit_desc=#{obj.inherit_desc},right_own_mode=#{obj.right_own_mode},right_own_desc=#{obj.right_own_desc},"
			+ "right_scope=#{obj.right_scope},own_part_desc=#{obj.own_part_desc},emedium=#{obj.emedium},ecount=#{obj.ecount},pmedium=#{obj.pmedium},pcount=#{obj.pcount}," +
			"apply_type=#{obj.apply_type},agent_desc=#{obj.agent_desc},scope=#{obj.scope} where flow_num=#{obj.flow_num};")
	public void updateZ11Two(@Param("obj") Z11 z11);
	
	
	@Select("select * from z11 where flow_num = #{flow_num}")
	public Z11 getZ11(@Param("flow_num") String flow_num);
	
	
	@Delete("delete from ${obj} ${condtion};")
	public void hardDelet(@Param("obj") String obj, @Param("condtion") String conditon);
	
	@Insert("insert into author(flow_num,name,sign,opus_type) values(#{author.flow_num},#{author.name},#{author.sign},#{author.opus_type});")
	public void addAuthor(@Param("author") Author author);
	
	@Delete("delete from author ${condition};")
	public void deleteAuthor(@Param("condition") String condition);
	
	@Select("select * from author ${condition};")
	public List<Author> getAuthorList(@Param("condition") String condition);
	
	@Insert("insert into z73_5(flow_num,register_type,cn_opus_name,en_opus_name,publish_type,original_reg_num," +
			"register_date,publis_comp_name,rev_type,rev_desc,apply_type,agent_desc)" +
			" values(#{obj.flow_num},#{obj.register_type},#{obj.cn_opus_name},#{obj.en_opus_name},#{obj.publish_type}," +
			"#{obj.original_reg_num},#{obj.register_date},#{obj.publis_comp_name},#{obj.rev_type},#{obj.rev_desc},#{obj.apply_type},#{obj.agent_desc});")
	public void addZ73_5(@Param("obj") Z73_5 obj);
	
	@Update("update z73_5 set register_type=#{obj.register_type},cn_opus_name=#{obj.cn_opus_name},en_opus_name=#{obj.en_opus_name},publish_type=#{obj.publish_type}," +
			"original_reg_num=#{obj.original_reg_num},register_date=#{obj.register_date},publis_comp_name=#{obj.publis_comp_name}," +
			"rev_type=#{obj.rev_type},rev_desc=#{obj.rev_desc},apply_type=#{obj.apply_type},agent_desc=#{obj.agent_desc} where flow_num=#{obj.flow_num};")
	public void updateZ73_5(@Param("obj") Z73_5 obj);
	
	@Select("select * from z73_5 where flow_num = #{flow_num}")
	public Z73_5 getZ73_5(@Param("flow_num") String flow_num);
}
