<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国动漫版权服务平台管理后台</title>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/xheditor-1.1.8-zh-cn.min.js"></script>
</head>

<body>
<!--content-->
<!--  新闻编辑 -->
	<div class="m_right">
	<h2>
		您当前的位置：信息公示 >>
		<c:choose>
			<c:when test="${!empty info}">修改信息公示</c:when>
			<c:otherwise>创建信息公示</c:otherwise>
		</c:choose>
		&gt;&gt;<c:if test="${app_type=='z51'}">著作权质权登记信息</c:if>
		   <c:if test="${app_type=='z52'}">著作权质权撤销登记信息</c:if>
		   <c:if test="${app_type=='z53'}">著作权质权变更登记信息</c:if>
		   <c:if test="${app_type=='z54'}">注销著作权质权登记信息</c:if>
		   <c:if test="${app_type=='z56'}">转让著作权质权登记事项信息</c:if>
	</h2>
		<div class="m_right_c">
			<div class="bq_box">
			<form action=""  name="querForm" id="formId" method="post">
			<input type="hidden" name="id" value="${info.id}" />
				<div class="m_right_edit">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="edit_table">
						<tr>
							<td width="18%" class="text_r">
							<c:if test="${app_type=='z51'}">登记号</c:if>
	                        <c:if test="${app_type=='z52'}">原质权登记号 </c:if>
							<c:if test="${app_type=='z53'}">登记号</c:if>
							<c:if test="${app_type=='z54'}">原质权登记号 </c:if>
							<c:if test="${app_type=='z56'}">登记号</c:if>
							</td>
							<td width="82%"><input type="text" name="num"
								value="${info.num}" class="r_input_search0712" /></td>
						</tr>
							<tr>
							<td width="18%" class="text_r">
								作品编号
							</td>
							<td width="82%">
								<input id="opusnumberId" name="opusnumber" value="<c:out value='${info.opusnumber}' />" class="r_input_search0712" />
							</td>
						</tr>
						<tr>
							<td class="text_r">涉及作品名称</td>
							<td><input type="text" name="name" value="${info.name}"
								class="r_input_search0712" /></td>
						</tr>
						<tr>
							<td class="text_r">登记日期 </td>
							<td>
							<input type="text" class="Wdate" name="date"
								onfocus="calShow(this);"
								value="<c:out value='${info.date}' />" readonly />
							</td>
						</tr>
						<c:if test="${app_type=='z51' || app_type=='z53' || app_type=='z56' }">
						<tr>
							<td class="text_r">涉及作品种类
							</td>  
							<td colspan="3">
							<select name="type">
									<option value="">--请选择--</option>
									<option value="文字"
										<c:if test="${info.type=='文字'}">selected</c:if>>文字</option>
									<option value="口述"
										<c:if test="${info.type=='口述'}">selected</c:if>>口述</option>
									<option value="音乐"
										<c:if test="${info.type=='音乐'}">selected</c:if>>音乐</option>
									<option value="戏剧"
										<c:if test="${info.type=='戏剧'}">selected</c:if>>戏剧</option>
									<option value="曲艺"
										<c:if test="${info.type=='曲艺'}">selected</c:if>>曲艺</option>
									<option value="舞蹈"
										<c:if test="${info.type=='舞蹈'}">selected</c:if>>舞蹈</option>
									<option value="杂技艺术"
										<c:if test="${info.type=='杂技艺术'}">selected</c:if>>杂技艺术</option>
									<option value="美术"
										<c:if test="${info.type=='美术'}">selected</c:if>>美术</option>
									<option value="建筑"
										<c:if test="${info.type=='建筑'}">selected</c:if>>建筑</option>
									<option value="摄影"
										<c:if test="${info.type=='摄影'}">selected</c:if>>摄影</option>
									<option value="电影和类似摄制电影方法创作的作品"
										<c:if test="${info.type=='电影和类似摄制电影方法创作的作品'}">selected</c:if>>
										电影和类似摄制电影方法创作的作品</option>
									<option value="图形 "
										<c:if test="${info.type=='图形'}">selected</c:if>>图形</option>
									<option value="模型"
										<c:if test="${info.type=='模型'}">selected</c:if>>模型</option>
									<option value="录音制品"
										<c:if test="${info.type=='录音制品'}">selected</c:if>>录音制品</option>
									<option value="录像制品"
										<c:if test="${info.type=='录像制品'}">selected</c:if>>录像制品</option>
									<option value="广播节目"
										<c:if test="${info.type=='广播节目'}">selected</c:if>>广播节目</option>
									<option value="版式设计"
										<c:if test="${info.type=='版式设计'}">selected</c:if>>版式设计</option>
									<option value="电视节目"
										<c:if test="${info.type=='电视节目'}">selected</c:if>>电视节目</option>
									<option value="表演"
										<c:if test="${info.type=='表演'}">selected</c:if>>表演</option>
									<option value="其他"
										<c:if test="${info.type=='其他'}">selected</c:if>>其他</option>
							</select>
							</td>
						</tr>
					</c:if>
					<tr>
							<td class="text_r">出质人</td>
							<td><input type="text" name="owner" id="ownerid" value="<c:out value='${info.owner}' />"
							 class="r_input_search0712" />
							<span id="spanamont"></span>
							</td>
						</tr>
					<tr>
					<td class="text_r">
					<c:choose>
					<c:when test="${app_type=='z56'}">转让人
					</c:when>
					<c:otherwise>质权人
					</c:otherwise>
					</c:choose>
					</td>
					<td><input type="text" name="transferee" id="transfereeId" value="<c:out value='${info.transferee}' />"
					 class="r_input_search0712" />
					<span id="spanamont"></span>
					</td>
					</tr>
					<c:if test="${app_type=='z56'}">
					<tr>
						<td class="text_r">受让人</td>
						<td><input type="text" name="publishUnitName" id="publishUnitNameid" value="<c:out value='${info.publishUnitName}' />"
						 class="r_input_search0712" />
						<span id="spanamont"></span>
						</td>
					</tr>
					</c:if>
					</table>
				</div>
				<div class="m_r_button">
					<input type="button" value="确定" id="butId" class="m_button0910" 
					onclick="subFor('manage/info/addinfo/${parent_type}/${app_type}');"/>
				</div>
			</form>
		</div>
	</div>
	<!--  新闻编辑  end -->
	<div class="clear"></div>
</body>
<script language="JavaScript"
	src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css"
	rel="stylesheet" type="text/css" />
<script language="javascript">
function subFor(url) {
	// var amount = $("#amountId").val();
	/*  var regs = /^-?[1-9]\d*$/;
	 if(amount.length == 0 || !regs.test(amount)) {
		 $("#spanamont").css("color","red").text("请输入作品数量(只能输入数字)!");
		 return;
	 } */
	 $("#butId").attr('disabled', true);
		var frm = document.getElementById("formId");
		frm.action = url;
		frm.submit();
}
</script>
</html>
