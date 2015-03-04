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
<SCRIPT language=JavaScript src="js/form2/formcheck2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/createPeoples2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/showtips2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/pgCalPicker.js"></SCRIPT>
</HEAD>
<BODY>
<DIV id=mytips></DIV>
<DIV 
style="TEXT-ALIGN: center; PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; WIDTH: 900px; PADDING-RIGHT: 0px; PADDING-TOP: 10px">
<form  action="" method="post" name="generalForm" id="generalFormId">
<input type="hidden" value="${z75.flow_num}" name="flow_num" />
<TABLE style="MARGIN-TOP: 20px; BORDER-COLLAPSE: collapse" border=0 
cellSpacing=0 borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" 
  align=center><B>在线填报-变更出版境外音像制品合同登记申请表</B></TD></TR></TBODY></TABLE>
<DIV style="MARGIN-TOP: 10px" id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>原登记信息</TD></TR>
  <TR>
    <TD class=contentbg noWrap>原登记类型</TD>
    <TD class=contentbg><INPUT id="registerTypeid" name="register_type" value="录音制品" 
       type="radio" <c:if test="${z75.register_type=='录音制品'}">checked="checked"</c:if> />录音制品&nbsp;&nbsp;
    <INPUT id="registerTypeid" name="register_type" value="影视作品" type="radio"
    <c:if test="${z75.register_type=='影视作品'}">checked="checked"</c:if> />影视作品&nbsp;&nbsp; </TD></TR>
  <TR>
    <TD class=contentbg>名&nbsp;&nbsp;称 </TD>
    <TD class=contentbg>
      <TABLE style="MARGIN-TOP: 0px" border=0 cellSpacing=0 cellPadding=0 
      width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER:0px; width:40px;" 
          vAlign=bottom noWrap>中文名</TD>
          <TD 
          style="BORDER: 0px" 
          vAlign=bottom><INPUT style="WIDTH: 448px" id="cn_opus_nameid" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name="cn_opus_name" errmsg="请填写中文名！" 
            valid="required" length="200" tips="请填写中文名" value="<c:out value='${z75.cn_opus_name}' />" /> </TD></TR>
        <TR>
          <TD 
          style="BORDER:0px" 
          vAlign=top noWrap>英文名</TD>
          <TD 
          style="BORDER:0px" 
          vAlign=top><INPUT style="WIDTH: 448px;" id="en_opus_nameid" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name="en_opus_name" length="200" 
        tips="请填写英文名称" value="<c:out value='${z75.en_opus_name}' />" /></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=contentbg>出版类型</TD>
    <TD class=contentbg>
    <TEXTAREA style="WIDTH:497px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350)
 onmouseout=cpcc_showtip() cols=25 name="publish_type" errmsg="请填写出版类型！" 
 valid="required" length="1000" tips="请填写出版类型"><c:out value='${z75.publish_type}' /></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class=contentbg>原登记号</TD>
    <TD 
    style="BORDER:0px; background:#e3f4ff;" 
    vAlign=top><INPUT style="WIDTH: 497px" id="original_reg_numid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="original_reg_num" errmsg="请填写原登记号！" 
      valid="required" length="200" tips="请填写原登记号" value="<c:out value='${z75.original_reg_num}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>原登记日期</TD>
    <TD class=contentbg><INPUT id="register_dateid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,250) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);"  
      name="register_date"  size=12 errmsg="请填写原登记日期！" valid="required" 
      tips="请填写原登记日期" value="<c:out value='${z75.register_date}' />" readOnly /> </TD></TR>
  <TR>
    <TD class=contentbg noWrap>出版单位名称</TD>
    <TD class=contentbg><INPUT style="WIDTH:497px" id="publis_comp_nameid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="publis_comp_name" errmsg="请填写原登记号！" 
      valid="required" length="200" tips="请填写出版单位名称" value="<c:out value='${z75.publis_comp_name}' />" /></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">变更信息</DIV>
      <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,100) onmouseout=cpcc_showtip() 
       onclick="addNew('changeItems');" value=添加 type=button tips="添加变更或补充信息"> 
      </DIV>
      <DIV style="FLOAT: right" id=change_tip></DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    class=contentbg colSpan=2>
      <TABLE id=changeItems border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY id=applying1>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 150px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          class=contentbg>变更项</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 150px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">变更前内容</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">变更后内容</TD>
          </TR></TBODY>
        <TBODY style="DISPLAY: none">
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 150px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
          wrap="hard" name="item" errmsg="变更项不能为空！" valid="required" length="100" tips="请填写变更项"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; 
          BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() wrap="hard" name="before_content" errmsg="变更前内容不能为空！" valid="required" length="200" tips="请填写变更前内容"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="FLOAT: left">
            <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 87%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() wrap="hard"
             name="after_content" errmsg="变更后内容不能为空！" valid="required" length="200" tips="请填写变更后内容"></TEXTAREA> 
            </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=delRow(this); value=删除 type=button></DIV></TD></TR></TBODY>
      <c:forEach items="${infos}" var="info" varStatus="infStats">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 150px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() wrap="hard"
           name="item" errmsg="变更项不能为空！" valid="required" length="100" tips="请填写变更项"><c:out value='${info.item}' /></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() wrap="hard" name="before_content" errmsg="变更前内容不能为空！" valid="required"
           length="200" tips="请填写变更前内容"><c:out value='${info.before_content}' /></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
          <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 87%; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() wrap="hard" 
          name="after_content" errmsg="变更后内容不能为空！" valid="required" length="200" tips="请填写变更后内容说明">
          <c:out value='${info.after_content}' /></TEXTAREA> 
           <c:if test="${infStats.index != 0}">
           <DIV style="FLOAT: right"><INPUT onclick=delRow(this); value=删除 type=button></DIV>
           </c:if>
           </TD></TR></TBODY>
          </c:forEach>
          </TABLE></TD></TR>
  <TR>
    <TD class=contentbg><SPAN id=rname>变更理由说明</SPAN></TD>
    <TD class=contentbg>
    <TEXTAREA style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 450px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"
     onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() wrap="hard"
      cols=200 name="rev_desc" errmsg="变更理由说明不能为空！" valid="required" length="200" tips="请填写变更理由说明"><c:out value='${z75.rev_desc}' /></TEXTAREA> 
    </TD></TR>
    
    
  <TR>
    <TD class=contentbg>申请方式</TD>
    <TD class=contentbg><INPUT onclick=agent_showOrHide(this) name="apply_type" 
      value="原出版单位申请" type="radio"  
      <c:if test="${z75.apply_type=='原出版单位申请'}">checked="checked"</c:if> />原出版单位申请
 <INPUT onclick=agent_showOrHide(this) name="apply_type" 
  value="代理人" type="radio" <c:if test="${z75.apply_type=='代理人'}">checked="checked"</c:if> />由代理人申请 
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
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">提交者信息 </DIV>
      <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() onclick="setPeopleValue('sqr');" value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id="sqrnameid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="sqrname" size=35 errmsg="姓名或单位名称不能为空！" 
      valid="required" length="250" tips="当选择由出版单位申请时，请填写原出版单位的准确名称" value="<c:out value='${sqr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id="sqraddressid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqraddress" size=35 errmsg="不能为空！" valid="required" length="100" 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" value="<c:out value='${sqr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id="sqrpostCodeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrpostCode" size=35 length="8" 
      tips="请填写邮政编码" value="<c:out value='${sqr.post_code}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id="sqrcontactPersonid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrcontactPerson" size=35 errmsg="不能为空！" 
      valid="required" length="40" tips="请填写联系人" value="<c:out value='${sqr.contact_person}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id="sqrphoneid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="sqrphone" size=35 
      errmsg="电话号码不能为空！" valid="required" length="40" tips="请填写联系电话号码" value="<c:out value='${sqr.phone}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id="sqremailid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqremail" size=35 errmsg="不能为空！|格式不对！" 
      valid="required|isEmail" length="50" value="<c:out value='${sqr.email}' />" 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id="sqrmobileid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrmobile" size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${sqr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id="sqrfaxid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrfax" size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${sqr.fax}' />" /></TD></TR>
  <TBODY style="DISPLAY: none" id=A-0>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">代理人信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
       onmouseout=cpcc_showtip() onclick="setPeopleValue('dlr');" 
       value=我是代理人 type=button tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg 
      colSpan=2 style="padding-left:120px;">申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="agent_desc" size=60 errmsg="代理权限说明不能为空！" value="<c:out value='${z75.agent_desc}' />" /
      valid="required" length="180" tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。"> 
  </TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id="dlrnameid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlrname" size=35 errmsg="不能为空！"  value="<c:out value='${dlr.name}' />" 
      valid="required" length="100" tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id="dlraddressid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlraddress" size=35 errmsg="不能为空！" value="<c:out value='${dlr.address}' />"
      valid="required" length="100" tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id="dlrpostCodeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlrpostCode" size=35 errmsg="不能为空！" 
      valid="required" length="8" tips="请填写邮政编码" value="<c:out value='${dlr.post_code}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id="dlrcontactPersonid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrcontactPerson" size=35 errmsg="不能为空！" 
      valid="required" length="40" tips="请填写联系人" value="<c:out value='${dlr.contact_person}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id="dlrphoneid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="dlrphone" size=35 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.phone}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id="dlremailId" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlremail" size=35 errmsg="不能为空！|E-mail格式不对！" 
      valid="required|isEmail" length="50"  value="<c:out value='${dlr.email}' />" 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id="dlrmobileid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrmobile" size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id="dlrfaxid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrfax" size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.fax}' />" />
      
    </td></tr></tbody>
					</table>
				</div>
<TABLE align=center>
  <TBODY>
  <TR height=5>
    <TD colSpan=3></TD></TR>
    <c:choose>
     <c:when test="${person != null && person == 'manage'}">
     </c:when>
     <c:otherwise>
  <TR>
   <TD width=50 style=" padding-right:16px;">
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/z75/save');"/>
    </TD>
    <TD width=50 style=" padding-right:16px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/z75/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></c:otherwise></c:choose></TBODY></TABLE></FORM></DIV>
</body>
<script language="javascript">
 $(document).ready(function(){
	 var applyType = "${z75.apply_type}";
	 if(applyType=='代理人') {
		 $("#A-0").css("display", "block");
	 }
 });
 
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
</script>
</html>
    