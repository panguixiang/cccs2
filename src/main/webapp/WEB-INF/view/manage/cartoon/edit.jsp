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
<script type="text/javascript" src="js/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/xheditor-1.1.8-zh-cn.min.js"></script>
<script type="text/javascript">
	$(pageInit);
	function pageInit()

	{

		$('#content').xheditor({
			skin : 'vista',
			width : '650',
			height : '500',
			html5Upload : false,
			upLinkUrl : '/xheditor/upload',
			upImgUrl : '/xheditor/upload',
			upFlashUrl : '/xheditor/upload',
			upFlashExt : 'swf,flv',
			upMediaUrl : '/xheditor/upload',
			upMediaExt : 'wmv,avi,wma,mp3,mid,mpg'
		});
	}
</script>
</head>

<body>
	
		
<!--content-->



<!--  正文 -->
<div class="m_right">
	<h2>您当前的位置：资源中心 &gt;&gt;发布动漫</h2>
	<div class="m_right_c">
		<form:form modelAttribute="cartoon" action="/manage/cartoon/update"
			enctype="multipart/form-data" method="post">
			<div class="m_right_edit">

				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="edit_table">
					<form:hidden path="id" />
					<form:hidden path="cp" value="${cartoon.cp}" />
					<form:hidden path="cover" value="${cartoon.cover}" />
					<tr>
						<td width="10%" class="text_r">作品名称：</td>
						<td width="90%"><form:input path="title"
								class="text_input" />
						</td>
					</tr>
					<tr>
						<td class="text_r">作者或公司:</td>
						<td><form:input path="author" class="text_input" />
						</td>
					</tr>
					<tr>
						<td class="text_r">字母索引:</td>
						<td><form:select path="letter">
								<c:forEach items="${letters}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select></td>
					</tr>
					<tr>
						<td class="text_r">题材：</td>
						<td><c:forEach items="${themes}" var="obj">
								<form:checkbox path="theme_temp" value="${obj}"/> ${obj}
							</c:forEach>
						</td>
						<!-- <td><form:input path="theme" class="text_input" />
						</td> -->

					</tr>
					<tr>
						<td class="text_r">类型：</td>
						<td><form:select path="type">
								<c:forEach items="${types}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select></td>
					</tr>
					<tr>
						<td class="text_r">地区：</td>
						<td><form:select path="area">
								<c:forEach items="${areas}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">年份：</td>
						<td><form:select path="year">
								<c:forEach items="${years}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">年龄层：</td>
						<td><form:select path="yearzone">
								<c:forEach items="${yearzones}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">标签：</td>
						<td><form:input path="tag" class="text_input" />
						</td>
					</tr>
					<tr>
						<td valign="top" class="text_r">封面上传：</td>
						<td><label><input type="file" name="cover_file"
								id="cover_file" class="r_input" /> </label>
						</td>
					</tr>
					<c:if test="${cartoon.cover!=null }">
						<tr>
							<td></td>
							<td><a href="${cartoon.cover}" class="a_blue"
								target="_blank">点此查看封面</a></td>
						</tr>
					</c:if>
					<tr>
						<td valign="top" class="text_r">作品介绍：</td>
						<td><div style="width: 670px;">
								<form:textarea path="content" id="content"></form:textarea>
							</div>
						</td>
					</tr>

					<tr>
						<td valign="top" class="text_r">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>

			</div>
			<div class="m_r_button">
				<input type="submit" value="确定" class="m_button0910" />
			</div>
		</form:form>
	</div>
</div>
<!--  正文  end -->

<div class="clear"></div>

<!--content end-->


</body>
</html>
