<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@page contentType="text/html;charset=UTF-8"%>
	<%@page pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
<title>用户明细</title>
<style>
.user_detail{ width:700px; margin:0 auto;}
.user_detail_title{ background:#e9f2f6; font-weight:bold; font-size:14px;}
.user_detail table{border-collapse:collapse; margin-top:15px;}
.user_detail table td{ height:30px; line-height:30px; padding:0 5px; border:1px solid #e4e4e4;}
.user_detail_left{ background:#f7f8f8;}
</style>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/province.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		 //获得商户注册时的默认省市值  
	    var province = "${account.province}";
	    if(province != '其它') {
	     $.initProvStr("#provinceId", "#cityId", '${account.province}', '${account.city}');  
	    } 
	});
	
</script>
</head>
<body>
	<!--查看用户明细-->
	<div class="user_detail">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="detail_td">
         <tr>
	       <td colspan="4" class="user_detail_title">查看用户明细</td>
	    </tr>
	    <tr>
	       <td align="right" class="user_detail_left">用户名</td>
           <td>${account.passport}</td>
	       <td align="right" class="user_detail_left">电子邮箱</td>
           <td>${account.email}</td>
	    </tr>
	    <tr>
	       <td align="right" class="user_detail_left">姓名或单位名称</td><td>${account.name}</td>
	       <td align="right" class="user_detail_left">联系人</td><td>${account.p_name}</td>
	    </tr>
	     <tr>
	       <td align="right" class="user_detail_left">资源中心用户</td>
	       <td>
	        <c:if test="${account.level=='1'}">否</c:if>
	        <c:if test="${account.level=='2'}">是</c:if>
	       </td>
	       <td align="right" class="user_detail_left">用户类型</td>
	       <td>
	       <c:choose>
	        <c:when test="${account.center_type=='企业'}">
	        企业用户
	        </c:when>
	        <c:otherwise>
	        个人用户
	        </c:otherwise>
	       </c:choose>
	       </td>
	    </tr>
	    <c:choose>
	     <c:when test="${account.province=='其它'}">
	      <tr>
	       <td align="right" class="user_detail_left">国籍</td><td>${account.country}</td>
	       <td align="right" class="user_detail_left">证件类型</td><td>${account.card}</td>
	      </tr>
	     </c:when>
	     <c:otherwise>
	      <tr>
	       <td align="right" class="user_detail_left">国籍</td><td>${account.country}</td>
	       <td align="right" class="user_detail_left">省份</td><td id="provinceId">${account.province}</td>
	    </tr>
	     <tr>
	       <td align="right" class="user_detail_left">城市</td><td id="cityId">${account.city}</td>
	       <td align="right" class="user_detail_left">证件类型</td><td>${account.card}</td>
	    </tr>
	     </c:otherwise>
	    </c:choose>
	     <tr>
	       <td align="right" class="user_detail_left">证件号码</td><td>${account.card_number}</td>
	       <td align="right" class="user_detail_left">详细地址</td><td>${account.address}</td>
	    </tr>
	     <tr>
	       <td align="right" class="user_detail_left">邮政编码</td><td>${account.postcode}</td>
	        <td align="right" class="user_detail_left">电话号码</td><td>${account.phone}</td>
	    </tr>
	     <tr>
	       <td align="right" class="user_detail_left">E-mail</td><td>${account.peremail}</td>
	       <td align="right" class="user_detail_left">手机号码</td><td>${account.mobile}</td>
	    </tr>
	    
	    <tr>
	       <td align="right" class="user_detail_left">传真号码</td><td>${account.fax}</td>
	       <td align="right" class="user_detail_left">在线时长</td><td>${account.long_time}&nbsp;秒</td>
	    </tr>
	    <tr>
	       <td align="right" class="user_detail_left">登录次数</td>
           <td colspan="3">${account.login_number}</td>
	    </tr>
	   
	       <c:choose>
	        <c:when test="${account.center_type=='企业'}">
	        <tr>
		       <td align="right" class="user_detail_left">最后访问时间</td>
		       <td colspan="3">
		      <fmt:formatDate value="${account.last_login_time}" pattern="yyyy-MM-dd HH:mm:ss"/> 
		       </td>
	       </tr>
	        </c:when>
	        <c:otherwise>
	        <tr>
	       <td align="right" class="user_detail_left">最后访问时间</td>
	        <td>
	         <fmt:formatDate value="${account.last_login_time}" pattern="yyyy-MM-dd HH:mm:ss"/> 
	        </td>
	         <td align="right" class="user_detail_left">性别</td><td colspan="3">${account.sex}</td>
	         </tr>
	        </c:otherwise>
	       </c:choose>
          <tr>
	       <td align="right" class="user_detail_left">创建时间</td>
	       <td>
	       <fmt:formatDate value="${account.create_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
	       </td>
	       <td align="right" class="user_detail_left">最后修改时间</td>
	       <td>
	       <fmt:formatDate value="${account.update_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
	       </td>
	      </tr>
		</table>
	</div>
	<div class="clear"></div>
</body>
</html>