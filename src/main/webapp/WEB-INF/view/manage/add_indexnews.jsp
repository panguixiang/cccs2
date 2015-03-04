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
				<h2>您当前的位置：新闻动态 &gt;&gt; 新增首页新闻轮播</h2>
				<div class="m_right_c">
				<form action="" method="post" id="formId" enctype="multipart/form-data">
						<div class="m_right_edit">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="edit_table">
								<input type ="hidden" name="id" value="${indexnew.id}" />
								<input type ="hidden" name="image" value="${indexnew.image}" />
								<tr>
									<td width="18%" class="text_r">标题：</td>
									<td colspan="2" >
									<input type="text" class="r_input_search0712" id="titleId" 
									name ="title" value="<c:out value='${indexnew.title}' />" maxlength="20"/></td>
								</tr>
								<tr>
								  <td class="text_r"></td>
								  <td colspan="2" ><span id="spanTitle"></span></td>
						      </tr>
								<tr>
									<td class="text_r">排序：</td>
									<td colspan="2">
									<input type="text" class="r_input_search0712" id="squenId" 
									name ="squen" value="<c:out value='${indexnew.squen}' />" maxlength="4"/></td>
								</tr>
								<tr>
								  <td class="text_r"></td>
								  <td colspan="2"><span id="spanOrde"></span></td>
							  </tr>
								<tr>
									<td class="text_r">链接地址：</td>
									<td colspan="2">
									<input type="text" class="r_input_search0712" id="urlId" 
									name ="url" value="<c:out value='${indexnew.url}' />" maxlength="50"/>
									</td>
								</tr>
								<tr>
								  <td class="text_r"></td>
								  <td colspan="2"><span id="spanUrl"></span></td>
						      </tr>
								<tr>
									<td class="text_r">轮播图片：</td>
									<td colspan="2">
									<input type="file" class="text_input"  id="file" name="file"
									 value="" title="图片格式支持jpg、gif，最佳分辨率400*300！"/>
									</td>
							    </tr>
								<tr>
								  <td class="text_r"></td>
								  <td colspan="2"><span id="spanImage">${imagemesage}</span></td>
						      </tr>
								<c:if test="${!empty indexnew.id}">
								<tr>
								<td class="text_r"></td>
								<td width="82%">
								<img src="upload/indexnews/${indexnew.image}" 
									 width="30" height="30" />
								</td>
								</tr>
								 </c:if>
							</table>
</div>
						<div class="m_r_button">
							<input type="button" value="确定" id="butId"
							 class="m_button0910" onclick="subNews('manage/article/addnews');"/>
						</div>
					</form>
				</div>
			</div>
			<!--  新闻编辑  end -->
			<div class="clear"></div>



</body>
<script language="javascript">
 function subNews(url) {
	 var orde = $("#squenId").val();
	 var regs = /^-?[1-9]\d*$/;
	 if(orde.length == 0 || !regs.test(orde)) {
		 $("#spanOrde").css("color","red").text("请输入新闻排序(只能输入数字)!");
		 return;
	 }
	 $("#butId").attr('disabled', true);
		var frm = document.getElementById("formId");
		frm.action = url;
		frm.submit();
 }

</script>
</html>
