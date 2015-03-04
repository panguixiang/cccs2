package com.dsg.cccs.listener;

import java.util.Date;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.dsg.cccs.model.Account;
import com.dsg.cccs.service.AccountService;
import com.dsg.cccs.utils.SystemUtils;

/**
 * 用于session超时后 在用户登录状态下计算登录时长
 * @author xiefeng
 *
 */
public class UserSessionListener implements HttpSessionListener {

	/**
	* 当创建一个session时
	*/
	public void sessionCreated(HttpSessionEvent session) {
	}

	/**
	 * 此方法在session超时容器销毁session之前执行
	* 
	*/
	public void sessionDestroyed(HttpSessionEvent session) {
		Date loginTime = (Date)session.getSession().getAttribute("LOGINTIME");
		if(loginTime != null) {
			try {
				Long minus = SystemUtils.timeDispatchMinus(SystemUtils.dateFormatString(loginTime),SystemUtils.dateFormatString(new Date()));
				Account acount = (Account)session.getSession().getAttribute("accountSession");
				WebApplicationContext wac = WebApplicationContextUtils.
						getRequiredWebApplicationContext(session.getSession().getServletContext());
				((AccountService)wac.getBean("AccountService"))
				.updateAccountByCondition(" long_time = "+(minus+acount.getLong_time())+",last_login_time=now() where id="+acount.getId());
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
