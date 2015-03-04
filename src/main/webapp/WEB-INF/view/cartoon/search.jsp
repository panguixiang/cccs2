<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
<base href="http://${header['host']}${pageContext.request.contextPath}/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我要查询-中国动漫版权服务平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<div class="container_bg">
		<div class="contanier">
			<!--top-->
			<%@ include file="../header.jsp"%>
			<!--topend-->

			<!--信息内容-->
			<div class="info_content">
				<div class="info_top">
					<img src="images/navbottom.gif" />
				</div>
				<div class="info_cont">
					<div class="info_box">

						<div class="i_left">
							<h3>
								<img src="images/i_left01.gif" />
							</h3>
							<!--登录-->
							<%@ include file="../left.jsp"%>
							<!--登录 end-->

						</div>

						<div class="c_right">
							<div class="info_title">
								您当前的位置：<a href="/">首页</a> &gt;&gt; 资源中心 &gt;&gt; 我要查询
							</div>
							<div class="c_title">我要查询</div>
							<div class="c_right_bqinfo">
								<div class="bq_box">
									<div>
										<form:form modelAttribute="cartoon" action="cartoon/search"
											method="get" id="querFormId">
											<table cellspacing="0" cellpadding="0" width="100%"
												class="app_table">
												<tr>
													<td colspan="4"><div class="search_">查询条件</div></td>
												</tr>
												<tr>
													<td><div align="right">类型</div></td>
													<td colspan="3"><form:select path="cp"
															class="search_input0808">
															<form:option value="">全部</form:option>
															<form:option value="1">展示中心</form:option>
															<form:option value="2">脚本中心</form:option>
														</form:select></td>
												</tr>
												<tr>
													<td><div align="right">作品名称</div></td>
													<td colspan="3"><form:input path="title"
															value="${cartoon.title}" class="r_input_search0712" /></td>
												</tr>

												<tr>
													<td><div align="right">上传开始时间</div></td>
													<td><input type="text" class="Wdate" name="beginTime"
														onfocus="calShow(this);"
														value="<c:out value='${beginTime}' />" readonly /></td>
													<td><div align="right">上传结束时间</div></td>
													<td><input type="text" class="Wdate" name="endTime"
														onfocus="calShow(this);"
														value="<c:out value='${endTime}' />" readonly /></td>
												</tr>

												<tr align=center>
													<td colspan="4"><input type="button" value="查询"
														class="m_button0807" id="subId" onclick="subForm();"
														onmouseover="this.className='btn_mouseover'"
														onmouseout="this.className='btn_mouseout'" />
														&nbsp;&nbsp;&nbsp;<input type="button" value="重置"
														class="m_button0807" id="resetId"
														onclick="restd('querFormId');"
														onmouseover="this.className='btn_mouseover'"
														onmouseout="this.className='btn_mouseout'" /></td>
												</tr>
												<tr>
													<td colspan="2"></td>
													<td colspan="2"></td>
												</tr>
											</table>
										</form:form>
									</div>
									<div class="s_list">
										<table width="100%" id="tableid" border="1" cellspacing="0"
											cellpadding="0" bordercolor="#e4e4e4"
											style="table-layout: fixed; word-wrap: break-word; margin-top: 10px;">
											<tr>
												<th width="15%">作品名称</th>
												<th width="15%">作者</th>
												<th width="15%">作品大类型</th>
												<th width="15%">作品上传时间</th>
												<th width="10%">状态</th>
												<th width="15%">审核意见</th>
												<th width="15%">操作</th>
											</tr>

											<c:forEach items="${page.data}" var="cartoon" varStatus="idx">
												<tr>
													<td>${cartoon.title}</td>
													<td>${cartoon.author}</td>
													<td><c:if test="${cartoon.cp ==1}">展示中心</c:if>
														<c:if test="${cartoon.cp ==2}">脚本中心</c:if></td>
													<td><fmt:formatDate value="${cartoon.create_time}"
															pattern="yyyy-MM-dd" /></td>
													<td align="center">
													<c:if test="${cartoon.state==1}">未完成</c:if>
													<c:if test="${cartoon.state==2}">已提交</c:if>
													<c:if test="${cartoon.state==3}">审核中</c:if>
													<c:if test="${cartoon.state==4}">已展示</c:if>
													<c:if test="${cartoon.state==5}">已下架</c:if>
													<c:if test="${cartoon.state==6}">审核通过</c:if>
													<c:if test="${cartoon.state==7}">审核未通过</c:if>
													</td>
													<td align="left">
													 <c:out value='${cartoon.common}' />
													</td>
													<td align="center"><p class="blue_text">
															<a href="cartoon/detail/${cartoon.id}" target="_blank">查看</a>
															<c:choose>
																<c:when test="${cartoon.state==1}">
																	<a href="cartoon/edit/${cartoon.cp}?cartoon_id=${cartoon.id}" target="_blank"> 修改</a>
																</c:when>
																<c:otherwise>
																修改
																</c:otherwise>
															</c:choose>
															
														</p></td>
												</tr>
											</c:forEach>
										</table>
									</div>
									<!--翻页-->
									<c:if test="${!empty page.data}">
										<pg:pager items="${page.totalCount}" url="cartoon/search"
											export="currentPageNumber=pageNumber" maxIndexPages="8"
											maxPageItems="${page.pageSize}">
											<pg:param name="cp" value="${cartoon.cp}" />
											<pg:param name="title" value="${cartoon.title}" />
											<pg:param name="beginTime" value="${beginTime}" />
											<pg:param name="endTime" value="${endTime}" />
											<div class="page csBlue">
												<ul>
													<pg:first>
														<li><a href="${pageUrl}">首页</a></li>
													</pg:first>
													<pg:prev>
														<li><a href="${pageUrl}">前一页</a></li>
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
														<li><a href="${pageUrl}">后一页</a></li>
													</pg:next>
													<pg:last>
														<li><a href="${pageUrl}">尾页</a></li>
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
					</div>
				</div>
				<div>
					<img src="images/cont_button.gif" />
				</div>
			</div>
			<!--信息内容 end-->
			<!--底部-->
			<%@ include file="../footer.jsp"%>
			<!--底部 end-->
		</div>
	</div>
	<!-- 弹出层 -->
	<div class="show_m_div" id="show_m_div_id" style="visibility: hidden;">
		<h2>处理通知单</h2>
		<div class="show_div">
			<div class="show_time" id="showId"></div>
			<ul>
				<li id="liId1"></li>
				<li id="liId2"></li>
			</ul>
			<div class="show_btn">
				<input name="" type="button" value=" 关闭 " onclick="closeDiv();" />
			</div>
		</div>
	</div>
</body>
<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function subForm() {
		//提交表单
		$("#subId").attr('disabled', true);
		var frm = document.getElementById("querFormId");
		frm.submit();
	}
</script>
</html>
