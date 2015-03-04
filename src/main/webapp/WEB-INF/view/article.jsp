<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${article.title}-${subject.subjectName}-${subject.channelName}-中国动漫作品版权交易平台</title>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.alerts.js"></script>
<link href="${pageContext.request.contextPath}/css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
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
					<img src="${pageContext.request.contextPath}/images/navbottom.gif" />
				</div>
				<div class="info_cont">

					<div class="info_box">
						<div class="i_left">
							<h3>
								<img src="${pageContext.request.contextPath}/images/i_left01.gif" />
							</h3>
							<!--登录-->
							<%@ include file="left.jsp"%>
							<!--登录 end-->




						</div>
						<div class="i_right">
							<div class="info_title">
								您当前的位置：
								<c:out value="${subject.channelName}" />
								>>
						<a href="${pageContext.request.contextPath}/article/list?pager.offset=0&subject=${subj}">
						<c:out value="${subject.subjectName}" /></a>
								>> 正文
							</div>
							<div class="i_right_cont">

								<h3>
									<c:out value="${article.title}" />
								</h3>
								<div class="i_r_date">
									<span>${article.pub_date}</span> <span>信息来源：<c:out
											value="${article.source}" /> </span>
								</div>
								<div class="i_r_text">${article.content}</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/images/cont_button.gif" />
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
