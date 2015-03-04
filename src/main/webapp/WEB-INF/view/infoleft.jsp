<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<style type="text/css">
	.active{ color:#5C6C70;}
	.active a{line-height:22px;display:block; color:#1193d0;}
	.a1 { 
color: #CCCCCC; 
} 
.a2 { 
color: #000; 
} 
</style>
       <h3><img src="images/i_left01.gif" /></h3>
	<c:if test="${empty sessionScope.CCCS_USERID}">
	<div class="login_b_c m_b10" style="display: ">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="29%">用户名：</td>
				<td width="71%"><input type="text" name="passport" id="passport"  
					style=" width:173px; height:21px; line-height:21px; padding-left:5px;" />
				</td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;码：</td>
				<td><input type="password" name="passwd" id="passwd"
					class="l_b_input" />
				</td>
			</tr>
			<tr>
				<td>验证码：</td>
				<td><input type="text" name="captcha" id="captcha"
					class="l_b_input02" /> <img src="account/captcha-image"
				width="80" height="24" id="imagedid" onclick="getValidateServlets();" onmouseover="changCurso();"
        /></td>
			</tr>
			<tr>
				<td height="10"></td>
				<td>
					
					<div style="padding-top: 15px;">
							<input value="" type="button"
						class="login_button" onclick="signin('${pageContext.request.contextPath}');" />
					</div>
                    <div style="float: right; margin: 10px 30px 0 0" class="login_forgot">
						 <a href="javascript:toforgetpaswd();" >忘记密码</a>
						</div>
					</td>
			</tr>
			<tr>
			<td colspan="2" style="text-align: center">
			<div>
					<a href="account/initsignup" title="请立即会员申请"><img
						src="images/reg_b.gif" width="156" height="31" /> </a>
				</div>
			</td>
		</tr>
            <tr>
              <td height="10"></td>
            </tr>
		</table>
	</div>
</c:if>
<c:if test="${!empty sessionScope.CCCS_USERID}">
	<div class="login_a_c m_b10" >
		<div style="padding:20px;">
			<div class="login_pic">
			<c:choose>
			 <c:when test="${sessionScope.accountSession.portraitimg == null || sessionScope.accountSession.portraitimg == ''}">
			  <img src="images/posenlogo.gif" width="60px" height="60px"/>
			 </c:when>
			 <c:otherwise>
			 <img src="${sessionScope.accountSession.portraitimg}" width="60px" height="60px"/>
			 </c:otherwise>
			</c:choose>
			</div>
			<div class="login_text">${sessionScope.CCCS_NAME}<br/>
			您好！欢迎登录版权中心<br/>
			很高兴能为您服务！</div>
		</div>
		<div class="clear"></div>
		<div class="login_a_button">
			<a href="mycenter/interaccount/account">个人中心</a>
			 <a href="javascript:void(0);" onclick="signout('${pageContext.request.contextPath}');" style="color: red;">退出登录</a>
		</div>
		<div class="left_add0907">
		<a href="mycenter/stationmaillist?mailtype=1">站内信</a></div>
	</div>
</c:if>
	<div >
                 <div class="i_left0911">
                    <h3><img src="images/i_left08.gif"></h3>
                    <div>
					<h4 class="menuh">作品著作权相关信息</h4>
						<ul class="FAQlist" style="display : none">
							<li id="idz11"><a href="info/infolist/z11/1">Z11.作品著作权登记信息</a></li>
							<li id="idz21"><a href="info/infolist/z21/1">Z21.著作权合同备案信息</a></li>
							<li id="idz31"><a href="info/infolist/z31/1">Z31.与著作权有关权利事项登记信息</a></li>
							<li id="idz41"><a href="info/infolist/z41/1">Z41.重印国外期刊合同登记信息</a></li>
							<li id="idz61"><a href="info/infolist/z61/1">Z61.作品著作权和合同变更或补发登记信息 </a></li>
							<li id="idz62"><a href="info/infolist/z62/1">Z62.撤销作品著作权和合同登记信息 </a></li>
							<li id="idz64"><a href="info/infolist/z64/1">Z64.补发或更换登记证书信息</a></li>
							<li id="idz71"><a href="info/infolist/z71/1">Z71.出版境外音像制品合同登记申请-录音制品</a></li>
							<li id="idz72"><a href="info/infolist/z72/1">Z72.出版境外音像制品合同登记申请-影视作品</a></li>
							<li id="idz73"><a href="info/infolist/z73/1">Z73.撤销出版境外音像制品合同登记信息</a></li>
							<li id="idz75"><a href="info/infolist/z75/1">Z75.变更出版境外音像制品合同登记信息</a></li>
						</ul>
					<h4 class="menuh">计算机软件著作权相关信息</h4>
					<ul class="FAQlist" style="display : none">
						<li id="idr11"><a href="info/infolist/r11/2">R11.计算机软件著作权登记信息</a>
						</li>
						<li id="idr21"><a href="info/infolist/r21/2">R21.计算机软件著作权转让或专有许可合同登记信息</a>
						</li>
						<li id="idr41"><a href="info/infolist/r41/2">R41.软件登记事项变更或补充信息</a>
						</li>
						<li id="idr42"><a href="info/infolist/r42/2">R42.撤销计算机软件登记信息</a></li>
						<li id="idr44"><a href="info/infolist/r44/2">R44.撤销或放弃计算机软件登记信息</a>
						</li>
						<li id="idr45"><a href="info/infolist/r45/2">R45.补发或者换发软件登记证书信息 </a>
						</li>
					</ul>
					</div>
                 </div>
      </div>
                           
       <div>
      <div class="i_left0911_02">
      <h3><img src="images/i_left09.gif"></h3>
      <div>
	<h4 class="menuh">作品著作权质权相关信息</h4>
	<ul class="FAQlist" style="display : none">
		<li id="idz51"><a href="info/infolist/z51/3">Z51.著作权质权登记信息</a></li>
		<li id="idz52"><a href="info/infolist/z52/3">Z52.著作权质权撤销登记信息</a></li>
		<li id="idz53"><a href="info/infolist/z53/3">Z53.著作权质权变更登记信息</a></li>
		<li id="idz54"><a href="info/infolist/z54/3">Z54.注销著作权质权登记信息</a></li>
		<li id="idz56"><a href="info/infolist/z56/3">Z56.转让著作权质权登记事项信息</a></li>
	</ul>
	<h4 class="menuh">计算机软件著作权质权相关信息</h4>
	<ul class="FAQlist" style="display : none">
		<li id="idr51"><span style="line-height:16px;color:gray">Z51.计算机软件著作权质权信息</span></li>
		<li id="idr52"><span style="line-height:16px;color:gray">Z52.计算机软件著作权质权转让信息</span></li>
		<li id="idr53"><span style="line-height:16px;color:gray">Z53.计算机软件著作权质权变更信息</span></li>
		<li id="idr54"><span style="line-height:16px;color:gray">Z54.撤销计算机软件著作权质权信息</span></li>
	    <li id="idr56"><span style="line-height:16px;color:gray">Z56.注销计算机软件著作权质权信息</span></li>
	</ul>
     </div>
     </div></div>
     <div>
     <a href="${pageContext.request.contextPath}/info/list"><img src="images/search_btn1016.jpg" /></a>
     </div>
<script language="javascript">
 $(document).ready(function(){
	var appType = "${app_type}";
	var parent_type = "${parent_type}";
	if(parent_type=='1' || parent_type=='2') {
		$("#1id").css("display", "block");
		$(".FAQlist li").removeAttr("class");
		$("#id"+appType).addClass("active"); 
	} 
	else if(parent_type=='3' || parent_type=='4') {
		$(".FAQlist li").removeAttr("class");
		$("#id"+appType).addClass("active"); 
		$("#2id").css("display", "block");
	}
	$("#id"+appType).parent("ul").css("display","block");
	 var userid = "${sessionScope.CCCS_USERID}";
	 if(userid.length==0) {
			  s('passport','邮箱/账号');
	 }
 });
function toforgetpaswd() {
 	  location.href="${pageContext.request.contextPath}/account/toforgetpaswd";
   }	
   
function getValidateServlets()
	 {
	     document.getElementById("imagedid").src="account/captcha-image?"+Math.random();
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

//单击菜单触发的事件 
$(".menuh").click(function () { 
	/* $(".menu").next("ul").css("display", "none");*/
	if($(this).next("ul").css("display")=='none') {
	  $(this).next("ul").css("display", "block");//当前一级菜单的二级菜单设置为可见  
	} else {
		$(this).next("ul").css("display", "none");//当前一级菜单的二级菜单设置为 不可见  	 
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