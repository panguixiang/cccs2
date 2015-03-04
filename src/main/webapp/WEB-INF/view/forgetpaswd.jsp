<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>首页-中国动漫作品版权交易平台找回密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
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
					<h3>
						<img src="${pageContext.request.contextPath}/images/sure_ecurity.gif" />
					</h3>
		     <div class="lgon_c0823">
								<div class="login_b_c" style="border: none; display: ">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<form action="${pageContext.request.contextPath}/account/forgetpaswd" id="formId" method="post">
										<tr>
											<td colspan="2">
											</td>
										</tr>
										<tr>
											<td width="29%" style="text-align: right">用户名：</td>
											<td width="71%"><input type="text" name="username"
												id="nameid" class="l_b_input" value="<c:out value='${username}' />" />
											</td>
										</tr>
										<tr>
										  <td style="text-align: right;"></td>
										  <td width="71%"><span id="namemsg">${namemsg}</span></td>
								      </tr>
										<tr>
											<td style="text-align: right">邮&nbsp;&nbsp;箱：</td>
											<td><input type="text" name="useremail" id="emailid"
												class="l_b_input" value="<c:out value='${useremail}' />" />
											</td>
										</tr>
										<tr>
										  <td style="text-align: right;"></td>
										  <td><span id="emailmsg">${emailmsg}</span></td>
								      </tr>
										<tr>
											<td style="text-align: right">验证码：</td>
											<td><input type="text" name="captcha" id="captcha"
												class="l_b_input02" /> 
								  <img src="${pageContext.request.contextPath}/account/captcha-image" width="80" height="24" 
                            id="imagedid" onclick="getValidateServlets();" onmouseover="changCurso();" />
										    </td>
										</tr>
										<tr>
										  <td style="text-align: right;"></td>
										  <td><span id="codemsg">${codemsg}</span></td>
								      </tr>
										<tr>
											<td>&nbsp;</td>
											<td>
												<div style="padding-top: 5px;">
													<input value="" type="button"
														class="login_button0822" onclick="login();" />
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="2" align="center" style="font-size:12px; padding-bottom:5px;color:#999;">如果您无法从邮箱找回密码，请联系网站管理员。</td>
										</tr>
										</form>
									</table>
</div>
								</div>
						<!--主要内容 end-->
						</div>
						<!--主要内容 end-->
				<div>
					<img src="${pageContext.request.contextPath}/images/cont_button.gif" />
				</div>
			</div>
			<!--信息内容 end-->
			<!--底部-->
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
	</div></div>
	<script language="javascript">
      function login() {
   	   if($("#nameid").val().length==0) {
   		   $("#namemsg").css("color","red").text("请输入用户名!");
   		   return;
   	   } else{
   		  $("#namemsg").text("");
   	   }
   	   if($("#emailid").val().length==0) {
   		  $("#emailmsg").css("color","red").text("请输入邮箱!");
   		  return;
   	   } else {
   		  $("#paswdmsg").text("");
   	   }
   	   if($("#captcha").val().length==0) {
   		  $("#codemsg").css("color","red").text("请输入验证码!");
   		  return;
   	   } else {
   		  $("#codemsg").text("");
   	   }
        $("#formId").submit();
    }
      
      function getValidateServlets()
 	 {
 	     document.getElementById("imagedid").src="${pageContext.request.contextPath}/account/captcha-image?"+Math.random();
 	 }
 	 function changCurso()
 	 {
 	    document.getElementById("imagedid").style.cursor = "pointer";
 	 }
 	 
 	 $(document).keydown(function(event) {
			if (event.keyCode == 13) {
				login();
			}
		});
     </script>
</body>
</html>




<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>首页-中国动漫作品版权交易平台找回密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
</head>
<body style="margin-top:100px;">
			<!--主要内容-->
					<div class="login">
						<div class="lgon_c">
					
								<div class="login_b_c" style="border: none; display: ">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<form action="${pageContext.request.contextPath}/account/forgetpaswd" id="formId" method="post">
										<tr>
											<td colspan="2">
											</td>
										</tr>
										<tr>
											<td colspan="2"><div class="login_font">找回密码</div>
											</td>
										</tr>
										<tr>
											<td width="29%" style="text-align: right">用户名：</td>
											<td width="71%"><input type="text" name="username"
												id="nameid" class="l_b_input" value="<c:out value='${username}' />" />
												<br><span id="namemsg"></span>
											</td>
										</tr>
										<tr>
											<td style="text-align: right">邮&nbsp;&nbsp;箱：</td>
											<td><input type="text" name="useremail" id="emailid"
												class="l_b_input" value="<c:out value='${useremail}' />" />
												<br><span id="emailmsg"></span>
											</td>
										</tr>
										<tr>
											<td style="text-align: right">验证码：</td>
											<td><input type="text" name="captcha" id="captcha"
												class="l_b_input02" /> 
								  <img src="${pageContext.request.contextPath}/account/captcha-image" width="80" height="24" 
                            id="imagedid" onclick="getValidateServlets();" onmouseover="changCurso();" />
												<br><span id="codemsg"></span></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>
												<div style="padding-top: 5px;">
													<input value="" type="button" title="登录"
														class="login_button" onclick="login();" />
												</div>
											</td>
										</tr>
										</form>
									</table>
								</div>
						</div>
			<!--主要内容 end-->
	</div>
	<script language="javascript">
      function login() {
   	   if($("#nameid").val().length==0) {
   		   $("#namemsg").css("color","red").text("请输入用户名!");
   		   return;
   	   } else{
   		  $("#namemsg").text("");
   	   }
   	   if($("#emailid").val().length==0) {
   		  $("#emailmsg").css("color","red").text("请输入邮箱!");
   		  return;
   	   } else {
   		  $("#paswdmsg").text("");
   	   }
   	   if($("#captcha").val().length==0) {
   		  $("#codemsg").css("color","red").text("请输入验证码!");
   		  return;
   	   } else {
   		  $("#codemsg").text("");
   	   }
        $("#formId").submit();
    }
      
      function getValidateServlets()
 	 {
 	     document.getElementById("imagedid").src="${pageContext.request.contextPath}/account/captcha-image?"+Math.random();
 	 }
 	 function changCurso()
 	 {
 	    document.getElementById("imagedid").style.cursor = "pointer";
 	 }
 	 
 	 $(document).keydown(function(event) {
			if (event.keyCode == 13) {
				login();
			}
		});
     </script>
</body>
</html>
 --%>