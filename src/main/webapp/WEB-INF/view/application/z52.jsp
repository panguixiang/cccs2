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
<input type="hidden" name="flow_num" value="${z52.flow_num}" />
<TABLE style="BORDER-COLLAPSE: collapse" border=0 cellSpacing=0 
borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" align=center><B>撤销著作权质权登记申请表</B> &nbsp;&nbsp; 
      <IMG id=myhelp 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() src="images/icon_alert.gif" 
      width=18 tips="作品著作权质押合同注销登记申请表总说明"></TD></TR></TBODY></TABLE>
<DIV style="MARGIN-TOP: 10px" id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2><SPAN 
      class=datacell>质权登记基本情况</SPAN></TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>质权登记号</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=handleNumber tips="请填写质权登记号" length="30" 
      errmsg="质权登记号不能为空!" valid="required" value="<c:out value='${z52.handleNumber}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>登记日期</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name=handleDate readOnly tips="请填写登记日期" errmsg="登记日期不能为空!" 
      valid="required" value="<c:out value='${z52.handleDate}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>涉及作品名称</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" id=opusName 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=softName size=50 tips="请填写作品名称" 
      length="200" errmsg="作品名称不能为空!" valid="required" value="<c:out value='${z52.softName}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>撤销方式</SPAN></TD>
    <TD class=contentbg>
    <c:choose>
    <c:when test="${empty z52}">
     <INPUT name=originalRegType value=依职权撤销 CHECKED type=radio />依职权撤销
     <INPUT name=originalRegType value=依申请撤销 type=radio />依申请撤销
    </c:when>
    <c:otherwise>
     <INPUT name=originalRegType value=依职权撤销  type=radio <c:if test="${z52.originalRegType=='依职权撤销'}">CHECKED</c:if> />依职权撤销
     <INPUT name=originalRegType value=依申请撤销 type=radio <c:if test="${z52.originalRegType=='依申请撤销'}">CHECKED</c:if> />依申请撤销
    </c:otherwise>
    </c:choose>
    </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>撤销说明</SPAN></TD>
    <TD class=contentbg>
    <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 500px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px;
     BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
     onmouseout=cpcc_showtip() wrap=hard cols=200 name=reason tips="请填写撤销说明" length="200" 
     errmsg="撤销说明不能为空!" valid="required"><c:out value='${z52.reason}' /></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left" id=opus1>出质人信息</DIV>
      <DIV style="FLOAT: right"><INPUT onclick="addRow('czrNameInfo')" name=button value=添加 type=button> 
      </DIV>
      <DIV style="FLOAT: right" id=s_a_t></DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id=czrNameInfo class=contentbg colSpan=2>
      <DIV style="DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          id=opus2 width=108>出质人姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="FLOAT: left">
            <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=czrName_ size=36 
            tips="出质人姓名或名称应与著作权质权登记证书中的相应内容一致" length="80" 
            errmsg="出质人姓名或名称不能为空！" valid="required" /> </DIV>
            <DIV style="FLOAT: right">
            <INPUT onclick=deleteRow(this); value=删除 type=button /></DIV>
            </TD></TR></TBODY></TABLE></DIV>
            <c:choose>
            <c:when test="${empty parts1}">
             <DIV>
          <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
          <TBODY>
          <TR>
           <TD 
            style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
            id=opus2 width=108>出质人姓名或名称</TD>
           <TD 
            style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=czrName_ size=36 
            tips="出质人姓名或名称应与著作权质权登记证书中的相应内容一致" length="80" 
            errmsg="出质人姓名或名称不能为空！" valid="required"> 
            </TD></TR></TBODY></TABLE></DIV>
            </c:when>
            <c:otherwise>
            <c:forEach items="${parts1}" var="part1" varStatus="part1Stat">
            <DIV >
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          id=opus2 width=108>出质人姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="FLOAT: left">
            <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=czrName_ size=36 
            tips="出质人姓名或名称应与著作权质权登记证书中的相应内容一致" length="80" 
            errmsg="出质人姓名或名称不能为空！" valid="required" value="<c:out value='${part1.name}' />" /> </DIV>
            <c:if test="${part1Stat.index!=0}">
            <DIV style="FLOAT: right">
            <INPUT onclick=deleteRow(this); value=删除 type=button /></DIV>
            </c:if>
            </TD></TR></TBODY></TABLE></DIV>
            </c:forEach>
            </c:otherwise>
            </c:choose>
     </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left" id=opus1>质权人信息</DIV>
      <DIV style="FLOAT: right"><INPUT onclick="addRow('zqrNameInfo')" name=button value=添加 type=button> 
      </DIV>
      <DIV style="FLOAT: right" id=s_a_t></DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id=zqrNameInfo class=contentbg colSpan=2>
      <DIV style="DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          id=opus2 width=108>质权人姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=zqrName_ size=36 
            tips="质权人姓名或名称应与著作权质权登记证书中的相应内容一致" length="80" 
            errmsg="质权人姓名或名称不能为空！" valid="required"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV>
      <c:choose>
      <c:when test="${empty parts2}">
       <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          id=opus2 width=108>质权人姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=zqrName_ size=36 
            tips="质权人姓名或名称应与著作权质权登记证书中的相应内容一致" length="80" 
            errmsg="质权人姓名或名称不能为空！" valid="required"> 
    </TD></TR></TBODY></TABLE></DIV>
      </c:when>
      <c:otherwise>
      <c:forEach items="${parts2}" var="part2" varStatus="part2Stat">
        <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          id=opus2 width=108>质权人姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=zqrName_ size=36 
            tips="质权人姓名或名称应与著作权质权登记证书中的相应内容一致" length="80" 
            errmsg="质权人姓名或名称不能为空！" valid="required" value="<c:out value='${part2.name}' />" /> </DIV>
            <c:if test="${part2Stat.index!=0}">
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV>
            </c:if>
            </TD></TR></TBODY></TABLE></DIV>
      </c:forEach>
      </c:otherwise>
      </c:choose>
     </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请方式</TD>
    <TD class=contentbg>
    <c:choose>
    <c:when test="${empty z52}">
     <INPUT id=applyType name=applyType value=出质人或质权人 
      CHECKED type=radio />出质人或质权人 <INPUT id=applyType name=applyType value=第三人申请 
      type=radio />第三人申请 <INPUT onclick=s_h_agent(this) name=isAgent value=代理人 
      type=checkbox />由代理人申请 
    </c:when>
    <c:otherwise>
     <INPUT id=applyType name=applyType value=出质人或质权人 
       type=radio <c:if test="${z52.applyType=='出质人或质权人'}">CHECKED</c:if> />出质人或质权人
        <INPUT id=applyType name=applyType value=第三人申请 
      type=radio <c:if test="${z52.applyType=='第三人申请'}">CHECKED</c:if> />第三人申请
       <INPUT onclick=s_h_agent(this) name=isAgent value=代理人
      type=checkbox <c:if test="${z52.isAgent=='代理人'}">CHECKED</c:if> />由代理人申请 
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
      <DIV style="FLOAT: left">申请人信息 </DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() 
      onclick="setPeopleValue('sqr');" value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入" /> 
      </DIV></TD></TR>
  <TBODY>
  <TR>
    <TD class=contentbg>姓名或名称</TD>
    <TD class=contentbg><INPUT id=sqrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=sqrname size=35 
      tips="请准确填写申请人的姓名或名称，并与其他材料保持一致，申请人应是全部权利人，如果是多个申请人，请点击‘增加申请人’按钮，进行添加，并且在申请人签章处，要求是申请人的全部签章" 
      length="100" errmsg="姓名或单位名称不能为空！" valid="required" value="<c:out value='${sqr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=sqraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqraddress size=35 tips="请填写详细地址" 
      length="100" errmsg="不能为空！" valid="required" value="<c:out value='${sqr.address}' />" /></TD></TR>
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
      length="30" errmsg="手机号码不能为空！" valid="required" value="<c:out value='${sqr.mobile}' />" /></TD></TR>
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
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" length="180" errmsg="代理权限说明不能为空！" 
      valid="required" value="<c:out value='${z52.agent_desc}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlrname size=35 
      tips="请准确填写代理人的姓名或名称，并与其他材料保持一致" length="100" errmsg="不能为空！" 
      valid="required" value="<c:out value='${dlr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlraddress size=35 tips="请填写详细地址" 
      length="100" errmsg="不能为空！" valid="required" value="<c:out value='${dlr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlrpostCode size=35 tips="请填写邮政编码" 
      length="6" errmsg="不能为空！|格式为6位数字" valid="required|isZip" value="<c:out value='${dlr.post_code}' />" /></TD></TR>
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
      errmsg="不能为空！|E-mail格式不正确！" valid="required|isEmail" value="<c:out value='${dlr.email}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" errmsg="手机号码不能为空！" valid="required" value="<c:out value='${dlr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrfax size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${dlr.fax}' />" />
      </td></tr></tbody>
					</table>
				</div>
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
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/z52/save');"/>
    </TD>
    <TD width=50 style="padding-right:15px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/z52/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></c:otherwise></c:choose></TBODY></TABLE></FORM></DIV>
    </BODY>
    <script language="javascript">
     $(document).ready(function(){
    	var agentIs = "${z52.isAgent}";
    	if(agentIs=='代理人'){
    		$("#A-0").css("display","block");
    	}
     });
    </script>
    </HTML>