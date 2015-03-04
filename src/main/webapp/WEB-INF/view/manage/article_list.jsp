<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国动漫版权服务平台管理后台</title>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link href="css/manage.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--新闻列表-->
<div class="m_right">
	<h2>
		您当前的位置：
		<c:out value="${subject.channelName}" />
		 &gt;&gt; 
		<c:out value="${subject.subjectName}" />
		 &gt;&gt; 列表
	</h2>
	<div class="m_right_c">
	<c:if test="${subject.subjectName=='中心动态'}">
		<div class="new_button" id="aft211" style="display:none">
	</c:if>
	<c:if test="${subject.subjectName=='版权要闻'}">
		<div class="new_button" id="aft221" style="display:none">
	</c:if>
	<c:if test="${subject.subjectName=='业界资讯'}">
		<div class="new_button" id="aft231" style="display:none">
	</c:if>
	<c:if test="${subject.subjectName=='热点关注'}">
		<div class="new_button" id="aft241" style="display:none">
	</c:if>
	<c:if test="${subject.subjectName=='版权法律服务'}">
		<div class="new_button" id="aft351" style="display:none">
	</c:if>
	<c:if test="${subject.subjectName=='分中心新闻'}">
		<div class="new_button" id="aft411" style="display:none">
	</c:if>
		<a href="manage/article/new?subject=${subject.subjectSign}">发布新文章</a>
		</div>
		<div class="m_news_list">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th width="50%">标题</th>
					<th width="20%" style="text-align: center">日期</th>
					<th width="15%" style="text-align: center">访问量</th>
					<th width="12%" style="text-align: center" colspan="2">操作</th>
				</tr>
				<c:forEach items="${page.data}" var="article" varStatus="idx">
					<tr>
						<td width="50%"><a href="article/${article.id}" target="_blank">${article.title}</a>
						</td>
						<td width="20%" style="text-align: center">
						 ${article.pub_date}
						</td>
						<td width="15%" style="text-align: center">
						 ${article.pvnum}次
						</td>
						<td width="6%" style="text-align: center">
						<c:if test="${subject.subjectName=='中心动态'}">
						<span id="aft212" style="display:none">
					    </c:if>
					    <c:if test="${subject.subjectName=='版权要闻'}">
						<span id="aft222" style="display:none">
					    </c:if>
					    <c:if test="${subject.subjectName=='业界资讯'}">
						<span id="aft232" style="display:none">
					    </c:if>
					    <c:if test="${subject.subjectName=='热点关注'}">
						<span id="aft242" style="display:none">
					    </c:if>
					    <c:if test="${subject.subjectName=='版权法律服务'}">
							<span id="aft352" style="display:none">
						</c:if>
						<c:if test="${subject.subjectName=='分中心新闻'}">
							<span id="aft412" style="display:none">
						</c:if>
						<a href="manage/article/edit/${article.id}">编辑</a>
						</span>
						</td>
						<td width="6%" style="text-align: center">
						<c:if test="${subject.subjectName=='中心动态'}">
						<span id="aft213" style="display:none">
					    </c:if>
					    <c:if test="${subject.subjectName=='版权要闻'}">
						<span id="aft223" style="display:none">
					    </c:if>
					    <c:if test="${subject.subjectName=='业界资讯'}">
						<span id="aft233" style="display:none">
					    </c:if>
					    <c:if test="${subject.subjectName=='热点关注'}">
						<span id="aft243" style="display:none">
					    </c:if>
					    <c:if test="${subject.subjectName=='版权法律服务'}">
							<span id="aft353" style="display:none">
						</c:if>
						<c:if test="${subject.subjectName=='分中心新闻'}">
							<span id="aft413" style="display:none">
						</c:if>
						<a href="javascript:deleteCheck('${request.pageContext.contextPath}/manage/article/delete/${article.id}')">
						删除</a></span></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!--翻页-->
			<c:if test="${page.totalCount>0}">
		<pg:pager items="${page.totalCount}" url="manage/article/list"
			export="currentPageNumber=pageNumber" maxIndexPages="8"
			maxPageItems="${page.pageSize}">
			<pg:param name="subject" value="${subject.subjectSign}" />

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
		</pg:pager></c:if>
		<!--翻页 end-->
	</div>
</div>
<!--新闻列表 end-->
<div class="clear"></div>
</body>
<script language="javascript">
$(document).ready(function(){
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	  $("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
</html>
