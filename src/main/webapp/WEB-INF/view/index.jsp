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
<title>首页-中国动漫作品版权交易平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/banner.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.featureList-1.0.0.js"></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/common.js"></script>
<script language="javascript">
	$(document).ready(function() {
		$.featureList($("#tabs li a"), $("#output li"), {
			start_item : 1
		});
	 var userid = "${sessionScope.CCCS_USERID}";
	 if(userid.length==0) {
			  s('passport','邮箱/账号');
	 }
	 //漂浮对联 
	var duilian = $("div.duilian");
	var duilian_close = $("a.duilian_close");
	var window_w = $(window).width();
	if(window_w>1000){duilian.show();}
	  $(window).scroll(function(){
		 var scrollTop = $(window).scrollTop();
		 duilian.stop().animate({top:scrollTop+155});
	  });
	 duilian_close.click(function(){
			//$(this).parent().hide();
			$(".duilian").hide();
			return false;
		});
		
	}); 
	function toUrl(urls) {
		window.open(urls);
	}
	
	 function toforgetpaswd() {
	   	  location.href="${pageContext.request.contextPath}/account/toforgetpaswd";
	     }	
	 
	function getValidateServlets()
	 {
	     document.getElementById("imagedid").src="${pageContext.request.contextPath}/account/captcha-image?"+Math.random();
	 }
	 function changCurso()
	 {
	    document.getElementById("imagedid").style.cursor = "pointer";
	 }
	 $(document).keydown(function(event) {
		if (event.keyCode == 13) {
			signin('${pageContext.request.contextPath}');
		}
	});
	 
	
		
		   function g(a){return document.getElementById(a)} 
		    function s(n,v){ 
		      with(g(n)){ 
		        className='a1';value=v; 
		        onfocus=function(){if(value==v)value='';className='a2'} 
		        onblur=function(){if(value==''){value=v;className='a1'}} 
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

			<!--主要内容-->
			<div class="content">
				<div class="c_top">
					<div class="flash">

						<div id="feature_list">
						<ul id="tabs">
						    <c:forEach items="${page.data}" var="indexnewtitle">
								<li><div class="tabs_title"><a href="#" >${indexnewtitle.title}</a></div>
								</li>
							</c:forEach>
						</ul>
						<ul id="output">
						   <c:forEach items="${page.data}" var="indexnew">
								<a href="Javascript:toUrl('${indexnew.url}');" ><li>
								<img src="upload/indexnews/${indexnew.image}" 
								width="400" height="300" />
								</li></a>
						  </c:forEach>		
						</ul>
						
						</div>
					</div>
					<div class="login">
						<h3>
							<img src="images/index_logint.gif" />
						</h3>
						<div class="lgon_c">
							<!--登录前-->
							<c:if test="${empty sessionScope.CCCS_USERID}">
								<div class="login_b_c" style="border: none; display: ">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td colspan="2"><div class="login_font">没有账号？</div>
											</td>
										</tr>
										<tr>
											<td colspan="2" style="text-align: center"><div
													class="login_b">
													<a href="account/initsignup" title="请立即会员申请"><img
														src="images/reg_b.gif" width="156" height="31" /> </a>
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="2"><div class="login_font">注册用户请直接登录</div>
											</td>
										</tr>
										<tr>
											<td width="29%" style="text-align: right">用户名：</td>
											<td width="71%"><input type="text" name="passport"
												id="passport" style=" width:173px; height:21px; line-height:21px; padding-left:5px;" />
											</td>
		                                </tr>
										<tr>
											<td style="text-align: right">密&nbsp;&nbsp;码：</td>
											<td><input type="password" name="passwd" id="passwd"
												class="l_b_input" />
											</td>
										</tr>
										<tr>
											<td style="text-align: right">验证码：</td>
											<td><input type="text" name="captcha" id="captcha"
												class="l_b_input02" /> 
						<img src="account/captcha-image" width="80" height="24"
						   id="imagedid" onclick="getValidateServlets();" onmouseover="changCurso();" />
												</td>
										</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<div style="padding-top: 5px;">
								<input value="" type="button" 
									class="login_button" onclick="signin('${pageContext.request.contextPath}');" />
								<div class=" login_forget"><a href="javascript:toforgetpaswd();">忘记密码</a></div>
							</div>
						</td>
					</tr>
									</table>
								</div>
							</c:if>

							<!--登录前 end-->
							<!--登录后-->
							<c:if test="${!empty sessionScope.CCCS_USERID}">
								<div class="login_a_c" style="border: none;">
									<div class="login_date">
										现在是：
										<fmt:formatDate value="${now}"
											pattern="yyyy年MM月dd日  E a HH:mm:ss" />
									</div>

									<dl>
										<dt style="width: 80px; margin-right: 20px;">
											<c:choose>
											 <c:when test="${sessionScope.accountSession.portraitimg == null || sessionScope.accountSession.portraitimg == ''}">
											  <img src="images/posenlogo.gif" width="80px" height="80px"/>
											 </c:when>
											 <c:otherwise>
											 <img src="${sessionScope.accountSession.portraitimg}" width="80px" height="80px"/>
											 </c:otherwise>
											</c:choose>
										</dt>
										<dd>${sessionScope.CCCS_NAME}</dd>
										<dd>您好！欢迎登录版权中心</dd>
										<dd>很高兴能为您服务！</dd>
									</dl>
									<div class="login_a_button">
										<a href="mycenter/interaccount/account">个人中心
										</a> 
										<a href="javascript:void(0);" onclick="signout('${pageContext.request.contextPath}/account/signout');" style="color: red;">退出登录</a>
										<%-- <a href="javascript:signout('${pageContext.request.contextPath}');"
											style="color: red;">退出登录</a> --%>
									</div>
									<div id="menuid" class="login_add0907">
									<a href="mycenter/stationmaillist?mailtype=1">站内信</a></div>
									
									<!--<a href="#" id="changeid">跳转</a>
									<div id="menuid" class="login_add0907">
										<a href="${pageContext.request.contextPath}/application/index">版权服务</a>&nbsp;&nbsp;
										<a href="${pageContext.request.contextPath}/application/index?orders=2">质权服务</a>&nbsp;&nbsp;
										<c:choose>
										<c:when test="${sessionScope.CCCS_USER_LEVEL=='2'}">
										<a href="${pageContext.request.contextPath}/cartoon/1">资源中心</a>
										</c:when>
										<c:otherwise>
										</c:otherwise>
										</c:choose>
									</div>
									-->
								</div>
							</c:if>
							<!--登录后 end-->
						</div>
					</div>
				</div>
				<div class="main_cont">
					<div class="main_box">
					
						<!--banner开始-->
						<div class="main_ad0907">
							<a href="app_article/important">
							<img src="images/ad_20120907.jpg" />
							</a>
						</div>
						<!--banner结束-->
						
						<div class="index_left">
							<!--版权服务大厅-->
							<div class="l_c m_b10">							
								<h3>
									<img src="images/index_l_title01.gif" />
								</h3>
							<div class="l_c_box_a">
									<div class="left_ul">
										<div class="left_t2">作品著作权和合同登记</div>
										<ul class="ul_one">
											<li><a href="app_article/z11/1">作品著作权登记申请</a>
											</li>
											<li><a href="app_article/z21/1">作品著作权合同备案申请</a>
											</li>
											<li><a href="app_article/z61/1">作品著作权和合同变更或补发登记申请</a>
											</li>
										</ul>
									</div>
									
									<div class="left_ul2">
										<div class="left_t">作品著作权质权相关登记</div>
										<ul class="ul_one">
											<li><a href="app_article/z52/3">著作权质权撤销登记申请</a>
											</li>
											<li><a href="app_article/z54/3">注销著作权质权登记申请</a>
											</li>
											<li><a href="app_article/z56/3">转让著作权质权登记事项申请</a>
											</li>
										</ul>
									</div>

									<div class="left_ul">
										<div class="left_t3">作品著作权信息公示</div>
										<ul class="ul_two">
									<c:forEach items="${zpxgs}" var="zpxg"> 
											<li><a href="info/list?id=${zpxg.id}">${zpxg.name}</a>
											</li>
									</c:forEach>
									</ul>
									</div>

									<div class="left_ul2">
										<div class="left_t3">作品著作权质权信息公示</div>
										<ul class="ul_two">
										<c:forEach items="${zpzqxgs}" var="zpzqxg">
											<li><a href="info/list?id=${zpzqxg.id}">${zpzqxg.name}</a>
											</li>
											</c:forEach>
										</ul>
									</div>

									<div class="clear"></div>
								</div>
							</div>
							<!--版权服务大厅 end-->
							<div class="banner_01 m_b10">
								<img src="images/ad01.jpg" />
							</div>
							<!--新闻动态-->
							<div class="l_c m_b10">
								<h3>
									<span class="l_more"><a href="#">more &gt;&gt;</a> </span><img
										src="images/index_l_title02.gif" />
								</h3>
								<div class="l_c_box_b">
									<div class="left_ul">
										<h3>业界资讯</h3>
										<ul class="ul_there">
											<c:forEach items="${zx}" var="article" varStatus="idx">
												<li title="${article.title}"><a
													href="article/${article.id}">${article.title}</a>
												</li>

											</c:forEach>
										</ul>
									</div>

									<div class="left_ul">
										<h3>热点关注</h3>
										<ul class="ul_there">
											<c:forEach items="${gz}" var="article" varStatus="idx">
												<li title="${article.title}"><a
													href="article/${article.id}">${article.title}</a>
												</li>
											</c:forEach>
										</ul>
									</div>
									<div class="left_ul">
										<h3>版权要闻</h3>
										<ul class="ul_there">
											<c:forEach items="${yw}" var="article" varStatus="idx">
												<li title="${article.title}"><a
													href="article/${article.id}">${article.title}</a>
												</li>
											</c:forEach>
										</ul>
									</div>

									<div class="left_ul">
										<h3>中心动态</h3>
										<ul class="ul_there">
											<c:forEach items="${dt}" var="article" varStatus="idx">
												<li title="${article.title}"><a
													href="article/${article.id}">${article.title}</a>
												</li>
											</c:forEach>
										</ul>
									</div>
									<div class="clear"></div>
								</div>
							</div>
							<!--新闻动态 end-->
						</div>
						<div class="index_right">
							<!--版权法律服务-->
							<div class="r_c_box m_b10">
								<div class="r_c_title">
									<div class="c_more">
										<a href="#">more &gt;&gt;</a>
									</div>
									<img src="images/index_r_name01.gif" alt="版权法律服务" />
								</div>
								<ul>
									<c:forEach items="${flfw}" var="article" varStatus="idx">
										<li title="${article.title}"><a
											href="article/${article.id}">${article.title}</a>
										</li>
									</c:forEach>
								</ul>
							</div>
							<!--版权法律服务 end-->
							<!-- <div class="AD_01 m_b10">
								<div class="r_enter">
									<a href="#">点击进入</a>
								</div>
								<div>
									<img src="images/index_r_d.gif" alt="烟台分中心即将开通" />
								</div>
								<p>烟台分中心即将开通，实验影像再度化前即将隆重推出更与众瞩目的作品。</p>
							</div> -->
							<div class="AD_02 m_b10">
								<img src="images/ad02.jpg" />
							</div>
							<!--地方分中心新闻-->
							<div class="r_c_box m_b10">
								<div class="r_c_title">
									<div class="c_more">
										<a href="#">more &gt;&gt;</a>
									</div>
									<img src="images/index_r_name02.gif" alt="地方分中心新闻" />
								</div>
								<ul>
									<c:forEach items="${fzxxw}" var="article" varStatus="idx">
										<li title="${article.title}">
										<a href="article/${article.id}">${article.title}</a></li>
									</c:forEach>
								</ul>
							</div>
							<!--地方分中心新闻 end-->
						</div>
						<div class="clear"></div>
						<!--友情链接-->
						<div class="link_box">
							<h3>
								<img src="images/index_r_name03.gif" alt="友情链接" />
							</h3>
							<div class="link_ul">
								<ul>
									<%-- <li><a href="http://www.ccopyright.com.cn/cpcc/"
										target="_blank"><img src="${pageContext.request.contextPath}/images/linklogo.gif" /> </a>
									</li>
									<li><a href="http://comic.book.sina.com.cn/"
										target="_blank"><img src="${pageContext.request.contextPath}/images/sinalogo.gif" /> </a>
									</li>
									<li><a href="http://comic.chinaren.com/" target="_blank"><img
											src="${pageContext.request.contextPath}/images/sohulogo.gif" /> </a>
									</li>
									<li><a href="http://comic.qq.com/" target="_blank"><img
											src="/images/qqlogo.gif" /> </a>
									</li>
									<li><a href="http://www.cnaci.com.cn/" target="_blank"><img
											src="${pageContext.request.contextPath}/images/chinalogo.gif" /> </a>
									</li>
									<li><a href="http://www.zymk.cn/" target="_blank"><img
											src="${pageContext.request.contextPath}/images/mankelogo.gif" /> </a>
									</li>
									<li><a href="http://www.zhgmh.com/" target="_blank"><img
											src="${pageContext.request.contextPath}/images/chinadmlogo.gif" /> </a>
									</li>
									<li><a href="http://www.hxsd.com/" target="_blank"><img
											src="${pageContext.request.contextPath}/images/hxsdlogo.gif" /> </a>
									</li>
									<li><a href="http://comic.mop.com/" target="_blank"><img
											src="${pageContext.request.contextPath}/images/moplogo.gif" /> </a>
									</li>
									<li><a href="http://www.dm123.cn/" target="_blank"><img
											src="${pageContext.request.contextPath}/images/fanslogo.gif" /> </a>
									</li>
									<c:choose>
									<c:when test="${empty friends}"></c:when>
									<c:otherwise>
									<c:forEach items="friend" var="friends">
									  <li><a href="${friend.url}" target="_blank">
									    <img src="${pageContext.request.contextPath}${friend.image}" /></a>
									  </li>
									</c:forEach>
									</c:otherwise>
									</c:choose>
									 --%>
									 <c:forEach items="${friends}" var="friend">
									  <li><a href="${friend.url}" target="_blank">
									    <img src="${friend.image}" width="86" height="27"/></a>
									  </li>
									</c:forEach>
								</ul>
								<div class="clear"></div>
							</div>
						</div>
						<!--友情链接 end-->
					</div>
				</div>
				<div>
					<img src="images/cont_button.gif" />
				</div>
			</div>
			<!--主要内容 end-->
			<!--底部-->
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
	</div>
	<!--下面是对联广告的html代码结构-->
	<div class="duilian duilian_left">
	 <div class="duilian_con">
	 <a href="http://202.106.79.133" target="_bank"><img src="images/duilian.jpg" /></a>
	 </div>
      <a href="#" class="duilian_close">关闭</a>
    </div>
    <div class="duilian duilian_right">
	<div class="duilian_con">
	   <a href="http://202.106.79.133" target="_bank"><img src="images/duilian.jpg" /></a></div>
      <a href="#" class="duilian_close">关闭</a>
    </div>
</body>
<style type="text/css"> 
.a1 { 
color: #CCCCCC; 
} 
.a2 { 
color: #000; 
} 
/*下面是对联广告的css代码*/
.duilian{top:155px;position:absolute; width:102px; overflow:hidden; display:none;}
.duilian_left{ left:6px;}
.duilian_right{right:6px;}
.duilian_con{border:#CCC solid 1px; width:100px; height:300px; overflow:hidden;}
.duilian_close{ margin-top:-21px; width:100%; height:24px; line-height:24px; text-align:center; display:block; font-size:13px; color:#555555; text-decoration:none;}
</style> 
</html>
