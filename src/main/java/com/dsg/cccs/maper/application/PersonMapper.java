package com.dsg.cccs.maper.application;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.Person;

public interface PersonMapper {

	@Insert("INSERT INTO person(flow_num,type,name,address,post_code,contact_person,phone,email,mobile,fax)"
			+ "VALUES(#{obj.flow_num},#{obj.type},#{obj.name},#{obj.address},#{obj.post_code},#{obj.contact_person},#{obj.phone},#{obj.email},#{obj.mobile},#{obj.fax})")
	public void addPerson(@Param("obj") Person obj);
	
	@Update("Update person set type=#{obj.type},name=#{obj.name},address=#{obj.address}," +
			"post_code=#{obj.post_code},contact_person=#{obj.contact_person},phone=#{obj.phone},email=#{obj.email},mobile=#{obj.mobile},fax=#{obj.fax} where flow_num=#{obj.flow_num} and id=#{obj.id};")
	public void updatePerson(@Param("obj") Person obj);

	@Select("SELECT * FROM person WHERE #{sqlStr}")
	public List<Person> getPersonBySQL(@Param("sqlStr") String sqlStr);
	
	@Select("select * from person where flow_num = #{flow_num} and type=1")
	public Person getSqrPerson(@Param("flow_num") String flow_num);
	
	@Select("select * from person where flow_num = #{flow_num} and type =2")
	public Person getDlrPerson(@Param("flow_num") String flow_num);
	
	@Delete("delete from person ${condition};")
	public void deletePerson(@Param("condition") String condition);
	
}
