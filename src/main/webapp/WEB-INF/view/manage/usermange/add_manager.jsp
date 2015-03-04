<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@page contentType="text/html;charset=UTF-8"%>
	<%@page pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
	<title>信息公示-中国动漫版权服务平台</title>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
media="screen" />
<script type="text/javascript" src="js/common.js"></script>

</head>
<body>
	<!--新闻列表-->
	<div class="m_right">
		<h2>您当前的位置：权限管理 &gt;&gt;管理员查询 &gt;&gt;
		<c:choose>
		<c:when test="${empty manage}">
		新增管理员
		</h2>
		<div class="c_right_bqinfo m_right_c">
		<form action="manage/info/addmanage/add" id="querFormId" method="post" name="querForm">
		</c:when>
		<c:otherwise>
		修改管理员
		</h2>
		<div class="c_right_bqinfo m_right_c">
		<form action="manage/info/addmanage/update" id="querFormId" method="post" name="querForm">
		</c:otherwise>
		</c:choose>
			<div class="bq_box">
				<div>
					<input type="hidden" name="id" value="${manage.id}" />
					<input type="hidden" name="oldname" value="${manage.username}" />
						<table cellspacing="0" cellpadding="0" width="100%"
						class="app_table">
							<tr>
								<td colspan="4"><div class="search_">
								<c:choose>
								<c:when test="${empty manage}">新增管理员</c:when>
								<c:otherwise>修改管理员</c:otherwise>
								</c:choose>
								</div>
								</td>
							</tr>
							<tr>
							<td width="18%" align="right">
								登录名称
							</td>
							<td colspan="3">
								<input type="text" id="usernameid" name="username" value="<c:out value='${manage.username}' />" 
								class="r_input_search0712" maxlength="100"/>
							</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="3"><span id="namemsg">${errpnamemsg}</span></td>
							</tr>
							<c:if test="${manage.id == null}">
							<tr>
							<td width="18%" align="right">
								登录密码
							</td>
							<td colspan="3">
								<input type="password" id="passwdid" name="passwd" value=""
								class="r_input_search0712" maxlength="100"/>								
							</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="3"><span id="paswmsg">${errpswdmsg}</span></td>
							</tr>
							<tr>
							<td width="18%" align="right">
								确认密码
							</td>
							<td colspan="3">
								<input type="password" id="repetPaswdid" name="repetPaswd" value="" 
								class="r_input_search0712" maxlength="100"/><br>
								<span id="repaswmsg">${errpswdmsg}</span>
							</td>
							</tr>
							</c:if>
							
							<c:if test="${manage.level != '1'}">
					<tr>
						<td algin="left" colspan="4">
						<div class="s_list_2">角色列表</div></td>
					</tr>
					
					<tr>
						<td algin="left" style="text-indent:10px;" colspan="4">
						  <c:forEach items="${rolelist}" var="role">
						    <input type="radio" name="roleid" value="${role.id}" <c:if test="${manage.roleid==role.id}">CHECKED</c:if>>${role.name}</input>
						  </c:forEach>
					  	</td>
					</tr>
					   </c:if>
					<tr>
						<td align="center" colspan="4">
						<c:choose>
						<c:when test="${empty manage}">
						 <input type="button" value="确定" class="m_button0910" id="subId"/>
						</c:when>
						<c:otherwise>
						 <input type="button" value="确定" class="m_button0910" id="subupdateId"/>
						</c:otherwise>
						</c:choose>
						</td>
					</tr>
					
						</table>
				</div>
				<!--
				<div class="s_list0920">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<c:if test="${manage.level != '1'}">
					<tr>
						<td algin="left" style="font-weight:bold; font-size:14px;">角色列表</td>
					</tr>
					
					<tr>
						<td algin="left">
						  <c:forEach items="${rolelist}" var="role">
						    <input type="radio" name="roleid" value="${role.id}" <c:if test="${manage.roleid==role.id}">CHECKED</c:if>>${role.name}</input>
						  </c:forEach>
					  	</td>
					</tr>
					   </c:if>
					<tr>
						<td align="center">
						<c:choose>
						<c:when test="${empty manage}">
						 <input type="button" value="确定" class="m_button0910" id="subId"/>
						</c:when>
						<c:otherwise>
						 <input type="button" value="确定" class="m_button0910" id="subupdateId"/>
						</c:otherwise>
						</c:choose>
						</td>
					</tr>
					</table>
				</div>
				  -->
               
		</div>
</form>
	</div>
	<div class="clear"></div>
</body>
<script language="javascript">
//新增
	 $("#subId").click(function(){
		 if($("#usernameid").val().length==0) {
			  $("#namemsg").css("color","red").text("请输入登录名!");  
			  $("usernameid").focus();
			  return; 
		  }
		  if($("#passwdid").val().length==0) {
			  $("#paswmsg").css("color","red").text("请输入登录密码!"); 
			  $("passwdid").focus();
			  return; 
		  }
		  if($("#repetPaswdid").val().length==0) {
			  $("#repaswmsg").css("color","red").text("请输入确认密码!"); 
			  $("repetPaswdid").focus();
			  return; 
		  }
		  if($("#passwdid").val() != $("#repetPaswdid").val()) {
			  $("#repaswmsg").css("color","red").text("登录密码与确认密码请保持一致!");
			  $("repetPaswdid").focus();
			  return;
		  }
		  $("#subId").css("disabled","true");
		  $("#querFormId").submit();
	  });
	 //修改
	 $("#subupdateId").click(function(){
		 if($("#usernameid").val().length==0) {
			  $("#namemsg").css("color","red").text("请输入登录名!");  
			  $("usernameid").focus();
			  return; 
		  }
		  $("#subupdateId").css("disabled","true");
		  $("#querFormId").submit();
	  });
</script>
</html>