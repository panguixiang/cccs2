<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@page contentType="text/html;charset=UTF-8"%>
	<%@page pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<head></head>

	<c:if test="${empty sessionScope.CCCS_USERID}">
		<div class="login_b_c m_b10" style="display: ">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="29%">用户名：</td>
					<td width="71%">
						<input type="text" name="passport"
					id="passport" style=" width:173px; height:21px; line-height:21px; padding-left:5px;" />
					</td>
				</tr>
				<tr>
					<td>密&nbsp;&nbsp;码：</td>
					<td>
						<input type="password" name="passwd" id="passwd"
					class="l_b_input" />
					</td>
				</tr>
				<tr>
					<td>验证码：</td>
					<td>
						<input type="text" name="captcha" id="captcha"
					class="l_b_input02" />
						<img src="account/captcha-image"
				width="80" height="24" id="imagedid" onclick="getValidateServlets();" onmouseover="changCurso();"/>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
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
							<a href="account/initsignup" title="请立即会员申请">
								<img
						src="images/reg_b.gif" width="156" height="31" />
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
			</table>
		</div>
		<jsp:include page="/article/fzxxw/top/10"></jsp:include>
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
				<div class="login_text">
					${sessionScope.CCCS_NAME}
					<br/>
					您好！欢迎登录版权中心
					<br/>
					很高兴能为您服务！
				</div>
			</div>
			<div class="clear"></div>
			<div class="login_a_button">
				<a href="mycenter/interaccount/account">个人中心</a>
				<a href="javascript:void(0);" onclick="signout('/account/signout');" style="color: red;">退出登录</a>
			</div>
			<div class="left_add0907">
				<a href="mycenter/stationmaillist?mailtype=1">站内信</a>
			</div>
		</div>
		<div class="left_bqfw">
			<span>
				<a href="${pageContext.request.contextPath}/application/index?apptype=1">我要登记</a>
				<br>
				<a href="${pageContext.request.contextPath}/application/search?apptype=1">我要查询</a>
			</span>
		</div>
		<div class="left_zqfw">
			<span>
				<a href="${pageContext.request.contextPath}/application/index?apptype=3">我要登记</a>
				<br>
				<a href="${pageContext.request.contextPath}/application/search?apptype=3">我要查询</a>
			</span>
		</div>
		<div class="left_zyzx">
			 <span>
			  <a href="cartoon/index">我要上传</a>
			  </br>
			  <a href="cartoon/search">上传查询</a>
			<%-- <c:choose>
			 <c:when test="${sessionScope.CCCS_USER_LEVEL=='2'}">
			  <a href="cartoon/index">我要上传</a>
			  </br>
			  <a href="cartoon/search">上传查询</a>
			 </c:when>
			 <c:otherwise>
			    我要上传</br>上传查询
			 </c:otherwise>
			</c:choose> --%>
			</span>
	</div>
	</c:if>
	<div style="margin-top:10px;">
	  <img src="${pageContext.request.contextPath}/images/contact_us.jpg" />
	</div>
<script language="javascript">
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
	$(document).ready(function(){
		 var userid = "${sessionScope.CCCS_USERID}";
		 if(userid.length==0) {
				  s('passport','邮箱/账号');
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
<style type="text/css"> 
.a1 { 
color: #CCCCCC; 
} 
.a2 { 
color: #000; 
} 
</style>
</html>