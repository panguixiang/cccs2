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
<title>${subject.subjectName}-${subject.channelName}-中国动漫作品版权交易平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head>

<body>
	<div class="container_bg">
		<div class="contanier">
			<!--top-->
			<%@ include file="header.jsp"%>
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
							<%@ include file="left.jsp"%>
							<!--登录 end-->


						</div>

						<div class="c_right">
							<div class="info_title">
								您当前的位置：
								<c:out value="${subject.channelName}" />
								&gt;&gt;
								<c:out value="${subject.subjectName}" />
								&gt;&gt; 列表
							</div>
							<div class="c_title"><c:out value="${subject.subjectName}" /></div>
							<div class="c_list">
								<ul>
									<c:forEach items="${page.data}" var="article" varStatus="idx">
										<li><div class="c_list_date">
											${article.pub_date}
											</div>
											<div>
												<a href="article/${article.id}">${article.title}</a>
											</div>
										</li>

									</c:forEach>
								</ul>

							</div>
							<!--翻页-->
                      <c:if test="${!empty page.data}">
							<pg:pager items="${page.totalCount}" url="article/list"
								export="currentPageNumber=pageNumber" maxIndexPages="8"
								maxPageItems="${page.pageSize}">
								<pg:param name="subject" value="${subject.subjectSign}" />

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
													<li><a href="${pageUrl}">${pageNumber}</a>
													</li>
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
							</c:if>
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
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
	</div>
</body>
</html>
