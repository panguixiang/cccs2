<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>在线查看-补发或更换登记证书申请表</title>
<SCRIPT>
    var contextPath="";
    var galaxyUserFaceKey="";
</SCRIPT>

<STYLE>TABLE {
	BORDER-BOTTOM-COLOR: #333333; BORDER-TOP-COLOR: #333333; BORDER-COLLAPSE: collapse; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; BORDER-LEFT-COLOR: #333333
}
TD {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: left; BORDER-TOP-COLOR: #333333; HEIGHT: 20px; BORDER-RIGHT-COLOR: #333333; VERTICAL-ALIGN: middle; OVERFLOW: auto; BORDER-LEFT-COLOR: #333333; WORD-BREAK: break-all
}
TH {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: center; BORDER-TOP-COLOR: #333333; HEIGHT: 30px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; VERTICAL-ALIGN: middle; BORDER-LEFT-COLOR: #333333; FONT-WEIGHT: normal
}
UNKNOWN {
	BORDER-BOTTOM: black 1px solid; WIDTH: 200px; MARGIN-BOTTOM: 2px
}
.title {
	TEXT-ALIGN: center; LINE-HEIGHT: 25px; MARGIN-TOP: 10px; LETTER-SPACING: 1px; FONT-FAMILY: 黑体; FONT-SIZE: 20px
}
.InputTd {
	BORDER-BOTTOM-COLOR: #333333; PADDING-BOTTOM: 2px; LINE-HEIGHT: 20px; BORDER-TOP-COLOR: #333333; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 13px; BORDER-LEFT-COLOR: #333333; PADDING-TOP: 2px
}
</STYLE>

<SCRIPT>
function printInfo()
{
		document.all('noPrint').style.display="none";
		document.all('printInfo').focus();  
        wb.execwb(7,1); 
  		document.all('noPrint').style.display="block";
}
</SCRIPT>

</HEAD>
<BODY style="TEXT-ALIGN: center">
<DIV style="FONT-SIZE: 12px" id=noPrint>
<OBJECT id=wb name=wb classid=CLSID:8856F961-340A-11D0-A96B-00C04FD705A2 width=0 
height=0></OBJECT><INPUT onclick=javascript:printInfo(); name=button_show value=打印预览 type=button> 
<INPUT onclick=javascript:window.close(); value=关闭窗口 type=button><BR><BR><FONT 
color=red><B>注意：由于用户使用的浏览器的打印设置不同，直接采用网页打印，表格样式可能会失真。<BR>若打印发生样式失真时，建议使用如下解决办法:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<BR>1、打印预览中逐页调整页面高度比例，再单页进行网页打印。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR>2、将网页内容直接复制粘贴到word或excel中进行打印。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B> 
</FONT></DIV>
<DIV 
style="BORDER-BOTTOM: red 0px solid; TEXT-ALIGN: center; BORDER-LEFT: red 0px solid; WIDTH: 600px; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid" 
id=printInfo>
<TABLE 
style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid" 
border=0 cellSpacing=0 cellPadding=0 width=700 align=center>
  <TBODY>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">
      <DIV class=title>录音制品曲目信息</DIV></TD></TR></TBODY></TABLE>
<TABLE border=1 cellSpacing=0 cellPadding=0 width=700 align=center>
  <TBODY>
  <TR>
    <TH noWrap>序号</TH>
    <TH noWrap>录音制品名称</TH>
    <TH noWrap>曲名</TH>
    <TH noWrap>演唱（奏）者</TH>
    <TH noWrap>曲作者</TH>
    <TH noWrap>词作者</TH>
    <TH noWrap>曲长</TH>
    <TH noWrap>备注</TH></TR>
    <c:forEach items="${tracks}" var="track" varStatus="traStat">
     <TR>
    <Td noWrap><c:out value='${traStat.index+1}' /></Td>
    <Td noWrap><c:out value='${track.recordName}' /></Td>
    <Td noWrap><c:out value='${track.title_}' /></Td>
    <Td noWrap><c:out value='${track.artist_}' /></Td>
    <Td noWrap><c:out value='${track.songWriter_}' /></Td>
    <Td noWrap><c:out value='${track.wordsAuthor_}' /></Td>
    <Td noWrap><c:out value='${track.duration_}' /></Td>
    <Td noWrap><c:out value='${track.remark_}' /></Td></TR>
    </c:forEach>
    </TBODY></TABLE></DIV></BODY></HTML>