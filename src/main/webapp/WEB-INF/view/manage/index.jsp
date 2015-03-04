<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理后台-中国动漫版权服务平台</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<link href="${pageContext.request.contextPath}/css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">     
     if(top!=self){    
          if(top.location != self.location)    
               top.location=self.location;     
     }    
</script>
</head>

<body style="background-color: #3076B8">
	<div class="m_login">
		<form method="post" action="${pageContext.request.contextPath}/manage/signin">
			<div>
				<c:if test="${message != null}">
					<div class="error_info">
						<ul>
							<li><c:out value="${message}" /></li>

						</ul>

					</div>
				</c:if>
			</div>
			<div class="m_login_cont">
				<ul>
					<li>用户名：<input name="username" type="text" class="m_l_input" />
					</li>
					<li>密&nbsp;&nbsp;码：<input name="passwd" type="password"
						class="m_l_input" />
					</li>
					<li class="li_button"><input name="" value="" type="submit"
						class="m_login_button" />
					</li>
				</ul>
			</div>
	</div>
	</form>
</body>
</html>
