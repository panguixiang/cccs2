<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
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
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/manage.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--新闻列表-->
<div class="m_right">
	<h2>
		您当前的位置：后台管理系统菜单 &gt;&gt; 友情链接
	</h2>
	<div class="m_right_c">
		<div class="new_button" id="aft131" style="display:none">
			<a href="manage/info/initaddfriend">新增友链接</a>
		</div>
		<div class="m_news_list">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout: fixed;word-wrap:break-word;">
				<tr>
					<th width="12%" style="text-align: center">序号</th>
					<th width="51%" style="text-align: center">url</th>
					<th width="25%" style="text-align: center">创建时间</th>
					<th width="12%" style="text-align: center" colspan="2">操作</th>
				</tr>
				<c:set var="index" value="${offset+1}"></c:set>
				<c:forEach items="${page.data}" var="friend" varStatus="idx">
                <tr id="${friend.id}">
                    <td style="text-align:center">${index}</td>
                    <c:set var="index" value="${index+1}"></c:set>
                    <td><c:out value='${friend.url}' /></td>
                    <td style="text-align:center"><fmt:formatDate value="${friend.create_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td style="text-align:center">
                    <span id="aft133" style="display:none">
                    <a href="javascript:updateFirends('${friend.id}')">修改</a>
                    </span>
                	</td>
                    <td style="text-align:center">
                    <span id="aft132" style="display:none">
                    <a href="javascript:deleteFriends('${friend.id}','${friend.image}')">删除</a>
                    </span>
                    </td>
            	</tr>
				</c:forEach>
			</table>
		</div>
					<c:if test="${!empty page.data}">
						<pg:pager items="${page.totalCount}" url="manage/info/friendslist"
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
function deleteFriends(sid,imageurl) {
	if (confirm("删除后将永远无法恢复!")) {
	$.ajax({
		url : '${pageContext.request.contextPath}/manage/info/deletfriend',
		type : 'post',
		data : {
			id : sid,
			image : imageurl
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

function updateFirends(fid) {
	location.href="${pageContext.request.contextPath}/manage/info/initaddfriend?id="+fid;
}

$(document).ready(function(){
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	  $("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
</html>
