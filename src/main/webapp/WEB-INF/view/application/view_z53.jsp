<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:useBean id="now" class="java.util.Date" />
<head>
<title>在线查看-著作权质权变更登记申请表</title>
<STYLE>TABLE {
	BORDER-BOTTOM-COLOR: #333333; BORDER-TOP-COLOR: #333333; BORDER-COLLAPSE: collapse; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; BORDER-LEFT-COLOR: #333333
}
TD {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: left; BORDER-TOP-COLOR: #333333; HEIGHT: 30px; BORDER-RIGHT-COLOR: #333333; VERTICAL-ALIGN: middle; OVERFLOW: auto; BORDER-LEFT-COLOR: #333333; WORD-BREAK: break-all
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
    ?>
      <DIV class=title>著作权质权变更登记申请表</DIV></TD></TR></TBODY></TABLE>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>作品基本信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH width=130>原质权登记号</TH>
          <TD class=InputTd><c:out value='${z53.originalRegNumber}' /></TD></TR>
        <TR>
          <TH>原质权登记日期</TH>
          <TD class=InputTd><c:out value='${z53.applyingType}' /></TD></TR>
        <TR>
          <TH>涉及作品名称</TH>
          <TD class=InputTd><c:out value='${z53.reason}' /></TD></TR>
        <TR>
          <TH>涉及作品种类</TH>
      <TD class=InputTd><SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px;
         FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${文字 == '文字'}">√</c:if> 
        </SPAN>&nbsp;文字 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; 
        BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${口述 == '口述'}">√</c:if> 
        </SPAN>&nbsp;口述 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${音乐 == '音乐'}">√</c:if> 
        </SPAN>&nbsp;音乐 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${戏剧 == '戏剧'}">√</c:if>
        </SPAN>&nbsp;戏剧 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE:
         10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${曲艺 == '曲艺'}">√</c:if>
        </SPAN>&nbsp;曲艺 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE:
         10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${舞蹈 == '舞蹈'}">√</c:if> 
        </SPAN>&nbsp;舞蹈 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${杂技艺术 == '杂技艺术'}">√</c:if> 
        </SPAN>&nbsp;杂技艺术 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${美术 == '美术'}">√</c:if>
        </SPAN>&nbsp;美术 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${建筑 == '建筑'}">√</c:if> 
        </SPAN>&nbsp;建筑 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${摄影 == '摄影'}">√</c:if> 
        </SPAN>&nbsp;摄影 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE:
         10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${电影和类似摄制电影方法创作的作品== '电影和类似摄制电影方法创作的作品'}">√</c:if>
        </SPAN>&nbsp;电影和类似摄制电影方法创作的作品 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${图形 == '图形'}">√</c:if>
        </SPAN>&nbsp;图形 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE:
         10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${模型 == '模型'}">√</c:if>  
        </SPAN>&nbsp;模型 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE:
         10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${录音制品 == '录音制品'}">√</c:if> 
        </SPAN>&nbsp;录音制品 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE:
         10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${录像制品 == '录像制品'}">√</c:if>  
        </SPAN>&nbsp;录像制品 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${版式设计 == '版式设计'}">√</c:if> 
        </SPAN>&nbsp;版式设计 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${广播节目 == '广播节目'}">√</c:if>  
        </SPAN>&nbsp;广播节目 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 
        10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${电视节目 == '电视节目'}">√</c:if>  
        </SPAN>&nbsp;电视节目 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE:
         10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${表演 == '表演'}">√</c:if>  
        </SPAN>&nbsp;表演 <SPAN 
        style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE:
         10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"><c:if test="${其他 == '其他'}">√</c:if> 
        </SPAN>&nbsp;其他 </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>出质人信息</DIV></TD>
    <TD>
      <TABLE style="TABLE-LAYOUT: fixed" border=1 cellSpacing=0 cellPadding=0 
      width="100%" frame=void align=center>
        <TBODY>
        <c:forEach items="${cps1}" var="cp1">
        <TR>
          <TH width=130>姓名或单位名称</TH>
          <TD colSpan=3>${cp1.name}</TD></TR>
        <TR>
          <TH>类别</TH>
          <TD>${cp1.people_type}</TD>
          <TH>出质人类型</TH>
          <TD>${cp1.busType}</TD></TR>
        <TR>
          <TH>证件类型</TH>
          <TD>${cp1.id_type}</TD>
          <TH>证件号码</TH>
          <TD>${cp1.id_number}</TD></TR>
        <TR>
          <TH>法定代表人</TH>
          <TD>${cp1.hasLetter}</TD>
          <TH>电话</TH>
          <TD>${cp1.sign}</TD></TR>
        <TR>
          <TH>联系人</TH>
          <TD>${cp1.opus_sign}</TD>
          <TH>邮政编码</TH>
          <TD>${cp1.garden}</TD></TR>
        <TR>
          <TH width=130>地址</TH>
          <TD colSpan=3>${cp1.addr}</TD></TR>
          </c:forEach>
       </TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>质权人信息</DIV></TD>
    <TD>
      <TABLE style="TABLE-LAYOUT: fixed" border=1 cellSpacing=0 cellPadding=0 
      width="100%" frame=void align=center>
        <TBODY>
        	<c:forEach items="${cps2}" var="cp2">
        <TR>
          <TH width=130>姓名或单位名称</TH>
          <TD colSpan=3>${cp2.name}</TD></TR>
        <TR>
          <TH>类别</TH>
          <TD colSpan=3>${cp2.people_type}</TD></TR>
        <TR>
          <TH>证件类型</TH>
          <TD>${cp2.id_type}</TD>
          <TH>证件号码</TH>
          <TD>${cp2.id_number}</TD></TR>
        <TR>
          <TH>法定代表人</TH>
          <TD>${cp2.hasLetter}</TD>
          <TH>电话</TH>
          <TD>${cp2.sign}</TD></TR>
        <TR>
          <TH>联系人</TH>
          <TD>${cp2.opus_sign}</TD>
          <TH>邮政编码</TH>
          <TD>${cp2.garden}</TD></TR>
        <TR>
          <TH width=130>地址</TH>
          <TD colSpan=3>${cp2.addr}</TD></TR>
          </c:forEach>
       </TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>变更信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TD colSpan=2>
            <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" 
              frame=void><TBODY>
              <TR>
                <TH width=130>变更事项</TH>
                <TH>变更前内容</TH>
                <TH>变更后内容</TH></TR>
                <c:forEach items="${infos}" var="info">
              <TR>
                <TH width=130>${info.item}</TH>
                <TD class=InputTd>${info.before_content}</TD>
                <TD class=InputTd>${info.after_content}</TD></TR>
                </c:forEach>
              </TBODY></TABLE></TD></TR>
        <TR>
          <TH>变更理由说明</TH>
          <TD class=InputTd>
          <c:out value='${z53.originalChangeNumber}' /></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
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
            <c:if test="${z53.applyType=='出质人和质权人办理'}">⊙</c:if>
			<c:if test="${z53.applyType!='出质人和质权人办理'}">○</c:if>出质人和质权人办理&nbsp;&nbsp;
          <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px;
             FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${z53.isAgent=='代理人'}">√</c:if> 
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
            id=agentDescU>${z53.agent_desc}</U> </DIV></TD></TR>
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
      <DIV style="FLOAT: left"><fmt:formatDate value="${now}" pattern="yyyy 年  MM 月  dd 日"/>&nbsp; </DIV>
      <DIV style="FLOAT: right"><fmt:formatDate value="${now}" pattern="yyyy 年  MM 月  dd 日"/> &nbsp; </DIV>
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
      <DIV style="FLOAT: left">1、变更协议</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">2、变更证明文件</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">3、《著作权质权登记证书》原件</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">4、《著作权质权登记证书》复印件</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">5、出质人身份证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">6、质权人身份证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">7、代理人委托书</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">8、代理人身份证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">9、经办人身份证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">10、查询结果</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">11、授权委托书</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">12、变更说明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR></TD></TR>
  <TR>
    <TH style="HEIGHT: 150px">其他材料</TH>
    <TD class=InputTd>&nbsp; </TD></TR></TBODY></TABLE>
<DIV style="MARGIN: 10px; WIDTH: 630px; FONT-SIZE: 14px">
<P 
style="MARGIN-TOP: 5px"><B>提交材料说明：</B></P>1、以上材料清单由系统根据你填写的申请表内容自动生成，请打印此清单后按要求准备好相应材料；<BR>2、准备好申请材料后将材料的份数页数手写在提交材料清单上，装订在一起与登记申请表一起寄出。 
</DIV>
<P style="FONT-SIZE: 14px" align=center>第3页/共3页</P></DIV></BODY></HTML>
