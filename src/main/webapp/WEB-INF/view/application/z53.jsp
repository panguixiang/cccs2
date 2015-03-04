<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线填报-著作权质权合同登记申请表</title>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<LINK rel=stylesheet type=text/css href="css/table.css">
<LINK rel=stylesheet type=text/css href="css/form/formStyle2.css">
<script language="JavaScript" src="js/jquery-1.4.2.min.js"></script>
<SCRIPT language=JavaScript src="js/form2/general2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/showtips2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/formcheck2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/createPeoples2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/pgCalPicker.js"></SCRIPT>

</HEAD>
<BODY><!-- 申请人选项div -->
<DIV id=mytips></DIV>
<DIV 
style="BORDER-BOTTOM: #333333 1px solid; POSITION: absolute; TEXT-ALIGN: left; BORDER-LEFT: #333333 1px solid; PADDING-BOTTOM: 3px; LINE-HEIGHT: 15px; BACKGROUND-COLOR: #ffff99; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; DISPLAY: none; HEIGHT: 30px; FONT-SIZE: 13px; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid; PADDING-TOP: 3px; TOP: 0px; LEFT: 0px" 
id=_sqr_div onmouseover="this.style.display='block';" 
onmouseout="this.style.display='none';"></DIV>
<DIV 
style="TEXT-ALIGN: center; PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; WIDTH: 900px; PADDING-RIGHT: 0px; PADDING-TOP: 10px">
<FORM method=post name=generalForm action="">
<input type="hidden" name="flow_num" value="${z53.flow_num}" />
<TABLE style="BORDER-COLLAPSE: collapse" border=0 cellSpacing=0 
borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" align=center><B>著作权质权变更登记申请表</B> &nbsp;&nbsp; 
      <IMG id=myhelp 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() src="images/icon_alert.gif" 
      width=18 tips="著作权质权变更登记申请表总说明" /></TD></TR></TBODY></TABLE>
<DIV style="MARGIN-TOP: 10px" id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR width="150px">
    <TD class="contentbg small_title" colSpan=2>作品基本信息</TD></TR>
  <TR>
    <TD class=contentbg>原登质权记号</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=originalRegNumber tips="请填写原登质权记号" 
      errmsg="原登质权记号不能为空!" length="40" valid="required" value="<c:out value='${z53.originalRegNumber}' />" /></TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>原质权登记日期</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name=applyingType readOnly tips="请填写原质权登记日期" errmsg="原质权登记日期不能为空!" 
      valid="required" value="<c:out value='${z53.applyingType}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>涉及作品名称</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=reason size=50 tips="请填写涉及作品名称" 
      errmsg="涉及作品名称不能为空!" length="200" valid="required" value="<c:out value='${z53.reason}' />" /></TD></TR>
  <TR>
    <TD class=contentbg width=150>涉及作品种类</TD>
    <TD class=contentbg>
    <c:choose>
    <c:when test="${empty z53}">
    <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=文字 type=checkbox 
      tips="文字" CHECKED />文字&nbsp; 
    </c:when>
    <c:otherwise>
    <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=文字 type=checkbox 
      tips="文字" <c:if test="${文字=='文字'}">CHECKED</c:if> />文字&nbsp; 
    </c:otherwise>
    </c:choose>
      <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=口述 type=checkbox 
      tips="口述" <c:if test="${口述=='口述'}">CHECKED</c:if> />口述&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=音乐 type=checkbox 
      tips="音乐" <c:if test="${音乐=='音乐'}">CHECKED</c:if> />音乐&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=戏剧 type=checkbox 
      tips="戏剧" <c:if test="${戏剧=='戏剧'}">CHECKED</c:if> />戏剧&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=曲艺 type=checkbox 
      tips="曲艺" <c:if test="${曲艺=='曲艺'}">CHECKED</c:if> />曲艺&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=舞蹈 type=checkbox 
      tips="舞蹈" <c:if test="${舞蹈=='舞蹈'}">CHECKED</c:if> />舞蹈&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=杂技艺术 type=checkbox 
      tips="杂技艺术" <c:if test="${杂技艺术=='杂技艺术'}">CHECKED</c:if> />杂技艺术&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=美术 type=checkbox 
      tips="美术" <c:if test="${美术=='美术'}">CHECKED</c:if> />美术&nbsp; <BR><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=建筑 type=checkbox 
      tips="建筑" <c:if test="${建筑=='建筑'}">CHECKED</c:if> />建筑&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=摄影 type=checkbox 
      tips="摄影" <c:if test="${摄影=='摄影'}">CHECKED</c:if> />摄影&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=电影和类似摄制电影方法创作的作品 
      type=checkbox tips="电影和类似摄制电影方法创作的作品"
       <c:if test="${电影和类似摄制电影方法创作的作品=='电影和类似摄制电影方法创作的作品'}">CHECKED</c:if> />电影和类似摄制电影方法创作的作品&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=图形 type=checkbox 
      tips="图形" <c:if test="${图形=='图形'}">CHECKED</c:if> />图形&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=模型 type=checkbox 
      tips="模型" <c:if test="${模型=='模型'}">CHECKED</c:if> />模型&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=录音制品 type=checkbox 
      tips="录音制品" <c:if test="${录音制品=='录音制品'}">CHECKED</c:if> />录音制品&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=录像制品 type=checkbox 
      tips="录像制品" <c:if test="${录像制品=='录像制品'}">CHECKED</c:if> />录像制品&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=版式设计 type=checkbox 
      tips="版式设计" <c:if test="${版式设计=='版式设计'}">CHECKED</c:if> />版式设计&nbsp; <BR><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=广播节目 type=checkbox 
      tips="广播节目" <c:if test="${广播节目=='广播节目'}">CHECKED</c:if> />广播节目&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=电视节目 type=checkbox 
      tips="电视节目" <c:if test="${电视节目=='电视节目'}">CHECKED</c:if> />电视节目&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=表演 type=checkbox 
      tips="表演" <c:if test="${表演=='表演'}">CHECKED</c:if> />表演&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=softFullName value=其他 type=checkbox 
      tips="其他" <c:if test="${其他=='其他'}">CHECKED</c:if> />其他&nbsp; <BR></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">出质人信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT style="WIDTH: 80px" onclick="addRow('personData')" name=button value=增加出质人 type=button> 
      </DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id=personData class=contentbg colSpan=2>
      <DIV style="DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=150>姓名或单位名称</TD>
          <TD width=80>类别</TD>
          <TD><SELECT onchange=s_h_legalPeople(this) name=peopleType1> 
              <OPTION selected value=自然人>自然人</OPTION> <OPTGROUP label=法人> 
                <OPTION value=企业法人>企业法人</OPTION> <OPTION value=机关法人>机关法人</OPTION> 
                <OPTION value=事业单位法人>事业单位法人</OPTION> <OPTION 
                value=社会团体法人>社会团体法人</OPTION> </OPTGROUP> <OPTION value=其他组织>其他组织</OPTION> 
              <OPTION value=其他>其他</OPTION></SELECT> </TD>
          <TD width=法定代表人>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            disabled onmouseout=cpcc_showtip() name=legalPeople1 size=15 
            tips="请填写法定代表人" errmsg="法定代表人不能为空!" length="100" valid="required" /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=4><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=4 name=name1 tips="请填写姓名或单位名称" errmsg="姓名或单位名称不能为空!" length="200" valid="required"></TEXTAREA></TD>
          <TD>证件类型</TD>
          <TD><SELECT name=idTypes1> <OPTION selected value=居民身份证>居民身份证</OPTION> 
              <OPTION value=军官证>军官证</OPTION> <OPTION value=护照>护照</OPTION> <OPTION 
              value=企业法人营业执照>企业法人营业执照</OPTION> <OPTION value=组织机构代码证书>组织机构代码证书</OPTION> 
              <OPTION value=事业单位法人证书>事业单位法人证书</OPTION> <OPTION value=社团法人证书>社团法人证书</OPTION> 
              <OPTION value=营业执照>营业执照</OPTION> <OPTION value=其他有效证件>其他有效证件</OPTION> 
            </SELECT> </TD>
          <TD>证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=idNumber1 maxLength=40 size=15 
            tips="请填写证件号码" errmsg="证件号码不能为空!" length="40" valid="required" /> 
        </TD></TR>
        <TR>
          <TD>出质人类型</TD>
          <TD><SELECT style="WIDTH: 115px" name=impawnType1> <OPTION 
              selected value=债务人>债务人</OPTION> <OPTION 
            value=第三方>第三方</OPTION></SELECT> </TD>
          <TD>电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone1 size=15 
            tips="可选项，但如果要填写请按照正确的格式" length="40" /> </TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 size=15 tips="请填写联系人" 
            errmsg="联系人不能为空!" length="40" valid="required" /> </TD>
          <TD>邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode1 size=15 tips="请填写邮政编码" 
            errmsg="不能为空！|格式为6位数字" length="6" valid="required|isZip" /> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address1 size=50 tips="请填写地址" 
            errmsg="地址不能为空!" length="100" valid="required" /> </DIV>
            <DIV style="FLOAT: right" />
            <INPUT onclick=delRow(this); value=删除 type=button />
            </DIV></TD></TR></TBODY></TABLE></DIV>
            <c:choose>
               <c:when test="${empty cps1}">
               <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=150>姓名或单位名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            onchange=s_h_legalPeople(this) name=peopleType1><OPTION selected 
              value=自然人>自然人</OPTION> <OPTGROUP label=法人> <OPTION 
                value=企业法人>企业法人</OPTION> <OPTION value=机关法人>机关法人</OPTION> <OPTION 
                value=事业单位法人>事业单位法人</OPTION> <OPTION value=社会团体法人>社会团体法人</OPTION> 
              </OPTGROUP> <OPTION value=其他组织>其他组织</OPTION> <OPTION 
              value=其他>其他</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
             onmouseout=cpcc_showtip() name=legalPeople1 size=15 
            tips="请填写法定代表人" errmsg="法定代表人不能为空!" length="100" valid="required" disabled /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=4><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=4 name=name1 tips="请填写姓名或单位名称" errmsg="姓名或单位名称不能为空!" length="200" valid="required"></TEXTAREA></TD>
          <TD>证件类型</TD>
          <TD><SELECT name=idTypes1> <OPTION selected value=居民身份证>居民身份证</OPTION> <OPTION 
              value=军官证>军官证</OPTION> <OPTION value=护照>护照</OPTION> <OPTION 
              value=企业法人营业执照>企业法人营业执照</OPTION> <OPTION value=组织机构代码证书>组织机构代码证书</OPTION> 
              <OPTION value=事业单位法人证书>事业单位法人证书</OPTION> <OPTION value=社团法人证书>社团法人证书</OPTION> 
              <OPTION value=营业执照>营业执照</OPTION> <OPTION value=其他有效证件>其他有效证件</OPTION> </SELECT> </TD>
          <TD>证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=idNumber1 size=15 tips="请填写证件号码" 
            errmsg="证件号码不能为空!" length="40" valid="required" /> </TD></TR>
        <TR>
          <TD>出质人类型</TD>
          <TD><SELECT style="WIDTH: 115px" name=impawnType1> <OPTION 
              selected value=债务人>债务人</OPTION> <OPTION 
            value=第三方>第三方</OPTION></SELECT> </TD>
          <TD>电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=phone1 size=15 
            tips="可选项，但如果要填写请按照正确的格式" length="40" /> </TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 size=15 tips="请填写联系人" 
            errmsg="联系人不能为空!" length="40" valid="required" /> </TD>
          <TD>邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=postCode1 size=15 tips="请填写邮政编码" 
            errmsg="不能为空！|格式为6位数字" length="6" valid="required|isZip" /> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address1 size=50 tips="请填写地址" 
            errmsg="地址不能为空!" length="100" valid="required" /> 
      </TD></TR></TBODY></TABLE></DIV>
               </c:when>
               <c:otherwise>
               <c:forEach items="${cps1}" var="cp1" varStatus="cp1Stat">
                <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=150>姓名或单位名称</TD>
          <TD width=80>类别</TD>
          <TD><SELECT onchange=s_h_legalPeople(this) name=peopleType1> 
             <OPTION value=自然人 <c:if test="${cp1.people_type=='自然人'}">selected</c:if>>自然人</OPTION>
            <OPTGROUP label=法人>
            <OPTION value=企业法人 <c:if test="${cp1.people_type=='企业法人'}">selected</c:if>>企业法人</OPTION>
            <OPTION value=机关法人 <c:if test="${cp1.people_type=='机关法人'}">selected</c:if>>机关法人</OPTION>
            <OPTION value=事业单位法人 <c:if test="${cp1.people_type=='事业单位法人'}">selected</c:if>>事业单位法人</OPTION>
            <OPTION value=社会团体法人 <c:if test="${cp1.people_type=='社会团体法人'}">selected</c:if>>社会团体法人</OPTION> 
           </OPTGROUP>
           <OPTION value=其他组织 <c:if test="${cp1.people_type=='其他组织'}">selected</c:if>>其他组织</OPTION>
           <OPTION value=其他 <c:if test="${cp1.people_type=='其他'}">selected</c:if>>其他</OPTION>
              </SELECT> </TD>
          <TD width=法定代表人>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=legalPeople1 size=15 
            tips="请填写法定代表人" errmsg="法定代表人不能为空!" 
            length="100" valid="required" value="<c:out value='${cp1.hasLetter}' />"
             <c:if test="${cp1.people_type=='自然人'}">disabled</c:if> /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=4><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
          rows=4 name=name1 tips="请填写姓名或单位名称" errmsg="姓名或单位名称不能为空!" length="200" valid="required">
          <c:out value='${cp1.name}' /></TEXTAREA></TD>
          <TD>证件类型</TD>
          <TD><SELECT name=idTypes1> 
          <OPTION value=居民身份证 <c:if test="${cp1.id_type=='居民身份证'}">selected</c:if>>居民身份证</OPTION>
           <OPTION value=军官证 <c:if test="${cp1.id_type=='军官证'}">selected</c:if>>军官证</OPTION>
           <OPTION value=护照 <c:if test="${cp1.id_type=='护照'}">selected</c:if>>护照</OPTION>
           <OPTION value=企业法人营业执照 <c:if test="${cp1.id_type=='企业法人营业执照'}">selected</c:if>>企业法人营业执照</OPTION>
           <OPTION value=组织机构代码证书 <c:if test="${cp1.id_type=='组织机构代码证书'}">selected</c:if>>组织机构代码证书</OPTION> 
           <OPTION value=事业单位法人证书 <c:if test="${cp1.id_type=='事业单位法人证书'}">selected</c:if>>事业单位法人证书</OPTION>
           <OPTION value=社团法人证书 <c:if test="${cp1.id_type=='社团法人证书'}">selected</c:if>>社团法人证书</OPTION> 
           <OPTION value=营业执照 <c:if test="${cp1.id_type=='营业执照'}">selected</c:if>>营业执照</OPTION>
           <OPTION value=其他有效证件 <c:if test="${cp1.id_type=='其他有效证件'}">selected</c:if>>其他有效证件</OPTION> 
            </SELECT> </TD>
          <TD>证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=idNumber1 maxLength=40 size=15 
            tips="请填写证件号码" errmsg="证件号码不能为空!" length="40" 
            valid="required" value="<c:out value='${cp1.id_number}' />" /> 
        </TD></TR>
        <TR>
          <TD>出质人类型</TD>
          <TD><SELECT style="WIDTH: 115px" name=impawnType1>
             <OPTION value=债务人 <c:if test="${cp1.busType=='债务人'}">selected</c:if>>债务人</OPTION>
             <OPTION value=第三方 <c:if test="${cp1.busType=='第三方'}">selected</c:if>>第三方</OPTION>
              </SELECT> </TD>
          <TD>电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone1 size=15 
            tips="可选项，但如果要填写请按照正确的格式" length="40" value="<c:out value='${cp1.sign}' />" /> </TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 size=15 tips="请填写联系人" 
            errmsg="联系人不能为空!" length="40" valid="required" value="<c:out value='${cp1.opus_sign}' />" /> </TD>
          <TD>邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode1 size=15 tips="请填写邮政编码" 
            errmsg="不能为空！|格式为6位数字" length="6" valid="required|isZip" value="<c:out value='${cp1.garden}' />" /> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address1 size=50 tips="请填写地址" 
            errmsg="地址不能为空!" length="100" valid="required"  value="<c:out value='${cp1.addr}' />" /> </DIV>
            <c:if test="${cp1Stat.index!=0}">
            <DIV style="FLOAT: right" />
            <INPUT onclick=delRow(this); value=删除 type=button />
            </DIV>
            </c:if>
            </TD></TR></TBODY></TABLE></DIV>
               </c:forEach>
               </c:otherwise>
            </c:choose>
      </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left"><SPAN class=datacell>质权人信息</SPAN></DIV>
      <DIV style="FLOAT: right">
      <INPUT style="WIDTH: 80px" onclick="addRow('personData1')" name=button value=增加质权人 type=button> 
      </DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id=personData1 class=contentbg colSpan=2>
      <DIV style="DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=150>姓名或单位名称</TD>
          <TD width=80>类别</TD>
          <TD><SELECT onchange=s_h_legalPeople(this) name=peopleType2> 
             <OPTION selected 
              value=自然人>自然人</OPTION> <OPTGROUP label=法人> <OPTION 
                value=企业法人>企业法人</OPTION> <OPTION value=机关法人>机关法人</OPTION> <OPTION 
                value=事业单位法人>事业单位法人</OPTION> <OPTION value=社会团体法人>社会团体法人</OPTION> 
              </OPTGROUP> <OPTION value=其他组织>其他组织</OPTION> <OPTION 
              value=其他>其他</OPTION></SELECT> </TD>
          <TD width=80>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
             onmouseout=cpcc_showtip() name=legalPeople2 size=15 
            tips="请填写法定代表人" errmsg="法定代表人不能为空!" length="100" valid="required" disabled/> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=5><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=4 name=name2 tips="请填写姓名或单位名称" errmsg="姓名或单位名称不能为空!" length="200" valid="required"></TEXTAREA> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=idTypes2><OPTION selected value=居民身份证>居民身份证</OPTION> <OPTION 
              value=军官证>军官证</OPTION> <OPTION value=护照>护照</OPTION> <OPTION 
              value=企业法人营业执照>企业法人营业执照</OPTION> <OPTION value=组织机构代码证书>组织机构代码证书</OPTION> 
              <OPTION value=事业单位法人证书>事业单位法人证书</OPTION> <OPTION value=社团法人证书>社团法人证书</OPTION> 
              <OPTION value=营业执照>营业执照</OPTION> <OPTION value=其他有效证件>其他有效证件</OPTION> </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=idNumber2 size=15 tips="请填写证件号码" 
            errmsg="证件号码不能为空!" length="40" valid="required" /></TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson2 size=15 tips="请填写联系人" 
            errmsg="联系人不能为空!" length="40" valid="required" /></TD>
          <TD>电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone2 size=15 
            tips="可选项，但如果要填写请按照正确的格式" length="40" /></TD></TR>
        <TR>
          <TD>邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode2 size=15 tips="请填写邮政编码" 
            errmsg="不能为空！|格式为6位数字" length="6" valid="required|isZip" /></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address2 size=50 tips="请填写地址" 
            errmsg="地址不能为空!" length="100" valid="required" /></DIV>
            <DIV style="FLOAT: right">
            <INPUT onclick=delRow(this); value=删除 type=button /></DIV></TD>
            </TR></TBODY></TABLE></DIV>
            <c:choose>
            <c:when test="${empty cps2}">
             <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=150>姓名或单位名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            onchange=s_h_legalPeople(this) name=peopleType2><OPTION selected 
              value=自然人>自然人</OPTION> <OPTGROUP label=法人> <OPTION 
                value=企业法人>企业法人</OPTION> <OPTION value=机关法人>机关法人</OPTION> <OPTION 
                value=事业单位法人>事业单位法人</OPTION> <OPTION value=社会团体法人>社会团体法人</OPTION> 
              </OPTGROUP> <OPTION value=其他组织>其他组织</OPTION> <OPTION 
              value=其他>其他</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <INPUT id=test onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
             onmouseout=cpcc_showtip() name=legalPeople2 size=15 
            tips="请填写法定代表人" errmsg="法定代表人不能为空!" length="100" valid="required" disabled /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=5><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=4 name=name2 tips="请填写姓名或单位名称" errmsg="姓名或单位名称不能为空!" length="200" valid="required"></TEXTAREA></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=idTypes2><OPTION selected value=居民身份证>居民身份证</OPTION> <OPTION 
              value=军官证>军官证</OPTION> <OPTION value=护照>护照</OPTION> <OPTION 
              value=企业法人营业执照>企业法人营业执照</OPTION> <OPTION value=组织机构代码证书>组织机构代码证书</OPTION> 
              <OPTION value=事业单位法人证书>事业单位法人证书</OPTION> <OPTION value=社团法人证书>社团法人证书</OPTION> 
              <OPTION value=营业执照>营业执照</OPTION> <OPTION value=其他有效证件>其他有效证件</OPTION> </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=idNumber2 size=15 tips="请填写证件号码" 
            errmsg="证件号码不能为空!" length="40" valid="required" /></TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson2 size=15 tips="请填写联系人" 
            errmsg="联系人不能为空!" length="40" valid="required" /></TD>
          <TD>电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=phone2 size=15 
            tips="可选项，但如果要填写请按照正确的格式" length="40" /></TD></TR>
        <TR>
          <TD>邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode2 size=15 tips="请填写邮政编码" 
            errmsg="不能为空！|格式为6位数字" length="6" valid="required|isZip" /></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address2 size=50 tips="请填写地址" 
            errmsg="地址不能为空!" length="100" 
      valid="required" /></TD></TR></TBODY></TABLE></DIV>
            </c:when>
            <c:otherwise>
            <c:forEach items="${cps2}" var="cp2" varStatus="cp2Stat">
             <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=150>姓名或单位名称</TD>
          <TD width=80>类别</TD>
          <TD><SELECT onchange=s_h_legalPeople(this) name=peopleType2> 
             <OPTION value=自然人 <c:if test="${cp2.people_type=='自然人'}">selected</c:if>>自然人</OPTION>
            <OPTGROUP label=法人>
            <OPTION value=企业法人 <c:if test="${cp2.people_type=='企业法人'}">selected</c:if>>企业法人</OPTION>
            <OPTION value=机关法人 <c:if test="${cp2.people_type=='机关法人'}">selected</c:if>>机关法人</OPTION>
            <OPTION value=事业单位法人 <c:if test="${cp2.people_type=='事业单位法人'}">selected</c:if>>事业单位法人</OPTION>
            <OPTION value=社会团体法人 <c:if test="${cp2.people_type=='社会团体法人'}">selected</c:if>>社会团体法人</OPTION> 
           </OPTGROUP>
           <OPTION value=其他组织 <c:if test="${cp2.people_type=='其他组织'}">selected</c:if>>其他组织</OPTION>
           <OPTION value=其他 <c:if test="${cp2.people_type=='其他'}">selected</c:if>>其他</OPTION></SELECT> </TD>
          <TD width=80>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() name=legalPeople2
           size=15 tips="请填写法定代表人" errmsg="法定代表人不能为空!" length="100" valid="required" 
           value="<c:out value='${cp2.hasLetter}' />" <c:if test="${cp2.people_type=='自然人'}">disabled</c:if> /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=5>
          <TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
          rows=4 name=name2 tips="请填写姓名或单位名称" errmsg="姓名或单位名称不能为空!" 
          length="200" valid="required"><c:out value='${cp2.name}' /></TEXTAREA> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=idTypes2>
           <OPTION value=居民身份证 <c:if test="${cp2.id_type=='居民身份证'}">selected</c:if>>居民身份证</OPTION>
           <OPTION value=军官证 <c:if test="${cp2.id_type=='军官证'}">selected</c:if>>军官证</OPTION>
           <OPTION value=护照 <c:if test="${cp2.id_type=='护照'}">selected</c:if>>护照</OPTION>
           <OPTION value=企业法人营业执照 <c:if test="${cp2.id_type=='企业法人营业执照'}">selected</c:if>>企业法人营业执照</OPTION>
           <OPTION value=组织机构代码证书 <c:if test="${cp2.id_type=='组织机构代码证书'}">selected</c:if>>组织机构代码证书</OPTION> 
           <OPTION value=事业单位法人证书 <c:if test="${cp2.id_type=='事业单位法人证书'}">selected</c:if>>事业单位法人证书</OPTION>
           <OPTION value=社团法人证书 <c:if test="${cp2.id_type=='社团法人证书'}">selected</c:if>>社团法人证书</OPTION> 
           <OPTION value=营业执照 <c:if test="${cp2.id_type=='营业执照'}">selected</c:if>>营业执照</OPTION>
           <OPTION value=其他有效证件 <c:if test="${cp2.id_type=='其他有效证件'}">selected</c:if>>其他有效证件</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=idNumber2 size=15 tips="请填写证件号码" 
            errmsg="证件号码不能为空!" length="40" valid="required" value="<c:out value='${cp2.id_number}' />" /></TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson2 size=15 tips="请填写联系人" 
            errmsg="联系人不能为空!" length="40" valid="required" value="<c:out value='${cp2.opus_sign}' />" /></TD>
          <TD>电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone2 size=15 
            tips="可选项，但如果要填写请按照正确的格式" length="40" value="<c:out value='${cp2.sign}' />" /></TD></TR>
        <TR>
          <TD>邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode2 size=15 tips="请填写邮政编码" 
            errmsg="不能为空！|格式为6位数字" length="6" valid="required|isZip" value="<c:out value='${cp2.garden}' />" /></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address2 size=50 tips="请填写地址" 
            errmsg="地址不能为空!" length="100" valid="required" value="<c:out value='${cp2.addr}' />" /></DIV>
            <c:if test="${cp2Stat.index!=0}">
            <DIV style="FLOAT: right">
            <INPUT onclick=delRow(this); value=删除 type=button></DIV>
            </c:if>
            </TD>
            </TR></TBODY></TABLE></DIV>
            </c:forEach>
            </c:otherwise>
            </c:choose>
     </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">变更信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,100) onmouseout=cpcc_showtip() 
      onclick="addNew('changeItems');" value=添加 type=button tips="添加变更信息"> 
      </DIV>
      <DIV style="FLOAT: right" id=change_tip></DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    class=contentbg colSpan=2>
      <TABLE id=changeItems border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 150px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          class=contentbg>变更项</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 150px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">变更前内容</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">变更后内容</TD></TR>
        <TBODY style="DISPLAY: none">
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 150px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
          BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
          wrap=hard name=item tips="请填写变更项" errmsg="变更项不能为空！" length="100" valid="required"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
          BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
          wrap=hard name=before_content tips="请填写变更前内容" errmsg="变更前内容不能为空！" length="200" valid="required"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="FLOAT: left"><TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 87%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() wrap=hard name=after_content tips="请填写变更后内容" errmsg="变更后内容不能为空！" length="200" 
            valid="required"></TEXTAREA> 
            </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=delRow(this); value=删除 type=button></DIV></TD></TR></TBODY>
            <c:choose>
            <c:when test="${empty infos}">
              <TBODY>
           <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 150px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px;
           BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
           onmouseout=cpcc_showtip() wrap=hard name=item tips="请填写变更项" errmsg="变更项不能为空！" length="100" 
           valid="required"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
          BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip()
          wrap=hard name=before_content tips="请填写变更前内容" errmsg="变更前内容不能为空！" length="200" valid="required"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 87%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
          BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip()
          wrap=hard name=after_content tips="请填写变更后内容说明" errmsg="变更后内容不能为空！" length="200" valid="required"></TEXTAREA> 
          </TD></TR></TBODY>
            </c:when>
            <c:otherwise>
            <c:forEach items="${infos}" var="info" varStatus="infoStat">
          <TBODY>
            <TR>
           <TD 
           style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 150px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
           <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
           BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip()
           wrap=hard name=item tips="请填写变更项" errmsg="变更项不能为空！" length="100" valid="required">
           <c:out value='${info.item}' /></TEXTAREA> 
           </TD>
           <TD 
           style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
           <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
           BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
           onmouseout=cpcc_showtip() wrap=hard name=before_content tips="请填写变更前内容" errmsg="变更前内容不能为空！" 
           length="200" valid="required"><c:out value='${info.before_content}' /></TEXTAREA> 
           </TD>
           <TD 
           style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="FLOAT: left"><TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 87%; BORDER-TOP-WIDTH: 1px;
             BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
             wrap=hard name=after_content tips="请填写变更后内容" errmsg="变更后内容不能为空！" length="200" 
             valid="required"><c:out value='${info.after_content}' /></TEXTAREA> 
            </DIV>
            <c:if test="${infoStat.index!=0}">
            <DIV style="FLOAT: right"><INPUT onclick=delRow(this); value=删除 type=button></DIV>
            </c:if>
            </TD></TR></TBODY>
            </c:forEach>
            </c:otherwise>
            </c:choose>
      </TABLE></TD></TR>
  <TR>
    <TD class=contentbg>变更理由说明</TD>
    <TD class=contentbg>
    <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 450px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
    BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
    wrap=hard cols=200 name=originalChangeNumber tips="请填写变更理由说明" errmsg="变更理由说明不能为空！" length="200"
     valid="required"><c:out value='${z53.originalChangeNumber}' /></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请方式</TD>
    <TD class=contentbg>
    <c:choose>
    <c:when test="${empty z53}">
     <INPUT name=applyType value=出质人和质权人办理  
      type=radio CHECKED/>出质人和质权人办理 
      <INPUT onclick=s_h_agent(this) name=isAgent 
      value=代理人 type=checkbox />由代理人申请 
    </c:when>
    <c:otherwise>
     <INPUT name=applyType value=出质人和质权人办理  
      type=radio <c:if test="${z53.applyType=='出质人和质权人办理'}">CHECKED</c:if> />出质人和质权人办理 
      <INPUT onclick=s_h_agent(this) name=isAgent 
      value=代理人 type=checkbox <c:if test="${z53.isAgent=='代理人'}">CHECKED</c:if> />由代理人申请 
    </c:otherwise>
    </c:choose>
      </TD></TR>
  <SCRIPT>
function agent_showOrHide(obj)
{
	 if(obj.value == "代理人") 
	 {
	 	document.all("A-0").style.display="block";
	 }
	 else
	 {
	 	document.all("A-0").style.display="none";
	 }
}
function sqr_show(){
  document.all("sqr-0").style.display="block";
}

function setPeopleValue(str)
{
	if(str == 'sqr')
	{
		document.all('sqrname').value = "${sessionScope.accountSession.name}";
		document.all('sqraddress').value = "${sessionScope.accountSession.address}";
		document.all('sqrpostCode').value = "${sessionScope.accountSession.postcode}";
		document.all('sqrcontactPerson').value = "${sessionScope.accountSession.p_name}";
		document.all('sqrphone').value = "${sessionScope.accountSession.phone}";
		document.all('sqremail').value = "${sessionScope.accountSession.peremail}";
		document.all('sqrmobile').value = "${sessionScope.accountSession.mobile}";
		document.all('sqrfax').value = "${sessionScope.accountSession.fax}";
	}
	else if(str == 'dlr')
	{
		document.all('dlrname').value = "${sessionScope.accountSession.name}";
		document.all('dlraddress').value = "${sessionScope.accountSession.address}";
		document.all('dlrpostCode').value = "${sessionScope.accountSession.postcode}";
		document.all('dlrcontactPerson').value = "${sessionScope.accountSession.p_name}";
		document.all('dlrphone').value = "${sessionScope.accountSession.phone}";
		document.all('dlremail').value = "${sessionScope.accountSession.peremail}";
		document.all('dlrmobile').value = "${sessionScope.accountSession.mobile}";
		document.all('dlrfax').value = "${sessionScope.accountSession.fax}";
	}
}

</SCRIPT>
  <INPUT id=shenqr name=shenqr value=申请人 type=hidden /> <INPUT id=dailr name=dailr 
  value=代理人 type=hidden /> 
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">出质人或质权人联系信息 </DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip()
      onclick="setPeopleValue('sqr');" 
      value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入" /> 
      </DIV></TD></TR>
  <TBODY style="DISPLAY: none" id=sqr-0>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-BOTTOM-WIDTH: 0px; PADDING-TOP: 0px" 
    id=sqr class=contentbg colSpan=2>
     </TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class=contentbg>姓名或名称</TD>
    <TD class=contentbg><INPUT id=sqrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=sqrname size=35 
      tips="请准确填写申请人的姓名或名称，并与其他材料保持一致，申请人应是全部权利人，如果是多个申请人，请点击‘增加申请人’按钮，进行添加，并且在申请人签章处，要求是申请人的全部签章" 
      errmsg="姓名或单位名称不能为空！" length="100" valid="required" value="<c:out value='${sqr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=sqraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqraddress size=35 tips="请填写详细地址" 
      errmsg="不能为空！" length="100" valid="required" value="<c:out value='${sqr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=sqrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrpostCode size=35 tips="请填写邮政编码" 
      errmsg="不能为空!" valid="required" value="<c:out value='${sqr.post_code}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=sqrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrcontactPerson size=35 tips="请填写联系人" 
      errmsg="不能为空！" length="40" valid="required" value="<c:out value='${sqr.contact_person}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=sqrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name=sqrphone size=35 
      tips="请填写联系电话号码" errmsg="电话号码不能为空！" length="40" valid="required" value="<c:out value='${sqr.phone}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=sqremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqremail size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" errmsg="不能为空！|格式不对！" 
      length="50" valid="required|isEmail" value="<c:out value='${sqr.email}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=sqrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
      errmsg="手机号码不能为空！" length="30" valid="required" value="<c:out value='${sqr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=sqrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrfax size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${sqr.fax}' />" /></TD></TR>
  <TBODY style="DISPLAY: none" id=A-0>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">代理人信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() 
      onclick="setPeopleValue('dlr');" value=我是代理人 type=button tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入" /> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg 
      colSpan=2>&nbsp;&nbsp;&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=agent_desc size=60 
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" errmsg="代理权限说明不能为空！" length="180" 
      valid="required" value="<c:out value='${z53.agent_desc}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlrname size=35 
      tips="请准确填写代理人的姓名或名称，并与其他材料保持一致" errmsg="不能为空！" length="100" 
      valid="required" value="<c:out value='${dlr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlraddress size=35 tips="请填写详细地址" 
      errmsg="不能为空！" length="100" valid="required" value="<c:out value='${dlr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlrpostCode size=35 tips="请填写邮政编码" 
      errmsg="不能为空！|格式为6位数字" length="6" valid="required|isZip" value="<c:out value='${dlr.post_code}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=dlrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrcontactPerson size=35 tips="请填写联系人" 
      errmsg="不能为空！" length="40" valid="required" value="<c:out value='${dlr.contact_person}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=dlrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name=dlrphone size=35 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.phone}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=dlremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlremail size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" 
      errmsg="不能为空！|E-mail格式不正确！" length="50" valid="required|isEmail" value="<c:out value='${dlr.email}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
      errmsg="手机号码不能为空！" length="30" valid="required" value="<c:out value='${dlr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrfax size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${dlr.fax}' />" />
    </td></tr></tbody></table></div>
<TABLE align=center style="background-color:#fff;">
  <TBODY>
  <TR height=5>
    <TD colSpan=3></TD></TR>
    <c:choose>
     <c:when test="${person != null && person == 'manage'}">
     </c:when>
     <c:otherwise>
  <TR>
   <TD width=50 style="padding-right:15px;">
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="onlySaveForm('${pageContext.request.contextPath}/application/z53and6/save/z53');"/>
    </TD>
    <TD width=50 style="padding-right:15px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/z53and6/submit/z53');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></c:otherwise></c:choose></TBODY></TABLE></FORM></DIV>
    <script language="javascript">
    $(document).ready(function(){
    	var agentIs = "${z53.isAgent}";
    	if(agentIs=='代理人') {
    		$("#A-0").css("display","block");
    	}
    });
    
	// 在通用校验之前的处理
	function beforeValid()
	{
		// 出质人或质权人信息中，若类型为“自然人”，则法定代表人非必填项
		setIsValid('peopleType1','legalPeople1','自然人');
		setIsValid('peopleType2','legalPeople2','自然人');
	}
	
    function setIsValid(type,name,val)
    {
	    var obj1 = document.all(type);
		var obj2 = document.all(name);
		for(var i=1; i<obj1.length; i++)
		{
			if(obj1[i].value == val)
			{
				obj2[i].valid = "no";
			}
			else
			{
				obj2[i].valid = "required";
			}
		}
    }

	function lastLogic()
	{
		setLegalPeopleValue('peopleType1','legalPeople1');
		setLegalPeopleValue('peopleType2','legalPeople2');
	}
	
	function setLegalPeopleValue(type,name)
    {
	    var obj1 = document.all(type);
		var obj2 = document.all(name);
		for(var i=0; i<obj1.length; i++)
		{
			if(obj1[i].value == '自然人')
			{
				obj2[i].disabled=false;
				obj2[i].value="";
			}
		}
    }
function addNew(strid){
	var myt = document.getElementById(strid);
	if(myt){
		var hiddrenObj = myt.children(1);
		var temp = hiddrenObj.cloneNode(true);
		temp.style.display = '';
		myt.appendChild(temp);
	}
}
function delRow(){
	var obj = event.srcElement;
	var myTbody = getParent(obj, "TBODY");
	var myTable = getParent(obj, "TABLE");
	if(myTable && myTbody){
		myTable.removeChild(myTbody);
	}
}
//取得指定标签的父对象
function getParent(obj, tagName){
	while(obj.tagName != tagName){
		obj = obj.parentNode;
	}
	return obj;
}

//保存表单响应函数
function onlySaveForm(url){
	lastLogic();
	document.forms[0].action=url;
	document.forms[0].submit();
}
</script>
</HTML>

