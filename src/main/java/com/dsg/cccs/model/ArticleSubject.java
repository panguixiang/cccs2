package com.dsg.cccs.model;

/**
 * @ClassName: ArticleSubject
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-7-29 下午2:52:24
 * 
 */
public class ArticleSubject {
	private String channelSign;
	private String channelName;
	private String subjectSign;
	private String subjectName;

	/**
	 * @param channelSign
	 * @param channelName
	 * @param subjectSign
	 * @param subjectName
	 */
	public ArticleSubject(String channelSign, String channelName,
			String subjectSign, String subjectName) {
		super();
		this.channelSign = channelSign;
		this.channelName = channelName;
		this.subjectSign = subjectSign;
		this.subjectName = subjectName;
	}

	/**
	 * @return the channelSign
	 */
	public String getChannelSign() {
		return channelSign;
	}

	/**
	 * @param channelSign
	 *            the channelSign to set
	 */
	public void setChannelSign(String channelSign) {
		this.channelSign = channelSign;
	}

	/**
	 * @return the channelName
	 */
	public String getChannelName() {
		return channelName;
	}

	/**
	 * @param channelName
	 *            the channelName to set
	 */
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}

	/**
	 * @return the subjectSign
	 */
	public String getSubjectSign() {
		return subjectSign;
	}

	/**
	 * @param subjectSign
	 *            the subjectSign to set
	 */
	public void setSubjectSign(String subjectSign) {
		this.subjectSign = subjectSign;
	}

	/**
	 * @return the subjectName
	 */
	public String getSubjectName() {
		return subjectName;
	}

	/**
	 * @param subjectName
	 *            the subjectName to set
	 */
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

}
