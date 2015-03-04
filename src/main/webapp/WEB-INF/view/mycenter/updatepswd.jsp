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
						<li><a href="mycenter/interaccount/account">登录概况</a></li>
						<li><a href="mycenter/interaccount/registermsg">注册信息</a></li>
						<li class="on">修改密码</li>
						<li><a href="mycenter/interaccount/updateimage">修改头像</a></li>
						<li><a href="mycenter/copyright/${sessionScope.accountSession.id}">版权服务</a></li>
						<li><a href="mycenter/pledge/${sessionScope.accountSession.id}">质权服务</a></li>
						<li><a href="mycenter/interaccount/resource_user">资源中心用户信息</a></li>
					</ul>
				</div>
			<div class="main1box">
			<div class="main" id="main1">
			<c:if test="${result}">
				<div class="pes_ok">
					<img src="images/r_right.gif" />修改成功
				</div>
			</c:if>
					<div class="bq_cont">
						<div class="reg_h">修改密码</div>
							<table width="100%" border="0" cellspacing="0" cellpadding="0"  class="pes_table">
							<form action="mycenter/passwd" id="formId" method="post">
								<tr>
									<td width="15%" class="r_left">新密码：</td>
									<td width="20%"><input type="password"
										name="passwd" id="passwd" class="r_input" maxlength="20" onblur="chkpwd(this)"/>
									</td>
									<td>
										<div class="r_ts">可使用字母加数字或符号的<br>组合,长度为4-20个字符
											<span style="color:#F00">${message}</span>
										</div>
									</td>
									<td><div id="chkResult"></div></td>
								</tr>
								<tr>
									<td class="r_left">确认新密码：</td>
									<td><input type="password" name="re_passwd"
										id="re_passwd" class="r_input" maxlength="20"/></td>
									<td>
										<div class="r_ts">请再次输入您设置的密码</div>
									</td>
									<td>&nbsp;&nbsp;<span style="color:#F00">${remessage}</span></td>	
								</tr>
								<tr>
									<td align="right"></td>
									<td style="padding-top: 15px;">
									<input type="button" value="确定" class="m_button0807"  
									onmouseover="this.className='btn_mouseover'" 
									onmouseout="this.className='btn_mouseout'" id="buttonid"/></td>
								</tr>
								</form>
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
<script language="javascript">
function chkpwd(obj){
    var t=obj.value;
    var id=getResult(t);
    $("#chkResult").empty();
    if(id==0) {
       $("#chkResult").
       html("弱:<img src='images/password_img01.gif'/>");
    }
    else if(id==1){
     $("#chkResult").
     html("中:<img src='images/password_img02.gif'/>");
    }
    else if(id==2){
     $("#chkResult").
     html("中:<img src='images/password_img02.gif'/>");
    }
    else if(id==3){
     $("#chkResult").
     html("强:<img src='images/password_img03.gif'/>");
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
   
   $("#buttonid").click(function(){
	  if($("#passwd").val().length==0) {
		  $("#passwd").focus();
		  return;
	  }
	  if($("#re_passwd").val().length==0) {
		  $("#re_passwd").focus();
		  return;
	  }
	  if($("#re_passwd").val() != $("#passwd").val()) {
		  $("#re_passwd").focus();
		  return; 
	  }
	  $("#formId").submit();
   });
</script>
</html>
