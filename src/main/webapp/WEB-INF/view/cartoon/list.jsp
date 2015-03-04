<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>资源中心-中国动漫作品版权交易平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
	function changeAndSubmit(obj, value) {
		$(obj).attr("value", value);
		$('#cartoonForm').submit();
	}
</script>
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

						<div class="c_right" >
							<div class="info_title">您当前的位置：资源中心 &gt;&gt; <c:if test="${cp==1}">展示中心</c:if><c:if test="${cp==2}">脚本中心</c:if></div>

							<div class="c_title"><c:if test="${cp==1}">展示中心</c:if><c:if test="${cp==2}">脚本中心</c:if></div>
							<div class="c_fenlei">
								<div class="c_f_box">
									<div id="c_f_01">
										<div class="c_r_contet">
											<form:form modelAttribute="cartoon" action="cartoon/${cp}"
												method="get" id="cartoonForm">
												<div class="c_r_a">
													<ul>

														<li>
															<div class="li_left2">题材索引</div>
															<div class="li_right2">
																<c:if
																	test="${cartoon.theme != '' &&cartoon.theme !=null}">
																	<span class="blue_text2"> <a
																		href="javascript:changeAndSubmit('#theme','')">全部</a>
																	</span>
																</c:if>
																<c:if
																	test="${cartoon.theme ==''|| cartoon.theme ==null}">
																	<strong>全部</strong>
																</c:if>
																<c:forEach items="${themes}" var="obj">
																	<c:if test="${cartoon.theme != obj}">
																		<span class="blue_text2"> <a
																			href="javascript:changeAndSubmit('#theme','${obj}')">${obj}</a>
																		</span>
																	</c:if>
																	<c:if test="${cartoon.theme ==obj}">
																		<strong>${obj}</strong>
																	</c:if>
																</c:forEach>
															</div>
															<div class="clear"></div>
														</li>
														<form:hidden path="theme" value="${cartoon.theme}" />
														<li>
															<div class="li_left2">类型索引</div>
															<div class="li_right2">
																<c:if test="${cartoon.type != '' &&cartoon.type !=null}">
																	<span class="blue_text2"> <a
																		href="javascript:changeAndSubmit('#type','')">全部</a>
																	</span>
																</c:if>
																<c:if test="${cartoon.type ==''|| cartoon.type ==null}">
																	<strong>全部</strong>
																</c:if>
																<c:forEach items="${types}" var="obj">
																	<c:if test="${cartoon.type != obj}">
																		<span class="blue_text2"> <a
																			href="javascript:changeAndSubmit('#type','${obj}')">${obj}</a>
																		</span>
																	</c:if>
																	<c:if test="${cartoon.type ==obj}">
																		<strong>${obj}</strong>
																	</c:if>
																</c:forEach>
															</div>
															<div class="clear"></div>
														</li>
														<form:hidden path="type" value="${cartoon.type}" />
														<li>
															<div class="li_left2">片长索引</div>
															<div class="li_right2">
																<c:if test="${cartoon.length != '' &&cartoon.length !=null}">
																	<span class="blue_text2"> <a
																		href="javascript:changeAndSubmit('#length','')">全部</a>
																	</span>
																</c:if>
																<c:if test="${cartoon.length ==''|| cartoon.length ==null}">
																	<strong>全部</strong>
																</c:if>
																<c:forEach items="${lengths}" var="obj">
																	<c:if test="${cartoon.length != obj}">
																		<span class="blue_text2"> <a
																			href="javascript:changeAndSubmit('#length','${obj}')">${obj}</a>
																		</span>
																	</c:if>
																	<c:if test="${cartoon.length ==obj}">
																		<strong>${obj}</strong>
																	</c:if>
																</c:forEach>
															</div>
															<div class="clear"></div>
														</li>
														<form:hidden path="length" value="${cartoon.length}" />
														<li>
															<div class="li_left2">国籍索引</div>
															<div class="li_right2">
																<c:if test="${cartoon.area != '' &&cartoon.area !=null}">
																	<span class="blue_text2"> <a
																		href="javascript:changeAndSubmit('#area','')">全部</a>
																	</span>
																</c:if>
																<c:if test="${cartoon.area ==''|| cartoon.area ==null}">
																	<strong>全部</strong>
																</c:if>
																<c:forEach items="${areas}" var="obj">
																	<c:if test="${cartoon.area != obj}">
																		<span class="blue_text2"> <a
																			href="javascript:changeAndSubmit('#area','${obj}')">${obj}</a>
																		</span>
																	</c:if>
																	<c:if test="${cartoon.area ==obj}">
																		<strong>${obj}</strong>
																	</c:if>
																</c:forEach>
															</div>
															<div class="clear"></div>
														</li>
														<form:hidden path="area" value="${cartoon.area}" />

														<li>
															<div class="li_left2">年份索引</div>
															<div class="li_right2">
																<form:select path="year" onChange="javascript:changeAndSubmit('','')">
																	<form:option value="">全部</form:option>
																	<c:forEach items="${years}" var="obj">
																		<form:option value="${obj}">${obj}</form:option>
																	</c:forEach>
																</form:select>
															</div>
															<div class="clear"></div>
														</li>
														
														<li>
															<div class="li_left2">年龄索引</div>
															<div class="li_right2">
																<c:if
																	test="${cartoon.yearzone != '' &&cartoon.yearzone !=null}">
																	<span class="blue_text2"> <a
																		href="javascript:changeAndSubmit('#yearzone','')">全部</a>
																	</span>
																</c:if>
																<c:if
																	test="${cartoon.yearzone ==''|| cartoon.yearzone ==null}">
																	<strong>全部</strong>
																</c:if>
																<c:forEach items="${yearzones}" var="obj">
																	<c:if test="${cartoon.yearzone != obj}">
																		<span class="blue_text2"> <a
																			href="javascript:changeAndSubmit('#yearzone','${obj}')">${obj}</a>
																		</span>
																	</c:if>
																	<c:if test="${cartoon.yearzone ==obj}">
																		<strong>${obj}</strong>
																	</c:if>
																</c:forEach>
															</div>
															<div class="clear"></div>
														</li>
														<form:hidden path="yearzone" value="${cartoon.yearzone}" />
													</ul>

												</div>
												<div class="c_r_search">
													<input type="text" id="condition" name="condition"
														class="fl_input" value="${condition}"></input> <input
														type="submit" value="" class="fl_button" />
												</div>
											</form:form>
											<div class="c_r_b">
												<ul>
													<c:forEach items="${page.data}" var="cartoon"
														varStatus="idx">
														<li>
															<a href="cartoon/detail/${cartoon.id}" target="_blank"><p class="dt"
																style="background: url(${cartoon.cover_path}) center center no-repeat;"></p></a>
															<p>
																<span class="blue_text"> 名称： <a href="cartoon/detail/${cartoon.id}" target="_blank">${cartoon.title}</a>
																</span>
															</p>
															<p>
																<span class="blue_text">作者：${cartoon.author}</span>
															</p>
														</li>
													</c:forEach>
												</ul>
												<div class="clear"></div>
											</div>
											<!--翻页-->

											<pg:pager items="${page.totalCount}" url="cartoon/1"
												export="currentPageNumber=pageNumber" maxIndexPages="8"
												maxPageItems="${page.pageSize}">

												<pg:param name="theme" value="${cartoon.theme}" />
												<pg:param name="type" value="${cartoon.type}" />
												<pg:param name="area" value="${cartoon.area}" />
												<pg:param name="year" value="${cartoon.year}" />
												<pg:param name="yearzone" value="${cartoon.yearzone}" />
												<pg:param name="condition" value="${condition}" />

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
											<!--翻页 end-->
										</div>
									</div>
									<div class="clear"></div>
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
</body>
</html>