package com.dsg.cccs.utils;

/**
 * @ClassName: MessageUtil
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-3 下午3:44:27
 * 
 */
public class MessageUtil {
	private boolean result;
	private String msg;

	/**
	 * @param result
	 */
	public MessageUtil(boolean result) {
		super();
		this.result = result;
	}

	/**
	 * @return the result
	 */
	public boolean isResult() {
		return result;
	}

	/**
	 * @param result
	 *            the result to set
	 */
	public void setResult(boolean result) {
		this.result = result;
	}

	/**
	 * @return the msg
	 */
	public String getMsg() {
		return msg;
	}

	/**
	 * @param msg
	 *            the msg to set
	 */
	public void setMsg(String msg) {
		this.msg = msg;
	}

}
