<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国动漫版权服务平台管理后台</title>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/xheditor-1.1.8-zh-cn.min.js"></script>
</head>

<body>
	
		
<!--content-->

	


<!--  新闻编辑 -->
<div class="m_right">
	<h2>您当前的位置：版权服务 &gt;&gt;表单审核</h2>
	<div class="m_right_c">
		<form:form modelAttribute="application" action="/manage/application/deal" method="post">
			<div class="m_right_edit">

				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="edit_table">
					<tr>
						<td width="10%" class="text_r">流水号：</td>
						<td width="90%">${application.flow_num}</td>
					</tr>
					<tr>
						<td class="text_r">权利人:</td>
						<td>${application.name}</td>
					</tr>
					<tr>
						<td class="text_r">名称:</td>
						<td>${application.app_name}</td>
					</tr>
					<tr>
						<td class="text_r">填报日期：</td>
						<td><fmt:formatDate value="${application.update_time}"
								pattern="yyyy年MM月dd日  HH:mm" />
						</td>
					</tr>
					<tr>
						<td class="text_r">处理意见：</td>
						<td><form:input path="answer" class="text_input" />
						</td>
					</tr>
					<tr>
						<td class="text_r">处理结果：</td>
						<td><form:select path="state">
						<form:option value="2">暂不处理</form:option>
						<form:option value="3">审核不通过</form:option>
						<form:option value="4">审核通过</form:option>
						</form:select>
						</td>
					</tr>
					<form:hidden path="flow_num" value="${application.flow_num}"/>
					<tr>
						<td valign="top" class="text_r">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>

			</div>
			<div class="m_r_button">
				<input type="submit" value="确定" class="m_button" />
			</div>
		</form:form>
	</div>
</div>
<!--  新闻编辑  end -->

<div class="clear"></div>
	

</body>
</html>
