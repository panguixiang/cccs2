package com.dsg.cccs.model.application;

/**
 * @ClassName: Z61 此model可用于z41,z61,z62,z63,z64,
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-8 上午10:03:55
 * 
 */
public class Z60 {
	private Long id;
	private String flow_num;
	private String register_type; // 原登记类型
	private String opus_name;// 作品名称
	private String more_opus;// 作品量大于5个
	private String right_type;// 类别
	private String opus_en_name;// 期刊英文名字
	private String original_reg_num;// 原登记号
	private String orig_admissible_num;// 原受理号
	private String register_date;// 原登记日期

	private String reason; // 理由说明 z61,z62,z63,64

	private String change_type;// 申请类型 z61,补发或更换证书类型z64

	private String rev_type; // 撤销类型z62
	private String evidence;// 撤销依据z62

	private String apply_type;// 申请方式
	private String agent; // 代理
	private String agent_desc;// 代理理由

	/**
	 * @return the agent
	 */
	public String getAgent() {
		return agent;
	}

	/**
	 * @param agent
	 *            the agent to set
	 */
	public void setAgent(String agent) {
		this.agent = agent;
	}

	/**
	 * @return the rev_type
	 */
	public String getRev_type() {
		return rev_type;
	}

	/**
	 * @param rev_type
	 *            the rev_type to set
	 */
	public void setRev_type(String rev_type) {
		this.rev_type = rev_type;
	}

	/**
	 * @return the evidence
	 */
	public String getEvidence() {
		return evidence;
	}

	/**
	 * @param evidence
	 *            the evidence to set
	 */
	public void setEvidence(String evidence) {
		this.evidence = evidence;
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
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
	 * @param flow_num
	 *            the flow_num to set
	 */
	public void setFlow_num(String flow_num) {
		this.flow_num = flow_num;
	}

	/**
	 * @return the register_type
	 */
	public String getRegister_type() {
		return register_type;
	}

	/**
	 * @param register_type
	 *            the register_type to set
	 */
	public void setRegister_type(String register_type) {
		this.register_type = register_type;
	}

	/**
	 * @return the opus_name
	 */
	public String getOpus_name() {
		return opus_name;
	}

	/**
	 * @param opus_name
	 *            the opus_name to set
	 */
	public void setOpus_name(String opus_name) {
		this.opus_name = opus_name;
	}

	/**
	 * @return the more_opus
	 */
	public String getMore_opus() {
		return more_opus;
	}

	/**
	 * @param more_opus
	 *            the more_opus to set
	 */
	public void setMore_opus(String more_opus) {
		this.more_opus = more_opus;
	}

	/**
	 * @return the right_type
	 */
	public String getRight_type() {
		return right_type;
	}

	/**
	 * @param right_type
	 *            the right_type to set
	 */
	public void setRight_type(String right_type) {
		this.right_type = right_type;
	}

	/**
	 * @return the opus_en_name
	 */
	public String getOpus_en_name() {
		return opus_en_name;
	}

	/**
	 * @param opus_en_name
	 *            the opus_en_name to set
	 */
	public void setOpus_en_name(String opus_en_name) {
		this.opus_en_name = opus_en_name;
	}

	/**
	 * @return the original_reg_num
	 */
	public String getOriginal_reg_num() {
		return original_reg_num;
	}

	/**
	 * @param original_reg_num
	 *            the original_reg_num to set
	 */
	public void setOriginal_reg_num(String original_reg_num) {
		this.original_reg_num = original_reg_num;
	}

	/**
	 * @return the orig_admissible_num
	 */
	public String getOrig_admissible_num() {
		return orig_admissible_num;
	}

	/**
	 * @param orig_admissible_num
	 *            the orig_admissible_num to set
	 */
	public void setOrig_admissible_num(String orig_admissible_num) {
		this.orig_admissible_num = orig_admissible_num;
	}

	/**
	 * @return the register_date
	 */
	public String getRegister_date() {
		return register_date;
	}

	/**
	 * @param register_date
	 *            the register_date to set
	 */
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}

	/**
	 * @return the change_type
	 */
	public String getChange_type() {
		return change_type;
	}

	/**
	 * @param change_type
	 *            the change_type to set
	 */
	public void setChange_type(String change_type) {
		this.change_type = change_type;
	}

	/**
	 * @return the reason
	 */
	public String getReason() {
		return reason;
	}

	/**
	 * @param reason
	 *            the reason to set
	 */
	public void setReason(String reason) {
		this.reason = reason;
	}

	/**
	 * @return the apply_type
	 */
	public String getApply_type() {
		return apply_type;
	}

	/**
	 * @param apply_type
	 *            the apply_type to set
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
	 * @param agent_desc
	 *            the agent_desc to set
	 */
	public void setAgent_desc(String agent_desc) {
		this.agent_desc = agent_desc;
	}

}
