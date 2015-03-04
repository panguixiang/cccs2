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
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
</head>
<body>
			<!--  新闻编辑 -->
			<div class="m_right">
			<h2>您当前的位置：后台管理系统菜单&gt;&gt;新增友情链接</h2>
				<div class="m_right_c">
				<c:choose>
				<c:when test="${empty friend}">
				 <form action="manage/info/addfriend" method="post" id="formId" enctype="multipart/form-data">
				</c:when>
				<c:otherwise>
				 <form action="manage/info/updatefriend" method="post" id="formId" enctype="multipart/form-data">
				</c:otherwise>
				</c:choose>
						<div class="m_right_edit">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="edit_table">
								<input type ="hidden" name="id" value="${friend.id}" />
								<input type ="hidden" name="oldImageUrl" value="${friend.image}" />
								<tr>
									<td class="text_r">url：</td>
									<td>
									<input type="text" class="r_input_search0712" id="urlId" 
									name ="url" value="<c:out value='${friend.url}' />" maxlength="50"/>
									</td>
									<td></td>
								</tr>
								<tr>
									<td class="text_r">图片：</td>
									<td>
									<input type="file" class="text_input" id="image_file" name="image_file"
									 value="" title="图片格式支持jpg、gif！"/>
									</td>
									 <td rowspan="2"><span id="spanImage">${imagemesage}</span></td>
								</tr>
							<tr>
								  <td class="text_r"></td>
								  <td style="font-size:12px; color:#999;">图片尺寸：86像素*27像素</td>
						      </tr>
								<c:if test="${!empty friend.image}">
								<tr>
								<td class="text_r"></td>
								<td>
								<img src="${friend.image}" width="88" height="29" />
								</td>
								</tr>
								 </c:if>
							</table>
						</div>
						<div class="m_r_button">
							<input type="submit" value="确定" id="butId" class="m_button0910" />
						</div>
					</form>
				</div>
			</div>
			<!--  新闻编辑  end -->
			<div class="clear"></div>
</body>
</html>
