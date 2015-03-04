<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>修改密码-中国动漫作品版权交易平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>

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
				<div style=" width:410px; margin:0 auto; padding:30px 0;">
					<h3>
						<img src="${pageContext.request.contextPath}/images/sure_ecurity0824.gif" />
					</h3>
		<!--主要内容-->
						<div class="lgon_c0823" style="height:auto;">
						
								<div class="login_b_c" style="border: none; display: ">
									<table width="100%" border="0" cellspacing="0" cellpadding="0" style=" margin-top:10px;">
									<form action="${pageContext.request.contextPath}/account/updatepaswd" 
									id="formId" method="post">
										<input type="hidden" name="id" value="${account.id}" />
										<tr>
											<td width="30%" style="text-align: right">请输入新的密码：</td>
											<td width="43%"><input type="password" name="newpassport"
												id="newpassportid" class="l_b_input" onblur="chkpwd(this)" maxlength="20"/>
											</td>
											<td width="27%" style="height:20px; line-height:20px;"><div id="chkResult"></div></td>
										</tr>
										<tr>
										  <td style="text-align: right">&nbsp;</td>
										  <td colspan="2" style="font-size:12px; color:#999; height:17px;">
										  可使用字母加数字或符号的组合,长度为4-20个字符</td>
								      </tr>
										<tr>
											<td style="text-align: right">确认密码：</td>
											<td colspan="2"><input type="password" name="restartpasswd" id="restartpasswdid"
												class="l_b_input" onblur="changepaswd();" maxlength="20"/>
											</td>
										</tr>
										<tr>
										  <td style="text-align: right"></td>
										  <td colspan="2" style="font-size:12px;"><span id="paswdmsg"></span></td>
								      </tr>
						<tr>
							<td>&nbsp;</td>
							<td colspan="2">
								<div style="padding-top: 5px;">
									<input value="" type="button"
										class="login_button0822" onclick="login();" />
								</div>
							</td>
						</tr>
										</form>
									</table>
								</div>
						</div>
			
		<!--主要内容 end-->
	</div>
				<div>
					<img src="/images/cont_button.gif" />
				</div>
			</div>
			<!--信息内容 end-->
			<!--底部-->
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div></div></div>
	</div>
			<!--主要内容 end-->
 <script language="javascript">
	document.onkeydown = function()
	{
	         if(event.keyCode==116) {
	         event.keyCode=0;
	         event.returnValue = false;
	         }
	}
	document.oncontextmenu = function() {event.returnValue = false;}
	
      function login() {
    	  var newpass = $("#newpassportid").val();
    	  var restartpass = $("#restartpasswdid").val();
    	  if(newpass.length==0) {
      		   $("#chkResult").css("color","red").text("请输入新密码!");
      		   return;
      	   } else{
      		  $("#chkResult").text("");
      	   }
      	   if(restartpass.length==0) {
      		  $("#paswdmsg").css("color","red").text("请输入确认密码!");
      		  return;
      	   } else {
      		  $("#paswdmsg").text("");
      	   }
      	  if(restartpass.length>0 && (newpass != restartpass)) {
   		     $("#paswdmsg").css("color","red").text("两次密码输入不一致!");
   		      return;
   	       } else {
      		  $("#paswdmsg").text("");
      	   }
        $("#formId").submit();
       }
      
      function changepaswd() {
    	  var newpass = $("#newpassportid").val();
    	  var restartpass = $("#restartpasswdid").val();
    	  if(restartpass.length>0 && (newpass != restartpass)) {
    		  $("#paswdmsg").css("color","red").text("两次密码输入不一致!");
    	  } else {
    		  $("#paswdmsg").text("");
    	  }
      }
      
      
      function chkpwd(obj){
       var t=obj.value;
       var id=getResult(t);
       $("#chkResult").empty();
       if(id==0) {
          $("#chkResult").
          html("弱:<img src='${pageContext.request.contextPath}/images/password_img01.gif'/>");
       }
       else if(id==1){
        $("#chkResult").
        html("中:<img src='${pageContext.request.contextPath}/images/password_img02.gif'/>");
       }
       else if(id==2){
        $("#chkResult").
        html("中:<img src='${pageContext.request.contextPath}/images/password_img02.gif'/>");
       }
       else if(id==3){
        $("#chkResult").
        html("强:<img src='${pageContext.request.contextPath}/images/password_img03.gif'/>");
       }
      }
      
      //定义检测函数,返回0/1/2/3分别代表无效/差/一般/强
      function getResult(s){
       if(s.length < 6){
        return 0;
       }
       var ls = 0;
       if (s.match(/[a-z]/ig)){
        ls++;
       }
       if (s.match(/[0-9]/ig)){
        ls++;
       }
        if (s.match(/(.[^a-z0-9])/ig)){
        ls++;
       }
       if (s.length < 6 && ls > 0){
        ls--;
       }
       return ls
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
<title>修改密码-中国动漫作品版权交易平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
</head>
<body style="margin-top:100px;">
			<!--主要内容-->
					<div class="login">
						<h3>
							<img src="${pageContext.request.contextPath}/images/index_logint.gif" />
						</h3>
						<div class="lgon_c">
						
								<div class="login_b_c" style="border: none; display: ">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<form action="${pageContext.request.contextPath}/account/updatepaswd" 
									id="formId" method="post">
										<input type="hidden" name="id" value="${account.id}" />
										<tr>
											<td width="29%" style="text-align: right">请输入新的密码：</td>
											<td width="71%"><input type="password" name="newpassport"
												id="newpassportid" class="l_b_input" onblur="chkpwd(this)"/>
												&nbsp;&nbsp;<div id="chkResult"></div>
											</td>
										</tr>
										<tr>
											<td style="text-align: right">确认密码：</td>
											<td><input type="password" name="restartpasswd" id="restartpasswdid"
												class="l_b_input" onblur="changepaswd();"/>
												&nbsp;&nbsp;<span id="paswdmsg"></span>
											</td>
										</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								<div style="padding-top: 5px;">
									<input value="" type="button" title="提交"
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
    	  var newpass = $("#newpassportid").val();
    	  var restartpass = $("#restartpasswdid").val();
    	  if(newpass.length==0) {
      		   $("#chkResult").css("color","red").text("请输入用户名!");
      		   return;
      	   } else{
      		  $("#chkResult").text("");
      	   }
      	   if(restartpass.length==0) {
      		  $("#paswdmsg").css("color","red").text("请输入邮箱!");
      		  return;
      	   } else {
      		  $("#paswdmsg").text("");
      	   }
      	  if(restartpass.length>0 && (newpass != restartpass)) {
   		     $("#paswdmsg").css("color","red").text("两次密码输入不一致!");
   		      return;
   	       } else {
      		  $("#paswdmsg").text("");
      	   }
        $("#formId").submit();
       }
      
      function changepaswd() {
    	  var newpass = $("#newpassportid").val();
    	  var restartpass = $("#restartpasswdid").val();
    	  if(restartpass.length>0 && (newpass != restartpass)) {
    		  $("#paswdmsg").css("color","red").text("两次密码输入不一致!");
    	  } else {
    		  $("#paswdmsg").text("");
    	  }
      }
      
      
      function chkpwd(obj){
       var t=obj.value;
       var id=getResult(t);
       $("#chkResult").empty();
       if(id==0) {
          $("#chkResult").html("弱:<img src=''/>");
       }
       else if(id==1){
        $("#chkResult").html("中:<img src=''/>");
       }
       else if(id==2){
        $("#chkResult").html("中:<img src=''/>");
       }
       else if(id==3){
        $("#chkResult").html("强:<img src=''/>");
       }
      }
      
      //定义检测函数,返回0/1/2/3分别代表无效/差/一般/强
      function getResult(s){
       if(s.length < 6){
        return 0;
       }
       var ls = 0;
       if (s.match(/[a-z]/ig)){
        ls++;
       }
       if (s.match(/[0-9]/ig)){
        ls++;
       }
        if (s.match(/(.[^a-z0-9])/ig)){
        ls++;
       }
       if (s.length < 6 && ls > 0){
        ls--;
       }
       return ls
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