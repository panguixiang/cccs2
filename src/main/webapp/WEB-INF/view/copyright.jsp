<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>作品著作权登记与合同备案-中国动漫作品版权交易平台</title>
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
						<c:choose>
						<c:when test="${apptype<3}">
						<div class="info_title">您当前的位置：版权服务 &gt;&gt; 
							<c:choose>
							<c:when test="${apptype=='1'}">
								<a href="copyright?apptype=1">作品著作权相关登记</a>
							</c:when>
							<c:otherwise>
								<a href="copyright?apptype=2">计算机著作权相关登记</a>
							</c:otherwise>
							</c:choose>
						</div>
                    
							<div class="c_right_list">
							<div class="c_right_list0711">
								<h4>作品著作权相关登记</h4>
								<ul>
									<li><a href="app_article/z11/1">Z11.作品著作权登记申请</a>
									</li>
									<li><a href="app_article/z21/1">Z21.著作权合同备案申请</a>
									</li>
									<li><a href="app_article/z31/1">Z31.与著作权有关权利事项登记申请</a></li>
									<li><a href="app_article/z41/1">Z41.重印国外期刊合同登记申请</a>
									</li>
									<li><a href="app_article/z61/1">Z61.作品著作权和合同变更或补发登记申请 </a>
									</li>
									<li><a href="app_article/z62/1">Z62.撤销作品著作权和合同登记申请 </a>
									</li>
									<li><a href="app_article/z63/1">Z63.撤回作品著作权和合同登记申请</a>
									</li>
									<li><a href="app_article/z64/1">Z64.补发或更换登记证书申请</a>
									</li>
									<li><a href="app_article/z71/1">Z71.出版境外音像制品合同登记申请-录音制品</a>
									</li>
									<li><a href="app_article/z72/1">Z72.出版境外音像制品合同登记申请-影视作品</a>
									</li>
									<li><a href="app_article/z73/1">Z73.撤销出版境外音像制品合同登记申请</a>
									</li>
									<li><a href="app_article/z74/1">Z74.撤回出版境外音像制品合同登记申请</a>
									</li>
									<li><a href="app_article/z75/1">Z75.变更出版境外音像制品合同登记申请</a>
									</li>
								</ul>
								</div>
								 <div class="c_right_list0711-02">
								<h4>计算机软件著作权相关登记</h4>
								<ul>
									<li><a href="app_article/r11/2">R11.计算机软件著作权登记申请</a>
									</li>
									<li><a href="app_article/r21/2">R21.计算机软件著作权转让或专有许可合同登记申请</a>
									</li>
									<li><a href="app_article/r41/2">R41.软件登记事项变更或补充申请</a>
									</li>
									<li><a href="app_article/r42/2">R42.撤销计算机软件登记请求</a></li>
									<li><a href="app_article/r43/2">R43.撤回计算机软件登记申请</a>
									</li>
									<li><a href="app_article/r44/2">R44.撤销或放弃计算机软件登记申请</a>
									</li>
									<li><a href="app_article/r45/2">R45.补发或者换发软件登记证书申请 </a>
									</li>
									<li><span style="line-height:16px;color:gray">R46.封存保管软件鉴别材料申请</span>
									</li>
								</ul>
                            </div>
							</div>
						</c:when>
						<c:otherwise>
						<div class="info_title">您当前的位置：质权服务 &gt;&gt; 
							<c:choose>
							<c:when test="${apptype=='3'}">
								<a href="copyright?apptype=3">作品著作权质权相关登记</a>
							</c:when>
							<c:otherwise>
								<a href="copyright?apptype=4">计算机软件著作权质权相关登记</a>
							</c:otherwise>
							</c:choose>
						</div>
                    
							<div class="c_right_list">
							<div class="c_right_list0711">
								<h4>作品著作权质权相关登记</h4>
								<ul>
									<li><a href="app_article/z51/3">Z51.著作权质权登记申请</a>
									</li>
									<li><a href="app_article/z52/3">Z52.著作权质权撤销登记申请</a>
									</li>
									<li><a href="app_article/z53/3">Z53.著作权质权变更登记申请</a>
									</li>
									<li><a href="app_article/z54/3">Z54.注销著作权质权登记申请</a>
									</li>
									<li><a href="app_article/z55/3">Z55.撤回著作权质权登记申请</a>
									</li>
									<li><a href="app_article/z56/3">Z56.转让著作权质权登记事项申请</a>
									</li>
									
								</ul>
								</div>
								 <div class="c_right_list0711-02">
								<h4>计算机软件著作权质权相关登记</h4>
								<ul>
									<li><span style="line-height:16px;color:gray">R51.计算机软件著作权质权登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R52.计算机软件著作权质权转让登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R53.计算机软件著作权质权变更登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R54.撤销计算机软件著作权质权登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R56.注销计算机软件著作权质权登记</span>
									</li>
									<li><span style="line-height:16px;color:gray">R57.撤回计算机软件著作权质权登记</span>
									</li>
								</ul>
                            </div>
							</div>
						</c:otherwise>
						</c:choose>
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
