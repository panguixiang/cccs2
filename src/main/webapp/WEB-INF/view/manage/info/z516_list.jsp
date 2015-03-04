<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<title>信息公示-中国动漫版权服务平台</title>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/common.js"></script>
<link href="css/manage.css" rel="stylesheet" type="text/css" />
</head>
<body>
			<div class="m_right">
				<h2>您当前的位置：信息公示 &gt;&gt;
				作品著作权质权相关信息 &gt;&gt;
				<c:if test="${app_type=='z51'}">著作权质权登记信息</c:if>
				<c:if test="${app_type=='z52'}">著作权质权撤销登记信息</c:if>
				<c:if test="${app_type=='z53'}">著作权质权变更登记信息</c:if>
				<c:if test="${app_type=='z54'}">注销著作权质权登记信息</c:if>
				<c:if test="${app_type=='z56'}">转让著作权质权登记事项信息</c:if>
				</h2>
							<div class="c_right_bqinfo m_right_c">
								<div class="bq_box">
									<div>
										<form action="" id="querFormId" method="post" name="querForm">
											<table cellspacing="0" cellpadding="0" width="100%"
												class="app_table">
												<tr>
													<td colspan="4"><div class="search_">查询条件</div>
													</td>
												</tr>
												<tr>
												<td><div align="right">
												<c:if test="${app_type=='z51'}">登记号</c:if>
			                                	<c:if test="${app_type=='z52'}">原质权登记号 </c:if>
												<c:if test="${app_type=='z53'}">登记号</c:if>
												<c:if test="${app_type=='z54'}">原质权登记号 </c:if>
												<c:if test="${app_type=='z56'}">登记号</c:if>
													</div>
													</td>
													<td colspan="3"><input id="numid" name="num"
														value="<c:out value='${info.num}' />" class="r_input_search0712" />
													</td>
												</tr>
												
				
											<tr>
										    	<td ><div align="right">作品编号 </div>
											 </td>
											 <td colspan="3"><input id="opusnumberId" name="opusnumber"
											 	value="<c:out value='${info.opusnumber}' />" class="r_input_search0712" />
											 </td>
										  </tr>
												<tr>
													<td ><div align="right">涉及作品名称 </div>
													</td>
													<td colspan="3"><input id="nameid" name="name"
														value="<c:out value='${info.name}' />" class="r_input_search0712" />
													</td>
												</tr>
												<tr>
													<td ><div align="right">登记日期 </div>
													</td>
													<td colspan="3">
													<input type="text" class="Wdate" name="date"
														onfocus="calShow(this);"
														value="<c:out value='${info.date}' />" readonly />
													</td>
												</tr>
												
												
												<c:if test="${app_type=='z51' || app_type=='z53' || app_type=='z56' }">
												<tr>
													<td><div align="right">涉及作品种类</div>
													</td>  
													<td colspan="3">
													<select name="type" class="search_input0808">
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
													<td ><div align="right">出质人</div>
													</td>
													<td colspan="3"><input id="ownerid" name="owner"
														value="<c:out value='${info.owner}' />" 
														class="r_input_search0712" />
													</td>
												</tr>
												<tr>
													<td ><div align="right">
													<c:choose>
													<c:when test="${app_type=='z56'}">转让人
													</c:when>
													<c:otherwise>质权人
													</c:otherwise>
													</c:choose>
													</div>
													</td>
													<td colspan="3"><input id="transfereeId" name="transferee"
														value="<c:out value='${info.transferee}' />"
														 class="r_input_search0712" />
													</td>
												</tr>
												<c:if test="${app_type=='z56'}">
												<tr>
													<td ><div align="right">受让人</div>
													</td>
													<td colspan="3"><input id="publishUnitNameid" name="publishUnitName"
														value="<c:out value='${info.publishUnitName}' />" 
														class="r_input_search0712" />
													</td>
												</tr>
												</c:if>
												<tr>
													<td><div align="right">登记开始时间</div></td>
													<td><input type="text" class="Wdate" name="beginTime"
														onfocus="calShow(this);"
														value="<c:out value='${beginTime}' />" readonly /></td>
													<td><div align="right">登记结束时间</div></td>
													<td><input type="text" class="Wdate" name="endTime"
														onfocus="calShow(this);"
														value="<c:out value='${endTime}' />" readonly /></td>
												</tr>
												
								<tr align=center>
								<td colspan="4"><input type="button" value="查询" 
								class="m_button0910" id="subId" onclick="subForm('manage/info/infolist/${app_type}/${parent_type}');"/>
							&nbsp;&nbsp;&nbsp;<input type="button" value="重置" class="m_button0910" id="resetId"
							 onclick="restd('querFormId');"/></td>
												</tr>
												<tr>
													<td colspan="2"></td>
													<td colspan="2"></td>
												</tr>
											</table>
										</form>
									</div>
									<div class="s_list">
							    <c:if test="${app_type=='z51'}">
								<div class="new_button" id="aft8311" style="display:none">
								</c:if>
								<c:if test="${app_type=='z52'}">
								<div class="new_button" id="aft8321" style="display:none">
								</c:if>
								<c:if test="${app_type=='z53'}">
								<div class="new_button" id="aft8331" style="display:none">
								</c:if>
								<c:if test="${app_type=='z54'}">
								<div class="new_button" id="aft8341" style="display:none">
								</c:if>
								<c:if test="${app_type=='z56'}">
								<div class="new_button" id="aft8351" style="display:none">
								</c:if>
								<a href="manage/info/initinfoadd/${parent_type}/${app_type}">发布新信息公示</a>
								</div>
										<table width="100%" border="1" cellspacing="0" cellpadding="0"
											bordercolor="#e4e4e4"
											style="table-layout: fixed; word-wrap: break-word; margin-top: 10px;">
											<tr>
											<th width="7%">序号</th>
											<c:if test="${app_type=='z51' || app_type=='z53'}">
												<th width="9%">登记号</th>
												<th width="11%">作品编号</th>
												<th width="14%">涉及作品名称</th>
												<th width="14%">涉及作品种类</th>
												<th width="9%">出质人</th>
												<th width="9%">质权人</th>
												<th width="11%">登记日期</th>
												</c:if>
										        <c:if test="${app_type=='z52' || app_type=='z54'}">
												<th width="15%">原质权登记号</th>
												<th width="11%">作品编号</th>
												<th width="15%">涉及作品名称</th>
												<th width="10%">出质人</th>
												<th width="10%">质权人</th>
												<th width="11%">登记日期</th>
												</c:if>
												<c:if test="${app_type=='z56'}">
												<th width="9%">登记号</th>
												<th width="10%">作品编号</th>
												<th width="11%">涉及作品名称</th>
												<th width="11%">涉及作品种类</th>
												<th width="9%">出质人</th>
												<th width="9%">转让人</th>
												<th width="9%">受让人</th>
												<th width="10%">登记日期</th>
												</c:if>							
												<th width="11%" colspan="2">操作</th>
											</tr>
											<c:set var="index" value="${offset+1}"></c:set>
											<c:forEach items="${page.data}" var="infos" varStatus="idx">
												<tr id="tr${infos.id}">
													<td  align="center">${index}</td>
													<c:set var="index" value="${index+1}"></c:set>
													<c:if test="${app_type=='z51' || app_type=='z52' || app_type=='z53'  || app_type=='z54'}">
													<td>${infos.num}</td>
													<td>${infos.opusnumber}</td>
													<td>${infos.name}</td>
													<c:if test="${app_type=='z51' || app_type=='z53'}">
													<td>${infos.type}</td>
													</c:if>
													<td>${infos.owner}</td>
													<td>${infos.transferee}</td>
													<td>${infos.date}</td>
													</c:if>
													<c:if test="${app_type=='z56'}">
													<td>${infos.num}</td>
													<td>${infos.opusnumber}</td>
													<td>${infos.name}</td>
													<td>${infos.type}</td>
													<td>${infos.owner}</td>
													<td>${infos.transferee}</td>
													<td>${info.publishUnitName}</td>
													<td>${infos.date}</td>
													</c:if>
													<c:if test="${app_type=='z51'}">
													<td align="center">
													<a id="aft8312" style="display:none" href="manage/info/initinfoadd/${parent_type}/z51?id=${infos.id}">
													修改</a></td><td align="center">
													<a id="aft8313" style="display:none" href="javascript:deleteInfo('${infos.id}');">
													删除</a>
													</td>
													</c:if>
													<c:if test="${app_type=='z52'}">
													<td align="center">
													<a id="aft8322" style="display:none" href="manage/info/initinfoadd/${parent_type}/z52?id=${infos.id}">
													修改</a></td><td align="center">
													<a id="aft8323" style="display:none" href="javascript:deleteInfo('${infos.id}');">
													删除</a>
													</td>
													</c:if>
													<c:if test="${app_type=='z53'}">
													<td align="center">
													<a id="aft8332" style="display:none" href="manage/info/initinfoadd/${parent_type}/z53?id=${infos.id}">
													修改</a></td><td align="center">
													<a id="aft8333" style="display:none" href="javascript:deleteInfo('${infos.id}');">
													删除</a>
													</td>
													</c:if>
													<c:if test="${app_type=='z54'}">
													<td align="center">
													<a id="aft8342" style="display:none" href="manage/info/initinfoadd/${parent_type}/z54?id=${infos.id}">
													修改</a></td><td align="center">
													<a id="aft8343" style="display:none" href="javascript:deleteInfo('${infos.id}');">
													删除</a>
													</td>
													</c:if>
													<c:if test="${app_type=='z56'}">
													<td align="center">
													<a id="aft8352" style="display:none" href="manage/info/initinfoadd/${parent_type}/z56?id=${infos.id}">
													修改</a></td><td align="center">
													<a id="aft8353" style="display:none" href="javascript:deleteInfo('${infos.id}');">
													删除</a>
													</td>
													</c:if>
												</tr>
											</c:forEach>
										</table>
									</div>
									<!--翻页-->
								<c:if test="${!empty page.data}">
									<pg:pager items="${page.totalCount}" url="manage/info/infolist/${app_type}/${parent_type}"
										export="currentPageNumber=pageNumber" maxIndexPages="8"
										maxPageItems="${page.pageSize}">
										<pg:param name="name" value="${info.name}" />
										<pg:param name="opusnumber" value="${info.opusnumber}" />
										<pg:param name="num" value="${info.num}" />
										<pg:param name="owner" value="${info.owner}" />
										<pg:param name="date" value="${info.date}" />
										<pg:param name="type" value="${info.type}" />
										<pg:param name="transferee" value="${info.transferee}" />
										<pg:param name="publishUnitName" value="${info.publishUnitName}" />
										<pg:param name="beginTime" value="${beginTime}" />
										<pg:param name="endTime" value="${endTime}" />
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
				
</body>
<script language="javascript">
function subForm(url) {
	//提交表单
	$("#subId").attr('disabled', true);
	var frm = document.getElementById("querFormId");
	frm.action = url;
	frm.submit();
}
function deleteInfo(ids) {
	if (confirm("删除后将永远无法恢复!")) {
		$.ajax({
			url: "manage/info/deleteinfo/"+ids,
			type: "post",
			dataType: "text",
			success: function(calback){
				if(calback=="yes") {
					$("#tr"+ids).remove();
				}
			}
		});
		}
	}

$(document).ready(function(){ 
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	  $("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
</html>
