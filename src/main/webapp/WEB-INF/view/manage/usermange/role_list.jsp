<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<title>信息公示-中国动漫版权服务平台</title>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<!--content-->
	<!--新闻列表-->
	<div class="m_right">
		<h2>您当前的位置：权限管理 &gt;&gt;角色查询
		</h2>
		<div class="c_right_bqinfo m_right_c">
			<div class="bq_box">
				<div>
					<form action="" id="querFormId" method="GET" name="querForm">
						<table cellspacing="0" cellpadding="0" width="100%"
						class="app_table">
							<tr>
								<td colspan="4">
									<div class="search_">查询条件</div>
								</td>
							</tr>
							<tr>
							<td width="18%">
								<div align="right">
								角色名称
								</div>
							</td>
							<td colspan="3">
								<input id="rolenameid" name="name" value="<c:out value='${name}' />" class="r_input_search0712" />
							</td>
							</tr>
							<tr>
							<td>
							<div align="right">创建起始日期</div>
							</td>
								<td width="25%">
									<input type="text" class="Wdate"
								name="beginTime" onfocus="calShow(this);"
								value="<c:out value='${beginTime}' />" readonly />
								</td>
								<td width="15%">
									<div align="right">
									创建结束日期
									</div>
								</td>
								<td width="42%">
									<input type="text" class="Wdate"
								name="endTime" onfocus="calShow(this);"
								value="<c:out value='${endTime}' />" readonly />
								</td>
							</tr>
							<tr align=center>
								<td colspan="4">
									<input type="button" value="查询" class="m_button0910"id="subId"
								onclick="subForm('manage/info/rolelist/list');"/>
									&nbsp;&nbsp;&nbsp;
									<input type="button" value="重置" class="m_button0910" id="resetId"
								onclick="restd('querFormId');"/>
								</td>
							</tr>
							<tr>
								<td colspan="2"></td>
								<td colspan="2"></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="s_list">
				 <div class="new_button" id="aft1021" style="display:none">
			     <a href="manage/info/addrole/init">新增角色</a>
		         </div>				
					<table width="100%" border="1" cellspacing="0" cellpadding="0"
						bordercolor="#e4e4e4"
						style="table-layout: fixed; word-wrap: break-word; margin-top: 10px;">
						<tr>
						<th width="10%">序号</th>
						<th width="15%">角色名称</th>
						<th width="15%">创建时间</th>
						<th width="20%" colspan="2">操作</th>
						</tr>
						<c:set var="index" value="${offset+1}"></c:set>
						<c:forEach items="${page.data}" var="role" varStatus="idx">
							<tr id="trid${role.id}">
								<td align="center">${index}</td>
								<c:set var="index" value="${index+1}"></c:set>
								<td align="left">${role.name}</td>
								<td align="center">
								<fmt:formatDate value="${role.create_time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td align="center">
							<a id="aft1022" style="display:none" href="manage/info/addrole/init?id=${role.id}">修改</a>
							</td><td align="center">
							<a id="aft1023" style="display:none" href="javascript:deleterole('${role.id}');">删除</a>
							</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!--翻页-->
				<c:if test="${!empty page.data}">
					<pg:pager items="${page.totalCount}" url="manage/info/rolelist/list"
						export="currentPageNumber=pageNumber" maxIndexPages="8"
						maxPageItems="${page.pageSize}">
						<pg:param name="name" value="${name}" />
						<pg:param name="beginTime" value="${beginTime}" />
						<pg:param name="endTime" value="${endTime}" />
						<div class="page csBlue">
							<ul>
								<pg:first>
									<li>
										<a href="${pageUrl}">首页</a>
									</li>
								</pg:first>
								<pg:prev>
									<li>
										<a href="${pageUrl}">前一页</a>
									</li>
								</pg:prev>
								<pg:pages>
									<c:choose>
										<c:when test="${currentPageNumber eq pageNumber}">
											<li class="thisclass">${pageNumber}</li>
										</c:when>
										<c:otherwise>
											<li>
												<a href="${pageUrl}">${pageNumber}</a>
											</li>
										</c:otherwise>
									</c:choose>
								</pg:pages>
								<pg:next>
									<li>
										<a href="${pageUrl}">后一页</a>
									</li>
								</pg:next>
								<pg:last>
									<li>
										<a href="${pageUrl}">尾页</a>
									</li>
								</pg:last>

							</ul>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</pg:pager>
				</c:if>
				<!--翻页 end-->
			</div>
		</div>
	</div>
	<div class="clear"></div>
</body>
<script language="javascript">
function subForm(url) {
	//提交表单
	$("#subId").attr('disabled', true);
	var frm = document.getElementById("querFormId");
	frm.action = url;
	frm.submit();
}

function deleterole(ids) {
if (confirm("删除后将永远无法恢复!")) {
	$.ajax({
			url:'manage/info/delete/role', 
			type:'post',
			data:{id:ids},
			dataType:'text',
			success:function(calback){
		         if(calback=='yes') {
		        	 $("#trid"+ids).remove();
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
<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
</html>