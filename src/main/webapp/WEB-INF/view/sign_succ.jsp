<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册-中国动漫作品版权交易平台</title>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
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
    $("body").append("<input type='hidden' id='init_value' value="+15+">");
    time = setInterval("auto_jump()",1000);
  });
  
  function autojump2() {
              window.location.href = "${pageContext.request.contextPath}/";
  }
</script>
</head>

<body>

<div class="container_bg">
		<div class="contanier">

			<%@ include file="header.jsp"%>

			<!--注册内容-->
			<div class="reg_content">
				<div class="reg_top">
					<img src="${pageContext.request.contextPath}/images/navbottom.gif" />
				</div>

<div class="info_cont0808">
<div class="info_content0917" style="margin-top:15px;margin-bottom:15px;">
    	<table width="500" border="0" cellspacing="0">
              <tr>
                <td colspan="2" align="center"><img src="${pageContext.request.contextPath}/images/reg_ok02.gif" width="246" height="67" /></td>
              </tr>
              <tr>
                <td align="center" colspan="2"><div id="showDiv"></div></td>
              </tr>
              <tr>
                <td align="right">系统自动生成的ID：</td>
                <td>${sessionScope.accountSession.id}</td>
              </tr>
              <tr>
                <td align="right">用户名：</td>
                <td>${sessionScope.accountSession.passport}</td>
              </tr>
              <tr>
                <td align="right">找回邮箱：</td>
                <td>${sessionScope.accountSession.email}</td>
              </tr>
        </table>
</div>
	<!--注册成功 end-->
				<div>
					<img src="${pageContext.request.contextPath}/images/cont_button.gif" />
				</div>
				</div>
			</div>
			
			<!--注册内容 end-->
			<!--底部-->
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
		
	</div>
</body>
</html>
