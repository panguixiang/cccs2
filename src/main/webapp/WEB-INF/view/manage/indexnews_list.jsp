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
<link href="css/manage.css" rel="stylesheet" type="text/css" />
</head>

<body>
	
			<!--新闻列表-->
			<div class="m_right">
				<h2>
					您当前的位置：后台管理系统菜单 &gt;&gt; 首页新闻轮播 &gt;&gt; 列表
				</h2>
				<div class="m_right_c">
					<div class="new_button" id="aft111" style="display:none"><a href="manage/article/initaddnews">发布新文章</a></div>
					<div class="m_news_list">
						<table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout: fixed;word-wrap:break-word;">
							<tr>
								<th width="25%">标题</th>
								<th width="30%" style="text-align:center">链接地址</th>
								<th width="25%" style="text-align:center">轮播图片</th>
								<th width="10%" style="text-align:center">排序</th>
								<th width="10%" style="text-align:center" colspan="2">操作</th>
							</tr>
							<c:forEach items="${page.data}" var="indexnews" varStatus="idx">
								<tr>
									<td>${indexnews.title}</a>
									</td>
									<td>${indexnews.url}
									</td>
									<td>${indexnews.image}
									</td>
									<td style="text-align:center">&nbsp;&nbsp;&nbsp;${indexnews.squen}
									</td>
									<td style="text-align:center">
									<span id="aft112" style="display:none">
									<a href="manage/article/initaddnews?id=${indexnews.id}">编辑</a>
									</span>
									</td>
									<td width="10%" style="text-align: center">
									<span id="aft113" style="display:none">
									<a href="javascript:deleteNews('${pageContext.request.contextPath}/manage/article/deleteindexnews?id=${indexnews.id}');">
									删除</a></span></td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<!--翻页-->
					<c:if test="${!empty page.data}">
					<pg:pager items="${page.totalCount}" url="manage/article/indexnewslist"
						export="currentPageNumber=pageNumber" maxIndexPages="8"
						maxPageItems="${page.pageSize}">
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
					<!--翻页 end-->
					</c:if>
				</div>
			</div>
			<!--新闻列表 end-->
			<div class="clear"></div>
		


</body>
<script language="javascript">
function deleteNews(url) {
 if(confirm("删除后将永远无法恢复!")) {
   location.href=url;
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
