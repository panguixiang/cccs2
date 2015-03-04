<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>选择注册类型-注册-中国动漫版权服务平台</title>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />

</head>

<body>
	<div class="container_bg">
		<div class="contanier">
			<!--navend-->
			<%@ include file="header.jsp"%>
			<!--navend end-->
			<!--注册内容-->
			<div class="reg_content">
				<div class="reg_top">
					<img src="${pageContext.request.contextPath}/images/navbottom.gif" />
				</div>
				<div class="reg_cont">
					<div class="reg_c_box">
						<div class="reg_select">
							<h2>请选择注册类型：</h2>
							<p>
								<a href="${pageContext.request.contextPath}/account/signup/1"><img src="/images/p_reg.gif" />
								</a><br /> 个人用户需要填写用户名、密码、身份证号等资料
							</p>
							<p>
								<a href="${pageContext.request.contextPath}/account/signup/2"><img src="/images/c_reg.gif" />
								</a><br /> 对于使用公司或团体名称的用户，需要提供公司相关资料
							</p>
						</div>
					</div>
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/images/cont_button.gif" />
				</div>
			</div>
			<!--注册内容 end-->
			<!--底部-->
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
	</div>
</body>
</html>
