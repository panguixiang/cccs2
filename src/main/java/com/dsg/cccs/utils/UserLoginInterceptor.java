package com.dsg.cccs.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.dsg.cccs.model.Account;

/**
 * @ClassName: ManagerLoginInterceptor
 * @Description:
 * @author proteus modoucc_gmail_com
 * @date 2011-8-8 上午4:23:56
 * 
 */
public class UserLoginInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
        String person = request.getParameter("person");
        if(null != person && person.equals("manage")) {//说明是后台请求查看绿表单
        	return true;	
        }
		Account account = (Account) request.getSession().getAttribute("accountSession");
		/*Long managerID = (Long) request.getSession().getAttribute(
				"CCCS_MANAGER_ID");
		
		//管理员则无条件放行
		if (null != managerID) {
			return true;
		}
		*/
		//普通用户
		if (null == account) {
			request.getRequestDispatcher("/hint").forward(request, response);
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
