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
		您当前的位置：版权服务 &gt;&gt; 
		<c:if test="${objtype=='1'}">作品著作权相关登记</c:if>
		<c:if test="${objtype=='2'}">计算机软件相关登记</c:if>
		<c:if test="${objtype=='3'}">作品著作权质权相关登记</c:if>
		<c:if test="${objtype=='4'}">计算机软件著作权质权相关登记</c:if>
		>> 列表
	</h2>
	<div class="m_right_c">
	  <c:if test="${objtype=='1'}">
       <div class="new_button" id="aft311" style="display:none">
      </c:if>
	  <c:if test="${objtype=='2'}">
	   <div class="new_button" id="aft321" style="display:none">
      </c:if>
	  <c:if test="${objtype=='3'}">
	   <div class="new_button" id="aft331" style="display:none">
      </c:if>
	  <c:if test="${objtype=='4'}">
	   <div class="new_button" id="aft341" style="display:none">
      </c:if>
			<a href="manage/app_article/new/${objtype}">发布新文章</a>
		</div>
		<div class="m_news_list">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th width="40%">类型</th>
					<th width="28%">子分类</th>
					<th width="20%" style="text-align: center">排序</th>
					<th width="12%" style="text-align: center" colspan="2">操作</th>
				</tr>
				<c:forEach items="${page.data}" var="article" varStatus="idx">
						<tr>
						<td width="40%">${article.typeStr}
						</td>
						<td width="28%">${article.title}</td>
						<td width="20%" style="text-align: center">${article.num_id}
						</td>
						<td width="6%" style="text-align: center">
						 <c:if test="${objtype=='1'}">
					       <span id="aft312" style="display:none">
					      </c:if>
						  <c:if test="${objtype=='2'}">
						   <span id="aft322" style="display:none">
					      </c:if>
						  <c:if test="${objtype=='3'}">
						   <span id="aft332" style="display:none">
					      </c:if>
						  <c:if test="${objtype=='4'}">
						   <span id="aft342" style="display:none">
					      </c:if>
						<a href="manage/app_article/${article.id}/update">编辑</a>
						</span>
						</td>
						<td width="6%" style="text-align: center">
						 <c:if test="${objtype=='1'}">
					       <span id="aft313" style="display:none">
					      </c:if>
						  <c:if test="${objtype=='2'}">
						   <span id="aft323" style="display:none">
					      </c:if>
						  <c:if test="${objtype=='3'}">
						   <span id="aft333" style="display:none">
					      </c:if>
						  <c:if test="${objtype=='4'}">
						   <span id="aft343" style="display:none">
					      </c:if>
						<a href="manage/app_article/delete/${article.id}/${objtype}">删除</a>
						</span></td>
								</tr>
				</c:forEach>
			</table>
		</div>
					<c:if test="${!empty page.data}">
						<pg:pager items="${page.totalCount}" url="manage/app_article/list/${objtype}"
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
						</c:if>
						<!--翻页 end-->
						
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
