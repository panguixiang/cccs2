package com.dsg.cccs.utils;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

public class ToEmailUtils {

	public static void toEmailByPaswd(HttpServletRequest request, String toAddress, String subject, 
			String emaiUrl, String username) {
		
		ServletContext ctx = request.getSession().getServletContext();
		MailSenderInfo mailInfo = new MailSenderInfo();    
		mailInfo.setMailServerHost(ctx.getInitParameter("smtpHost"));    
		mailInfo.setMailServerPort(ctx.getInitParameter("smtpPort"));    
		mailInfo.setValidate(true);    
		mailInfo.setUserName(ctx.getInitParameter("emailUserName"));    
		mailInfo.setPassword(ctx.getInitParameter("emailUserPaswd"));//您的邮箱密码    
		mailInfo.setFromAddress(ctx.getInitParameter("emailUserName"));    
		mailInfo.setToAddress(toAddress);    
		mailInfo.setSubject(subject);    
		mailInfo.setContent(SystemUtils.createEmail(emaiUrl,username));    
		//这个类主要来发送邮件   
		// sms.sendTextMail(mailInfo);//发送文体格式    
		SimpleMailSender.sendHtmlMail(mailInfo); //发送html格式   
	}
    //这个类主要是设置邮件   
}
