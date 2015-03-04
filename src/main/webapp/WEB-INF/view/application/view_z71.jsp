<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>在线查看-出版境外音像制品(录音制品)合同登记申请表</title>
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
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: center; BORDER-TOP-COLOR: #333333; HEIGHT: 22px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; VERTICAL-ALIGN: middle; BORDER-LEFT-COLOR: #333333; FONT-WEIGHT: normal
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
	TEXT-ALIGN: center; LINE-HEIGHT: 20px; MARGIN-TOP: 15px; LETTER-SPACING: 1px; FONT-FAMILY: 黑体; FONT-SIZE: 20px
}
.InputTd {
	BORDER-BOTTOM-COLOR: #333333; PADDING-BOTTOM: 8px; LINE-HEIGHT: 18px; BORDER-TOP-COLOR: #333333; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 13px; BORDER-LEFT-COLOR: #333333; PADDING-TOP: 8px
}
.flowno {
	BORDER-BOTTOM-COLOR: gray; BORDER-TOP-COLOR: gray; BORDER-RIGHT-COLOR: gray; BORDER-LEFT-COLOR: gray
}
.zhuzquanren {
	TEXT-ALIGN: center; LINE-HEIGHT: normal; FONT-VARIANT: normal; FONT-STYLE: normal; HEIGHT: 50px; FONT-SIZE: 12px; FONT-WEIGHT: normal
}

@media Print    
{
.noprint {
	DISPLAY: none
}

}
</STYLE>

<SCRIPT>

function winopen(url)
{
	var targeturl = url;
	newwin=window.open(targeturl,"","resizable=yes,scroll=no");
	if (document.all)
	{
		newwin.moveTo(100,100);
		newwin.resizeTo(2*screen.availwidth/3 + 100, screen.availheight);
	}
}

function show_item(rid)
{
	var isHoutai = "${houtai}";
	var url;
	if(isHoutai.length>0) {
	 var url="${pageContext.request.contextPath}/manage/application/looktracks/"+rid+"/onlylook";
	} else {
	 var url="${pageContext.request.contextPath}/application/looktracks/"+rid+"/onlylook";	
	}
	 window.open(url,"","width=760,scrollbars=no,resizable=no");
}
</SCRIPT>
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
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">
      <DIV class=title>出版境外音像制品(录音制品)合同登记申请表</DIV></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TH width=100>是否公版</TH>
    <TD class=InputTd>
      <c:if test="${z71.isPublic=='是'}">⊙</c:if>
    <c:if test="${z71.isPublic!='是'}">○</c:if>&nbsp;是&nbsp;
    <c:if test="${z71.isPublic=='否'}">⊙</c:if>
    <c:if test="${z71.isPublic!='否'}">○</c:if>&nbsp;否&nbsp;     
    </TD></TR></TBODY></TABLE>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
 <TBODY>
  <TR>
    <TH class=FenLeiInfo rowSpan=2>
      <DIV>录音制品信息</DIV></TH></TR>
  <TR>
    <TH style="WIDTH: 100px">录音制品名称</TH>
    <TD class=InputTd colSpan=3>
      <TABLE cellSpacing=0 cellPadding=0>
        <TBODY>
       <c:forEach items="${records}" var="record">
        <TR>
          <TD noWrap>中文名&nbsp;</TD>
          <TD width="80%" colSpan=3><c:out value='${record.ch_name}' /></TD>
          <TD rowSpan=3 noWrap align=right><INPUT style="WIDTH: 60px" class=noprint 
          onclick="show_item('${record.id}')" name=show_item value=曲目信息 type=button></TD></TR>
        <TR>
          <TD noWrap>英文名&nbsp;</TD>
          <TD width="80%" colSpan=3><c:out value='${record.en_name}' /></TD></TR>
        <TR>
          <TD style="WIDTH: 100px" noWrap>首次出品地 </TH>
          <TD><c:out value='${record.first_address}' /></TD>
          <TD style="WIDTH: 15%" noWrap>出品时间 </TH>
          <TD>&nbsp;<c:out value='${record.create_date}' /></TD></TR>
           </c:forEach> 
          </TBODY></TABLE></TD></TR>
  <TR>
    <TH class=FenLeiInfo rowSpan=9>
      <DIV>出版单位信息</DIV></TH></TR>
  <TR>
    <TH>名称</TH>
    <TD class=InputTd colSpan=3><c:out value='${sqr.name}' /></TD></TR>
  <TR>
    <TH>详细地址</TH>
    <TD class=InputTd colSpan=3><c:out value='${sqr.address}' /></TD></TR>
  <TR>
    <TH>邮政编码</TH>
    <TD class=InputTd colSpan=3><c:out value='${sqr.post_code}' /></TD></TR>
  <TR>
    <TH>联系人</TH>
    <TD class=InputTd colSpan=3><c:out value='${sqr.contact_person}' /></TD></TR>
  <TR>
    <TH>电话号码</TH>
    <TD class=InputTd colSpan=3><c:out value='${sqr.phone}' /></TD></TR>
  <TR>
    <TH>E-mail</TH>
    <TD class=InputTd colSpan=3><c:out value='${sqr.email}' /></TD></TR>
  <TR>
    <TH>手机号码</TH>
    <TD class=InputTd colSpan=3><c:out value='${sqr.mobile}' /></TD></TR>
  <TR>
    <TH>传真号码</TH>
    <TD class=InputTd colSpan=3><c:out value='${sqr.fax}' /></TD></TR>
  <TR>
    <TH class=FenLeiInfo rowSpan=7>
      <DIV>出版合同主要内容</DIV></TH></TR>
  <TR>
    <TH>出版类型</TH>
    <TD class=InputTd colSpan=3><SPAN 
      style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; 
      LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT:
       black 1px solid">&nbsp;<c:if test="${录音带=='录音带'}">√</c:if></SPAN>&nbsp;录音带 
      <SPAN 
      style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px;
       FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">&nbsp;<c:if test="${唱片=='唱片'}">√</c:if></SPAN>&nbsp;唱片 
      <SPAN 
      style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; 
      FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">&nbsp;<c:if test="${激光唱盘=='激光唱盘'}">√</c:if></SPAN>&nbsp;激光唱盘 
      （ <SPAN 
      style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid;
       BORDER-RIGHT: black 1px solid">&nbsp;<c:if test="${CD=='CD'}">√</c:if></SPAN>CD&nbsp;&nbsp; 
      <SPAN 
      style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px;
       FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">&nbsp;<c:if test="${VCD=='VCD'}">√</c:if></SPAN>VCD&nbsp;&nbsp; 
      <SPAN 
      style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px;
       BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">&nbsp;<c:if test="${DVD=='DVD'}">√</c:if></SPAN>DVD&nbsp;&nbsp; 
      )<BR><SPAN 
      style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid;
       BORDER-RIGHT: black 1px solid">&nbsp;<c:if test="${其他=='其他'}">√</c:if></SPAN>&nbsp;其他 
      &nbsp; <BR>说明：<c:out value='${z71.recordDesc}' /></TD></TR>
     <c:if test="${z71.isPublic=='否'}">
  <TR>
    <TH>是否专有</TH>
    <TD class=InputTd colSpan=3>
      <c:if test="${z71.isProprietary=='是'}">⊙</c:if>
   <c:if test="${z71.isProprietary!='是'}">○</c:if>&nbsp;是&nbsp;
   <c:if test="${z71.isProprietary=='否'}">⊙</c:if>
   <c:if test="${z71.isProprietary!='否'}">○</c:if>&nbsp;否&nbsp; 
    </TD></TR>
  <TR>
    <TH>发行范围</TH>
    <TD class=InputTd colSpan=3><c:out value='${z71.publishScope}'/></TD></TR>
  <TR>
    <TH>合同签订日期</TH>
    <TD class=InputTd colSpan=3> <c:out value='${z71.contractSignDate}'/></TD></TR>
  <TR>
    <TH>授权有效期</TH>
    <TD class=InputTd 
      colSpan=3>自&nbsp;<c:out value='${z71.validStartDate}'/>&nbsp;&nbsp;&nbsp;至&nbsp;&nbsp;&nbsp;<c:out value='${z71.validEndDate}'/> 
    </TD></TR>
  <TR>
    <TH>其他</TH>
    <TD class=InputTd colSpan=3><c:out value='${z71.otherInfo}'/></TD></TR>
  <TR>
    <TH class=FenLeiInfo rowSpan=4>
      <DIV>认证情况</DIV></TH></TR>
  <TR>
    <TH>认证机构</TH>
    <TD class=InputTd colSpan=3><c:out value='${z71.certOrg}' /></TD></TR>
  <TR>
    <TH>证明书编号</TH>
    <TD class=InputTd colSpan=3><c:out value='${z71.certNum}' /></TD></TR>
  <TR>
    <TH>回复结果</TH>
    <TD class=InputTd colSpan=3><c:out value='${z71.replyResult}' /></TD></TR>
   </c:if> 
    </TBODY></TABLE>
       <!-- 授权方信息 -->
       <c:choose>
       <c:when test="${z71.isPublic=='否'}">
       <P style="FONT-SIZE: 14px" align=center>第1页/共4页</P><BR 
style="PAGE-BREAK-AFTER: always">
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TH class=FenLeiInfo rowSpan=6>
      <DIV>授权方信息</DIV></TH></TR>
 <c:forEach items="${cps}" var="cp">
  <TR>
    <TH style="WIDTH: 100px">名称(中英文)</TH>
    <TD class=InputTd><c:out value='${cp.name}' /></TD>
    <TH style="WIDTH: 15%">国别或地区</TH>
    <TD class=InputTd><c:out value='${cp.country}' /></TD></TR>
  <TR>
    <TH>地址</TH>
    <TD class=InputTd colSpan=3><c:out value='${cp.addr}' /></TD></TR>
  <TR>
    <TH>电话号码</TH>
    <TD class=InputTd><c:out value='${cp.id_number}' /></TD>
    <TH>传真号码</TH>
    <TD class=InputTd><c:out value='${cp.sign}' /></TD></TR>
  <TR>
    <TH>联系人</TH>
    <TD class=InputTd><c:out value='${cp.opus_sign}' /></TD>
    <TH>Email</TH>
    <TD class=InputTd><c:out value='${cp.garden}' /></TD></TR>
    </c:forEach>
    </TBODY></TABLE>
     <P style="FONT-SIZE: 14px" align=center>第2页/共4页</P><BR 
style="PAGE-BREAK-AFTER: always">
       </c:when>
       <c:otherwise>
       <P style="FONT-SIZE: 14px" align=center>第1页/共3页</P><BR 
style="PAGE-BREAK-AFTER: always">
       </c:otherwise>
       </c:choose>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>留存作品样本</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void 
      height="100%">
        <TBODY>
        <TR>
          <TH style="WIDTH: 100px">电子介质</TH>
          <TD class=InputTd colSpan=3><SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 300px"><c:out value='${z71.emedium}' /></SPAN>&nbsp;&nbsp;共 
            <SPAN style="BORDER-BOTTOM: black 1px solid; WIDTH: 30px"><c:out value='${z71.ecount}' /></SPAN>件 
          </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD colSpan=2>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 135px">申请办理方式</TH></TH>
          <TD style="WIDTH: 530px" class=InputTd>
           <c:if test="${z71.applyType=='由出版单位申请'}">⊙</c:if>
           <c:if test="${z71.applyType!='由出版单位申请'}">○</c:if>&nbsp;由出版单位申请&nbsp;
           <c:if test="${z71.applyType=='代理人'}">⊙</c:if>
           <c:if test="${z71.applyType!='代理人'}">○</c:if>&nbsp;由代理人申请&nbsp; 
          </TD></TR></TBODY></TABLE></TD></TR>
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
            id=agentDescU><c:out value='${z71.agent_desc}' /></U></DIV></TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">姓名或名称</TH>
          <TD style="WIDTH: 371px" class=InputTd><c:out value='${dlr.name}' /></TD>
          <TH style="WIDTH: 50px">电话</TH>
          <TD style="WIDTH: 90px" class=InputTd><c:out value='${dlr.phone}' /></TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">详细地址</TH>
          <TD style="WIDTH: 371px" class=InputTd><c:out value='${dlr.address}' /></TD>
          <TH style="WIDTH: 50px">邮编</TH>
          <TD style="WIDTH: 90px" class=InputTd><c:out value='${dlr.post_code}' /></TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">联系人</TH>
          <TD style="WIDTH: 371px" class=InputTd><c:out value='${dlr.contact_person}' /></TD>
          <TH style="WIDTH: 50px">手机</TH>
          <TD style="WIDTH: 90px" class=InputTd><c:out value='${dlr.mobile}' /></TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">E-mail</TH>
          <TD style="WIDTH: 371px" class=InputTd><c:out value='${dlr.email}' /></TD>
          <TH style="WIDTH: 50px">传真</TH>
          <TD style="WIDTH: 90px" class=InputTd><c:out value='${dlr.fax}' /></TD></TR></TBODY></TABLE></TD></TR>
  <TR><!--<td class="FenLeiInfo"><div>申明和签章</div></td>-->
    <TD class=InputTd 
      colSpan=2>&nbsp;&nbsp;申请人认真阅读了填表说明，准确理解了所需填写的内容，保证所填写的内容真实。<BR>
      <P align=right>申请人签章： 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
      <P align=right>年 月 日 &nbsp;</P></TD></TR></TBODY></TABLE>
      
      <c:choose>
<c:when test="${z71.isPublic=='否'}">
<P style="FONT-SIZE: 14px" align=center>第3页/共4页</P><BR 
style="PAGE-BREAK-AFTER: always"><BR>
</c:when>
<c:otherwise>
<P style="FONT-SIZE: 14px" align=center>第2页/共3页</P><BR 
style="PAGE-BREAK-AFTER: always"><BR>
</c:otherwise>
</c:choose>
<P style="FONT-SIZE: 16px" align=center><B>附页、提交材料清单</B></P>
 <c:choose>
<c:when test="${z71.isPublic=='否'}">
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
      <DIV style="FLOAT: left">1、曲目信息附表</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">2、自原始作品著作权人或者录音制品制作者至出版单位的一系列授权合同和授权书</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">3、认证材料</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">4、作品样本</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">5、其他需要提交的证明材料</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR></TD></TR>
  <TR>
    <TH style="HEIGHT: 150px">其他材料</TH>
    <TD class=InputTd>&nbsp; </TD></TR></TBODY></TABLE>
<DIV style="MARGIN: 10px; WIDTH: 630px; FONT-SIZE: 14px">
<P 
style="MARGIN-TOP: 5px"><B>提交材料说明：</B></P>1、以上材料清单由系统根据你填写的申请表内容自动生成，请打印此清单后按要求准备好相应材料；<BR>2、准备好申请材料后将材料的份数页数手写在提交材料清单上，装订在一起与登记申请表一起寄出。 
</DIV>
<P style="FONT-SIZE: 14px" align=center>第4页/共4页</P></DIV>
</c:when>
<c:otherwise>
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
      <DIV style="FLOAT: left">1、曲目信息附表</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">2、认证材料</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">3、作品样本</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">4、其他需要提交的证明材料</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR></TD></TR>
  <TR>
    <TH style="HEIGHT: 150px">其他材料</TH>
    <TD class=InputTd>&nbsp; </TD></TR></TBODY></TABLE>
<DIV style="MARGIN: 10px; WIDTH: 630px; FONT-SIZE: 14px">
<P 
style="MARGIN-TOP: 5px"><B>提交材料说明：</B></P>1、以上材料清单由系统根据你填写的申请表内容自动生成，请打印此清单后按要求准备好相应材料；<BR>2、准备好申请材料后将材料的份数页数手写在提交材料清单上，装订在一起与登记申请表一起寄出。 
</DIV>
<P style="FONT-SIZE: 14px" align=center>第3页/共3页</P></DIV>
</c:otherwise>
</c:choose>
</BODY></HTML>