<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>

<!--top-->
<div class="top">
	<ul>
		<li><a href="#" class="a_b">添加收藏</a>
		</li>
		<li><a href="#">Br</a></li>
		<li><a href="#">日本语</a>
		</li>
		<li><a href="${pageContext.request.contextPath}/about" class="a_y">中文</a>
		</li>
		<li><a href="${pageContext.request.contextPath}/about_en">En</a>
		</li>
	</ul>
</div>
<!--topend-->

<div class="logo">
	<div class="logo01">
		<a href="/" target="_blank"><img src="${pageContext.request.contextPath}/images/logo.jpg" /></a>
	</div>
	<div class="logo02">
		<a href="http://www.ccopyright.com.cn/cpcc/" target="_blank">
		<img src="${pageContext.request.contextPath}/images/logo02.jpg" /></a>
	</div>
</div>
<!--nav-->
<div class="nav">
	<div class="nav_left"></div>
	<div class="nav_cont">
		<ul id="menu_ul">
			<li style=" width:79px;"><a id="menu_ele_1" href="${pageContext.request.contextPath}/">首页</a></li>
			<li
				onmouseover="document.getElementById('menu_dl_1').style.display=''"
				onmouseout="document.getElementById('menu_dl_1').style.display='none'">
				<div class="nav_icon">
					<a id="menu_ele_2" href="javascript:void(0);">版权服务</a>
				</div>
				<div id="menu_dl_1" class="nav_menu" style="display: none;margin-left:-25px;*margin-left:-80px;">
					<dl style="width:160px;">
						<dd>
							<a href="${pageContext.request.contextPath}/copyright?apptype=1">作品著作权相关登记</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath}/copyright?apptype=2">计算机著作权相关登记</a>
						</dd>
						<dd>
							<a href="#">作品保管</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath}/article/list?pager.offset=0&subject=flfw">版权法律服务</a>
						</dd>
					</dl>
				</div></li>
				 <li
				onmouseover="document.getElementById('menu_dl_9').style.display=''"
				onmouseout="document.getElementById('menu_dl_9').style.display='none'">
				<div class="nav_icon">
					<a id="menu_ele_9" href="javascript:void(0);">质权服务</a>
				</div>
				<div id="menu_dl_9" class="nav_menu" style="display: none;margin-left:-25px;*margin-left:-80px;">
					<dl style="width:190px;">
						<dd>
							<a href="${pageContext.request.contextPath}/copyright?apptype=3">作品著作权质权相关登记</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath}/copyright?apptype=4">计算机软件著作权质权相关登记</a>
						</dd>
					</dl>
				</div></li> 
				
				
				
			<%-- <li><a id="menu_ele_3" href="${pageContext.request.contextPath}/cartoon/1">资源中心</a>
			</li> --%>
	<li
		onmouseover="document.getElementById('menu_dl_3').style.display=''"
		onmouseout="document.getElementById('menu_dl_3').style.display='none'">
		<div class="nav_icon">
			<a id="menu_ele_8" href="javascript:void(0);">资源中心</a>
		</div>
		<div id="menu_dl_3" class="nav_menu" style="display: none;margin-left:-2px;*margin-left:-55px;">
			<dl style="width:107px;">
				<dd>
					<a href="${pageContext.request.contextPath}/cartoon/1">展示中心</a>
				</dd>
				<dd>
					<a href="${pageContext.request.contextPath}/cartoon/2">脚本中心</a>
				</dd>
			</dl>
		</div></li>
				
				
			<li><a id="menu_ele_4" href="${pageContext.request.contextPath}/develop">分发中心</a>
			</li>
			<li><a id="menu_ele_5" href="${pageContext.request.contextPath}/bcenter">分中心</a>
			</li>
			<li><a id="menu_ele_6"  href="${pageContext.request.contextPath}/info/infolist/z11/1">检索查询</a>
			</li>
			<li
				onmouseover="document.getElementById('menu_dl_4').style.display=''"
				onmouseout="document.getElementById('menu_dl_4').style.display='none'">
				<div class="nav_icon">
					<a id="menu_ele_10" href="javascript:void(0);">新闻动态</a>
				</div>
				<div id="menu_dl_4" class="nav_menu" style="display: none;margin-left:-2px;*margin-left:-55px;">
					<dl style="width:107px;">
						<dd>
							<a href="${pageContext.request.contextPath}/article/list?pager.offset=0&subject=dt">中心动态</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath}/article/list?pager.offset=0&subject=yw">版权要闻</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath}/article/list?pager.offset=0&subject=zx">业界资讯</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath}/article/list?pager.offset=0&subject=gz">热点关注</a>
						</dd>
					</dl>
				</div></li>
			<li><a id="menu_ele_7" href="#">主题活动</a>
			</li>
			<li id="menu_ele_8" class="menu_li_10"><a  href="${pageContext.request.contextPath}/about">关于我们</a>
			</li>
		</ul>
	</div>
	<div class="nav_right"></div>
</div>
<!--navend-->