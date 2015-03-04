package com.dsg.cccs.utils;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * 处理editor编辑器附件上传中文乱码
 * 
 * @author panguixiang
 * 
 */
public class UnicodeFilter implements Filter {
	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain fc) throws IOException, ServletException {
		// TODO 自动生成方法存根
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding("GBK");
		fc.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO 自动生成方法存根

	}

}
