package com.dsg.cccs.maper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.mapping.StatementType;

import com.dsg.cccs.model.Info;

public interface InfoMapper {

	@Insert("INSERT INTO info(num,opusnumber,name,type,amount,owner,date,app_type,transferee,publishUnitName,englishname,record,compcode,create_time) " +
			"VALUES(#{info.num},#{info.opusnumber},#{info.name},#{info.type},#{info.amount},#{info.owner},#{info.date},#{info.app_type}," +
			"#{info.transferee},#{info.publishUnitName},#{info.englishname},#{info.record},#{info.compcode},now());")
	@SelectKey(before=false,keyProperty="info.id",resultType=Long.class,statementType=StatementType.STATEMENT,statement="SELECT LAST_INSERT_ID() AS id")  
	public void addInfo(@Param("info") Info info) throws Exception;

	@Select("SELECT * FROM info ORDER BY id DESC LIMIT #{start}, #{size}")
	public List<Info> getInfos(@Param("start") int start,
			@Param("size") int size);

	@Delete("DELETE FROM info WHERE id=#{id}")
	public void deleteInfo(@Param("id") Long id) throws Exception;

	@Select("SELECT count(id) num FROM info")
	public Integer countInfo();
	
	@Select("SELECT * FROM info ${condition} ORDER BY date DESC,id DESC LIMIT #{start}, #{size}")
	public List<Info> searchInfoListPage(@Param("condition") String condition, @Param("start") int start,
			@Param("size") int size);
	
	@Select("SELECT * FROM info ${condition};")
	public List<Info> searchInfoList(@Param("condition") String condition);
	
	@Select("SELECT count(id) num FROM info ${condition}")
	public Integer countInfoCondtion(@Param("condition") String condition);
	
	@Select("SELECT * FROM info ${condition} LIMIT 1;")
	public Info getInfo(@Param("condition") String condition);
	
	@Update("update info set num=#{info.num},opusnumber=#{info.opusnumber},name=#{info.name},type=#{info.type},amount=#{info.amount},owner=#{info.owner},date=#{info.date}," +
			"app_type=#{info.app_type},transferee=#{info.transferee},publishUnitName=#{info.publishUnitName},englishname=#{info.englishname}," +
			"record=#{info.record},compcode=#{info.compcode},create_time=now() where id=#{info.id};")
	public void updateInfo(@Param("info") Info info) throws Exception;
}
