<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>首页-中国动漫作品版权交易平台找回密码</title>
<META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body{}
#wrapper_sh{ width:500px; height:150px; margin:0px auto; margin-top:20px; background:#f9f9f9; border:1px solid #eaeaea;}
.wrapper_delay table tr td{ color:#333333;color:#0066ff; font-size:12px; line-height:20px; padding:0 6px;}
 
.wrapper_delay table tr td span{ color:#333; font-size:14px; font-weight:bold;}
 
.wrapper_delay table tr td a:link{ color:#7092be; text-decoration:underline;}
 
.wrapper_delay table tr td a:hover{ color:#9f111; text-decoration:underline;}
.wrapper_delay table tr td a:visited{ text-decoration:underline;}
</style>
<script  src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script language="javascript">
//跳转到整个页面
 /* window.frameElement && window.parent.location.replace("${pageContext.request.contextPath}/error.jsp"); */
 
function auto_jump(){
   secs = $("#init_value").val()-1;
    $("#init_value").val(secs);
    if(secs == 0){
     clearInterval(time);
          window.location.href = "${pageContext.request.contextPath}/";
     } else {
      $("#showDiv").
      html("<a href='javascript:autojump2();'><span style='color: #000000;font-weight: bold;'>"
      +secs+"&nbsp;</span>秒后自动返回登录页</a>");
    }
  }
 $(function(){
    $("body").append("<input type='hidden' id='init_value' value="+5+">");
    time = setInterval("auto_jump()",1000);
  });
  
  function autojump2() {
              window.location.href = "${pageContext.request.contextPath}/";
  }
</script>
</head>
<body>
			<!--主要内容-->
				<div class="container_bg">
		<div class="contanier">
			<!--top-->
			<%@ include file="header.jsp"%>
			<!--navend-->
			<!--信息内容-->
	  <div class="info_content">
     			 <div class="info_top">
					<img src="${pageContext.request.contextPath}/images/navbottom.gif" />
				</div>
				<div class="info_cont0808">
				<div class="login0823">
		<div class="lgon_c0823">
		<table width="500" height="100px" border="0" cellspacing="0">
  <tr>
    <td width="369" align="center" style="padding-top:20px; line-height:24px;">
    <img src="${pageContext.request.contextPath}/images/succ_icon0823.gif" width="24" height="24"><span style=" margin-left:10px; font-weight:bold; font-size:14px;">您的密码已重置,请牢记!</span></td>
  </tr>
  <tr>
    <td height="35" align="center" style="margin-bottom:20px;">
	<div id="showDiv"></div>
      </td>
  </tr>
</table>
	</div>
				<div>
					<img src="/images/cont_button.gif" />
				</div>
			</div></div>
			<!--信息内容 end-->
			<!--底部-->
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
	</div></div>
</body>
</html>




<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<head>
<META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<style type="text/css">
body{background:#fff;}
#wrapper_sh{ width:500px; margin:0px auto; margin-top:20px;}
.wrapper_delay table tr td{ color:#333333;color:#0066ff; font-size:12px; line-height:20px; padding:0 6px;}
 
.wrapper_delay table tr td span{ color:#333; font-size:14px; font-weight:bold;}
 
.wrapper_delay table tr td a:link{ color:#7092be; text-decoration:underline;}
 
.wrapper_delay table tr td a:hover{ color:#9f111; text-decoration:underline;}
.wrapper_delay table tr td a:visited{ text-decoration:underline;}
</style>
<script  src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script language="javascript">
//跳转到整个页面
 /* window.frameElement && window.parent.location.replace("${pageContext.request.contextPath}/error.jsp"); */
 
function auto_jump(){
   secs = $("#init_value").val()-1;
    $("#init_value").val(secs);
    if(secs == 0){
     clearInterval(time);
          window.location.href = "${pageContext.request.contextPath}/";
     } else {
      $("#showDiv").
      html("<a href='javascript:autojump2();'><span style='color: #000000;font-weight: bold;'>"
      +secs+"&nbsp;</span>秒后自动返回登录页</a>");
    }
  }
 $(function(){
    $("body").append("<input type='hidden' id='init_value' value="+5+">");
    time = setInterval("auto_jump()",1000);
  });
  
  function autojump2() {
              window.location.href = "${pageContext.request.contextPath}/";
  }
</script>
</head>
<body>
<div id="wrapper_sh">
<div class="wrapper_delay">
<form name=loading>
<FONT>
	<table width="500" border="0" cellspacing="0">
  <tr>
 
    <td width="127" rowspan="11" align="right">
    <img src="${pageContext.request.contextPath}/images/delay_icon.jpg" width="116" height="86"></td>
    <td width="369"><span>您的密码已重置,请牢记!</span></td>
  </tr>
  <tr>
    <td height="15" style=" border-bottom:1px solid #eee;"></td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
  <tr>
    <td height="25">
	<div id="showDiv"></div>
      </td>
  </tr>
</table></form>
</div>
</div>
</body>
</html> --%>