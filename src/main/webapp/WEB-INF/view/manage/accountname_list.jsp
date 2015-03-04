<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>中国动漫作品版权交易平台</title>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<STYLE type=text/css>
    .unit{width: 600px; margin:0 auto; font-size:12px;}
	.unit div {float: left;}
	.unit table{ margin-top:20px;}
	.unit table td{ padding:10px; border:#e4e4e4 1px solid;}
	.unit_input input{ padding:10px 10px;}
</STYLE>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<SCRIPT language=javascript >
function returnSelect(){
	var reVal  = "";
	var reaVal = "";
	var num=0;
	$("input[name='unitCode']").each(function(){
		if($(this).attr("checked")) {
			reaVal = reaVal+$(this).val()+"@";
			reVal = reVal+$(this).val()+","; 
			num=num+1;
		}
	});
	if(num>20) {
	  alert("最多一次只能选择20个用户，请重新选择!");
	  return;
    } 
	 $("#reallyrecipientsid",window.opener.document).val(reaVal);
	 $("#recipientsid",window.opener.document).val(reVal);
	 window.close();
}
 
 function closeThis() {
	 javascript:window.close();
 }
</SCRIPT>
</HEAD>
<BODY>
<div style="HEIGHT: 100%; OVERFLOW: hidden;" class="unit">

        <table width="100%" border="0" cellspacing="0">
          <tr>
            <td colspan="2" class="unit_input">
                <c:forEach items="${listname}" var="names" varStatus="idx">
            	<INPUT type=checkbox name=unitCode value="<c:out value='${names}' />" 
                <c:if test="${idx.index==0}">CHECKED</c:if> /><c:out value='${names}' />
      			</c:forEach>
            </td>
          </tr>
         
          <tr>
            <td style="text-align:center; border-top:none" colspan="2">
                <input type="button" value="确定" class="m_button0910" id="subId" onclick="returnSelect();"/>
                &nbsp;
                <input type="button" value="取消" class="m_button0910" id="resetId" onclick="closeThis();"/>
            </td>
          </tr>
        </table>
</div>
</BODY></HTML>
