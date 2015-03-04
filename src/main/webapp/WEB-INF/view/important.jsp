<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>作品著作权登记与合同备案-中国动漫作品版权交易平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
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
							<div class="c_title">版权登记的好处和重要性 </div>
							<div class="c_right_bqinfo">
								<div class="right_important">
									<div>
										<h2><img src="images/importance_title.jpg"></h2>
					                  	     <h3 class="menu imp_pic01"><img src="images/importance_pic01.jpg"></h3>
						                          <span class="menu_ul imp_spics01" style="">
							                       <img src="images/importance_picbg01.jpg" /> 
						                          </span>
											 <h3 class="menu imp_pic01"><img src="images/importance_pic02.jpg"></h3>
						                          <span class="menu_ul imp_spics01" style="DISPLAY: none">
							                      <img src="images/importance_picbg02.jpg" /> 
						                          </span>			
											 <h3 class="menu imp_pic01"><img src="images/importance_pic03.jpg"></h3>
						                          <span class="menu_ul imp_spics01" style="DISPLAY: none">
							                      <img src="images/importance_picbg03.jpg" />
						                          </span>
											<h3 class="menu imp_pic01"><img src="images/importance_pic04.jpg"></h3>
						                          <span class="menu_ul imp_spics01" style="DISPLAY: none">
							                      <img src="images/importance_picbg04.jpg" />
						                          </span>
											<h3 class="menu imp_pic01"><img src="images/importance_pic05.jpg"></h3>
						                          <span class="menu_ul imp_spics01" style="DISPLAY: none">
							                      <img src="images/importance_picbg05.jpg" />                                                  
						                          </span>
									</div>
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
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	//单击菜单触发的事件 
	$(".menu").click(function () { 
	  if($(this).next("span").css("display")=='none') {
	  $(this).next("span").css("display", "block");//当前一级菜单的二级菜单设置为可见 

	  } else {
	  $(this).next("span").css("display", "none");//当前一级菜单的二级菜单设置为可见 
	
	  }	
	})	
});
</script>
</html>
