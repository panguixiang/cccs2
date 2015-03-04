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
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<title>中国动漫版权服务平台-站内信</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
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
		<img src="images/navbottom.gif" />
	</div>
	<div class="info_cont">
		<div class="info_box">

			<div class="i_left">
				<h3>
					<img src="images/i_left01.gif" />
				</h3>
				<!--登录-->
<%@ include file="left.jsp"%>
<!--登录 end-->
</div>

<div class="c_right">
	<div class="info_title">
		您当前的位置：<a href="/">首页</a> &gt;&gt; 站内信 
	</div>
	<div class="c_title">站内信</div>
	<div class="c_right_bqinfo">
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
					<td><div align="right">标题</div>
					</td>
					<td colspan="3">
					<input id="titleid" name="title"
						value="<c:out value='${title}' />" class="r_input_search0712" />
					</td>
				</tr>
				<tr>
					<td><div align="right">类型</div>
					</td >
					<td colspan="3">
					<select name="mailtype" class="search_input0808">
					 <option value="1" <c:if test="${mailtype==1}">selected="true"</c:if>>收件箱</option>
					 <option value="2" <c:if test="${mailtype==2}">selected="true"</c:if>>发件箱</option>
					</select>
					</td>
				</tr> 
				<tr>
					<td><div align="right">开始日期</div>
					</td>
					<td>
			<input type="text" class="Wdate" name="beginTime" onfocus="calShow(this);" 
					value="<c:out value='${beginTime}' />" readonly />
					</td>
					<td><div align="right">结束日期</div>
					</td>
					<td>
		<input type="text" class="Wdate" name="endTime" onfocus="calShow(this);" 
					value="<c:out value='${endTime}' />" readonly />
					</td>
				</tr>
				
				<tr align=center>
					<td colspan="4">
					<input type="button" value="查询" class="m_button0807" id="subId" 
					onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" 
					/>
					&nbsp;&nbsp;&nbsp;
					<input type="button" value="重置" class="m_button0807" id="resetId" 
					onclick="restd('querFormId');" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" /></td>
				</tr>
				<tr>
					<td colspan="2"></td>
					<td colspan="2"></td>
				</tr>
			</table>
		</form>
						</div>
<div class="s_list">
<input type="button" value="发布站内信" class="m_button0723"
					onclick="initAddmail('initaddmail');" />
<table width="100%" id="tableid" border="1" cellspacing="0" cellpadding="0"
	bordercolor="#e4e4e4" style="table-layout: fixed;word-wrap:break-word;margin-top: 10px;">
<tr>
    <th width="10%">序号</th>
	<th width="25%">标题</th>
	<th width="16%">发件人</th>
	<c:if test="${mailtype==1}">
	<th width="15%">收件人</th>
	</c:if>
	<th width="12%">创建时间</th>
	<th width="12%">操作</th>
</tr>
              <c:set var="index" value="${offset+1}"></c:set>
<c:forEach items="${page.data}" var="stmail"
varStatus="idx">
<tr id="${stmail.id}">
<td name="xuhao">${index}</td>
<c:set var="index" value="${index+1}"></c:set>
<td>
<a href="javascript:openShow('${stmail.id}')">${stmail.title}</a>
</td>
<td name="xuhao">${stmail.addresser}</td>
<c:if test="${mailtype==1}">
<td name="xuhao">${stmail.recipients}</td>
</c:if>
<td><fmt:formatDate value="${stmail.createdate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
<td align="center">
<a href="javascript:openShow('${stmail.id}');">查看</a>
<a href="javascript:deletemail('${stmail.id}');">删除</a>
	</td>
</tr>
</c:forEach>
	</table>
</div>
						<!--翻页-->
	<c:if test="${!empty page.data}">
	<pg:pager items="${page.totalCount}" url="mycenter/stationmaillist"
		export="currentPageNumber=pageNumber" maxIndexPages="8"
		maxPageItems="${page.pageSize}">
		<pg:param name="title" value="${title}" />
		<pg:param name="beginTime" value="${beginTime}" />
		<pg:param name="endTime" value="${endTime}" />
		<pg:param name="mailtype" value="${mailtype}" />
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
<%@ include file="footer.jsp"%>
<!--底部 end-->
	</div>
</div>
</body>
<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
<script language="javascript">
$("#subId").click(function(){
	 $("#subId").attr('disabled', true);
	 $("#querFormId").action="${pageContext.request.contextPath}/mycenter/stationmaillist"
	 $("#querFormId").submit();
});

function deletemail(sid) {
	if (confirm("删除后将永远无法恢复!")) {
	$.ajax({
		url : '${pageContext.request.contextPath}/mycenter/deletemail',
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
	window.open ('${pageContext.request.contextPath}/mycenter/lookstationmail/'+id,'',
			'height=1200,width=800,top=20,left=70,toolbar=no,menubar=no,scrollbars=yes,resizable=no,status=no');
}

function initAddmail(url) {
	location.href=url;
}
</script>
</html>
