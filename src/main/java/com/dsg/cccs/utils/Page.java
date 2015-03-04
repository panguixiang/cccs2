package com.dsg.cccs.utils;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @ClassName: Page
 * @Description:
 * @author proteus modoucc_gmail_com
 * @date 2011-7-28 下午6:43:19
 * 
 */
@SuppressWarnings("serial")
public class Page implements Serializable {

	public static int SIZE_PER_PAGE = 15;

	private int pageSize = SIZE_PER_PAGE;

	private List<?> data; // 当前页中存放的记录,类型一般为List

	private long totalCount; // 总记录数

	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize
	 *            the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @param data
	 * @param totalCount
	 */
	public Page(List<?> data, long totalCount) {
		super();
		this.data = data;
		this.totalCount = totalCount;
	}

	/**
	 * @return the data
	 */
	public List<?> getData() {
		return data;
	}

	/**
	 * @param data
	 *            the data to set
	 */
	public void setData(List<?> data) {
		this.data = data;
	}

	/**
	 * @return the totalCount
	 */
	public long getTotalCount() {
		return totalCount;
	}

	/**
	 * @param totalCount
	 *            the totalCount to set
	 */
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

}