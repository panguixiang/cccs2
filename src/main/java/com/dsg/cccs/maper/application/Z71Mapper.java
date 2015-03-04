package com.dsg.cccs.maper.application;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.MovieInfos;
import com.dsg.cccs.model.application.RecordProduct;
import com.dsg.cccs.model.application.TracksInfos;
import com.dsg.cccs.model.application.Z71;

/**
 * @ClassName: Z71Mapper
 * @Description:
 * @author proteus modoucc_gmail_com
 * @date 2011-8-7 上午11:45:32
 * 
 */
public interface Z71Mapper {
	
	@Insert("insert into z71(flow_num,isPublic,recordType_,recordTypeSon_,recordDesc,isProprietary,publishScope" +
			",contractSignDate,validStartDate,validEndDate,otherInfo,certOrg,certNum,replyResult,emedium,ecount,applyType,agent_desc) " +
			"values(#{obj.flow_num},#{obj.isPublic},#{obj.recordType_},#{obj.recordTypeSon_},#{obj.recordDesc},#{obj.isProprietary},#{obj.publishScope}" +
			",#{obj.contractSignDate},#{obj.validStartDate},#{obj.validEndDate},#{obj.otherInfo},#{obj.certOrg},#{obj.certNum},#{obj.replyResult}" +
			",#{obj.emedium},#{obj.ecount},#{obj.applyType},#{obj.agent_desc});")
	public void insertZ71(@Param("obj") Z71 obj);
	
	@Insert("insert into record(id,flow_num,ch_name,en_name,first_address,create_date,opusType,opusTypeSon,opusDesc) " +
			"values(#{obj.id},#{obj.flow_num},#{obj.ch_name},#{obj.en_name},#{obj.first_address},#{obj.create_date}," +
			"#{obj.opusType},#{obj.opusTypeSon},#{obj.opusDesc});")
	public void addRecord(@Param("obj") RecordProduct obj);

	@Insert("insert into tracksinfo(flow_num,recordId,title_,artist_,songWriter_,wordsAuthor_,duration_,remark_,recordName) " +
			"values(#{obj.flow_num},#{obj.recordId},#{obj.title_},#{obj.artist_},#{obj.songWriter_},#{obj.wordsAuthor_}," +
			"#{obj.duration_},#{obj.remark_},#{obj.recordName});")
	public void addTracksInfos(@Param("obj") TracksInfos obj);
	
	@Delete("delete from tracksinfo where recordId = #{recordid};")
	public void deleteTracksInfos(@Param("recordid") String recordid);
	
	@Delete("delete from record where id = #{ids};")
	public void deleteRecords(@Param("ids") String ids);
	
	@Select("select * from z71 where flow_num = #{flow_num};")
	public Z71 getZ71(@Param("flow_num") String flow_num);
	
	@Select("select * from record ${condition};")
	public List<RecordProduct> getRecords(@Param("condition") String condition);
	
	@Select("select * from record ${condition} limit 1;")
	public RecordProduct getOneRecord(@Param("condition") String condition);
	
	@Select("select * from tracksinfo ${condition};")
	public List<TracksInfos> getTracksInfos(@Param("condition") String conditon);
	
	@Select("select * from tracksinfo ${condition};")
	public TracksInfos getOneTracks(@Param("condition") String conditon);
	
	@Update("update z71 set isPublic=#{obj.isPublic},recordType_=#{obj.recordType_},recordTypeSon_=#{obj.recordTypeSon_},recordDesc=#{obj.recordDesc},isProprietary=#{obj.isProprietary}" +
			",publishScope=#{obj.publishScope},contractSignDate=#{obj.contractSignDate},validStartDate=#{obj.validStartDate},validEndDate=#{obj.validEndDate},otherInfo=#{obj.otherInfo}," +
			"certOrg=#{obj.certOrg},certNum=#{obj.certNum},replyResult=#{obj.replyResult},emedium=#{obj.emedium},ecount=#{obj.ecount},applyType=#{obj.applyType},agent_desc=#{obj.agent_desc}" +
			" where flow_num = #{obj.flow_num};")
	public void updateZ71(@Param("obj") Z71 obj);
	
	
	@Update("update z71 set langType=#{langType},isOffical=#{isOffical} where flow_num = #{flow_num};")
	public void addMoviesUpdateZ71(@Param("langType") String langType, @Param("isOffical") String isOffical,
			@Param("flow_num") String flow_num);
	
	@Update("update record set ch_name=#{obj.ch_name},en_name=#{obj.en_name},first_address=#{obj.first_address},create_date=#{obj.create_date},opusType=#{obj.opusType}," +
			"opusTypeSon=#{obj.opusTypeSon},opusDesc=#{obj.opusDesc} where flow_num=#{obj.flow_num};")
	public void updateRecord(@Param("obj") RecordProduct obj);
	
	
	@Insert("insert into movies(flow_num,cnTitle_,enTitle_,company_,proCountry_,director_,leadRole_,publishDate_,country1) " +
			"values(#{obj.flow_num},#{obj.cnTitle_},#{obj.enTitle_},#{obj.company_},#{obj.proCountry_},#{obj.director_}," +
			"#{obj.leadRole_},#{obj.publishDate_},#{obj.country1});")
	public void addMovieInfos(@Param("obj") MovieInfos obj);
	
	@Update("update movies set cnTitle_=#{obj.cnTitle_},enTitle_=#{obj.enTitle_},company_=#{obj.company_},proCountry_=#{obj.proCountry_},director_=#{obj.director_}," +
			"leadRole_=#{obj.leadRole_},leadRole_=#{obj.leadRole_},country1=#{obj.country1} where flow_num=#{obj.flow_num};")
	public void updateMovieInfos(@Param("obj") RecordProduct obj);
	
	@Delete("delete from movies ${condition};")
	public void deleteMovies(@Param("condition") String condition);
	
	@Select("select * from movies ${condition}")
	public List<MovieInfos> getMovies(@Param("condition") String condition);
	
	@Delete("delete from record ${condition};")
	public void deleteRecor(@Param("condition") String condition);
	
	@Delete("delete from tracksinfo ${condition};")
	public void deleteTracks(@Param("condition") String condition);
}

