<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>首页-中国动漫作品版权交易平台找回密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
</head>
	<body>
	<div class="container_bg">
		<div class="contanier">
			<!--top-->
			<%@ include file="header.jsp"%>
			<!--navend-->

			<!--信息内容-->
			<div class="info_content">
				<div class="info_top">
					<img src="${pageContext.request.contextPath}/images/navbottom.gif" />
				</div>
				<div class="info_cont0808">
					
				<div class="lgon_c_box" style="margin-top:30px; margin-bottom:30px;">
						<p>找回密码邮件已发送到您的${useremail}邮箱中,请注意查收!</p>
			</div>
			<div class="clear"></div>
		<!--主要内容 end-->
	</div>
				<div>
					<img src="${pageContext.request.contextPath}/images/cont_button.gif" />
				</div>
			</div>
			<!--信息内容 end-->
			<!--底部-->
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
	</div>
</body>
</html>


<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>首页-中国动漫作品版权交易平台找回密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body style="margin-top:100px;">
			<!--主要内容-->
					<div class="login">
						<h3>
							<img src="${pageContext.request.contextPath}/images/index_logint.gif" />
						</h3>
						<div class="lgon_c">
							<!--登录前-->
								<div class="login_b_c" style="border: none; display: ">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									     找回密码邮件已发送到您的${useremail}邮箱中,请注意查收!
									</table>
								</div>
						</div>
			<!--主要内容 end-->
	</div>
	
</body>
</html> --%>
