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
<base href="http://${header['host']}${pageContext.request.contextPath}/" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
</head>
<body>
	<!--  新闻编辑 -->
	<div class="m_right">
		<h2>
			您当前的位置：
			<c:out value="${subject.channelName}" /> &gt;&gt; <c:out value="${subject.subjectName}" />
		</h2>
		<div class="m_right_c">
			<form:form modelAttribute="article" action="${pageContext.request.contextPath}/manage/article/update"
				method="post">
				<div class="m_right_edit">

					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="edit_table">
						<form:hidden path="id" />
						<form:hidden path="channel" />
						<form:hidden path="subject" />
						<tr>
							<td width="10%" class="text_r">类型：</td>
							<td width="90%"><c:out value="${subject.channelName}" />-<c:out
									value="${subject.subjectName}" /></td>
						</tr>
						<tr>
							<td class="text_r">标题：</td>
							<td><form:input path="title" class="r_input_search0712" />
							</td>
						</tr>
						<tr>
							<td class="text_r">来源：</td>
							<td><form:input path="source" class="r_input_search0712" />
							</td>
						</tr>
						 <tr>
							<td class="text_r">发布时间：</td>
							<td><form:input path="pub_date" class="r_input_search0712" onblur="checkPubDate();"/>
							&nbsp;&nbsp;&nbsp;<span id = "dataspan">${dataspan}</span>
							</td>
						</tr>
						<tr>
							<td valign="top" class="text_r">正文：</td>
							<td><div style="width: 670px;"><form:textarea path="content" class="xheditor {width:'100%', height:'500', html5Upload : false,upLinkUrl : 'xheditor/upload',upImgUrl : 'xheditor/upload'}"/></div></td>
						</tr>
					</table>

				</div>
				<div class="m_r_button">
					<input type="submit" value="确定" class="m_button0910" />
				</div>
			</form:form>
		</div>
	</div>
	<!--  新闻编辑  end -->

	<div class="clear"></div>

<!--content end-->


</body>
<script language="javascript">
 function checkPubDate() {
	 var sdate = $("#pub_date").val();
	 if((sdate.replace(/\s/g,'')).length>0) {
     	var reg = /^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-)) (20|21|22|23|[0-1]?\d):[0-5]?\d:[0-5]?\d$/;
        if(!reg.test(sdate)){
          $("#dataspan").css("color","red").text("请输入正确格式的日期,如：2008-10-10 12:12:12");
       } else {
    	   $("#dataspan").css("color","white").text("");
       }
	 } 
 }
</script>
</html>
