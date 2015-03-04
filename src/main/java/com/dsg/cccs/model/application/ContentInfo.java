package com.dsg.cccs.model.application;

/**
 * @ClassName: ApplyMessage
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-8 上午10:24:10
 * 
 */
public class ContentInfo {
	private Long id;

	private String flow_num;// 流水号
	private String item;// 变更项
	private String before_content;// 变更前的内容
	private String after_content;// 变更后的内容

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
	 * @param flow_num
	 *            the flow_num to set
	 */
	public void setFlow_num(String flow_num) {
		this.flow_num = flow_num;
	}

	
	/**
	 * @return the item
	 */
	public String getItem() {
		return item;
	}

	/**
	 * @param item the item to set
	 */
	public void setItem(String item) {
		this.item = item;
	}

	/**
	 * @return the before_content
	 */
	public String getBefore_content() {
		return before_content;
	}

	/**
	 * @param before_content
	 *            the before_content to set
	 */
	public void setBefore_content(String before_content) {
		this.before_content = before_content;
	}

	/**
	 * @return the after_content
	 */
	public String getAfter_content() {
		return after_content;
	}

	/**
	 * @param after_content
	 *            the after_content to set
	 */
	public void setAfter_content(String after_content) {
		this.after_content = after_content;
	}

}
