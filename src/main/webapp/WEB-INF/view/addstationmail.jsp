<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>站内信-中国动漫作品版权交易平台</title>
<link href="/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
<div class="container_bg">
	<div class="contanier">
	<!--top-->
	<%@ include file="header.jsp"%>
	<!--topend-->
			
	<!--信息内容-->
	<div class="info_content">
		<div class="info_top">
			<img src="/images/navbottom.gif" />
		</div>
		<div class="info_cont0808">
			<div class="info_box">
			
				<div class="i_left">
					<h3><img src="/images/i_left01.gif" /></h3>
					
					<!--登录-->
				<%@ include file="left.jsp"%>
					<!--登录 end-->
				</div>
				<div class="c_right" style="border: none">
					<div class="info_title">
						您当前的位置：<a href="/">首页</a> &gt;&gt; 站内信 &gt;&gt; 发布站内信 
					</div>
				<div class="c_title">站内信</div>
				<div class="c_fenlei">
				<div class="c_f_box">													
					<form action="mycenter/addstationmail" id="querFormId" method="post" name="querForm">
						
			     	<table width="100%" border="0" cellspacing="0" cellpadding="0"class="app_table">
						<tr>
							<td width="10%" class="text_r">标题：</td>
							<td width="90%">
							<input type="text" id="titleId" name="title" class="r_input_search0712" value="<c:out value='${mail.title}' />" maxlength="60"/>
							</td>
						</tr>
						<tr>
							<td valign="top" class="text_r">正文：</td>
							<td>
	                            <div>
	                            <textarea rows="10" cols="60" id="contextId" name="context"><c:out value="${mail.context}"></c:out></textarea>
								</div>
							</td>
						</tr>
						<tr align=center>
							<td colspan="2">
							<input type="button" value="确定" class="m_button0807" id="subId" 
							onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" 
							/>
							&nbsp;&nbsp;&nbsp;
							<input type="button" value="重置" class="m_button0807" id="resetId" 
							onclick="restd('querFormId');" onmouseover="this.className='btn_mouseover'" 
							onmouseout="this.className='btn_mouseout'" /></td>
						</tr>
						<tr>
							<td valign="top" class="text_r"></td>
							<td></td>
						</tr>
					</table>
					</form>
			</div>
						</div>
					</div>
				</div>
			<div>
				<img src="images/cont_button.gif"  style=" margin-top:20px;"/>
			</div>
			</div>
			<!--信息内容 end-->
<!--底部-->
<%@ include file="footer.jsp"%>
<!--底部 end-->
	</div>
</div>
</body>
<script language="javascript">
 $("#subId").click(function(){
	 if($("#titleId").val().length==0) {
		 alert("请输入标题!"); 
		 $("#titleId").focus();
		 return;
	 }
	 else if($("#contextId").val().length==0 || $("#contextId").val().length>1000) {
		 alert("请输入1到1000个字符的正文!"); 
		 $("#contextId").focus();
		 return;
	 } else {
	  $("#subId").attr('disabled', true);
	  $("#querFormId").submit(); 
	 }
 });
</script>
</html>
