<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@page contentType="text/html;charset=UTF-8"%>
	<%@page pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<base href="http://${header['host']}${pageContext.request.contextPath}/" />
<head>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"/>
</head>
<div class="c_box">
	<h3>
		<img src="images/i_left04.gif" />
	</h3>

	<ul>
		<c:forEach items="${articles}" var="article" varStatus="idx">
			<li title="${article.title}"><a href="article/${article.id}">${article.title}</a>
			</li>
		</c:forEach>
	</ul>
</div>
</html>