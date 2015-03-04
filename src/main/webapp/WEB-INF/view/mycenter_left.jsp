<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div class="login_a_c m_b10" >
		<div style="padding:20px;">
			<div class="login_pic">
				<img src="${pageContext.request.contextPath}/upload/portImages/${sessionScope.accountSession.portraitimg}" width="60px" height="60px"/>
			</div>
			<div class="login_text">${sessionScope.CCCS_NAME}<br/>
			您好！欢迎登录版权中心<br/>
			很高兴能为您服务！</div>
		</div>
		<div class="clear"></div>
		<div class="login_a_button">
			<a href="${pageContext.request.contextPath}/mycenter/account/account">个人中心</a>
			 <a href="javascript:void(0);" onclick="signout('${pageContext.request.contextPath}');" style="color: red;">退出登录</a>
		</div>
	</div>

	<div class="m_b5">
	 <div id="mycenterId">个人中心</div>
	<div id="openId" style="DISPLAY: none">
	<a href="${pageContext.request.contextPath}/mycenter/account/register_center">注册信息</a></br>
	<a href="#">个人资料</a></br>
	<a href="#">登陆概况</a></br>
	<a href="#">版权服务</a></br>
	<a href="#">质权服务</a></br>
	<a href="#">资源中心用户信息</a></br>
	<a href="#">资源中心用户注册</a></br>
	</div>
	</div>

<script language="javascript">
	$("#mycenterId").click(function(){
		if($("#openId").css("display")=='none'){
		  $("#openId").css("display","block");
		} else {
			 $("#openId").css("display","none");
		}
	});
</script>
