<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@page contentType="text/html;charset=UTF-8"%>
	<%@page pageEncoding="UTF-8"%>
	<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<head>
<title>我要上传首页-资源中心-中国动漫版权服务平台</title>
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
								您当前的位置：首页 &gt;&gt; 资源中心 &gt;&gt; 我要上传首页
							</div>
							<div class="c_title"> <strong>我要上传首页</strong>
							</div>
							<div class="c_r_app">
							 <b>免责申明：</b>
								<br><div style="height:auto; width:650px; word-break:break-all; margin-bottom:20px;">
               ${applyknow.content}
                </div>
							</div>
							<div class="c_right_list">

								<div class="c_right_list0711 c_right_lis1026">
									<h4>展示中心</h4>
									<ul>

										<li>
											<a href="cartoon/edit/1" target="_blank">同意以上申明,上传成片</a>
										</li>

									</ul>
								</div>
								<div class="c_right_list0711-02 c_right_lis1026">
									<h4>脚本中心</h4>
									<ul>
										<li>
											<a href="cartoon/edit/2" target="_blank">同意以上申明,上传脚本</a>
										</li>

									</ul>
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