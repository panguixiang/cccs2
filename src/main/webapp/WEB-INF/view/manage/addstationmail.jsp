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
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
</head>
<body>
	
			<!--  新闻编辑 -->
			<div class="m_right">
				<h2>您当前的位置：后台管理系统菜单 &gt;&gt; 站内信</h2>
				<div class="m_right_c">
				<form action="manage/info/addstationmail" id="querFormId" method="post" name="querForm">
				<input type="hidden" name="lastrecipient" id="reallyrecipientsid" value="" />
						<div class="m_right_edit">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="edit_table">
								<tr>
									<td class="text_r">标题：</td>
									<td>
									<input type="text" class="r_input_search0712" id="titleId" 
									name ="title" value="<c:out value='${mail.title}' />" maxlength="60"/>
									</td>
									<td>&nbsp;&nbsp;<span id="spanTitle"></span></td>
								</tr>
								<tr>
									<td class="text_r">收件人：</td>
									<td colspan="2">
									<span id="aft1211" style="display:none">
									<input type="text" class="r_input_search0712" id="recipientsid" name ="recipients" 
									value="<c:out value='${mail.recipients}' />" maxlength="150"/>
                                    <input type="button" name="addperson" value="添加多个收件人" id="addrecipient"/>
                                    </span>
                                    </td>
								</tr>
								<tr>
									<td class="text_r">正文：</td>
									<td>
									<textarea rows="10" cols="60" id="contextId" name="context"><c:out value="${mail.context}"></c:out></textarea>
									</td>
									<td>&nbsp;&nbsp;<span id="spanUrl"></span></td>
								</tr>
								
							</table>
		    </div>
						<div class="m_r_button">
							<input type="button" value="确定" id="subId"
							 class="m_button0910" />
						</div>
					</form>
				</div>
			</div>
			<!--  新闻编辑  end -->
			<div class="clear"></div>

</body>
<script language="javascript">
$("#subId").click(function(){
	if($("#titleId").val().length==0) {
		 alert("请输入标题!"); 
		 $("#titleId").focus();
		return;
	}
	else if($("#recipientsid").val().length==0) {
		 alert("请输入收件人!");  
		$("#recipientsid").focus();
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

$("#addrecipient").click(function(){
	window.open ('${pageContext.request.contextPath}/manage/info/allaccount','',
	'height=800,width=600,top=20,left=70,toolbar=no,menubar=no,scrollbars=yes,resizable=no,status=no');

});

$("#recipientsid").change(function(){
	$("#reallyrecipientsid").val($(this).val());
});

$(document).ready(function(){
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	  $("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
</html>

