package com.dsg.cccs.maper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.Article;
import com.dsg.cccs.model.FriendsConnection;
import com.dsg.cccs.model.IndexNews;
import com.dsg.cccs.model.Info;

/**
 * @ClassName: ArticleMapper
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-7-27 下午2:21:55
 * 
 */
public interface ArticleMapper {
	@Insert("INSERT INTO article(title,content,source,channel,subject,create_time,update_time,pub_date)VALUES(#{article.title},#{article.content},#{article.source},#{article.channel},#{article.subject},NOW(),NOW(),#{article.pub_date})")
	public void addArticle(@Param("article") Article article);

	@Update("UPDATE article SET title=#{article.title},content=#{article.content},source=#{article.source},channel=#{article.channel},subject=#{article.subject},update_time =NOW(),pub_date=#{article.pub_date} WHERE id = #{article.id}")
	public void updateArticle(@Param("article") Article article);

	@Update("UPDATE article SET pvnum=#{article.pvnum} WHERE id = #{article.id}")
	public void updateArticlePvNum(@Param("article") Article article);
	
	@Select("SELECT * FROM article WHERE subject = #{subject}  ORDER BY pub_date DESC LIMIT #{start}, #{size}")
	public List<Article> getArticles(@Param("subject") String subject,
			@Param("start") int start, @Param("size") int size);
	
	@Select("SELECT * FROM article WHERE subject = #{subject}  ORDER BY pub_date DESC LIMIT #{size}")
	public List<Article> getArticlesBySize(@Param("subject") String subject,@Param("size") int size);

	@Select("SELECT * FROM article WHERE id =#{id} limit 1;")
	public Article getArticle(@Param("id") Long id);

	@Delete("DELETE FROM article WHERE id=#{id}")
	public void deleteArticle(@Param("id") Long id);
	
	@Select("SELECT count(id) num FROM article WHERE subject = #{subject}")
	public Integer countArticleBySubject(@Param("subject")String subject);
	
	/**
	 * 按照组装条件查询article列表
	 * @param condition
	 * @return
	 */
	@Select("SELECT * FROM article ${condition};")
	public List<Article> getArticleList(@Param("condition") String condition);
	
	/**
	 * 后台管理新闻动态轮播
	 * @param condition
	 * @param start
	 * @param size
	 * @return
	 */
	@Select("SELECT * FROM indexnews ${condition} limit #{start},#{size};")
	public List<IndexNews> getIndexNewsList(@Param("condition") String condition,
			@Param("start") int start, @Param("size") int size);

	
	/**
	 * 后台管理新闻动态轮播
	 * @param condition
	 * @return
	 */
	@Select("SELECT count(*) FROM indexnews ${condition};")
	public int getIndexNewsCounts(@Param("condition") String condition);
	
	/**
	 * 按条件查询单个indexNews
	 * @param condition
	 * @return
	 */
	@Select("SELECT * FROM indexnews ${condition};")
	public IndexNews getIndexNews(@Param("condition") String condition);
	
	/**
	 * 后台新增新闻动态轮播
	 * @param condition
	 */
	@Insert("INSERT into indexnews(title,squen,url,image) values(#{indexnews.title},#{indexnews.squen},#{indexnews.url},#{indexnews.image});")
	public void addIndexNews(@Param("indexnews") IndexNews indexnews);
	
	/**
	 * 后台修改新闻动态轮播
	 * @param indexnews
	 */
	@Update("update indexnews set title=#{indexnews.title},squen=#{indexnews.squen}," +
			"url=#{indexnews.url},image=#{indexnews.image} where id=#{indexnews.id};")
	public void updateIndexNews(@Param("indexnews") IndexNews indexnews);
	
	/**
	 * 后台删除新闻动态轮播
	 * @param id
	 */
	@Delete("delete from indexnews where id = #{id};")
	public void deleteIndexNews(@Param("id") Integer id);
	
	@Select("select * from friends ${condition};")
	public List<FriendsConnection> getFriendsList(@Param("condition") String condition);
	
	@Select("select * from info ${condition}")
	public List<Info> getInfoList(@Param("condition") String condition);
}
