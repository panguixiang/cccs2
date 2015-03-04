<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@page contentType="text/html;charset=UTF-8"%>
	<%@page pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<base href="<%=basePath%>
	" />
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>中国动漫版权服务平台管理后台</title>
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<link href="css/manage.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div class="m_right">
	<h2>您当前的位置：后台管理系统菜单 &gt;&gt; 首页</h2>
	<div class="m_right_c">
		<div class="m_right_edit">
			<div style="padding: 80px 0; text-align: center; background: #FFF;">
				<img src="images/pic_w.gif" />
			</div>
		</div>
	</div>

</div>
	<!--新闻列表 end-->
	<div class="clear"></div>

	<!--content end-->
</body>