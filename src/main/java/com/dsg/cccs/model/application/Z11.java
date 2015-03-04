package com.dsg.cccs.model.application;


/**
 * @ClassName: CopyrightPerson
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-6 上午6:18:06
 * 
 */
public class Z11 {
	
	private Long id;

	private String flow_num; // 流水号

	private String opus_name; // 作品名称
	private String opus_type; // 作品类别  or z31-->类别
	private String opus_type_desc; // 作品说明

	// 作者信息开始，可重复
	private String author_name; // 名字
	private String author_sign; // 署名
	// 作者信息结束
	private String opus_indite_kind;// 作品创作性质
	private String opus_desc; // 说明
	private String create_date; // 创作完成日期
	private String create_country; // 创作完成地点 国家
	private String create_city; // 创作完成地点 城市

	private String publish_status; // 发表状态
	private String appear_date; // 首次发表日期
	private String appear_country; // 首次发表地点 国家
	private String appear_city; // 首次发表地点 城市

	private String obtain_mode; // 权利取得方式
	private String inherit_desc; // 权利取得方式说明

	private String right_own_mode; // 权利归属方式
	private String right_own_desc;// 权利归属方式说明

	// 可重复
	private String right_scope;// 权利拥有状况
	private String own_part_desc;// 权利拥有状况说明

	private String emedium;// 保存电子介质
	private String ecount;// 电子介质件数

	private String pmedium;// 保存纸介质
	private String pcount;// 纸介质件数

	private String apply_type;// 申请方式
	
	private String agent_desc; //代理理由
	private String scope;//权利拥有状况及其说明
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the flow_num
	 */
	public String getFlow_num() {
		return flow_num;
	}

	/**
	 * @param flow_num the flow_num to set
	 */
	public void setFlow_num(String flow_num) {
		this.flow_num = flow_num;
	}

	/**
	 * @return the opus_name
	 */
	public String getOpus_name() {
		return opus_name;
	}

	/**
	 * @param opus_name the opus_name to set
	 */
	public void setOpus_name(String opus_name) {
		this.opus_name = opus_name;
	}

	/**
	 * @return the opus_type
	 */
	public String getOpus_type() {
		return opus_type;
	}

	/**
	 * @param opus_type the opus_type to set
	 */
	public void setOpus_type(String opus_type) {
		this.opus_type = opus_type;
	}

	/**
	 * @return the opus_type_desc
	 */
	public String getOpus_type_desc() {
		return opus_type_desc;
	}

	/**
	 * @param opus_type_desc the opus_type_desc to set
	 */
	public void setOpus_type_desc(String opus_type_desc) {
		this.opus_type_desc = opus_type_desc;
	}

	/**
	 * @return the author_name
	 */
	public String getAuthor_name() {
		return author_name;
	}

	/**
	 * @param author_name the author_name to set
	 */
	public void setAuthor_name(String author_name) {
		this.author_name = author_name;
	}

	/**
	 * @return the author_sign
	 */
	public String getAuthor_sign() {
		return author_sign;
	}

	/**
	 * @param author_sign the author_sign to set
	 */
	public void setAuthor_sign(String author_sign) {
		this.author_sign = author_sign;
	}

	/**
	 * @return the opus_indite_kind
	 */
	public String getOpus_indite_kind() {
		return opus_indite_kind;
	}

	/**
	 * @param opus_indite_kind the opus_indite_kind to set
	 */
	public void setOpus_indite_kind(String opus_indite_kind) {
		this.opus_indite_kind = opus_indite_kind;
	}

	/**
	 * @return the opus_desc
	 */
	public String getOpus_desc() {
		return opus_desc;
	}

	/**
	 * @param opus_desc the opus_desc to set
	 */
	public void setOpus_desc(String opus_desc) {
		this.opus_desc = opus_desc;
	}

	/**
	 * @return the create_date
	 */
	public String getCreate_date() {
		return create_date;
	}

	/**
	 * @param create_date the create_date to set
	 */
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	/**
	 * @return the create_country
	 */
	public String getCreate_country() {
		return create_country;
	}

	/**
	 * @param create_country the create_country to set
	 */
	public void setCreate_country(String create_country) {
		this.create_country = create_country;
	}

	/**
	 * @return the create_city
	 */
	public String getCreate_city() {
		return create_city;
	}

	/**
	 * @param create_city the create_city to set
	 */
	public void setCreate_city(String create_city) {
		this.create_city = create_city;
	}

	/**
	 * @return the publish_status
	 */
	public String getPublish_status() {
		return publish_status;
	}

	/**
	 * @param publish_status the publish_status to set
	 */
	public void setPublish_status(String publish_status) {
		this.publish_status = publish_status;
	}

	/**
	 * @return the appear_date
	 */
	public String getAppear_date() {
		return appear_date;
	}

	/**
	 * @param appear_date the appear_date to set
	 */
	public void setAppear_date(String appear_date) {
		this.appear_date = appear_date;
	}

	/**
	 * @return the appear_country
	 */
	public String getAppear_country() {
		return appear_country;
	}

	/**
	 * @param appear_country the appear_country to set
	 */
	public void setAppear_country(String appear_country) {
		this.appear_country = appear_country;
	}

	/**
	 * @return the appear_city
	 */
	public String getAppear_city() {
		return appear_city;
	}

	/**
	 * @param appear_city the appear_city to set
	 */
	public void setAppear_city(String appear_city) {
		this.appear_city = appear_city;
	}

	/**
	 * @return the obtain_mode
	 */
	public String getObtain_mode() {
		return obtain_mode;
	}

	/**
	 * @param obtain_mode the obtain_mode to set
	 */
	public void setObtain_mode(String obtain_mode) {
		this.obtain_mode = obtain_mode;
	}

	/**
	 * @return the inherit_desc
	 */
	public String getInherit_desc() {
		return inherit_desc;
	}

	/**
	 * @param inherit_desc the inherit_desc to set
	 */
	public void setInherit_desc(String inherit_desc) {
		this.inherit_desc = inherit_desc;
	}

	/**
	 * @return the right_own_mode
	 */
	public String getRight_own_mode() {
		return right_own_mode;
	}

	/**
	 * @param right_own_mode the right_own_mode to set
	 */
	public void setRight_own_mode(String right_own_mode) {
		this.right_own_mode = right_own_mode;
	}

	/**
	 * @return the right_own_desc
	 */
	public String getRight_own_desc() {
		return right_own_desc;
	}

	/**
	 * @param right_own_desc the right_own_desc to set
	 */
	public void setRight_own_desc(String right_own_desc) {
		this.right_own_desc = right_own_desc;
	}

	/**
	 * @return the right_scope
	 */
	public String getRight_scope() {
		return right_scope;
	}

	/**
	 * @param right_scope the right_scope to set
	 */
	public void setRight_scope(String right_scope) {
		this.right_scope = right_scope;
	}

	/**
	 * @return the own_part_desc
	 */
	public String getOwn_part_desc() {
		return own_part_desc;
	}

	/**
	 * @param own_part_desc the own_part_desc to set
	 */
	public void setOwn_part_desc(String own_part_desc) {
		this.own_part_desc = own_part_desc;
	}

	/**
	 * @return the emedium
	 */
	public String getEmedium() {
		return emedium;
	}

	/**
	 * @param emedium the emedium to set
	 */
	public void setEmedium(String emedium) {
		this.emedium = emedium;
	}

	/**
	 * @return the ecount
	 */
	public String getEcount() {
		return ecount;
	}

	/**
	 * @param ecount the ecount to set
	 */
	public void setEcount(String ecount) {
		this.ecount = ecount;
	}

	/**
	 * @return the pmedium
	 */
	public String getPmedium() {
		return pmedium;
	}

	/**
	 * @param pmedium the pmedium to set
	 */
	public void setPmedium(String pmedium) {
		this.pmedium = pmedium;
	}

	/**
	 * @return the pcount
	 */
	public String getPcount() {
		return pcount;
	}

	/**
	 * @param pcount the pcount to set
	 */
	public void setPcount(String pcount) {
		this.pcount = pcount;
	}

	/**
	 * @return the apply_type
	 */
	public String getApply_type() {
		return apply_type;
	}

	/**
	 * @param apply_type the apply_type to set
	 */
	public void setApply_type(String apply_type) {
		this.apply_type = apply_type;
	}

	/**
	 * @return the agent_desc
	 */
	public String getAgent_desc() {
		return agent_desc;
	}

	/**
	 * @param agent_desc the agent_desc to set
	 */
	public void setAgent_desc(String agent_desc) {
		this.agent_desc = agent_desc;
	}
	public String getScope() {
		return scope;
	}

	public void setScope(String scope) {
		this.scope = scope;
	}
}
