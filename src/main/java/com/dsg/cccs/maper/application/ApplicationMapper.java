package com.dsg.cccs.maper.application;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.application.Application;
import com.dsg.cccs.model.application.ApplyKnow;
import com.dsg.cccs.model.application.CheckComment;

public interface ApplicationMapper {

	@Insert("INSERT INTO application(flow_num,app_name,app_type,name,publish_id,state,create_time,update_time,type,isupdate)"
			+ "VALUES(#{app.flow_num},#{app.app_name},#{app.app_type},#{app.name},#{app.publish_id},#{app.state},NOW(),NOW(),#{app.type},#{app.isupdate})")
	public void addApplication(@Param("app") Application app);

	@Update("UPDATE application set app_name=#{app.app_name},app_type=#{app.app_type},name=#{app.name},publish_id=#{app.publish_id},"
			+ "state=#{app.state},update_time=NOW(),isupdate=#{app.isupdate} where flow_num=#{app.flow_num};")
	public void updateApplicationTwo(@Param("app") Application app);
	
	@Update("UPDATE application SET answer=#{answer},state=#{state} WHERE flow_num=#{flow_num}")
	public void dealApplicaton(@Param("flow_num") String flow_num,@Param("state")Integer state,
			@Param("answer") String answer);
	
	@Select("select * from application ${condition} order by update_time DESC limit #{start},#{size};")
	@Results({
		@Result(property="deleteFlag",column="delete_flag")
	})
    public List<Application> getApplicationPage(@Param("condition") String condition, 
    		@Param("start") int start, @Param("size") int size);
	

	@Select("select count(*) from application ${sqlStr}")
	public Integer countApplicationBySQL(@Param("sqlStr") String sqlStr);

	@Select("SELECT * FROM application WHERE flow_num = #{flow_num}")
	@Results({
		@Result(property="deleteFlag",column="delete_flag")
	})
	public Application getApplicationByFlowNum(
			@Param("flow_num") String flow_num);
	
	
	@Select("SELECT * FROM applyknow ${condition}")
	public List<ApplyKnow> getApplyKnowList(@Param("condition") String condition);
	
	
	@Select("SELECT * FROM application ${condition};")
	@Results({
		@Result(property="deleteFlag",column="delete_flag")
	})
	public Application getApplicationByCondition(
			@Param("condition") String condition);
	
	
	@Update("update application set delete_flag = -1,delete_time=now() ${condition}")
	public void updateApplication(@Param("condition") String condition) throws Exception;
	
	@Select("SELECT * FROM applyknow ${condition} limit #{start},#{size};")
	public List<ApplyKnow> appKnowListPage(@Param("condition") String condition,
			@Param("start") int start, @Param("size") int size);
	
	@Select("SELECT count(*) FROM applyknow ${condition};")
	public int appKnowCount(@Param("condition") String condition);
	
	@Select("Select * from applyknow ${condition};")
	public ApplyKnow getApplyKnow(@Param("condition") String condition);
	
	@Insert("insert into applyknow(content,orders,last_time) values(#{appknow.content},#{appknow.orders},now());")
	public void addAppKnow(@Param("appknow") ApplyKnow appknow) throws Exception;
	
	@Update("update applyknow set content=#{appknow.content},orders=#{appknow.orders},last_time=now() where id=#{appknow.id};")
	public void updateAppKnow(@Param("appknow") ApplyKnow appknow) throws Exception;
	
	@Delete("delete from applyknow ${condition};")
	public void deleteAppKnow(@Param("condition") String condition) throws Exception;
	
	@Select("Select * from checkcomment ${condition};")
	public CheckComment getCheckComment(@Param("condition") String condition);
	
	@Select("Select * from checkcomment ${condition};")
	public List<CheckComment> getCheckCommentList(@Param("condition") String condition);
	
	@Insert("insert into checkcomment(flow_num,check_person,update_time,state,comment) " +
			"values(#{comment.flow_num},#{comment.check_person},now(),#{comment.state},#{comment.comment});")
	public void addCheckComment(@Param("comment") CheckComment comment) throws Exception;
	
	@Update("update application set state = #{state} where flow_num = #{flow_num}")
	public void updateApplicationState(@Param("state") Integer state,
			@Param("flow_num") String flow_num) throws Exception;
	
	@Update("update application set state = #{state},answer='ok',isupdate=#{isupdate} where flow_num = #{flow_num}")
	public void checkApplication(@Param("state") Integer state,
			@Param("flow_num") String flow_num, @Param("isupdate") String isupdate) throws Exception;
	
	@Update("update application set delete_flag = #{deleteFlag} ${condition}")
	public void updateApplicationDeleteFlag(@Param("deleteFlag") Integer state,
			@Param("condition") String condition) throws Exception;
	
	@Delete("delete from application ${condition};")
	public void hardDeleteApplication(@Param("condition") String condition);
	
	/**
	 * 查询回收站表单列表
	 * @param condition
	 * @param start
	 * @param size
	 * @return
	 */
	@Select("select * from application ${condition} order by delete_time DESC limit #{start},#{size};")
	@Results({
		@Result(property="deleteFlag",column="delete_flag")
	})
    public List<Application> getRecyclingApplication(@Param("condition") String condition, 
    		@Param("start") int start, @Param("size") int size);
	
	@Delete("delete from checkcomment ${condition};")
	public void deleteCheckComment(@Param("condition") String condition);
	
	@Delete("delete from ${condition};")
	public void deleteObjForm(@Param("condition") String condition);
	
	@Select("SELECT * FROM application ${condition};")
	public List<Application> getApplicationStateMap(@Param("condition") String condition);
	
	@Update("update application ${condition}")
	public void updateApplicationCondition(
			@Param("condition") String condition) throws Exception;
}
