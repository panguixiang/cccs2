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
<base href="http://${header['host']}${pageContext.request.contextPath}/" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="js/xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
</head>

<body>
	

<!--  新闻编辑 -->
<div class="m_right">
	<h2>
		您当前的位置：版权服务&gt;&gt;
		<c:if test="${article.objtype=='1'}">作品著作权相关登记</c:if>
		<c:if test="${article.objtype=='2'}">计算机软件相关登记</c:if>
		<c:if test="${article.objtype=='3'}">作品著作权质权相关登记</c:if>
		<c:if test="${article.objtype=='4'}">计算机软件著作权质权相关登记</c:if>
	</h2>
	<div class="m_right_c">
		<form:form modelAttribute="article" action="manage/app_article/tonew"
			enctype="multipart/form-data" method="post">
			<div class="m_right_edit">

				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="edit_table">
					<form:hidden path="id" />
					<form:hidden path="objtype" />
					<tr>
						<td class="text_r" width="10%">类型：</td>
						<td width="90%">
						<form:select path="type">
						<c:if test="${article.objtype=='1'}">
						<form:option value="z11">作品著作权登记申请</form:option>
						<form:option value="z21">著作权合同备案申请</form:option>
						<form:option value="z31">与著作权有关权利事项登记申请</form:option>
						<form:option value="z41">重印国外期刊合同登记申请</form:option>
						<form:option value="z61">作品著作权和合同变更或补发登记申请</form:option>
						<form:option value="z62">撤销作品著作权和合同登记申请</form:option>
						<form:option value="z63">撤回作品著作权和合同登记申请</form:option>
						<form:option value="z64">补发或更换登记证书申请</form:option>
						<form:option value="z71">出版境外音像制品合同登记申请-录音制品</form:option>
						<form:option value="z72">出版境外音像制品合同登记申请-影视作品</form:option>
						<form:option value="z73">撤销出版境外音像制品合同登记申请</form:option>
						<form:option value="z74">撤回出版境外音像制品合同登记申请</form:option>
						<form:option value="z75">变更出版境外音像制品合同登记申请</form:option>
						</c:if>
						<c:if test="${article.objtype=='2'}">
						<form:option value="r11">计算机软件著作权登记申请</form:option>
						<form:option value="r21">计算机软件著作权转让或专有许可合同登记申请</form:option>
						<form:option value="r41">软件登记事项变更或补充申请</form:option>
						<form:option value="r42">撤销计算机软件登记请求</form:option>
						<form:option value="r43">撤回计算机软件登记申请</form:option>
						<form:option value="r44">撤销或放弃计算机软件登记申请</form:option>
						<form:option value="r45">补发或者换发软件登记证书申请</form:option>
						</c:if>
						<c:if test="${article.objtype=='3'}">
						<form:option value="z51">著作权质权登记信息</form:option>
						<form:option value="z52">著作权质权撤销登记信息</form:option>
						<form:option value="z53">著作权质权变更登记信息</form:option>
						<form:option value="z54">注销著作权质权登记信息</form:option>
						<form:option value="z55">撤回著作权质权登记申请 </form:option>
						<form:option value="z56">转让著作权质权登记事项信息</form:option>
						</c:if>
						<c:if test="${article.objtype=='4'}">
						<form:option value="---">--待定--</form:option>
						</c:if>
						</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">标题：</td>
						<td><%-- <form:input path="title" class="text_input" /> --%>
						<form:select path="title">
						<form:option value="申请须知">申请须知</form:option>
						<form:option value="填表说明">填表说明</form:option>
						<form:option value="成功案例">成功案例</form:option>
						<form:option value="办理流程">办理流程</form:option>
						</form:select>
						</td>
					</tr>

					<tr>
						<td class="text_r">排序：</td>
						<td>
						<form:select path="num_id">
						<form:option value="1">1</form:option>
						<form:option value="2">2</form:option>
						<form:option value="3">3</form:option>
						<form:option value="4">4</form:option>
						</form:select>
						</td>
					</tr>
					<tr>
						<td valign="top" class="text_r">正文：</td>
						<td><div style="width: 670px;">
						<form:textarea path="content" class="xheditor {width:'100%', height:'500', html5Upload : false,upLinkUrl : 'xheditor/upload',upImgUrl : 'xheditor/upload'}"/></div></td>
					</tr>
				</table>

			</div>
			<div class="m_r_button">
			<input type="submit" value="确定" class="m_button0910" />
			</div>
		</form:form>
	</div>
</div>
<!--  新闻编辑  end -->

<div class="clear"></div>

<!--content end-->


</body>
<!-- <script language="javascript">
 function formsub(url) {
	 var reg = /^[1-9]\d*$/;
	 if(!reg.test($("#num_id").val())) {
		 $("#spannum").css("color", "red").text("请输入正整数!");
		 return;
	 } else {
	    document.forms[0].action=url;
		document.forms[0].submit();
	 }
 }
</script> -->
</html>
