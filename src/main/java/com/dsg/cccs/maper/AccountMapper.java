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
import com.dsg.cccs.model.FriendsConnection;
import com.dsg.cccs.model.StationMail;

public interface AccountMapper {

	@Insert("INSERT INTO account(type,level,passport,passwd,email,name,p_name,sex,province,city,card,business_file,enterprise_file," +
			"create_time,update_time,address,postcode,phone,peremail,mobile,fax,portraitimg,long_time,login_number,center_update)"
			+ "VALUES(#{account.type},#{account.level},#{account.passport},#{account.passwd},#{account.email},#{account.name},#{account.p_name}," +
			"#{account.sex},#{account.province},#{account.city},#{account.card},#{account.business_file},#{account.enterprise_file}" +
			",NOW(),NOW(),#{account.address},#{account.postcode},#{account.phone},#{account.peremail},#{account.mobile},#{account.fax}," +
			"#{account.portraitimg},#{account.long_time},#{account.login_number},#{account.center_update})")
	@SelectKey(before=false,keyProperty="account.id",resultType=Long.class,statementType=StatementType.STATEMENT,
	statement="SELECT LAST_INSERT_ID() AS id")
	public void addAccount(@Param("account") Account account);

	@Select("SELECT * FROM account ${condition};")
	public Account getAccount(@Param("condition") String condition);

	@Select("SELECT * FROM account WHERE passport = #{passport}")
	public Account getAccountByPassport(@Param("passport") String passport);

	@Select("SELECT * FROM account WHERE passport = #{account.passport} AND passwd =#{account.passwd}")
	public Account getAccountByPassportAndPasswd(
			@Param("account") Account account);

	@Update("UPDATE account SET passwd=#{passwd} WHERE id=#{id}")
	public void modifyPasswd(@Param("passwd") String passwd,
			@Param("id") Long id);

	@Update("UPDATE account SET email=#{account.email},name=#{account.name},p_name=#{account.p_name},sex=#{account.sex}," +
			"province=#{account.province},city=#{account.city},card=#{account.card},business_file=#{account.business_file}," +
			"enterprise_file=#{account.enterprise_file},update_time=NOW() WHERE id=#{account.id}")
	public void updateAccount(@Param("account") Account account);
	
	@Update("UPDATE account SET updatepaswd = #{updatepaswdstate} where id = #{userid};")
	public void updatepaswdState(@Param("updatepaswdstate") String updatepaswdState, @Param("userid") Long userid);
	
	@Update("UPDATE account SET passwd = #{newpasword} where id = #{userid};")
	public void updateAccountPaswd(@Param("newpasword") String newpasword, @Param("userid") Long userid);
	
	@Update("UPDATE account SET ${condition};")
	public void updateAccountByCondition(@Param("condition") String condition);
	
	@Update("UPDATE account SET center_type = #{obj.center_type},name=#{obj.name},sex=#{obj.sex},province=#{obj.province}," +
			"city=#{obj.city},country=#{obj.country},card=#{obj.card},card_number=#{obj.card_number},business_file=#{obj.business_file}," +
			"enterprise_file=#{obj.enterprise_file},level=#{obj.level} ${condition} where id=#{obj.id};")
	public void updateAccountByCenter(@Param("obj") Account obj, @Param("condition") String condition);
	
	@Select("select * from stationmail ${condition} limit #{start},#{size};")
	public List<StationMail> stationMailList(@Param("condition") String condition,
			@Param("start") int start, @Param("size") int size);
	
	@Select("select count(*) from stationmail ${condition};")
	public int stationMailCount(@Param("condition") String condition);
	
	@Select("select * from stationmail ${condition} limit 1;")
	public StationMail getStationMail(@Param("condition") String condition);
	
	@Delete("delete from stationmail ${condition};")
	public void deleteMail(@Param("condition") String condition) throws Exception;
	
	@Insert("insert into stationmail(id,addresser,recipients,title,context,createdate) values(#{mail.id},#{mail.addresser}," +
			"#{mail.recipients},#{mail.title},#{mail.context},now());")
    public void addStationMail(@Param("mail") StationMail mail);
	
	@Select("select passport from account;")
	public List<String> getAccountNameList();
	
	@Select("select * from friends ${condition} limit #{start},#{size};")
	public List<FriendsConnection> getFriendsConnectionlist(@Param("condition") String condition,
			@Param("start") int start, @Param("size") int size);
	
	@Select("select count(*) from friends ${condition};")
	public int getFriendsCount(@Param("condition") String condition);
	
	@Delete("delete from friends ${condition};")
	public void deletFriend(@Param("condition") String condition) throws Exception;
	
	@Update("update friends set ${condition};")
	public void updateFriend(@Param("condition") String condition) throws Exception;
	
	@Insert("insert into friends(url,image,create_date) values(#{obj.url},#{obj.image},now());")
	public void addFriend(@Param("obj") FriendsConnection obj) throws Exception;
	
	@Select("select * from friends ${condition} limit 1;")
	public FriendsConnection getOneFirend(@Param("condition") String condition);
	
	@Select("SELECT * FROM account ${condition} limit 1;")
	public Account getAccountByCondition(@Param("condition") String condition);
}

