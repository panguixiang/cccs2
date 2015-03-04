<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>关于我们-中国动漫作品版权交易平台</title>
<link href="/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/js/jquery.alerts.js"></script>
<link href="/css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="/js/common.js"></script>
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
								<img src="/images/i_left01.gif" />
							</h3>
							<!--登录-->
							<%@ include file="left.jsp"%>
							<!--登录 end-->
						</div>


						<div class="c_right">
							<div>
								<img src="/images/r_tpic03.jpg" />
							</div>
							<div class="c_right_list">
								<div class="c_content">
									<p>CCCS platform performs mainly constitution of China Original Cartoon Copyright Protection and Cooperation Plan launched by CPCC. CCCS platform is not merely the first combination platform for domestic cartoon industry but the only service platform which has capability to support online copyright registration for cartoon.</p>
									<p>CCCS platform is capable to provide professional full service from online e-commerce to offline mutual communication activity for cartoons, the talented and commercial institution, including e-commerce service for online registration for copyright, members display, business negotiation, copyright transaction, as well as offline professional service for providing investment consultation, development authorization, brand operation, international distribution and new media value increasing.</p>
									<p>CCCS devotes itself to building a supporting platform to accumulate quality copyright cartoon resource then combine the upstream and downstream of the industry through professional copyright service as its core. It targets mainly on integrating regional resources, jointing effectively every single aspect of original cartoon copyright legal service, manufacture, product development and channel distribution. Therefore, serving for its core commitment, CCCS platform will establish four centers nationwide, namely copyright service center, copyright resource center, copyright development center and copyright distribution center.</p>
								</div>
							</div>

						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div>
					<img src="/images/cont_button.gif" />
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
