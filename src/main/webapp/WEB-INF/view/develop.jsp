<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>分发中心-中国动漫作品版权交易平台</title>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.alerts.js"></script>
<link href="${pageContext.request.contextPath}/css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
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


						<div class="c_right">
							<div>
								<img src="${pageContext.request.contextPath}/images/r_tpic02.jpg" />
							</div>
							<div class="c_right_list">
								<div class="c_content">
									<p>CCCS动漫版权服务平台的分发中心将与相关动漫资源出口机构合作，以版权分发诉求的不同，分别为原创动漫企业，提供各种资源的出口，包括：电视发行渠道、网络发行渠道、新媒体发行渠道、出版物发行渠道、音像制品发行渠道、衍生品销售渠道等多种渠道。</p>
									<p>通过动漫版权授权产业链中各个环节的中坚力量，建立起动漫产业渠道开发资源数据库。通过多样式、多渠道的选择，为版权人提供版权领域的深度开发环境，强化被授权的下游企业与版权人之间的合作关系，提升原创动漫作品的版权价值。</p>
								</div>

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
