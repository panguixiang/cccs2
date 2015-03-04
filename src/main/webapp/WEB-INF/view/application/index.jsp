<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<base href="http://${header['host']}${pageContext.request.contextPath}/" />
<title>我要登记-中国动漫版权服务平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
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
								您当前的位置：<a href="/">首页</a> &gt;&gt; 我要登记
							</div>
							<div class="c_title">
								<strong>
								<c:choose>
								<c:when test="${apptype<3}">
								著作权登记申请在线填表
								</c:when>
								<c:otherwise>
								著作权质权登记申请在线填表
								</c:otherwise>
								</c:choose>
								</strong>
							</div>
							<div class="c_r_app">
									<b>申请须知：</b><br /> 
								${applyknow.content}
							</div>
							<div class="c_right_list">
							<c:choose>
							<c:when test="${apptype<3}">
							   <div class="c_right_list0711">
								<h4>作品著作权相关登记</h4>
								<ul>
									
									<li><a href="application/z11" target="_blank">Z11.作品著作权登记申请</a>
									</li>
									<li><a href="application/z21" target="_blank">Z21.著作权合同备案申请</a>
									</li>
									<li><a href="application/z31" target="_blank">Z31.与著作权有关权利事项登记申请</a></li>
									<li><a href="application/z41" target="_blank">Z41.重印国外期刊合同登记申请</a>
									</li>
									<li><a href="application/z61" target="_blank">Z61.作品著作权和合同变更或补发登记申请 </a>
									</li>
									<li><a href="application/z62" target="_blank">Z62.撤销作品著作权和合同登记申请 </a>
									</li>
									<li><a href="application/z63" target="_blank">Z63.撤回作品著作权和合同登记申请</a>
									</li>
									<li><a href="application/z64" target="_blank">Z64.补发或更换登记证书申请</a>
									</li>
									<li><a href="application/z71" target="_blank">Z71.出版境外音像制品合同登记申请-录音制品</a>
									</li>
									<li><a href="application/z72" target="_blank">Z72.出版境外音像制品合同登记申请-影视作品</a>
									</li>
									<li><a href="application/z73" target="_blank">Z73.撤销出版境外音像制品合同登记申请</a>
									</li>
									<li><a href="application/z74" target="_blank">Z74.撤回出版境外音像制品合同登记申请</a>
									</li>
									<li><span style="line-height:16px;color:gray">Z75.变更出版境外音像制品合同登记申请</span>
									</li>
								</ul>
								</div>
								 <div class="c_right_list0711-02">
								<h4>计算机软件著作权相关登记</h4>
								<ul>
									<li><a href="application/r11" target="_blank">R11.计算机软件著作权登记申请</a>
									</li>
									<li><a href="application/r21" target="_blank">R21.计算机软件著作权转让或专有许可合同登记申请</a>
									</li>
									<li><a href="application/r41" target="_blank">R41.软件登记事项变更或补充申请</a>
									</li>
									<li><a href="application/r42" target="_blank">R42.撤销计算机软件登记请求</a></li>
									<li><a href="application/r43" target="_blank">R43.撤回计算机软件登记申请</a>
									</li>
									<li><a href="application/r44" target="_blank">R44.撤销或放弃计算机软件登记申请</a>
									</li>
									<li><a href="application/r45" target="_blank">R45.补发或者换发软件登记证书申请 </a>
									</li>
									<li><span style="line-height:16px;color:gray">R46.封存保管软件鉴别材料申请</span>
									</li>
								</ul>
								</div>
							</c:when>
							<c:otherwise>
							   <div class="c_right_list0711">
								<h4>作品著作权质权相关登记</h4>
								<ul>
									<li><a href="application/z51" target="_blank">Z51.著作权质权登记申请</a>
									</li>
									<li><a href="application/z52" target="_blank">Z52.著作权质权撤销登记申请</a>
									</li>
									<li><a href="application/z53" target="_blank">Z53.著作权质权变更登记申请</a></li>
									<li><a href="application/z54" target="_blank">Z54.注销著作权质权登记申请</a>
									</li>
									<li><a href="application/z55" target="_blank">Z55.撤回著作权质权登记申请 </a>
									</li>
									<li><a href="application/z56" target="_blank">Z56.转让著作权质权登记事项申请 </a>
									</li>
								</ul>
								</div>
								 <div class="c_right_list0711-02">
								<h4> 计算机软件著作权质权相关登记</h4>
								<ul>
									<li><span style="line-height:16px;color:gray">R51.计算机软件著作权质权登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R52.计算机软件著作权质权转让登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R53.计算机软件著作权质权变更登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R54.撤销计算机软件著作权质权登记</span></li>
									<li><span style="line-height:16px;color:gray">R56.注销计算机软件著作权质权登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R57.撤回计算机软件著作权质权登记</span>
									</li>
								</ul>
								</div>
							</c:otherwise>
							</c:choose>
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
