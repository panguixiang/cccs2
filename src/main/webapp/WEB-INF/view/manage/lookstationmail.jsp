<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>首页-中国动漫作品版权交易平台找回密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>

.look_station0918{width:360px;height:auto;margin:0 auto;font-size:14px;font-family:宋体;}
.look_station0918 table{border:1px solid #e4e4e4; padding-bottom:10px;}
.look_station0918 td{ height:23px; line-height:23px; padding:5px;}
.sta_title{background:#f7f8f8; font-weight:bold; border-bottom:1px solid #e4e4e4;}

</style>
</head>
<body>
	<div class="look_station0918">
	
	<c:choose>
	<c:when test="${empty mail}">
	   系统提示，此条站内信已被删除，请刷新站内信列表重新查询！
	</c:when>
	<c:otherwise>
	<table width="100%" height="auto" border="0" cellspacing="0">
		<tr>
			<td colspan="2" class="sta_title">站内信查看</td>
		</tr>
		<tr>
			<td width="25%" align="right">标题：</td>
			<td width="75%"><c:out value="${mail.title}" /></td>
		</tr>
		<tr>
			<td align="right">发件人：</td>
			<td><c:out value="${mail.addresser}" /></td>
		</tr>
		<c:if test="${mail.recipients != null && mail.recipients != ''}">
		<tr>
			<td align="right">收件人：</td>
			<td><c:out value="${mail.recipients}" /></td>
		</tr>
		</c:if>
		<tr>
			<td align="right">创建时间：</td>
			<td><fmt:formatDate value="${mail.createdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<td align="right" valign="top">正文：</td>
			<td><c:out value="${mail.context}" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input name="" type="button" value="关闭 " onclick="javascript:window.close();"/></td>
		</tr>
	</table>
	
	</c:otherwise>
	</c:choose>
		<!--
		<c:choose>
		<c:when test="${empty mail}">
		   系统提示，此条站内信已被删除，请刷新站内信列表重新查询！
		</c:when>
		<c:otherwise>
		 <span>标&nbsp;&nbsp;&nbsp;&nbsp;题：<c:out value="${mail.title}" /></span>
		 <br>
		 <span>发&nbsp;件&nbsp;人：<c:out value="${mail.addresser}" /></span>
		  <br>
		 <span>创建时间：
		   <fmt:formatDate value="${mail.createdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
		 </span>
		  <br>
		 <span>正&nbsp;&nbsp;&nbsp;&nbsp;文：<c:out value="${mail.context}" /></span>
		</c:otherwise>
		</c:choose>
		 -->
		 
	</div>
</body>
</html>

