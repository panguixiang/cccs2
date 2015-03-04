<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改资料-个人中心-中国动漫版权服务平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<div class="container_bg">
		<div class="contanier">
			<!--top-->
			<%@ include file="../header.jsp"%>
			<!--topend-->
			<!--信息内容-->
			<div class="info_content">
				<div class="info_top">
					<img src="images/navbottom.gif" />
				</div>
				<div class="info_cont">
					<div class="info_box">

						<div class="i_left">
							<h3>
								<img src="images/i_left01.gif" />
							</h3>
							<!--登录-->
							<%@ include file="../left.jsp"%>
							<!--登录 end-->

						</div>

						<div class="c_right">
							<div class="c_title">个人中心</div>
							<div class="c_right_bqinfo">
								<div class="bq_box">
									<div id="tabs1">
				<div class="menu_lable">
					<ul>
						<li class="on">登录概况</li>
						<li><a href="mycenter/interaccount/registermsg">注册信息</a></li>
						<li><a href="mycenter/interaccount/updatepswd">修改密码</a></li>
						<li><a href="mycenter/interaccount/updateimage">修改头像</a></li>
						<li><a href="mycenter/copyright/${sessionScope.accountSession.id}">版权服务</a></li>
						<li><a href="mycenter/pledge/${sessionScope.accountSession.id}">质权服务</a></li>
						<li><a href="mycenter/interaccount/resource_user">资源中心用户信息</a></li>
					</ul>
				</div>
			<div class="main1box">
			<div class="main" id="main1">
					<div class="bq_cont">
						<div class="reg_h">登录概况</div>
						<table width="100%" border="0" cellspacing="0"cellpadding="0" class="pes_table">
							<tr>
								<td class="r_left" width="28%">注册时间：</td>
								<td width="72%"><fmt:formatDate value="${account.create_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
								</td>
							</tr>
							<tr>
								<td class="r_left">在线时长：</td>
								<td><c:out value="${account.long_time}"></c:out>&nbsp;秒
								</td>
							</tr>
							<tr>
								<td class="r_left">登录次数：</td>
								<td><c:out value="${account.login_number}"></c:out>次</td>
							</tr>
							<tr>
								<td class="r_left">最后访问时间：</td>
								<td>
								<fmt:formatDate value="${account.last_login_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
								</td>

							</tr>
						</table>
					</div>
			</div>
		</div>
	 </div>
   </div>
	</div>
		</div>
		<div class="clear"></div>
	</div>
</div>
<div>
	<img src="images/cont_button.gif" />
	</div>
</div>
<!--信息内容 end-->
<!--底部-->
<%@ include file="../footer.jsp"%>
<!--底部 end-->
	</div>
</div>
</body>
</html>
