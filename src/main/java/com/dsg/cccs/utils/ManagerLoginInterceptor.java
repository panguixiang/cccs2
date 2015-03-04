package com.dsg.cccs.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * @ClassName: ManagerLoginInterceptor
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-8 上午4:23:56
 * 
 */
public class ManagerLoginInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String uri = request.getRequestURI();
		String ctp = request.getContextPath();
		String[] ignoreurls = {"/manage/signin"};
		
		for (String ignoreurl : ignoreurls) {
			if(uri.startsWith(ctp+ignoreurl))
				return true;
		}
       
		Long managerID = (Long) request.getSession().getAttribute("CCCS_MANAGER_ID");
		if(null == managerID){
			 request.getRequestDispatcher("/manage").forward(request, response); 
			 return false;
		}
		
		return true;
	}

	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
}
