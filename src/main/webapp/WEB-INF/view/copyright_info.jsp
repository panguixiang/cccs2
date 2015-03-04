<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国动漫作品版权交易平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
function setTab(m,n){
	 var tli=document.getElementById("menu"+m).getElementsByTagName("li");
	 var mli=document.getElementById("main"+m).getElementsByTagName("div");
	 for(i=0;i<tli.length;i++){
	  tli[i].className=i==n?"hover":"";
	  mli[i].style.display=i==n?"block":"none";
	 }
	}
</script>
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
				<div class="info_cont0808">

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
						<c:if test="${apptype=='1'}">
						版权服务 &gt;&gt; <a href="copyright?apptype=1">作品著作权相关登记</a>
						</c:if>
						<c:if test="${apptype=='2'}">
						版权服务 &gt;&gt; <a href="copyright?apptype=2">计算机著作权相关登记</a>
						</c:if>
						<c:if test="${apptype=='3'}">
						质权服务 &gt;&gt; <a href="copyright?apptype=3">作品著作权质权相关登记</a>
						</c:if>
						<c:if test="${apptype=='4'}">
						质权服务 &gt;&gt; <a href="copyright?apptype=4">计算机软件著作权质权相关登记</a>
						</c:if>
							</div>

							<div class="c_right_bqinfo">
								<div class="bq_box">
									<div id="tabs1">
										<div class="menu1box">
											<ul id="menu1">
												<c:forEach items="${articles}" var="article"
													varStatus="idx">
													<c:if test="${idx.index==0}">
														<li class="hover" onmouseover="setTab(1,${idx.index})">${article.title}</li>
													</c:if>
													<c:if test="${idx.index!=0}">
														<li onmouseover="setTab(1,${idx.index})">${article.title}</li>
													</c:if>
												</c:forEach>
											</ul>
										</div>
										<div class="main1box">
											<div class="main" id="main1">
												<c:forEach items="${articles}" var="article"
													varStatus="idx">
													<div class="bq_cont" style="display: none;">
															<h3>${article.title}</h3>
															${article.content}
														</div>
													<%-- <c:if test="${article.title=='申请须知'}">
														<div class="bq_cont">
															<h3>${article.title}&nbsp;&nbsp;&nbsp;
															<input type="button" value="在线登记" id="buttonId" class="bq_cont_input"></input></h3>
															${article.content}
														</div>
													</c:if>
													<c:if test="${article.title!='申请须知'}">
														<div class="bq_cont" style="display: none;">
															<h3>${article.title}</h3>
															${article.content}
														</div>
													</c:if> --%>
												</c:forEach>
											</div>
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
	</div>
</body>
<script language="javascript">
$("#buttonId").click(function(){
	var test="${sessionScope.CCCS_USERID}";
	if(test.length==0) {
    	alert("您还未登录，请先登录!");	
	} else {
		window.open ("${pageContext.request.contextPath}/application/${type}", "newwindow", "toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes, location=yes, status=yes");
	}
})
</script>
</html>
