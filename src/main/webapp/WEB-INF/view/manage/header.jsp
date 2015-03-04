<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@page contentType="text/html;charset=UTF-8"%>
	<%@page pageEncoding="UTF-8"%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<base href="<%=basePath%>
	" />
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>中国动漫版权服务平台管理后台</title>
	<link href="css/manage.css" rel="stylesheet" type="text/css" />
</head>
	<div class="m_header">

		<div class="m_logo">
			<img src="images/m_logo.gif"/>
		</div>

		<div class="m_header_c_1">
			<a href="#" target="_blank"><img src="images/m_icon01.gif" width="13" height="13" />&nbsp;网站首页</a>
		</div>

		<div class="m_header_c_2">【系统管理员】,欢迎您登录管理中心</div>

	</div>
	<div class="clear"></div>