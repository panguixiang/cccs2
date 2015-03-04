<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>关于我们-中国动漫作品版权交易平台</title>
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
								<img src="${pageContext.request.contextPath}/images/r_tpic01.jpg" />
							</div>
							<div class="c_right_list">
								<div class="c_content">
									<p>中国动漫作品版权服务平台（CCCS平台）”是由中国版权保护中心发起的“中国原创动漫作品版权保护合作计划”的重要组成部分，是国内第一家动漫产业聚合平台，也是国内唯一可以支持动漫作品线上版权登记的服务平台。</p>
									<p>CCCS平台可以为动漫作品、人才和商业机构提供线上电子商务到线下对接活动的全方位的动漫产业专业服务；具体包括线上提供版权登记、会员展示、业务洽谈、版权交易等电子商务服务，线下提供投资咨询、授权开发、品牌运营、国际发行以及新媒体增值服务等专业性服务。</p>
									<p>CCCS平台定位于：打造一个以版权服务为核心，通过专业的版权服务，汇聚动漫产业的优质版权资源，衔接动漫产业上下游的支撑服务平台，其核心目标是整合区域产业资源，有效链接原创动漫版权的法律服务、制作生产、产品开发、渠道分发等多个环节。基于这个核心目标，中国动漫作品版权服务平台将在全国范围内搭建四大中心：版权服务中心、版权资源中心、版权开发中心、版权分发中心。
									</p>
									<p><b>联系方式：</b><br>客服电话:010-84229644-8011<br>电子邮箱:email@chinacartooncs.com
									</p>
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
