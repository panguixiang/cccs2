package com.dsg.cccs.maper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.Cartoon;
import com.dsg.cccs.model.application.ApplyKnow;

/**
 * @ClassName: CartoonMapper
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-11 上午12:43:21
 * 
 */
public interface CartoonMapper {
	@Select("SELECT LAST_INSERT_ID() AS id ")
	public Long getLastInsertID();
	@Insert("INSERT INTO cartoon(title,cp,author,theme,type,area,year,length,yearzone,tag,cover_path,zuopin_path,jianjie,xiangqin_path,zhengshu_path,state,user_id,delete_flag,create_time,update_time)"
			+ "values(#{cartoon.title},#{cartoon.cp},#{cartoon.author},#{cartoon.theme},#{cartoon.type},#{cartoon.area},#{cartoon.year},#{cartoon.length},#{cartoon.yearzone},#{cartoon.tag},#{cartoon.cover_path},#{cartoon.zuopin_path},#{cartoon.jianjie},#{cartoon.xiangqin_path},#{cartoon.zhengshu_path},#{cartoon.state},#{cartoon.user_id},#{cartoon.delete_flag},NOW(),NOW())")
	public void add(@Param("cartoon") Cartoon cartoon);

	@Update("update cartoon set title=#{cartoon.title},cp=#{cartoon.cp},author=#{cartoon.author},theme=#{cartoon.theme},type=#{cartoon.type},area=#{cartoon.area},year=#{cartoon.year},length=#{cartoon.length},yearzone=#{cartoon.yearzone},tag=#{cartoon.tag},cover_path=#{cartoon.cover_path},zuopin_path=#{cartoon.zuopin_path},jianjie=#{cartoon.jianjie},xiangqin_path=#{cartoon.xiangqin_path},zhengshu_path=#{cartoon.zhengshu_path},state=#{cartoon.state},user_id=#{cartoon.user_id},delete_flag=#{cartoon.delete_flag},update_time = NOW() WHERE id=#{cartoon.id}")
	public void update(@Param("cartoon") Cartoon cartoon);

	@Select("select * from cartoon where id =#{id}")
	public Cartoon getOne(@Param("id") Long id);

	@Select("select * from cartoon ${sqlStr} order by update_time DESC limit ${start}, ${size}")
	public List<Cartoon> getListBySql(@Param("sqlStr") String sqlStr,
			@Param("start") Integer start, @Param("size") Integer size);

	@Select("select count(*) num from cartoon ${sqlStr}")
	public Integer countBySql(@Param("sqlStr")String sqlStr);

	@Select("select * from cartoon LIMIT #{start},#{size}")
	public List<Cartoon> getList(@Param("start") Integer start,
			@Param("size") Integer size);

	@Select("select count(id) num from cartoon ")
	public Integer count();

	@Delete("delete from cartoon where id=#{id}")
	public void delete(@Param("id") Long id);
	
	@Select("select COUNT(*) from cartoon ${condition};")
	public Long getCartoonCount(@Param("condition") String condition);
	
	@Update("update cartoon set ${condition};")
	public void updateCartoonByCondition(@Param("condition") String condition) throws Exception;
	
	@Select("Select * from applyknow ${condition};")
	public ApplyKnow getApplyKnow(@Param("condition") String condition);
}
