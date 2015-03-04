<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:useBean id="now" class="java.util.Date" />
<head>
<title>在线查看-计算机软件著作权登记申请表</title>
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
	TEXT-ALIGN: center; LINE-HEIGHT: 25px; MARGIN-TOP: 25px; LETTER-SPACING: 1px; FONT-FAMILY: 黑体; MARGIN-BOTTOM: 5px; FONT-SIZE: 20px
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
<!--  与数据字典关联的数据-->
<</HEAD>
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
      <DIV class=title>计算机软件著作权登记申请表</DIV></TD></TR></TBODY></TABLE>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>软件基本信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=70>
          <TH style="WIDTH: 100px">软件全称</TH>
          <TD style="WIDTH: 390px" class=InputTd><SPAN id=nameSpan 
            class=suporsub>${r11.softFullName}</SPAN></TD>
          <TH style="WIDTH: 60px">版本号</TH>
          <TD style="WIDTH: 80px" class=InputTd><SPAN 
            id=editionSpan>${r11.editionNumber}</SPAN></TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">软件简称</TH>
          <TD style="WIDTH: 390px" class=InputTd><SPAN 
            class=suporsub>${r11.softForShort}</SPAN></TD>
          <TH style="WIDTH: 60px">分类号</TH>
          <TD style="WIDTH: 80px" class=InputTd>${r11.softNumber}</TD></TR>
        <TR height=190>
          <TH style="WIDTH: 100px">软件作品说明</TH>
          <TD style="WIDTH: 530px" class=InputTd colSpan=3>
          <c:if test="${r11.developCircs !='1'}">○&nbsp;原创</c:if>
		  <c:if test="${r11.developCircs=='1'}">⊙&nbsp;原创</c:if>&nbsp; 
		  <c:if test="${r11.developCircs!='2'}">○&nbsp;修改(含翻译软件、合成软件)</c:if>
		  <c:if test="${r11.developCircs=='2'}">⊙&nbsp;修改(含翻译软件、合成软件)</c:if> 
          <BR>&nbsp;&nbsp; <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; 
            LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT:
             black 1px solid"><c:if test="${r11.developCircsExplain=='0'}">√</c:if></SPAN>&nbsp;修改软件须经原权利人授权<BR>&nbsp;&nbsp; 
            <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP:
             black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${r11.origSoftRegCircs=='0'}">√</c:if></SPAN>&nbsp;原有软件已经登记<BR>&nbsp;
             &nbsp;&nbsp;&nbsp;&#8226;&nbsp;原登记号: 
            <U>${r11.origRegisterNumber}</U><BR>&nbsp;&nbsp;&nbsp;&nbsp;&#8226;&nbsp;修改（翻译或合成）软件作品说明:<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <SPAN 
            style="BORDER-BOTTOM: black 1px solid; LINE-HEIGHT: 16px; WIDTH: auto; FONT-SIZE: 12px" 
            class=suporsub>${r11.origSoftModifyDescription}</SPAN><BR></TD></TR></TBODY></TABLE></TD></TR>
  <TR><!--<td class="FenLeiInfo"></td>-->
    <TD colSpan=2>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=30>
          <TH style="WIDTH: 132px">开发完成日期</TH>
          <TD style="WIDTH: 530px" class=InputTd>
          <fmt:formatDate value="${r11.completeDateStr}" pattern="yyyy 年  MM 月  dd 日"/></TD></TR>
        <TR height=30>
          <TH style="WIDTH: 132px">发表状态</TH>
          <TD style="WIDTH: 530px" 
            class=InputTd>
            <c:if test="${r11.publishStatus !='1'}">○&nbsp;已发表</c:if>
			<c:if test="${r11.publishStatus=='1'}">⊙&nbsp;已发表</c:if>
			<BR>&nbsp;&nbsp;首次发表日期：<U>&nbsp;&nbsp;<fmt:formatDate value="${r11.appearDateStr}" pattern="yyyy 年  MM 月  dd 日"/>&nbsp;</U>
            <BR>&nbsp;&nbsp;首次发表地点：<U>&nbsp;&nbsp;${r11.appearAreaCountry}&nbsp;&nbsp;${r11.appearAreaCity}&nbsp;&nbsp;</U><BR>
            <c:if test="${r11.publishStatus!='0'}">○&nbsp;未发表</c:if>
			<c:if test="${r11.publishStatus=='0'}">⊙&nbsp;未发表</c:if>  
       </TD></TR>
        <TR height=30>
          <TH style="WIDTH: 132px">开发方式</TH>
          <TD style="WIDTH: 530px" class=InputTd>
        <c:if test="${r11.developMode !='1'}">○&nbsp;独立开发</c:if>
		<c:if test="${r11.developMode =='1'}">⊙&nbsp;独立开发</c:if>&nbsp; 
		<c:if test="${r11.developMode !='2'}">○&nbsp;合作开发</c:if>
		<c:if test="${r11.developMode =='2'}">⊙&nbsp;合作开发</c:if>&nbsp; 
		<c:if test="${r11.developMode !='3'}">○&nbsp;委托开发</c:if>
		<c:if test="${r11.developMode =='3'}">⊙&nbsp;委托开发</c:if>&nbsp; 
		<c:if test="${r11.developMode !='4'}">○&nbsp;下达任务开发</c:if>
		<c:if test="${r11.developMode =='4'}">⊙&nbsp;下达任务开发</c:if> 
          </TD></TR>
            </TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>著作权人</DIV></TD>
    <TD><!-- 著作权人信息  -->
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=30>
          <TH style="WIDTH: 150px">姓名或名称</TH>
          <TH style="WIDTH: 50px">类别</TH>
          <TH style="WIDTH: 60px">证件类型</TH>
          <TH style="WIDTH: 120px">证件号码</TH>
          <TH style="WIDTH: 50px">国籍</TH>
          <TH style="WIDTH: 110px">省份/城市</TH>
          <TH style="WIDTH: 80px">园区</TH></TR>
          <c:forEach items="${cps}" var="cp">
        <TR height=50>
          <TD style="WIDTH: 150px" class=InputTd><SPAN 
            style="LINE-HEIGHT: 16px; FONT-SIZE: 12px">${cp.name}</SPAN></TD>
          <TD style="WIDTH: 50px" class=InputTd><SPAN 
            style="LINE-HEIGHT: 18px; FONT-SIZE: 12px">${cp.people_type}</SPAN> </TD>
          <TD style="WIDTH: 60px" class=InputTd><SPAN 
            style="LINE-HEIGHT: 18px; FONT-SIZE: 12px">${cp.id_type}</SPAN> </TD>
          <TD style="WIDTH: 120px" class=InputTd><SPAN 
            style="LINE-HEIGHT: 18px; FONT-SIZE: 12px">${cp.id_number}</SPAN></TD>
          <TD style="WIDTH: 50px" class=InputTd><SPAN 
            style="LINE-HEIGHT: 18px; FONT-SIZE: 12px">${cp.country}</SPAN></TD>
          <TD style="WIDTH: 110px" class=InputTd><SPAN 
            style="LINE-HEIGHT: 18px; FONT-SIZE: 12px">${cp.province}&nbsp;${cp.city}</SPAN></TD>
          <TD style="WIDTH: 80px" class=InputTd><SPAN 
            style="LINE-HEIGHT: 18px; FONT-SIZE: 12px">${cp.garden}</SPAN></TD></TR>
           </c:forEach> 
        </TBODY></TABLE><!-- end 著作权人信息  -->
          </TD></TR></TBODY></TABLE>
          <BR 
style="PAGE-BREAK-AFTER: always">
<TABLE style="BORDER-BOTTOM: black 2px solid; MARGIN-BOTTOM: 6px" border=0 
cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD>&nbsp; </TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; WIDTH: 150px; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid"></TD></TR></TBODY></TABLE>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>权利说明</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=90>
          <TH style="WIDTH: 100px">权利<BR>取得方式</TH>
          <TD style="WIDTH: 530px" class=InputTd>
     <c:if test="${r11.rightObtainMode !='1'}">○&nbsp;原始取得</c:if>
	 <c:if test="${r11.rightObtainMode =='1'}">⊙&nbsp;原始取得</c:if><BR>
	 <c:if test="${r11.rightObtainMode !='2'}">○&nbsp;继受取得</c:if>
	 <c:if test="${r11.rightObtainMode =='2'}">⊙&nbsp;继受取得</c:if> 
	 (<c:if test="${r11.inheritanceMode !='22'}">○受让</c:if>
	 <c:if test="${r11.inheritanceMode =='22'}">⊙受让</c:if>
	 <c:if test="${r11.inheritanceMode !='23'}">○承受</c:if>
	 <c:if test="${r11.inheritanceMode =='23'}">⊙承受</c:if>
	 <c:if test="${r11.inheritanceMode !='21'}">○继承 </c:if>
	 <c:if test="${r11.inheritanceMode =='21'}">⊙继承 </c:if>)<BR>&nbsp;&nbsp;&nbsp;<SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; 
            FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${r11.isSoftReg=='0'}">√</c:if> 
            </SPAN>&nbsp;该软件已登记&nbsp;&nbsp;(原登记号：<U>${r11.regNumber}&nbsp;</U>)<BR>&nbsp;&nbsp;&nbsp;<SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px;
             FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"> 
            <c:if test="${r11.isSoftChanged=='0'}">√</c:if>&nbsp; 
            </SPAN>&nbsp;原登记做过变更或补充&nbsp;&nbsp;(变更或补充证明编号：<U>${r11.changeNumber}&nbsp;</U>) 
          </TD></TR>
        <TR height=90>
          <TH style="WIDTH: 100px">权利范围</TH>
     <TD style="WIDTH: 530px" class=InputTd>
     <c:if test="${r11.rightScope !='1'}">○&nbsp;全部</c:if>
     <c:if test="${r11.rightScope =='1'}">⊙&nbsp;全部</c:if>   
    <BR>
    <c:if test="${r11.rightScope !='2'}">○&nbsp;部分</c:if>
    <c:if test="${r11.rightScope =='2'}">⊙&nbsp;部分</c:if>( <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid;
        BORDER-RIGHT: black 1px solid"><c:if test="${发表权=='发表权'}">√</c:if></SPAN>&nbsp;发表权 
       <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; 
       FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${署名权=='署名权'}">√</c:if></SPAN>&nbsp;署名权 
       <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; 
       FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${修改权=='修改权'}">√</c:if></SPAN>&nbsp;修改权 
       <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; 
       BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${复制权=='复制权'}">√</c:if></SPAN>&nbsp;复制权 
       <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; 
       BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${发行权=='发行权'}">√</c:if></SPAN>&nbsp;发行权 
       <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; 
       BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${出租权=='出租权'}">√</c:if></SPAN>&nbsp;出租权 
       <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px;
        BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${信息网络传播权=='信息网络传播权'}">√</c:if></SPAN>&nbsp;信息网络传播权 
       <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px;
        BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${翻译权=='翻译权'}">√</c:if></SPAN>&nbsp;翻译权 
       <SPAN 
       style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px;
        BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
        <c:if test="${应当由著作权人享有的其他权利=='应当由著作权人享有的其他权利'}">√</c:if></SPAN>&nbsp;应当由著作权人享有的其他权利 
       ) </TD></TR></TBODY></TABLE></TD></TR><!-- 软件鉴别材料 -->
            
  <TR>
    <TD class=FenLeiInfo>
      <DIV>软件鉴别材料</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void><!-- 一般交存 -->
        <TBODY>
        <TR height=80>
          <TH style="WIDTH: 100px">
          <c:if test="${r11.difmatReferMode!='1'}">○&nbsp;一般交存</c:if>
		  <c:if test="${r11.difmatReferMode=='1'}">⊙&nbsp;一般交存</c:if>
          </TH>
          <TD style="WIDTH: 530px" 
            class=InputTd>提交源程序前连续的30页和后连续的30页；<BR>提交任何一种文档的前连续的30页和后连续的30页；<BR>
            <c:if test="${r11.isMutilDoc!='oneDoc'}">○&nbsp;一种文档</c:if>
			<c:if test="${r11.isMutilDoc=='oneDoc'}">⊙&nbsp;一种文档</c:if>
           <c:if test="${r11.isMutilDoc!='mutilDoc'}">○</c:if>
            <c:if test="${r11.isMutilDoc=='mutilDoc'}">⊙</c:if>
           &nbsp;<U>&nbsp;${r11.mutilDocType}&nbsp;</U>种文档 </TD></TR><!-- 例外交存 -->
        <TR height=80>
          <TH style="WIDTH: 100px">
           <c:if test="${r11.difmatReferMode!='2'}">○&nbsp;例外交存</c:if>
		   <c:if test="${r11.difmatReferMode=='2'}">⊙&nbsp;例外交存</c:if>       
         </TH>
          <TD style="WIDTH: 530px" class=InputTd>
            <c:if test="${r11.difmatReferModeExcep!='exp1'}">○&nbsp;使用黑色宽斜线覆盖</c:if>
			<c:if test="${r11.difmatReferModeExcep=='exp1'}">⊙&nbsp;使用黑色宽斜线覆盖</c:if>       
                                    ，页码为：${r11.difmatReferPages} 
            &nbsp;<BR>
            <c:if test="${r11.difmatReferModeExcep!='exp2'}">○&nbsp;前10页和任选连续的50页</c:if>
			<c:if test="${r11.difmatReferModeExcep=='exp2'}">⊙&nbsp;前10页和任选连续的50页</c:if>
            <BR><c:if test="${r11.difmatReferModeExcep!='exp3'}">○</c:if>
            <c:if test="${r11.difmatReferModeExcep=='exp3'}">⊙</c:if>&nbsp;
                                   目标程序的连续的前、后各30页和源程序任选连续的20页 <BR></TD></TR>
	  </TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>软件功能和技术特点</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=90>
          <TH style="WIDTH: 100px">硬件环境</TH>
          <TD style="WIDTH: 530px" class=InputTd colSpan=3><SPAN 
            class=suporsub>${r11.hardwareEnv}</SPAN></TD></TR>
        <TR height=90>
          <TH style="WIDTH: 100px">软件环境</TH>
          <TD style="WIDTH: 530px" class=InputTd colSpan=3><SPAN 
            class=suporsub>${r11.softwareEnv}</SPAN></TD></TR>
        <TR height=70>
          <TH style="WIDTH: 100px">编程语言</TH>
          <TD style="WIDTH: 330px" class=InputTd><SPAN 
            class=suporsub>${r11.programLanguage}</SPAN></TD>
          <TH style="WIDTH: 100px">源程序量</TH>
          <TD style="WIDTH: 100px" class=InputTd><SPAN 
            class=suporsub>${r11.sourceCodeCapacity}</SPAN></TD></TR>
        <TR height=170>
          <TH style="WIDTH: 100px">主要功能<BR>和技术特点</TH>
          <TD style="WIDTH: 530px; HEIGHT: 80px; FONT-SIZE: 12px" class=InputTd 
          colSpan=3><SPAN 
  class=suporsub>${r11.softFunctionAndSpecialty}</SPAN></TD></TR></TBODY></TABLE></TD></TR>
  </TBODY></TABLE><BR 
style="PAGE-BREAK-AFTER: always">
<TABLE style="BORDER-BOTTOM: black 2px solid; MARGIN-BOTTOM: 6px" border=0 
cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD>&nbsp; </TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; WIDTH: 150px;
     BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid"></TD></TR></TBODY></TABLE>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD colSpan=5>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 135px">申请办理方式</TH>
          <TD style="WIDTH: 530px" class=InputTd 
            colSpan=3>
            <c:if test="${r11.applyType!='由著作权人申请'}">○&nbsp;由著作权人申请</c:if>
			<c:if test="${r11.applyType=='由著作权人申请'}">⊙&nbsp;由著作权人申请</c:if>&nbsp;&nbsp;
			<c:if test="${r11.applyType!='代理人'}">○&nbsp;由代理人申请</c:if>
			<c:if test="${r11.applyType=='代理人'}">⊙&nbsp;由代理人申请</c:if>
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
            id=agentDescU>${r11.agent_desc}</U> </DIV></TD></TR>
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
      colSpan=2>&nbsp;&nbsp;申请人认真阅读了填表说明，准确理解了所需填写的内容，保证所填写的内容真实。<BR>
      <P align=right>申请人签章： 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
      <P align=right><fmt:formatDate value="${now}" pattern="yyyy 年  MM 月  dd 日"/>&nbsp;</P></TD></TR></TBODY></TABLE><!--<p align="center" style="font-size:14px">第3页/共4页</p>--><BR 
style="PAGE-BREAK-AFTER: always">
<TABLE style="BORDER-BOTTOM: black 2px solid; MARGIN-BOTTOM: 6px" border=0 
cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD>&nbsp; </TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; WIDTH: 150px; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid"></TD></TR></TBODY></TABLE><BR>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TH>证书份数</TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left">一份正本&nbsp;&nbsp; 一份副本 </DIV></TD></TR>
  <TR>
    <TD colSpan=2>
      <P 
      style="MARGIN-TOP: 8px; MARGIN-BOTTOM: 5px">&nbsp;&nbsp;&nbsp;&nbsp;请确认所需要的计算机软件著作权登记证书副本份数。登记证书正本和副本数量之和不能超过软件著作权人的数量。</P></TD></TR>
  <TR>
    <TD colSpan=2>
      <P style="MARGIN: 20px; FONT-SIZE: 16px" 
    align=center><B>提交申请材料清单</B></P></TD></TR>
  <TR>
    <TD>
      <DIV style="MARGIN-TOP: 5px; MARGIN-BOTTOM: 5px" 
      align=center><B>申请材料类型</B></DIV></TD>
    <TD>
      <DIV style="MARGIN-TOP: 5px; MARGIN-BOTTOM: 5px" 
      align=center><B>申请材料名称</B></DIV></TD></TR>
  <TR>
    <TD>
      <P align=center>申请表</P></TD>
    <TD>
      <TABLE width="100%">
        <TBODY>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: left">&nbsp;打印签字或盖章的登记申请表</DIV>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD>
      <P align=center>软件鉴别材料</P></TD>
    <TD>
      <TABLE width="100%">
        <TBODY>
        <TR>
          <TD>
            <DIV style="MARGIN: 5px 5px 5px 0px; FLOAT: left">&nbsp;软件源程序</DIV>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR>
        <TR>
          <TD>
            <DIV 
style="MARGIN: 5px 5px 5px 0px; FLOAT: left">&nbsp;软件文档(1)</DIV>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR>
        <TR>
          <TD>
            <DIV 
style="MARGIN: 5px 5px 5px 0px; FLOAT: left">&nbsp;软件文档(2)</DIV>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD>
      <P align=center>身份证明文件</P></TD>
    <TD>
      <TABLE width="100%">
        <TBODY>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: left">&nbsp;申请人身份证明复印件</DIV>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: left">&nbsp;代理人身份证明复印件</DIV>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD>
      <P align=center>权利归属证明文件</P></TD>
    <TD>
      <TABLE width="100%">
        <TBODY>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: left">&nbsp;软件转让合同或协议</DIV>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: left">&nbsp;承受或继承证明文件</DIV>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD>
      <P align=center>其他材料</P></TD>
    <TD>
      <TABLE width="100%">
        <TBODY>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR>
        <TR>
          <TD>
            <DIV 
            style="MARGIN: 5px 5px 5px 0px; FLOAT: right">一份____页&nbsp;&nbsp;</DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<DIV style="MARGIN: 10px; WIDTH: 630px; FONT-SIZE: 14px">
<P style="MARGIN-TOP: 5px"><B>填写说明：</B></P>
<P align=left><SPAN 
style="MARGIN: 8px 5px 5px">&nbsp;&nbsp;&nbsp;请按照提示要求提交有关申请材料，并在提交申请材料清单中准确填写实际交存材料页数。若提示中没有的，请填写材料名称及其页数。该页是申请表的组成部分与申请表一并打印提交。</SPAN></P></DIV><!--<p align="center" style="font-size:14px">第4页/共4页</p>--></DIV>
<!-- <SCRIPT language=javascript>
String.prototype.len=function(){  
return this.replace(/[^\x00-\xff]/g,"**").length;  
}
var obj = document.getElementById("nameSpan");
var str = obj.innerHTML;
var len = str.len();
if(len>150){
	obj.style.fontSize = "12px";
	obj.style.lineHeight = "16px";
}

obj = document.getElementById("editionSpan");
str = obj.innerHTML;
len = str.len();
if(len>36){
	obj.style.fontSize = "12px";
	obj.style.lineHeight = "16px";
} -->
</SCRIPT>
</BODY></HTML>
