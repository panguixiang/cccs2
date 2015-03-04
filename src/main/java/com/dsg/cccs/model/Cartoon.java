package com.dsg.cccs.model;

import java.util.Date;
import java.util.List;

/**
 * 
 * @class: Cartoon
 * @author: Matty.Cong(Modoucc<AT>gmail.com)
 * @description: 重写整个作品模块
 * @date: 2012-9-15
 */
public class Cartoon {
	private Long id;
	private Integer cp; // cp cartoon的大分类,1是漫画,2是动漫 （二期 1= 成片中心，2=脚本中心）
	private String title; // 作品名称
	private String author; // 作者
	private String theme; // 题材
	private List<String> theme_list;
	private String type; // 类型
	private String length;// 片长
	private String area; // 地区
	private String year;// 年份
	private String yearzone;// 年龄层
	private String tag;// 标签
	private String cover_path;// 封面的file路径
	private String zuopin_path; // 作品的file路径
	private String jianjie; // 作品简介
	private String xiangqin_path;// 作品详情的file路径
	private String zhengshu_path; // 版权登记证书及作品样本的file路径
	private Integer state;// 作品的状态 【1=未完成】、【2=已提交】、【3=审核中】、【4=已展示】、【5=已下架】、【6=审核通过】、【7=审核未通过】
	private Long user_id; // 上传用户ID,如果是管理员,则为0
	private Integer delete_flag;// 删除标志 1正常,2回收站
	private Date create_time;
	private Date update_time;
	private String common;//审核意见

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getCp() {
		return cp;
	}

	public void setCp(Integer cp) {
		this.cp = cp;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public List<String> getTheme_list() {
		return theme_list;
	}

	public void setTheme_list(List<String> theme_list) {
		this.theme_list = theme_list;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getYearzone() {
		return yearzone;
	}

	public void setYearzone(String yearzone) {
		this.yearzone = yearzone;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getCover_path() {
		return cover_path;
	}

	public void setCover_path(String cover_path) {
		this.cover_path = cover_path;
	}

	public String getZuopin_path() {
		return zuopin_path;
	}

	public void setZuopin_path(String zuopin_path) {
		this.zuopin_path = zuopin_path;
	}

	public String getJianjie() {
		return jianjie;
	}

	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}

	public String getXiangqin_path() {
		return xiangqin_path;
	}

	public void setXiangqin_path(String xiangqin_path) {
		this.xiangqin_path = xiangqin_path;
	}

	public String getZhengshu_path() {
		return zhengshu_path;
	}

	public void setZhengshu_path(String zhengshu_path) {
		this.zhengshu_path = zhengshu_path;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Long getUser_id() {
		return user_id;
	}

	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}

	public Integer getDelete_flag() {
		return delete_flag;
	}

	public void setDelete_flag(Integer delete_flag) {
		this.delete_flag = delete_flag;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public Date getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}

	public String getCommon() {
		return common;
	}

	public void setCommon(String common) {
		this.common = common;
	}

	
}
