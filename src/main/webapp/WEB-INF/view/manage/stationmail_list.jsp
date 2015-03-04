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
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>						
<!--新闻列表-->
<div class="m_right">
	<h2>您当前的位置：后台管理系统菜单 &gt;&gt; 站内信</h2>
	<div class="c_right_bqinfo m_right_c">
		<div class="bq_box">
			<div>
				<form action="manage/info/stationmaillist" id="querFormId" method="get" name="querForm">
					<table cellspacing="0" cellpadding="0" width="100%" class="app_table">
						<tr>
							<td colspan="4">
								<div class="search_">查询条件</div>
							</td>
						</tr>
						<tr>
							<td>
								<div align="right">标题</div>
							</td>
							<td colspan="3">
								<input id="titleid" name="title" value="<c:out value='${title}' />" 
								class="r_input_search0712" />
							</td>
						</tr>
						<tr>
							<td >
								<div align="right">发件人</div>
							</td>
							<td colspan="3">
								<input id="addresserid" name="addresser" value="<c:out value='${addresser}' />" 
								class="r_input_search0712" />
							</td>
						</tr>
						<tr>
							<td><div align="right">状态</div>
							</td>
							<td colspan="3">
						   <select name="mailtype">
						     <option value="1" <c:if test="${mailtype==1}">selected="true"</c:if>>收件箱</option>
						     <option value="2" <c:if test="${mailtype==2}">selected="true"</c:if>>发件箱</option>
						    </select>
							</td>
						</tr>
						<tr>
							<td width="15%">
								<div align="right">开始日期</div>
							</td>
							<td width="25%">
							<input type="text"  name="beginTime" onfocus="calShow(this);" value="<c:out value='${beginTime}' />" readonly />
							</td>
							<td width="15%">
								<div align="right">结束日期</div>
							</td>
							<td width="55%">
								<input type="text" name="endTime" value="<c:out value='${endTime}' />"  onfocus="calShow(this);" readonly />
							</td>
						</tr>
						<tr align=center>
							<td colspan="4">
								<input type="submit" value="查询" class="m_button0910" id="subId" />
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
            <div class="new_button" id="aft121" style="display:none"><a href="manage/info/initaddmail">发布站内信</a></div>
				<table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#e4e4e4"
					style="table-layout: fixed; word-wrap: break-word; margin-top: 10px;">
					<tr>
						<th width="10%">序号</th>
						<th width="25%">标题</th>
						<th width="16%">发件人</th>
						<c:if test="${mailtype==2}">
						<th width="15%">收件人</th>
						</c:if>
						<th width="20%">创建时间</th>
						<th width="14%" colspan="2">操作</th>
					</tr>
					<c:set var="index" value="${offset+1}"></c:set>
					<c:forEach items="${page.data}" var="stmail">
						<tr id="${stmail.id}">
							<td  align="center">${index}</td>
							<c:set var="index" value="${index+1}"></c:set>
							<td  align="left">${stmail.title}</td>
							<td align="left"><c:out value='${stmail.addresser}' /></td>
							<c:if test="${mailtype==2}">
							<td align="left"><c:out value='${stmail.recipients}' /></td>
							</c:if>
							<td><fmt:formatDate value="${stmail.createdate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td align="center">
							<a href="javascript:openShow('${stmail.id}')">查看</a>
							</td>
							<td align="center">
							<a id="aft122" style="display:none" href="javascript:deletemail('${stmail.id}');">删除</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!--翻页-->
			<c:if test="${!empty page.data}">
				<pg:pager items="${page.totalCount}" url="manage/info/stationmaillist"
					export="currentPageNumber=pageNumber" maxIndexPages="8"
					maxPageItems="${page.pageSize}">
					<pg:param name="title" value="${title}" />
					<pg:param name="addresser" value="${addresser}" />
					<pg:param name="beginTime" value="${beginTime}" />
					<pg:param name="endTime" value="${endTime}" />
					<pg:param name="mailtype" value="${mailtype}" />
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
function deletemail(sid) {
	if (confirm("删除后将永远无法恢复!")) {
	$.ajax({
		url : '${pageContext.request.contextPath}/manage/info/deletemail',
		type : 'post',
		data : {
			id : sid
		},
		dataType: 'text',
		success : function(backdata) {
	        	if(backdata=="yes") {
	        		$("#"+sid).remove();
	        	}
	        }
	});
	}
}
function openShow(id) {
	window.open ('${pageContext.request.contextPath}/manage/info/lookstationmail/'+id,'',
			'height=800,width=600,top=20,left=70,toolbar=no,menubar=no,scrollbars=yes,resizable=no,status=no');
}
$(document).ready(function(){
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	  $("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
</html>
