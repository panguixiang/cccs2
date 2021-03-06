<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:useBean id="now" class="java.util.Date" />
<head>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<title>在线查看-作品著作权登记申请表</title>
<STYLE>TABLE {
	BORDER-BOTTOM-COLOR: #333333; BORDER-TOP-COLOR: #333333; BORDER-COLLAPSE: collapse; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; BORDER-LEFT-COLOR: #333333
}
TD {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: left; BORDER-TOP-COLOR: #333333; HEIGHT: 30px; BORDER-RIGHT-COLOR: #333333; VERTICAL-ALIGN: middle; OVERFLOW: auto; BORDER-LEFT-COLOR: #333333; WORD-BREAK: break-all
}
TH {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: center; BORDER-TOP-COLOR: #333333; FONT-FAMILY:宋体; HEIGHT:30px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; VERTICAL-ALIGN: middle; BORDER-LEFT-COLOR: #333333; FONT-WEIGHT: normal
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
	BORDER-BOTTOM-COLOR: #333333; PADDING-BOTTOM: 8px; LINE-HEIGHT: 20px; BORDER-TOP-COLOR: #333333; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 13px; BORDER-LEFT-COLOR: #333333; PADDING-TOP: 8px
}
.flowno {
	BORDER-BOTTOM-COLOR: gray; BORDER-TOP-COLOR: gray; BORDER-RIGHT-COLOR: gray; BORDER-LEFT-COLOR: gray
}
.zhuzquanren {
	TEXT-ALIGN: center; LINE-HEIGHT: normal; FONT-VARIANT: normal; FONT-STYLE: normal; HEIGHT: 40px; FONT-SIZE: 12px; FONT-WEIGHT: normal
}
.zzqtitle {
	TEXT-ALIGN: center; LINE-HEIGHT: normal; FONT-VARIANT: normal; FONT-STYLE: normal; HEIGHT: 25px; FONT-SIZE: 14px; font-family:宋体; FONT-WEIGHT: normal
}
</STYLE>
<!--  与著作权相关权利事项登记申请的数据项-->
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
    ?>受理签字:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 140px"></SPAN></TD></TR>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 60px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">登记号:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid; WIDTH: 120px"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 110px"></SPAN></TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 70px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid" 
    ?>审查签字:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 140px"></SPAN></TD></TR></TBODY></TABLE>
<TABLE 
style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid" 
border=0 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">
      <DIV class=title>与著作权有关权利事项登记申请表</DIV></TD></TR></TBODY></TABLE>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>基本事项</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 100px">名称</TH>
          <TD class=InputTd colSpan=3>${z31.opus_name}</TD></TR>
        <TR>
          <TH style="WIDTH: 100px">类别</TH>
          <TD class=InputTd colSpan=3>
             <c:if test="${z31.opus_type!='录音制品'}">○&nbsp;录音制品</c:if>
			 <c:if test="${z31.opus_type=='录音制品'}">⊙&nbsp;录音制品</c:if> 
			  <c:if test="${z31.opus_type!='录像制品'}">○&nbsp;录像制品</c:if>
			 <c:if test="${z31.opus_type=='录像制品'}">⊙&nbsp;录像制品</c:if> 
			  <c:if test="${z31.opus_type!='表演'}">○&nbsp;表演</c:if>
			 <c:if test="${z31.opus_type=='表演'}">⊙&nbsp;表演</c:if> 
			  <c:if test="${z31.opus_type!='版式设计'}">○&nbsp;版式设计</c:if>
			 <c:if test="${z31.opus_type=='版式设计'}">⊙&nbsp;版式设计</c:if>
			 <c:if test="${z31.opus_type!='广播、电视'}">○&nbsp;广播、电视</c:if>
			 <c:if test="${z31.opus_type=='广播、电视'}">⊙&nbsp;广播、电视</c:if> 
          </TD></TR>
        <TR>
          <TH style="WIDTH: 100px">制作完成日期 </TH>
          <TD style="WIDTH: 150px" class=InputTd id="createDateid"></TD>
          <TD style="TEXT-ALIGN: center" class=InputTd>制作完成地点 </TD>
          <TD class=InputTd>国家：${z31.create_country}&nbsp;&nbsp;<BR>城市：${z31.create_city} 
    </TD>
                 <script language="javascript">
             	  var sdates = "${z31.create_date}";
				  if (sdates.length > 0) {
					  var nyear = sdates.substring(0, 4);
					  var nmonth = sdates.substring(5, 7);
					  var nday = sdates.substring(8, 11);
					  createDateid.innerText = (nyear+" 年"+nmonth+" 月"+nday+" 日");
			     	} 
							$(document).ready(function(){
								var typed = "${z31.opus_type}";
								switch (typed) {
								case "录音制品":
								case "录像制品":
									daytype.innerHTML = "制作完成";
									areatype.innerHTML = "制作完成";
									break;
								case "表演":
									daytype.innerHTML = "表演发生";
									areatype.innerHTML = "表演发生";
									break;
								case "版式设计":
									daytype.innerHTML = "首次出版";
									areatype.innerHTML = "首次出版";
									break;
								case "广播、电视":
									daytype.innerHTML = "首次播放";
									areatype.innerHTML = "首次播放";
									break;
							 }
							});
							</script>
							</TR>
    </TBODY></TABLE></TD></TR>
    
     <TR>
    <TD class=FenLeiInfo>
      <DIV>权利人</DIV></TD>
    <TD><!--权利人信息  -->
      <TABLE style="TABLE-LAYOUT: fixed" border=1 cellSpacing=0 cellPadding=0 
      width="100%" frame=void align=center>
        <TBODY>
         <c:forEach items="${cps}" var="cp">
        <TR>
          <TH style="WIDTH: 100px">名称或姓名</TH>
          <TD class=zhuzquanren colSpan=3>${cp.name}</TD></TR>
        <TR>
          <TH style="WIDTH: 100px">类别</TH>
          <TD class=zhuzquanren>${cp.people_type}</TD>
          <TD class=zzqtitle>权利人类型</TD>
          <TD class=zhuzquanren>${cp.sign}</TD></TR>
        <TR>
          <TD style="WIDTH: 100px" class=zzqtitle>证件类型</TD>
          <TD class=zhuzquanren>${cp.id_type}</TD>
          <TD class=zzqtitle>证件号码</TD>
          <TD class=zhuzquanren>${cp.id_number}</TD></TR>
        <TR>
          <TD style="WIDTH: 100px" class=zzqtitle>地址</TD>
          <TD class=zhuzquanren>${cp.addr}</TD>
          <TD class=zzqtitle>国籍</TD>
          <TD class=zhuzquanren>${cp.country}</TD></TR>
   </c:forEach>
  </TBODY></TABLE><!-- end 著作权人信息  --></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>使用作品</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
          <c:forEach items="${authors}" var="author">
        <TR>
          <TD>
            <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" 
              frame=void><TBODY>
              <TR>
                <TD style="WIDTH: 128px" class=zhuzquanren>作品名称</TD></TR>
              <TR>
                <TD class=zhuzquanren>${author.name}</TD></TR></TBODY></TABLE></TD>
          <TD>
            <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" 
              frame=void><TBODY>
              <TR>
                <TD style="WIDTH: 100px" class=zhuzquanren>作品类别</TD></TR>
              <TR>
                <TD class=zhuzquanren>${author.opus_type}</TD></TR></TBODY></TABLE></TD>
          <TD>
            <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" 
              frame=void><TBODY>
              <TR>
                <TD class=zhuzquanren>作品著作权人</TD></TR>
              <TR>
         <TD class=zhuzquanren>${author.sign}</TD></TR></TBODY></TABLE></TD></TR>
        </c:forEach>
        </TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>留存作品样本</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 100px">电子介质</TH>
          <TD class=InputTd colSpan=3><SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 280px">${z31.emedium}</SPAN> 
            &nbsp;&nbsp;共 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 30px">${z31.ecount}</SPAN> 件 
        </TD></TR>
        <TR>
          <TH style="WIDTH: 100px">纸介质</TH>
          <TD class=InputTd colSpan=3><SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 280px">${z31.pmedium}</SPAN> 
            &nbsp;&nbsp;共 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 30px">${z31.pcount}</SPAN>张 
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
          <c:if test="${z31.apply_type!='由权利人申请'}">○&nbsp;由权利人申请</c:if>
		 <c:if test="${z31.apply_type=='由权利人申请'}">⊙&nbsp;由权利人申请</c:if>
		 <c:if test="${z31.apply_type!='由代理人申请'}">○&nbsp;由代理人申请</c:if>
		 <c:if test="${z31.apply_type=='由代理人申请'}">⊙&nbsp;由代理人申请</c:if>
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
            id=agentDescU>${z31.agent_desc}</U> </DIV></TD></TR>
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
      <P align=right><fmt:formatDate value="${now}" pattern="yyyy 年  MM 月 dd 日"/>&nbsp;</P></TD></TR></TBODY></TABLE>
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
      <DIV style="FLOAT: left">1、权属证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">2、权利人身份证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">3、录音制品样本</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">4、代理人委托书</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">5、代理人身份证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR></TD></TR>
  <TR>
    <TH style="HEIGHT: 150px">其他材料</TH>
    <TD class=InputTd>&nbsp; </TD></TR></TBODY></TABLE>
<DIV style="MARGIN: 10px; WIDTH: 630px; FONT-SIZE: 14px">
<P 
style="MARGIN-TOP: 5px"><B>提交材料说明：</B></P>1、以上材料清单由系统根据你填写的申请表内容自动生成，请打印此清单后按要求准备好相应材料；<BR>2、准备好申请材料后将材料的份数页数手写在提交材料清单上，装订在一起与登记申请表一起寄出。 
</DIV>
<P style="FONT-SIZE: 14px" align=center>第3页/共3页</P>
</DIV></BODY></HTML>
