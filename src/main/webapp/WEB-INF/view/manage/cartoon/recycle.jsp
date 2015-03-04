<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
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
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
<!--content-->
<div class="m_right">
	<h2>您当前的位置：资源中心&gt;&gt;回收站</h2>
				<div class="c_right_bqinfo  m_right_c">
					<div class="bq_box">
						<div>
							<form action="" id="querFormId" method="get" name="querForm">
								<table cellspacing="0" cellpadding="0" width="100%"
									class="app_table">
									<tr>
										<td colspan="4"><div class="search_">查询条件</div>
										</td>
									</tr>
									<tr>
										<td ><div align="right">作品名称</div>
										</td>
										<td colspan="3"><input id="titleid" name="title"
											value="<c:out value='${title}' />" class="r_input_search0712" />
										</td>
									</tr>
									<tr>
										<td><div align="right">上传开始日期</div>
										</td>
										<td width="25%">
										<input type="text" class="Wdate" name="beginTime" onfocus="calShow(this);" value="<c:out value='${beginTime}' />" readonly />
										</td>
										<td width="17%"><div align="right">上传结束日期</div>
										</td>
										<td width="39%">
										<input type="text" class="Wdate" name="endTime" onfocus="calShow(this);" value="<c:out value='${endTime}' />" readonly />
										</td>
									</tr>
									<tr align=center>
										<td colspan="4"><input type="button" value="查询" class="m_button0910" id="subId" 
										 onclick="subForm('manage/cartoon/recycle/${cp}');"/>
										&nbsp;&nbsp;&nbsp;<input type="button" value="重置" class="m_button0910" 
										id="resetId" onclick="restd('querFormId');"/></td>
									</tr>
									<tr>
										<td colspan="2"></td>
										<td colspan="2">&nbsp;</td>
									</tr>
									</table>
									</form>
									</div>
									
										<div class="s_list">
				<table width="100%" id="tableid" border="1" cellspacing="0" cellpadding="0"
						bordercolor="#e4e4e4" style="table-layout: fixed;word-wrap:break-word;margin-top: 10px;">
				<tr>
				    <th width="8%" style="text-align: center">编号</th>
					<th width="16%" style="text-align: center">作品名称</th>
					<th width="12%" style="text-align: center">类型</th>
					<th width="14%" style="text-align: center">上传时间</th>
					<th width="20%" style="text-align: center" colspan="2">操作</th>
				</tr>
                   <c:set var="index" value="${offset+1}"></c:set>
				<c:forEach items="${page.data}" var="cartoon" varStatus="idx">
					<tr id="tr${cartoon.id}">
						<td width="8%" style="text-align: center">${index}</td>
						<c:set var="index" value="${index+1}" />
						<td width="16%">
						<c:out value="${cartoon.title}" />
						</td>
						<td width="12%">
						<c:if test="${cartoon.cp==1}">展示中心</c:if>
						<c:if test="${cartoon.cp==2}">脚本中心</c:if>
						</td>
						<td width="14%" style="text-align: center">
						<fmt:formatDate value="${cartoon.create_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td width="10%" style="text-align: center">
						 <c:if test="${cp=='1'}">
						  <a id="aft5211" style="display:none" href="javascript:deleteCartton('${cartoon.id}','2');" >
							恢复</a>
						 </c:if>
						 <c:if test="${cp=='2'}">
						  <a id="aft5221" style="display:none" href="javascript:deleteCartton('${cartoon.id}','2');" >
							恢复</a>
						 </c:if>
						
						</td>
						<td width="10%" style="text-align: center">
						 <c:if test="${cp=='1'}">
						 <a id="aft5221" style="display:none" href="javascript:deleteCartton('${cartoon.id}','3');" >
							彻底删除</a>
							</c:if>
					    <c:if test="${cp=='2'}">	
					    <a id="aft5222" style="display:none" href="javascript:deleteCartton('${cartoon.id}','3');" >
							彻底删除</a>
					    </c:if>	
						</td>
					</tr>
				</c:forEach>
							</table>
						</div>
						<c:if test="${!empty page.data}">
						<pg:pager items="${page.totalCount}" url="manage/cartoon/recycle/${cp}"
							export="currentPageNumber=pageNumber" maxIndexPages="8"
							maxPageItems="${page.pageSize}">
						   <pg:param name="type" value="${type}" />
						   <pg:param name="title" value="${title}" />
						   <pg:param name="beginTime" value="${beginTime}" />
						   <pg:param name="endTime" value="${endTime}" />
							<div class="page csBlue">
								<ul>
									<pg:first>
										<li><a href="${pageUrl}">首页</a>
										</li>
									</pg:first>
									<pg:prev>
										<li><a href="${pageUrl}">前一页</a>
										</li>
									</pg:prev>
									<pg:pages>
										<c:choose>
											<c:when test="${currentPageNumber eq pageNumber}">
												<li class="thisclass">${pageNumber}</li>
											</c:when>
											<c:otherwise>
												<li><a href="${pageUrl}">${pageNumber}</a></li>
											</c:otherwise>
										</c:choose>
									</pg:pages>
									<pg:next>
										<li><a href="${pageUrl}">后一页</a>
										</li>
									</pg:next>
									<pg:last>
										<li><a href="${pageUrl}">尾页</a>
										</li>
									</pg:last>

								</ul>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
						</pg:pager>
						</c:if>
						<!--翻页 end-->
</div></div></div>
<!--新闻列表 end-->
<div class="clear"></div>

</body>
<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function subForm(url) {
	 //提交表单
	 $("#subId").attr('disabled', true);
		var frm = document.getElementById("querFormId");
		frm.action = url;
		frm.submit();
}

/**
 * 删除资源进入回收站 
 */
function deleteCartton(id,method) {
	var str = "";
	if(method=='2') {
		str="请确认此操作!"
	} else {
		str="删除后将永远无法恢复!"; 
	}
	if (confirm(str)) {
	$.ajax({
		url : '${request.pageContext.contextPath}/manage/cartoon/delete/'+id+"/"+method,
		type : 'post',
		dataType: 'text',
		success : function(backdata) {
	        	if(backdata=="yes") {
	        		$("#tr"+id).remove();
	        	}
	        }
	});
	}
}

$(document).ready(function(){
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	  $("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
</html>
