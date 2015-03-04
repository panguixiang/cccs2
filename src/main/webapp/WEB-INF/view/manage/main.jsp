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
	<script type="text/javascript" src="js/common.js"></script>
	<link href="css/manage.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		function reinitIframe(){
			var iframe_left = document.getElementById("left");
			var iframe_center = document.getElementById("center");
			try{
			iframe_left.height =  iframe_left.contentWindow.document.documentElement.scrollHeight;
			iframe_center.height =  iframe_center.contentWindow.document.documentElement.scrollHeight;
			}catch (ex){}
		}
		window.setInterval("reinitIframe()", 200);
	</script>
</head>
<body>
	<div class="m_contanier">
		<!--头部-->

		<iframe frameborder="0" scrolling="no" height="66px" width="100%" src="manage/header"></iframe>

		<!--头部-->
		<div class="m_content">
			<div class="m_content_left">
				<iframe id="left" frameborder="0" scrolling="no" width="188px" src="manage/left"></iframe>
			</div>
			<div class="m_content_right">
				<iframe id="center" frameborder="0" scrolling="no" width="827px"  src="manage/body"></iframe>
			</div>
		</div>

	</div>

</body>
</html>