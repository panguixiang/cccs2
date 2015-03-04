<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<LINK rel=stylesheet type=text/css href="css/table.css">
<LINK rel=stylesheet type=text/css href="css/form/formStyle2.css">
<script language="JavaScript" src="js/jquery-1.4.2.min.js"></script>
<SCRIPT language="JavaScript" src="js/form2/formcheck2.js"></SCRIPT>
<SCRIPT language="JavaScript" src="js/form2/createPeoples2.js"></SCRIPT>
<SCRIPT language="JavaScript" src="js/form2/showtips2.js"></SCRIPT>
<script language="JavaScript" src="js/pgCalPicker.js"></script>
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
<input type="hidden" name="flow_num" value="${r41.flow_num}" />
<TABLE style="BORDER-COLLAPSE: collapse" border=0 cellSpacing=0 
borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" align=center><B>软件登记事项变更或补充申请</B> &nbsp;&nbsp; 
      <IMG id=myhelp 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() src="images/icon_alert.gif" 
      width=18 
      tips="本表格是软件著作权登记或合同登记事项变更或者补充情况的记载，作为证明已办理软件著作权或者合同登记的事项变更或者补充的证明，例如：企业名称、自然人姓名发生变更进行。由已完成软件著作权登记的人和已完成软件著作权转让合同、专有许可合同登记人填写使用。&nbsp;<br>个人死亡、个人与法人或者法人之间的转让、法人因所有制发生改变的承受（工商变更）不在本变更的范围。"></TD></TR></TBODY></TABLE>
<DIV id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; MARGIN-TOP: 20px; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=1 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>软件基本信息</TD></TR>
  <TR>
    <TD class=contentbg>软件名称及版本号</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="softFullName" size=50 
      tips="按照软件著作权登记证书中事项填写，包括软件全称、简称和版本号" length="200" errmsg="软件名称不能为空!" 
      valid="required" value="<c:out value='${r41.softFullName}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>原登记类别</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="originalRegType" value="软件著作权登记"  
      type=radio tips="按照所要变更的类别进行选择。" <c:if test="${r41.originalRegType=='软件著作权登记'}">checked="checked"</c:if> />软件著作权登记 
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="originalRegType" value="软件著作权转让合同登记"
      type=radio tips="按照所要变更的类别进行选择。" <c:if test="${r41.originalRegType=='软件著作权转让合同登记'}">checked="checked"</c:if> />软件著作权转让合同登记
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="originalRegType" value="软件著作权专有许可合同登记"
      type=radio tips="按照所要变更的类别进行选择。" <c:if test="${r41.originalRegType=='软件著作权专有许可合同登记'}">checked="checked"</c:if> />软件著作权专有许可合同登记 </TD></TR>
  <TR>
    <TD class=contentbg>原登记号</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="originalRegNumber" 
      tips="填写软件著作权登记证书、合同登记证书的登记号码。如：2006SR10234，等。" length="40" 
      errmsg="原登记号不能为空!" valid="required" value="<c:out value='${r41.originalRegNumber}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>原变更/补充登记证明编号</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="originalChangeNumber" 
      tips="如做过变更或补充登记的，需填写软件著作权变更/补充登记证明的编号。"
       length="40" value="<c:out value='${r41.originalChangeNumber}'/>" /></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">变更或补充信息</DIV>
      <DIV style="FLOAT: right" id=change_tip></DIV></TD></TR>
  <TR>
    <TD class=contentbg>申请类型</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=showApplyingType() name="applyingType" 
      value="变更登记"  type=radio tips="对原著作权登记事项和合同登记事项的补充。"
      <c:if test="${r41.applyingType=='变更登记'}">checked="checked"</c:if> />变更登记 <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=showApplyingType() name="applyingType" 
      value="补充登记" type=radio tips="对原著作权登记事项和合同登记事项的补充。"
       <c:if test="${r41.applyingType=='补充登记'}">checked="checked"</c:if> />补充登记 </TD></TR>
  <TBODY style="DISPLAY: none" id=applying2>
  <TR>
    <TD 
    style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid; PADDING-TOP: 0px" 
    class=contentbg colSpan=2>
      <DIV>
      <TABLE 
      style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid" 
      border=0 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 169px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">补充项</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">补充前内容</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          align=center>
            <DIV style="FLOAT: left">补充后内容</DIV>
            <DIV style="FLOAT: right"></DIV></TD></TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id=changeItems1 class=contentbg colSpan=2>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 169px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
          <SELECT onchange=showDateInfo() 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name="items2_" wrap="hard"  style="width: 130px"
			tips="请填写变更项或补充项" valid="" errmsg="变更项或补充项不能为空！"> <OPTION selected 
              value="">-------请选择------</OPTION> <OPTION 
              value="首次发表日期" <c:if test="${info.item=='首次发表日期'}">selected="true"</c:if>>首次发表日期</OPTION>
              </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"
           onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip()  
           name="beforeContent2_" wrap="hard" rows="3" tips="请填写变更前内容或补充前内容" valid=""
		 errmsg="变更前内容或补充前内容不能为空！" length="200"><c:out value='${info.before_content}'></c:out></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          align=left><INPUT 
            id="afterContent2_" tips="变更或补充后的内容,请注意版本号中数字部分不可更改。" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350)
			onmouseout=cpcc_showtip() valid="" onclick="fPopCalendar(this, this);" 
			name="afterContent2_" value="${info.after_content}"  /> 
  </TD></TR></TBODY></TABLE></TD></TR></TBODY>
  <TBODY id=applying1>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    class=contentbg colSpan=2>
      <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 169px; BORDER-TOP-WIDTH: 0px; 
          BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">变更项</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">变更前内容</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          align=center>
            <DIV style="FLOAT: left">变更后内容</DIV>
            <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,100) 
            onmouseout=cpcc_showtip() onclick="addRowInfo('changeItems');" value=添加 type=button tips="添加变更或补充信息"> 
            </DIV></TD></TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id=changeItems class=contentbg colSpan=2>
      <DIV style="DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 169px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"><SELECT 
            onchange=showSoftFullName() 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name="item" wrap="hard"  style="width: 130px"
			tips="对原著作权登记事项和合同登记事项的变更。" valid="required" errmsg="变更项不能为空！"> <OPTION selected 
              value="">-------请选择------</OPTION> <OPTION 
              value=软件名称>软件名称</OPTION> <OPTION 
              value=著作权人姓名或名称>著作权人姓名或名称</OPTION> <OPTION value=转让方>转让方</OPTION> 
              <OPTION value=受让方>受让方</OPTION> <OPTION value=许可方>许可方</OPTION> 
              <OPTION value=被许可方>被许可方</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH:
           0px"><TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
           onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
           name="before_content" wrap="hard" rows="3" tips="变更或补充前的内容。"  
		  valid="required" errmsg="变更或补充前内容不能为空！" length="200"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          align=center>
            <DIV style="FLOAT: left">
            <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 
            1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
            name="after_content" wrap="hard" rows="3" tips="变更或补充后的内容,请注意版本号中数字部分不可更改。"  
			valid="required" errmsg="变更或补充后内容不能为空！" length="200"></TEXTAREA> 
            </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV>
            
            
            <c:choose>
            <c:when test="${r41.applyingType=='补充登记'}">
             <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 169px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"><SELECT 
            onchange=showSoftFullName() 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name="item" wrap="hard"  style="width: 130px"
			tips="对原著作权登记事项和合同登记事项的变更。" valid="required" errmsg="变更项不能为空！"> <OPTION selected 
              value="">-------请选择------</OPTION> <OPTION 
              value="软件名称" <c:if test="${infoo.item=='软件名称'}">selected="true"</c:if>>软件名称</OPTION> <OPTION 
              value="著作权人姓名或名称" <c:if test="${infoo.item=='著作权人姓名或名称'}">selected="true"</c:if>>著作权人姓名或名称</OPTION> <OPTION value=转让方>转让方</OPTION> 
              <OPTION value="受让方" <c:if test="${infoo.item=='受让方'}">selected="true"</c:if>>受让方</OPTION> <OPTION value=许可方>许可方</OPTION> 
              <OPTION value="被许可方" <c:if test="${infoo.item=='被许可方'}">selected="true"</c:if>>被许可方</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; 
          BORDER-LEFT-WIDTH: 0px"><TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px;
           BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
           onmouseout=cpcc_showtip() rows=3 name="before_content"  wrap="hard" rows="3" 
          tips="变更或补充前的内容。" valid="required" errmsg="变更或补充前内容不能为空！" length="200"><c:out value='${infoo.before_content}' /></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          align=left><TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
          BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip()
         name="after_content" wrap="hard" rows="3" tips="变更或补充后的内容,请注意版本号中数字部分不可更改。"  
		valid="required" errmsg="变更或补充后内容不能为空！" length="200"><c:out value='${infoo.after_content}' /></TEXTAREA> 
          </TD>
          </TR></TBODY></TABLE>
            </c:when>
            <c:otherwise>
            <c:forEach items="${infos}" var="infoo" varStatus="infStat">
              <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 169px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px;
           BORDER-LEFT-WIDTH: 0px"><SELECT 
            onchange=showSoftFullName() 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name="item" wrap="hard"  style="width: 130px"
			tips="请填写变更项或补充项" valid="required" errmsg="变更项或补充项不能为空！"> <OPTION selected 
              value="">-------请选择------</OPTION> <OPTION 
              value="软件名称" <c:if test="${infoo.item=='软件名称'}">selected="true"</c:if>>软件名称</OPTION> <OPTION 
              value="著作权人姓名或名称" <c:if test="${infoo.item=='著作权人姓名或名称'}">selected="true"</c:if>>著作权人姓名或名称</OPTION> <OPTION value=转让方>转让方</OPTION> 
              <OPTION value="受让方" <c:if test="${infoo.item=='受让方'}">selected="true"</c:if>>受让方</OPTION> <OPTION value=许可方>许可方</OPTION> 
              <OPTION value="被许可方" <c:if test="${infoo.item=='被许可方'}">selected="true"</c:if>>被许可方</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH:
           0px"><TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px;
           BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
           onmouseout=cpcc_showtip() rows=3 name="before_content" tips="变更或补充前的内容。" wrap="hard" rows="3" 
           tips="请填写变更前内容或补充前内容" valid="required" errmsg="变更前内容或补充前内容不能为空！" length="200"><c:out value='${infoo.before_content}' /></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          align=center>
            <DIV style="FLOAT: left">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
          BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip()
         name="after_content" wrap="hard" rows="3" tips="请填写变更后内容或补充后内容" valid="required"
			errmsg="变更后内容或补充后内容不能为空！" length="200"><c:out value='${infoo.after_content}' /></TEXTAREA> 
            </DIV>
            <c:if test="${infStat.index!=0}">
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></c:if>
            </TD></TR></TBODY></TABLE></DIV>
          </c:forEach>
            </c:otherwise>
            </c:choose>
          </TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class=contentbg><SPAN id=reasonName>变更理由说明</SPAN></TD>
    <TD class=contentbg>
    <TEXTAREA style="BORDER-RIGHT-WIDTH: 2px; WIDTH: 450px; BORDER-TOP-WIDTH: 2px; BORDER-BOTTOM-WIDTH: 2px; 
    BORDER-LEFT-WIDTH: 2px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
    wrap=hard cols=200 rows=3 name="reason" 
    tips="简明扼要地说明登记事项和内容变更或补充的理由，变更理由填写应规范，如企业名称变更的可填写&nbsp;“依工商局核准，企业名称已经发生变更，现申请著作权人名称变更”。需要提交证明的，则应当附具相关的证明文件。" 
    length="200" errmsg="变更理由说明不能为空！" valid="required" ><c:out value="${r41.reason}"></c:out></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请办理方式</TD>
    <TD class=contentbg><INPUT onclick=agent_showOrHide(this) name="applyType" 
      value="由著作权人办理" type="radio" <c:if test="${r41.applyType=='由著作权人办理'}">checked="checked"</c:if> />由著作权人办理 <INPUT 
      onclick=agent_showOrHide(this) name="applyType" value="由合同登记人办理" 
      type="radio" <c:if test="${r41.applyType=='由合同登记人办理'}">checked="checked"</c:if> />由合同登记人办理 
      <INPUT onclick=agent_showOrHide(this) name="applyType" 
      value="代理人" type="radio" <c:if test="${r41.applyType=='代理人'}">checked="checked"</c:if> />由代理人办理 </TD></TR>
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
  <INPUT id=shenqr name=shenqr value=申请人 type=hidden> <INPUT id=dailr name=dailr 
  value=代理人 type=hidden> 
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">申请人信息 </DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
      onmouseout=cpcc_showtip() onclick="setPeopleValue('sqr');" 
      value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入" /> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=sqrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=sqrname size=35 
      tips="请准确填写申请人的姓名或单位名称，并与其他材料保持一致，申请人应是权利人之一" length="250" 
      errmsg="姓名或单位名称不能为空！" valid="required" value="<c:out value='${sqr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=sqraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqraddress size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" length="100" errmsg="不能为空！" 
      valid="required" value="<c:out value='${sqr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg>
      <INPUT id=sqrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqrpostCode size=35 tips="请填写邮政编码" 
      length="8"  value="<c:out value='${sqr.post_code}' />" />
      </TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=sqrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrcontactPerson size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required" value="<c:out value='${sqr.contact_person}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=sqrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name=sqrphone size=35 
      tips="请填写联系电话号码" length="40" errmsg="电话号码不能为空！" valid="required" value="<c:out value='${sqr.phone}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=sqremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqremail size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|格式不对！" valid="required|isEmail" value="<c:out value='${sqr.email}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=sqrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${sqr.mobile}' />" /></TD></TR>
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
      onmouseout=cpcc_showtip() name="agent_desc" size=60 
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" length="180" errmsg="代理权限说明不能为空！" 
      valid="required" value="<c:out value='${r41.agent_desc}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlrname size=35 
      tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" length="100" errmsg="不能为空！" 
      valid="required" value="<c:out value='${dlr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlraddress size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" length="100" errmsg="不能为空！" 
      valid="required" value="<c:out value='${dlr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlrpostCode size=35 tips="请填写邮政编码" 
      length="8" errmsg="不能为空！" valid="required" value="<c:out value='${dlr.post_code}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=dlrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrcontactPerson size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required" value="<c:out value='${dlr.contact_person}' />" /></TD></TR>
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
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|E-mail格式不对！" valid="required|isEmail" value="<c:out value='${dlr.email}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${dlr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrfax size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${dlr.fax}' />" />  </td></tr></tbody>
					</table>
				</div>
<TABLE align=center>
  <TBODY>
  <TR height=5>
    <TD colSpan=2></TD></TR>
    <c:choose>
     <c:when test="${person != null && person == 'manage'}">
     </c:when>
     <c:otherwise>
  <TR>
    <TD width=50>
      <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/r41/save');"/>
    </TD>
    <TD width=50>
   <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/r41/submit');"/>
    </TD>
    <TD width=50>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
    </TD>
    </TR>
    </c:otherwise></c:choose></TBODY></TABLE>
    </FORM></DIV></BODY>
    <SCRIPT language="JavaScript">
    $(document).ready(function() {
    	var applyingType = "${r41.applyingType}";
    	if(applyingType=='补充登记'){
    		document.all("applying1").style.display="none";
			document.all("applying2").style.display="block";
			reasonName.innerText ="补充理由说明";
    	}
    	var apply = "${r41.applyType}";
    	if(apply=='代理人') {
    		$("#A-0").css("display","block");
    	}
    });
  function addRowInfo(idstr){
	var td_obj = document.getElementById(idstr);
	var table_objs = td_obj.children;
	var hidden_table = table_objs(0);
	var tmp_div = document.createElement("DIV");
	tmp_div.innerHTML = hidden_table.innerHTML;
	td_obj.appendChild(tmp_div);
}
function s_h_sign(obj)
{
	var _obj = getParent(obj, "TD");
	if(obj.value =='别名')
	{
		_obj.childNodes(1).style.display="block";
	}
	else
	{
		_obj.childNodes(1).style.display="none";
	}
}

	function afterValid()
	{	
		var flag=true;
		if(document.all("afterContent2_").value!=""){
	      var app = StringToDate(document.all("afterContent2_").value);
	      var now=new Date();
	      if(now.getTime()-app.getTime() < 0){
	        showErrorMsg(document.all("afterContent2_"), "首次发表日期应小于等于当前日期！");
				flag = false;
	      }
	    }
		return flag;
	}
	

	 function showApplyingType()
		{
		    var obj1=document.all("item");
			var obj2=document.all("items2_");
			var obj1_bf=document.all("before_content");
			var obj1_af=document.all("after_content");

	        var obj2_bf=document.all("beforeContent2_");
			var obj2_af=document.all("afterContent2_");

			if(document.all("applyingType")[0].checked == true)
			{
				document.all("applying1").style.display="block";
				document.all("applying2").style.display="none";
				for(var i=0;i<obj1.length; i++){
				    if(obj1[i]!=null){ 
							obj2.valid = "no";
							obj2_bf.valid="no";
	                        obj2_af.valid="no";

							obj1[i].valid = "required";
							obj1_bf[i].valid = "required";
							obj1_af[i].valid = "required";
				  }
				}
				reasonName.innerText ="变更理由说明";
			} 
			else
			{
				document.all("applying1").style.display="none";
				document.all("applying2").style.display="block";
				
				for(var i=0;i<obj1.length; i++){
				    if(obj1[i]!=null){ 
							obj1[i].valid = "no";
							obj1_bf[i].valid = "no";
							obj1_af[i].valid = "no";

							obj2.valid = "required";
							obj2_bf.valid="required";
	                        obj2_af.valid="required";
				  }
				}
				reasonName.innerText ="补充理由说明";
			}	
		}
	
	 function showSoftFullName()
	{
	   var obj1 = document.all('item');
		   obj2 = document.all('before_content');
	    for(var i=0; i< obj1.length; i++)
		{
			if(obj1(i).value.trim() != ""&&obj1(i).value.trim()=="软件名称")
			{
				 obj2(i).value=document.getElementById("softFullName").value;
			}
		}
	}
	 function showDateInfo()
	{
	   var obj1 = document.all('items2_');
		   obj2 = document.all('beforeContent2_');
	    
			if(obj1.value.trim() != ""&&obj1.value.trim()=="首次发表日期")
			{
				 obj2.value="未发表";
			}
	}
</SCRIPT>
    </HTML>