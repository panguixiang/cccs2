package com.dsg.cccs.maper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.mapping.StatementType;

import com.dsg.cccs.model.Account;
import com.dsg.cccs.model.Manager;
import com.dsg.cccs.model.Role;

/**
 * @ClassName: ManagerMapper
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-8 上午3:14:30
 * 
 */
public interface ManagerMapper {

	@Select("select * from manager where username=#{username} limit 1;")
	public Manager getManagerByName(@Param("username") String username);
	
	@Select("select * from manager ${condition} limit 1;")
	public Manager getOneManager(@Param("condition") String condition);
	
	@Select("select * from manager ${condition} limit #{start},#{size}")
	public List<Manager> mangeList(@Param("condition") String condition, @Param("start") int start, @Param("size") int size);
	
	@Insert("insert into manager(username,passwd,roleid,create_time,level) values(#{obj.username},#{obj.passwd}" +
			",#{obj.roleid},now(),#{obj.level});")
	@SelectKey(before=false,keyProperty="obj.id",resultType=Long.class,statementType=StatementType.STATEMENT,statement="SELECT LAST_INSERT_ID() AS id")
	public void addManager(@Param("obj") Manager manage);
	
	@Update("update manager set username=#{obj.username},roleid=#{obj.roleid},create_time=now() where id = #{obj.id};")
	public void updateManager(@Param("obj") Manager manage);
	
	@Update("update manager set passwd=#{newpasswd} where id = #{id};")
	public void updateManagerPswd(@Param("newpasswd") String newpasswd, @Param("id") Long id);
	
	@Select("select count(*) from manager ${condition};")
	public int mangeCount(@Param("condition") String condition);
	
	@Select("select * from role ${condition} order by create_time DESC limit #{start},#{size}")
	public List<Role> roleListPage(@Param("condition") String condition, @Param("start") int start, @Param("size") int size);
	
	@Select("select * from role ${condition} order by create_time DESC;")
	public List<Role> roleList(@Param("condition") String condition);

	@Select("select count(*) from role ${condition};")
	public int roleCount(@Param("condition") String condition);
	
	@Delete("delete from ${condition};")
	public void deleteObj(@Param("condition") String condition) throws Exception;
	
	@Select("select * from role ${condition} limit 1;")
	public Role getOneRole(@Param("condition") String condition);
	
	@Insert("insert into role(id,name,resourceid,create_time) values(#{obj.id},#{obj.name},#{obj.resourceid},now());")
	public void addRole(@Param("obj") Role role);
	
	@Update("update role set name=#{obj.name},resourceid=#{obj.resourceid},create_time=now() where id=#{obj.id};")
	public void updateRole(@Param("obj") Role role);
	
	@Select("select id,passport,email,name,mobile,login_number,last_login_time,level,create_time" +
			" from account ${condition} limit #{start},#{size};")
	public List<Account> pageUsers(@Param("condition") String condition, @Param("start") int start, @Param("size") int size);

    @Select("select count(*) from account ${condition};")
    public int usersCount(@Param("condition") String condition);
    
    @Select("select * from account ${condition} limit 1;")
    public Account getAccountUser(@Param("condition") String condition);
    
}
