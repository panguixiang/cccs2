<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<jsp:useBean id="now" class="java.util.Date" />
<head>
<title>在线查看-撤销著作权质权登记申请表</title>
<STYLE>TABLE {
	BORDER-BOTTOM-COLOR: #333333; BORDER-TOP-COLOR: #333333; BORDER-COLLAPSE: collapse; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; BORDER-LEFT-COLOR: #333333
}
TD {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: left; BORDER-TOP-COLOR: #333333; HEIGHT: 30px; BORDER-RIGHT-COLOR: #333333; VERTICAL-ALIGN: middle; BORDER-LEFT-COLOR: #333333
}
TH {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: center; BORDER-TOP-COLOR: #333333; HEIGHT: 30px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; VERTICAL-ALIGN: middle; BORDER-LEFT-COLOR: #333333; FONT-WEIGHT: normal
}
UNKNOWN {
	BORDER-BOTTOM: black 1px solid; WIDTH: 200px; MARGIN-BOTTOM: 2px
}
.FenLeiInfo {
	TEXT-ALIGN: center; BACKGROUND-COLOR: #cccccc; WIDTH: 30px
}
.FenLeiInfo DIV {
	WIDTH: 25px
}
.title {
	TEXT-ALIGN: center; LINE-HEIGHT: 25px; MARGIN-TOP: 30px; LETTER-SPACING: 1px; FONT-FAMILY: 黑体; FONT-SIZE: 20px
}
.InputTd {
	BORDER-BOTTOM-COLOR: #333333; PADDING-BOTTOM: 8px; LINE-HEIGHT: 22px; BORDER-TOP-COLOR: #333333; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 13px; BORDER-LEFT-COLOR: #333333; PADDING-TOP: 8px
}
.flowno {
	BORDER-BOTTOM-COLOR: gray; BORDER-TOP-COLOR: gray; BORDER-RIGHT-COLOR: gray; BORDER-LEFT-COLOR: gray
}
.zhuzquanren {
	TEXT-ALIGN: center; LINE-HEIGHT: normal; FONT-VARIANT: normal; FONT-STYLE: normal; HEIGHT: 50px; FONT-SIZE: 12px; FONT-WEIGHT: normal
}
</STYLE>
</HEAD>
<BODY style="TEXT-ALIGN: center; background-color:#e8e8e8;">
<!-- <INPUT onclick="printCertificate();" name=button_modify value=打印 type=button />  -->
<DIV id="printIframeid" 
style="TEXT-ALIGN: center; WIDTH: 630px; BORDER:#336699 1px solid; background-color:#fff; padding-left:10px;">
<TABLE style="BORDER-BOTTOM: black 2px solid;" border=0 cellSpacing=0 
cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 60px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">受理号:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid; WIDTH: 120px"><!--<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>--><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 110px"></SPAN></TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 70px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid" 
    >受理签字:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 140px"></SPAN></TD></TR>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 60px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">登记号:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid; WIDTH: 120px"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 110px"></SPAN></TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 70px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid" 
    >审查签字:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 140px"></SPAN></TD></TR></TBODY></TABLE>
<TABLE 
style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid" 
border=0 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid" 
    >
      <DIV class=title>撤销著作权质权登记申请表</DIV></TD></TR></TBODY></TABLE>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>质权登记基本情况</DIV></TD>
    <TD width="582">
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void 
      height="100%">
        <TBODY>
        <TR>
          <TH width=120>质权登记号</TH>
          <TD class=InputTd><c:out value='${z52.handleNumber}' /></TD>
          <TH width=120>登记日期</TH>
          <TD class=InputTd><c:out value='${z52.handleDate}' /></TD></TR>
        <TR>
          <TH width=120>涉及作品名称</TH>
          <TD class=InputTd colSpan=3><c:out value='${z52.softName}' /></TD></TR>
        <TR>
          <TH width=120>出质人姓名或名称</TH>
          <TD class=InputTd colSpan=3>
          <c:forEach items="${parts1}" var="part1" varStatus="part1Stat">
            <c:choose>
             <c:when test="${(part1Stat.index+1)==fn:length(parts1)}">
             <c:out value='${part1.name}' />
             </c:when>
             <c:otherwise>
             <c:out value='${part1.name}' />、
             </c:otherwise>
            </c:choose>
		  </c:forEach>
          </TD></TR>
        <TR>
          <TH width=120>质权人姓名或名称</TH>
          <TD class=InputTd colSpan=3>
          <c:forEach items="${parts2}" var="part2" varStatus="part2Stat">
           <c:choose>
             <c:when test="${(part2Stat.index+1)==fn:length(parts2)}">
              <c:out value='${part2.name}' />
             </c:when>
             <c:otherwise>
              <c:out value='${part2.name}' />、
             </c:otherwise>
            </c:choose>
		  </c:forEach>
         </TD></TR>
          </TBODY></TABLE></TD></TR>
  <TR>
    <TD colSpan=2>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TH style="HEIGHT: 80px; BORDER-RIGHT: black 1px solid" 
            width=151>申请撤销理由</TH>
          <TD 
          style="WORD-WRAP: break-word; WORD-BREAK: break-all">
          &nbsp;<c:out value='${z52.reason}' /></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=30 colSpan=2>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="BORDER-RIGHT: black 1px solid" width=151>撤销方式</TH>
          <TD>
          <c:if test="${z52.originalRegType=='依职权撤销'}">⊙</c:if>
	      <c:if test="${z52.originalRegType!='依职权撤销'}">○</c:if>&nbsp;依职权撤销&nbsp;
	      <c:if test="${z52.originalRegType=='依申请撤销'}">⊙</c:if>
	     <c:if test="${z52.originalRegType!='依申请撤销'}">○</c:if>&nbsp;依申请撤销&nbsp;
  </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<P style="FONT-SIZE: 14px" align=center>第1页/共3页</P><BR 
style="PAGE-BREAK-AFTER: always">
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD colSpan=2>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 135px">申请办理方式</TH></TH>
          <TD style="WIDTH: 530px" class=InputTd>
          	<c:if test="${z52.applyType=='出质人或质权人'}">⊙</c:if>
			<c:if test="${z52.applyType!='出质人或质权人'}">○</c:if>出质人或质权人&nbsp;
			<c:if test="${z52.applyType=='第三人申请'}">⊙</c:if>
			<c:if test="${z52.applyType!='第三人申请'}">○</c:if>第三人申请&nbsp;
            <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; 
            FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${z52.isAgent=='代理人'}">√</c:if> 
            </SPAN>由代理人申请 </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>申请人信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=50>
          <TH style="WIDTH: 100px">姓名或名称</TH>
          <TD style="WIDTH: 371px" class=InputTd>${sqr.name}</TD>
          <TH style="WIDTH: 50px">电话</TH>
          <TD style="WIDTH: 90px" class=InputTd>${sqr.phone}</TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">详细地址</TH>
          <TD style="WIDTH: 371px" class=InputTd>${sqr.address}</TD>
          <TH style="WIDTH: 50px">邮编</TH>
          <TD style="WIDTH: 90px" class=InputTd>${sqr.post_code}</TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">联系人</TH>
          <TD style="WIDTH: 371px" class=InputTd>${sqr.contact_person}</TD>
          <TH style="WIDTH: 50px">手机</TH>
          <TD style="WIDTH: 90px" class=InputTd>${sqr.mobile}</TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">E-mail</TH>
          <TD style="WIDTH: 371px" class=InputTd>${sqr.email}</TD>
          <TH style="WIDTH: 50px">传真</TH>
          <TD style="WIDTH: 90px" class=InputTd>${sqr.fax}</TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>代理人信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=80>
          <TD style="WIDTH: 630px" class=InputTd colSpan=4>
            <DIV 
            style="MARGIN-TOP: 5px">&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR><U 
            id=agentDescU>${z52.agent_desc}</U> </DIV></TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">姓名或名称</TH>
          <TD style="WIDTH: 371px" class=InputTd>${dlr.name}</TD>
          <TH style="WIDTH: 50px">电话</TH>
          <TD style="WIDTH: 90px" class=InputTd>${dlr.phone}</TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">详细地址</TH>
          <TD style="WIDTH: 371px" class=InputTd>${dlr.address}</TD>
          <TH style="WIDTH: 50px">邮编</TH>
          <TD style="WIDTH: 90px" class=InputTd>${dlr.post_code}</TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">联系人</TH>
          <TD style="WIDTH: 371px" class=InputTd>${dlr.contact_person}</TD>
          <TH style="WIDTH: 50px">手机</TH>
          <TD style="WIDTH: 90px" class=InputTd>${dlr.mobile}</TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">E-mail</TH>
          <TD style="WIDTH: 371px" class=InputTd>${dlr.email}</TD>
          <TH style="WIDTH: 50px">传真</TH>
          <TD style="WIDTH: 90px" 
    class=InputTd>${dlr.fax}</TD></TR></TBODY></TABLE></TD></TR>
  <TR><!--<td class="FenLeiInfo"><div>申明和签章</div></td>-->
    <TD class=InputTd 
      colSpan=2>&nbsp;&nbsp;出质人和质权人认真阅读了填表说明，准确理解了所需填写的内容，保证所填写的内容真实。<BR>
      <P></P>
      <DIV style="FLOAT: left">&nbsp;质权人签章:&nbsp;</DIV>
      <DIV style="PADDING-RIGHT: 150px; FLOAT: right">&nbsp;出质人签章:&nbsp;</DIV>
      <P></P>
      <P>
      <DIV style="CLEAR: both"></DIV>
      <DIV style="FLOAT: left"><fmt:formatDate value="${now}" pattern="yyyy 年  MM 月  dd 日"/></DIV>
      <DIV style="FLOAT: right"><fmt:formatDate value="${now}" pattern="yyyy 年  MM 月  dd 日"/></DIV>
      <P></P></TD></TR></TBODY></TABLE>
<P style="FONT-SIZE: 14px" align=center>第2页/共3页</P><BR 
style="PAGE-BREAK-AFTER: always"><BR>
<P style="FONT-SIZE: 16px" align=center><B>附页、提交材料清单</B></P>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TH width=100><B>材料类型</B></TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left"><B>&nbsp;&nbsp;材料名称</B></DIV>
      <DIV style="FLOAT: right"><B>份数/页数</B></DIV></TD></TR>
  <TR>
    <TH width=100>登记申请表</TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left">打印签字盖章的登记申请表</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV></TD></TR>
  <TR>
    <TH>证明文件</TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left">1、著作权质权登记证书原件</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">2、撤销证明文件</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">3、书面撤销理由说明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">4、申请人身份证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">5、代理人委托书</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">6、代理人身份证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">7、查询结果</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR></TD></TR>
  <TR>
    <TH style="HEIGHT: 150px">其他材料</TH>
    <TD class=InputTd>&nbsp; </TD></TR></TBODY></TABLE>
<DIV style="MARGIN: 10px; WIDTH: 630px; FONT-SIZE: 14px">
<P 
style="MARGIN-TOP: 5px"><B>提交材料说明：</B></P>1、以上材料清单由系统根据你填写的申请表内容自动生成，请打印此清单后按要求准备好相应材料；<BR>2、准备好申请材料后将材料的份数页数手写在提交材料清单上，装订在一起与登记申请表一起寄出。 
</DIV>
<P style="FONT-SIZE: 14px" align=center>第3页/共3页</P></DIV></BODY></HTML>