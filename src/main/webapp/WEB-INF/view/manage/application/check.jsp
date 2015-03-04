<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta http-equiv="pragma" content="no-cache"/>
<meta http-equiv="cache-control" content="no-cache"/>
<meta http-equiv="expires" content="0"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国动漫版权服务平台管理后台</title>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/xheditor-1.1.8-zh-cn.min.js"></script>
</head>
<body>
<div class="m_right0912">
<!--content-->
<!--  正文 -->
<div class="m_right">
	<div class="m_right_c">
		<DIV class="m_news_list0720">
			<TABLE border="0" cellSpacing="0" cellPadding="0" width="99%">
				<TBODY>
					<TD colspan="2" align="left" style="background-color: #f7f8f8;"><div class="search_">表单审核</div></TD>
					</TR><tr>
					  <TD align="right" style="background-color: #f7f8f8;">填报时间：</TD>
					  <TD width="77%"><fmt:formatDate
							value="${application.create_time}"
							pattern="yyyy-MM-dd HH:mm:ss" /></TD>
	          </TR>
					<TR>
						<TD width="23%" align="right"
							style="background-color: #f7f8f8;">流水号：</TD>
						<TD>${application.flow_num}</TD>
					</TR>
					<TR>
						<TD width="23%" align="right"
							style="background-color: #f7f8f8;">名称：</TD>
						<TD>${application.app_name}</TD>
					</TR>
					<tr>
						<td colspan="2" class="list_line"></td>
					</tr>
				</TBODY>
			</TABLE>

			<TABLE border="0" cellSpacing="0" cellPadding="0" width="99%">
<TBODY>
					<TD align="right" style="background-color: #f7f8f8;">审核员：</TD>
					<TD width="77%">${sessionScope.CCCS_MANAGER_NAME}</TD>
					</TR>
					<form action="manage/application/check" id="querFormId" method="POST" name="querForm">
						<input type="hidden" name="check_person" value="${sessionScope.CCCS_MANAGER_NAME}" /> 
						<input type="hidden" name="flow_num" value="${application.flow_num}" />

					<TR>
						<TD width="23%" align="right"
							style="background-color: #f7f8f8;">处理结果：</TD>
						<TD><select name="state">
								<option value="1">申请表未完成</option>
								<option value="2">申请表已提交</option>
								<option value="3">申请表未通过</option>
								<option value="4">递交材料中</option>
								<option value="5">初审中</option>
								<option value="6">初审未通过</option>
								<option value="7">缴费中</option>
								<option value="8">复审中</option>
								<option value="9">复审未通过</option>
								<option value="10">终审中</option>
								<option value="11">终审未通过</option>
								<option value="12">证书已发放</option>
						</select></TD>
					</TR>
					<TR>
						<TD width="23%" align="right"
							style="background-color: #f7f8f8;">处理意见：</TD>
						<TD><textarea id="commentid" name="comment" cols="45"
								rows="5"></textarea></TD>
					</TR>
					<TR>
						<TD width="23%"></TD>
						<td colspan="3">
				<input type="button" value="提交" class="m_button0910" id="subId" 
				onclick="subForm();"/>
				&nbsp;<input type="reset" value="重置" class="m_button0910" id="resetId" onclick="javascript:document.querForm.reset();"/>
						</td>
					</TR>
					</form>
					<tr>
						<td colspan="2" class="list_line"></td>
					</tr>
				</TBODY>
			</TABLE>

			<c:forEach items="${commet_list}" var="commet">
				<TABLE border="0" cellSpacing="0" cellPadding="0" width="99%">
					<TBODY>
						<TD align="right" style="background-color: #f7f8f8;">审核员：</TD>
						<TD width="77%">${commet.check_person}</TD>
						</TR>
						<TR>
							<TD width="23%" align="right"
								style="background-color: #f7f8f8;">处理时间：</TD>
							<TD>
							<fmt:formatDate value="${commet.update_time}"
								pattern="yyyy-MM-dd HH:mm:ss" /></TD>
						</TR>
						<TR>
							<TD width="23%" align="right"
								style="background-color: #f7f8f8;">处理结果：</TD>
							<TD>
							    <c:if test='${commet.state==1}'>申请表未完成</c:if>
								<c:if test='${commet.state==2}'>申请表已提交</c:if>
								<c:if test='${commet.state==3}'>申请表未通过</c:if>
								<c:if test='${commet.state==4}'>递交材料中</c:if>
								<c:if test='${commet.state==5}'>初审中</c:if>
								<c:if test='${commet.state==6}'>初审未通过</c:if>
								<c:if test='${commet.state==7}'>缴费中</c:if>
								<c:if test='${commet.state==8}'>复审中</c:if>
								<c:if test='${commet.state==9}'>复审未通过</c:if>
								<c:if test='${commet.state==10}'>终审中</c:if>
								<c:if test='${commet.state==11}'>终审未通过</c:if>
								<c:if test='${commet.state==12}'>证书已发放</c:if>
							</TD>
						</TR>
						<TR>
							<TD width="23%" align="right"
								style="background-color: #f7f8f8;">处理意见：</TD>
							<TD>${commet.comment}</TD>
						</TR>
						<tr>
							<td colspan="2"></td>
						</tr>
					</TBODY>
				</TABLE>
			</c:forEach>
		</DIV>
	</div>
</div>
<!--  正文  end -->
<div class="clear"></div>
</div>
</body>
<script language="javascript">
function subForm(url) {
	//提交表单
	if($("#commentid").val().length>255) {
		alert("请最多输入255个字符!");
		$("#commentid").focus();
		return;
	} {
	 $("#subId").attr('disabled', true);
	 document.getElementById("querFormId").submit();
	}
}
</script>
</html>