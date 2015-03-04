<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:useBean id="now" class="java.util.Date" />
<head>
<title>在线查看-补发或者换发软件登记证书申请表    </title>
<STYLE>TABLE {
	BORDER-BOTTOM-COLOR: #333333; BORDER-TOP-COLOR: #333333; BORDER-COLLAPSE: collapse; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; BORDER-LEFT-COLOR: #333333
}
.myinput {
	COLOR: 
}
TD {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: left; BORDER-TOP-COLOR: #333333; BORDER-RIGHT-COLOR: #333333; VERTICAL-ALIGN: middle; OVERFLOW: auto; BORDER-LEFT-COLOR: #333333; WORD-BREAK: break-all
}
TH {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: center; BORDER-TOP-COLOR: #333333; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; VERTICAL-ALIGN: middle; BORDER-LEFT-COLOR: #333333; FONT-WEIGHT: normal
}
UNKNOWN {
	BORDER-BOTTOM: black 1px solid; WIDTH: 200px; MARGIN-BOTTOM: 2px
}
.FenLeiInfo {
	TEXT-ALIGN: center; WIDTH: 30px
}
.FenLeiInfo DIV {
	WIDTH: 25px
}
.title {
	TEXT-ALIGN: center; LINE-HEIGHT: 20px; MARGIN-TOP: 20px; LETTER-SPACING: 1px; FONT-FAMILY: 黑体; MARGIN-BOTTOM: 5px; FONT-SIZE: 20px
}
.InputTd {
	BORDER-BOTTOM-COLOR: #333333; PADDING-BOTTOM: 4px; LINE-HEIGHT: 20px; BORDER-TOP-COLOR: #333333; PADDING-LEFT: 4px; PADDING-RIGHT: 4px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 13px; BORDER-LEFT-COLOR: #333333; PADDING-TOP: 4px
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
  <TR height=35>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 60px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">受理号:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid; WIDTH: 120px"><!--<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>--><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 110px"></SPAN></TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 70px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">受理签字:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 140px"></SPAN></TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; WIDTH: 150px; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid" 
    rowSpan=2></TD></TR>
  <TR height=35>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 60px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">登记号:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid; WIDTH: 120px"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 110px"></SPAN></TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 70px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">审查签字:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 140px"></SPAN></TD></TR></TBODY></TABLE>
<TABLE 
style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid" 
border=0 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">
      <DIV class=title>补发或者换发软件登记证书申请表 </DIV></TD></TR></TBODY></TABLE>
<TABLE border=1 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>软件登记基本信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=70>
          <TH width=100><SPAN class=datacell>软件全称</SPAN></TH>
          <TD class=InputTd width=530 colSpan=3><SPAN 
          class=suporsub><c:out value='${r43_4.softName}' /></SPAN></TD></TR>
        <TR height=50>
          <TH width=100><SPAN class=datacell>软件简称</SPAN></TH>
          <TD class=InputTd width=530 colSpan=3><SPAN 
            class=suporsub><c:out value='${r43_4.gtsqrName}' /></SPAN></TD></TR>
        <TR height=30>
          <TH width=100><SPAN class=datacell>版本号</SPAN></TH>
          <TD class=InputTd width=530 colSpan=3><c:out value='${r43_4.handleDate}' /></TD></TR>
        <TR height=30>
          <TH width=100><SPAN class=datacell>原登记号</SPAN></TH>
          <TD class=InputTd width=230><c:out value='${r43_4.handleNumber}' /></TD><!-- <th width="100px">登记日期</th>
		<td class="InputTd" width="200px"></td> -->
          <TH width=100>原变更/补充登记证明编号</TH>
          <TD class=InputTd width=200><c:out value='${r43_4.originalChangeNumber}' /></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>补发或换发信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=50>
          <TH width=100><SPAN class=datacell>补发或换发<BR>证书类型</SPAN></TH>
          <TD class=InputTd width=530>
          <c:if test="${r43_4.originalRegType=='软件著作权登记证书'}">⊙</c:if> 
          <c:if test="${r43_4.originalRegType!='软件著作权登记证书'}">○</c:if>&nbsp;软件著作权登记证书&nbsp; 
          <c:if test="${r43_4.originalRegType=='软件合同登记证书'}">⊙</c:if> 
          <c:if test="${r43_4.originalRegType!='软件合同登记证书'}">○</c:if>&nbsp;软件合同登记证书&nbsp;
		  <c:if test="${r43_4.originalRegType=='变更补充证明'}">⊙</c:if> 
		  <c:if test="${r43_4.originalRegType!='变更补充证明'}">○</c:if>&nbsp;变更补充证明&nbsp;
           </TD></TR>
        <TR height=70>
          <TH width=100><SPAN class=datacell>补发或换发<BR>的理由</SPAN></TH>
          <TD class=InputTd width=530><c:out value='${r43_4.reason}' /></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD colSpan=2>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 135px">申请办理方式</TH></TH>
          <TD style="WIDTH: 530px" class=InputTd>
            <c:if test="${r43_4.applyType=='由著作权人办理'}">⊙</c:if>
		    <c:if test="${r43_4.applyType!='由著作权人办理'}">○</c:if>由著作权人办理&nbsp;&nbsp;
			<c:if test="${r43_4.applyType=='由合同登记人办理'}">⊙</c:if>
			<c:if test="${r43_4.applyType!='由合同登记人办理'}">○</c:if>由合同登记人办理&nbsp;&nbsp;
			<c:if test="${r43_4.applyType=='代理人'}">⊙</c:if>
			<c:if test="${r43_4.applyType!='代理人'}">○</c:if>由代理人申请办理
          </TD></TR></TBODY></TABLE></TD></TR>
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
            id=agentDescU>${r43_4.agent_desc}</U> </DIV></TD></TR>
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
          <TD style="WIDTH: 90px" class=InputTd>${dlr.fax}</TD></TR></TBODY></TABLE></TD></TR>
  <TR><!--<td class="FenLeiInfo"><div>申明和签章</div></td>-->
    <TD class=InputTd 
      colSpan=2>&nbsp;&nbsp;申请人认真阅读了填表说明，准确理解了所需填写的内容，保证所填写的内容真实。<BR>
      <P align=right>申请人签章： 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
      <P align=right><fmt:formatDate value="${now}" pattern="yyyy 年  MM 月  dd 日"/> &nbsp;</P></TD></TR></TBODY></TABLE><!--<p align="center" style="font-size:14px">第2页/共3页</p>--><BR 
style="PAGE-BREAK-AFTER: always">
<TABLE style="BORDER-BOTTOM: black 2px solid; MARGIN-BOTTOM: 6px" border=0 
cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD>&nbsp; </TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; WIDTH: 150px; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid"></TD></TR></TBODY></TABLE><BR>
<P style="FONT-SIZE: 16px" align=center><B>附页、提交材料清单</B></P>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TH width=100><B>材料类型</B></TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left"><B>&nbsp;&nbsp;材料名称</B></DIV>
      <DIV style="FLOAT: right"><B></B></DIV></TD></TR>
  <TR>
    <TH width=100>登记申请表</TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left">打印签字盖章的登记申请表</DIV>
      <DIV style="FLOAT: right">一式一份</DIV></TD></TR>
  <TR>
    <TH>证明文件</TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left">1、申请者身份证明文件</DIV>
      <DIV style="FLOAT: right">一式一份</DIV><BR>
      <DIV style="FLOAT: left">2、代理人委托书</DIV>
      <DIV style="FLOAT: right">一式一份</DIV><BR>
      <DIV style="FLOAT: left">3、代理人身份证明文件</DIV>
      <DIV style="FLOAT: right">一式一份</DIV><BR></TD></TR>
  <TR>
    <TH style="HEIGHT: 150px">其他材料</TH>
    <TD class=InputTd>&nbsp; </TD></TR></TBODY></TABLE>
<DIV style="MARGIN: 10px; WIDTH: 630px; FONT-SIZE: 14px">
<P 
style="MARGIN-TOP: 5px"><B>提交材料说明：</B></P>1、以上材料清单由系统根据你填写的申请表内容自动生成，请打印此清单后按要求准备好相应材料；<BR>2、准备好申请材料后将材料的份数页数手写在提交材料清单上，装订在一起与登记申请表一起寄出。 
</DIV></DIV></BODY></HTML>