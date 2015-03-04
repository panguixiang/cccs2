<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>

<!-- 錯誤信息 -->
<c:if test="${message != null}">
	<div class="error_info">
		<ul>
			<li><c:out value="${message}" /></li>
		</ul>
	</div>
</c:if>
<c:if test="${messageList != null}">
	<div class="error_info">
		<c:forEach items="${messageList}" var="message" varStatus="idx">
			<li>${message.defaultMessage}</li>
		</c:forEach>
	</div>
</c:if>
<!-- 錯誤信息 end-->