package com.dsg.cccs.maper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dsg.cccs.model.ApplicationArticle;

/**
 * @ClassName: ArticleMapper
 * @Description: 
 * @author proteus modoucc_gmail_com
 * @date 2011-7-27 下午2:21:55
 * 
 */
public interface ApplicationArticleMapper {
	@Insert("INSERT INTO application_article(title,content,type,num_id,objtype)VALUES(#{article.title},#{article.content},#{article.type},#{article.num_id},#{article.objtype})")
	public void addArticle(@Param("article") ApplicationArticle article);

	@Update("UPDATE application_article SET title=#{article.title},content=#{article.content},type=#{article.type},num_id =#{article.num_id} WHERE id = #{article.id}")
	public void updateArticle(@Param("article") ApplicationArticle article);

	@Select("SELECT * FROM application_article WHERE type = #{type}  ORDER BY num_id")
	public List<ApplicationArticle> getArticles(@Param("type") String type);
	
	@Select("SELECT * FROM application_article ${condition} ORDER BY type,num_id")
	public List<ApplicationArticle> getAllArticles(@Param("condition") String condition);

	@Select("SELECT * FROM application_article WHERE id =#{id}")
	public ApplicationArticle getArticle(@Param("id") Long id);

	@Delete("DELETE FROM application_article WHERE id=#{id}")
	public void deleteArticle(@Param("id") Long id);
	
	@Select("SELECT * FROM application_article ${condition} ORDER BY type,num_id limit #{start},#{size};")
	public List<ApplicationArticle> getAllArticlesTwo(@Param("condition") String condition,
			@Param("start") int start, @Param("size") int size);
	
	@Select("SELECT count(*) FROM application_article ${condition}")
	public int getAllArticlesCount(@Param("condition") String condition);
	
}
