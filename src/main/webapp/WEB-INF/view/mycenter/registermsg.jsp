<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改资料-个人中心-中国动漫版权服务平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
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
				<li class="on">注册信息</li>
				<li><a href="mycenter/interaccount/updatepswd">修改密码</a></li>
				<li><a href="mycenter/interaccount/updateimage">修改头像</a></li>
				<li><a href="mycenter/copyright/${sessionScope.accountSession.id}">版权服务</a></li>
				<li><a href="mycenter/pledge/${sessionScope.accountSession.id}">质权服务</a></li>
				<li><a href="mycenter/interaccount/resource_user">资源中心用户信息</a></li>
				</ul>
				</div>
			<div class="main1box">
			<div class="main" id="main1">
					<div class="bq_cont">
						<div class="reg_h">注册信息&nbsp;&nbsp;&nbsp;${resultmsg}</div>
	<form name="formName" action="mycenter/updateregister" method="post" id="formId">
	<input type="hidden" name="id" value="${account.id}" />
		<table width="100%" border="0" cellspacing="0"
			cellpadding="0" class="pes_table">
		<tr>
			<td width="28%" class="r_left">用户名：</td>
			<td width="30%">
			<input type="hidden" name="passport" value="<c:out value='${account.passport}' />" />
			<input type="text" name="passport2" 
			 value="<c:out value='${account.passport}' />" disabled="disabled" class="r_input" />
			</td>
		</tr>
		<tr>
			<td class="r_left">邮箱：</td>
			<td>
			<input type="text" name="email2" 
			value="<c:out value='${account.email}' />" disabled="disabled" class="r_input" />
				</td>
			</tr>
		<tr>
			<td class="r_left">姓名或单位名称：</td>
			<td>
			<input type="text" name="name" id="nameid"
			value="<c:out value='${account.name}' />"  class="r_input" />
				</td>
		<td width="42%"><div class="r_ts" style="line-height: 18px;">长度为50个字符以内</div></td>
			</tr>
				<tr>
			<td class="r_left">详细地址：</td>
			<td>
			<input type="text" name="address"  id="addressid"
			value="<c:out value='${account.address}' />" class="r_input" />
				</td>
		<td><div class="r_ts" style="line-height: 18px;">长度为100个字符以内</div>
										</td>		
			</tr>
				<tr>
			<td class="r_left">邮政编码：</td>
			<td>
			<input type="text" name="postcode" id="postcodeid"
			value="<c:out value='${account.postcode}' />" class="r_input" />
				</td>
		<td><div class="r_ts" style="line-height: 18px;">长度为8个字符以内</div>
										</td>		
			</tr>
				<tr>
			<td class="r_left">联系人：</td>
			<td>
			<input type="text" name="p_name"  id="p_nameid"
			value="<c:out value='${account.p_name}' />" class="r_input" />
				</td>
		<td><div class="r_ts" style="line-height: 18px;">长度为50个字符以内</div>
										</td>		
			</tr>
				<tr>
			<td class="r_left">电话号码：</td>
			<td>
			<input type="text" name="phone" id="phoneid"
			value="<c:out value='${account.phone}' />"  class="r_input" />
				</td>
	<td><div class="r_ts" style="line-height: 18px;">长度为20个字符以内</div>
										</td>			
			</tr>
				<tr>
			<td class="r_left">E-mail：</td>
			<td>
			<input type="text" name="peremail" id="peremailid"
			value="<c:out value='${account.peremail}' />" class="r_input" />
				</td>
	<td><div class="r_ts" style="line-height: 18px;">长度为100个字符以内</div>
										</td>			
			</tr>
				<tr>
			<td class="r_left">手机号码：</td>
			<td>
			<input type="text" name="mobile" id="mobileid"
			value="<c:out value='${account.mobile}' />" class="r_input" />
				</td>
		<td><div class="r_ts" style="line-height: 18px;">长度为11个字符以内</div>
										</td>		
			</tr>
				<tr>
			<td class="r_left">传真号码：</td>
			<td>
			<input type="text" name="fax" id="faxid"
			value="<c:out value='${account.fax}' />" class="r_input" />
				</td>
	<td><div class="r_ts" style="line-height: 18px;">长度为20个字符以内</div>
										</td>			
			</tr>
			<tr>
				<td class="r_left"></td>
				<td>
				<input class="m_button0807" onmouseover="this.className='btn_mouseover'" 
				onmouseout="this.className='btn_mouseout'" type="button" value="更新" id="subButton"/>
				</td>
		   </tr>
		</table>
		</form>
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
 $("#subButton").click(function(){
	 var isNumber = /^[-\+]?\d+(\.\d+)?$/;
		var isEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)/;
		var isPhone = /(0[0-9]{2,3}-)?([2-9][0-9]{6,7})+(-[0-9]{1,4})?$/;
		var isMobile =  /^1[3|4|5|8][0-9]\d{4,8}$/;
	     if($("#postcodeid").val().length>0 && !isNumber.test($("#postcodeid").val())) {
	    	 $("#postcodeid").focus();
	    	 return;
	     }
	     if($("#phoneid").val().length>0 && !isPhone.test($("#phoneid").val())) {
	    	 $("#phoneid").focus();
	    	 return;
	     }
	     if($("#peremailid").val().length>0 && !isEmail.test($("#peremailid").val())) {
	    	 $("#peremailid").focus();
	    	 return;
	     }
	     if($("#mobileid").val().length>0 && !isMobile.test($("#mobileid").val())) {
	    	 $("#mobileid").focus();
	    	 return;
	     }
	     if($("#faxid").val().length>0 && !isPhone.test($("#faxid").val())) {
	    	 $("#faxid").focus();
	    	 return;
	     }
	     $("#formId").submit();
		//document.forms[0].submit();
 });
</script>
</html>
