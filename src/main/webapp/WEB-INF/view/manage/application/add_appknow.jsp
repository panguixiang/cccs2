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
<base href="http://${header['host']}${pageContext.request.contextPath}/" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
</head>

<body>
	
<!--  新闻编辑 -->
<div class="m_right">
	<h2>您当前的位置：版权服务 &gt;&gt; 新增申请须知
	</h2>
	<div class="m_right_c">
<%-- 	<form action="manage/application/addappknow" method="post" 
	 id="formId" > --%>
	 <form:form modelAttribute="appknow" action="manage/application/addappknow"
			enctype="multipart/form-data" method="post">
			<div class="m_right_edit">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="edit_table">
					<input type ="hidden" name="id" value="${appknow.id}" />
					<tr>
						<td class="text_r" width="10%">标题：</td>
						<td colspan="2">
						<form:select path="orders">
						<form:option value="1">著作权登记申请须知</form:option>
						<form:option value="2">著作权质权登记申请须知</form:option>
						<form:option value="3">资源中心</form:option>
						</form:select>
                        &nbsp;&nbsp;<span id="spanorders"></span>
                        </td>
					</tr>
					<tr>
						<td class="text_r" valign="top">内容：</td>
						<td width="90%" colspan="2"><form:textarea path="content" class="xheditor {width:'100%', height:'500', html5Upload : false,upLinkUrl : 'xheditor/upload',upImgUrl : 'xheditor/upload'}"/></td>
					</tr>
				</table>
  </div>
			<div class="m_r_button">
					<input type="submit" value="确定" class="m_button0910" />
			</div>
	 </form:form>
	</div>
</div>
<!--  新闻编辑  end -->

<div class="clear"></div>



</body>
</html>
