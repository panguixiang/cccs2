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
<script language="JavaScript" src="js/pgCalPicker.js"></script>
</HEAD>
<BODY>
<DIV id=mytips></DIV>
<DIV 
style="TEXT-ALIGN: center; PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; WIDTH: 900px; PADDING-RIGHT: 0px; PADDING-TOP: 10px">
<form  action="" method="post" name="generalForm" id="generalFormId">
<TABLE style="MARGIN-TOP: 20px; BORDER-COLLAPSE: collapse" border=0 
cellSpacing=0 borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" 
  align=center><B>在线填报-撤销出版境外音像制品合同登记申请表</B></TD></TR></TBODY></TABLE>
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
      CHECKED type="radio" />录音制品&nbsp;&nbsp; <INPUT id="registerTypeid" 
      name="register_type" value="影视作品" type="radio" />影视作品&nbsp;&nbsp; </TD></TR>
  <TR>
    <TD class=contentbg>名&nbsp;&nbsp;&nbsp;&nbsp;称 </TD>
    <TD class=contentbg>
      <TABLE style="MARGIN-TOP: 0px" border=0 cellSpacing=0 cellPadding=0 
      width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          vAlign=bottom noWrap>中文名</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 90%; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          vAlign=bottom><INPUT style="WIDTH: 100%" id="cn_opus_nameid" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name="cn_opus_name" errmsg="请填写中文名！" 
            valid="required" length="200" tips="请填写中文名"> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          vAlign=top noWrap>英文名</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 90%; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          vAlign=top><INPUT style="WIDTH: 100%" id="en_opus_nameid" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name="en_opus_name" length="200" 
        tips="请填写英文名称"></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=contentbg>出版类型</TD>
    <TD class=contentbg>
    <TEXTAREA style="WIDTH: 90%" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350)
 onmouseout=cpcc_showtip() cols=25 name="publish_type" errmsg="请填写出版类型！" valid="required" length="1000" tips="请填写出版类型"></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class=contentbg>原登记号</TD>
    <TD 
    style="background-color:#e3f4ff;BORDER-RIGHT-WIDTH: 0px; WIDTH: 90%; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
    vAlign=top><INPUT style="WIDTH: 90%" id="original_reg_numid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="original_reg_num" errmsg="请填写原登记号！" 
      valid="required" length="200" tips="请填写原登记号"></TD></TR>
  <TR>
    <TD class=contentbg>原登记日期</TD>
    <TD class=contentbg><INPUT id="register_dateid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,250) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name="register_date" readOnly size=12 errmsg="请填写原登记日期！" valid="required" 
      tips="请填写原登记日期"> </TD></TR>
  <TR>
    <TD class=contentbg noWrap>出版单位名称</TD>
    <TD class=contentbg><INPUT style="WIDTH: 90%" id="publis_comp_nameid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="publis_comp_name" errmsg="请填写原登记号！" 
      valid="required" length="200" tips="请填写出版单位名称"></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>撤销简况</TD></TR>
  <TR>
    <TD class=contentbg noWrap>撤销类型</TD>
    <TD class=contentbg><INPUT id="rev_typeid" name="rev_type" value=原登记申请人申请撤销 
      CHECKED type="radio" />原登记申请人申请撤销&nbsp;&nbsp; <INPUT id="rev_typeid" 
      name="rev_type" value=其他 type="radio" />其他&nbsp;&nbsp; </TD></TR>
  <TR>
    <TD class=contentbg>撤销登记理由</TD>
    <TD class=contentbg>
    <TEXTAREA style="WIDTH: 90%" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
    cols=25 name="rev_desc" errmsg="请填写撤销登记理由！" valid="required" length="1000" tips="请填写撤销登记理由"></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请方式</TD>
    <TD class=contentbg><INPUT onclick=agent_showOrHide(this) name="apply_type" 
      value="原出版单位申请" CHECKED type="radio" />原出版单位申请 <INPUT 
      onclick=agent_showOrHide(this) name="apply_type" value="代理人" type="radio" />由代理人申请 
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
      valid="required" length="250" tips="当选择由出版单位申请时，请填写原出版单位的准确名称"> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id="sqraddressid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqraddress" size=35 errmsg="不能为空！" 
      valid="required" length="100" tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件"></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id="sqrpostCodeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrpostCode" size=35 
     tips="请填写邮政编码" length="8"></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id="sqrcontactPersonid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrcontactPerson" size=35 errmsg="不能为空！" 
      valid="required" length="40" tips="请填写联系人"></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id="sqrphoneid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="sqrphone" size=35 
      errmsg="电话号码不能为空！" valid="required" length="40" tips="请填写联系电话号码"></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id="sqremailid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqremail" size=35 errmsg="不能为空！|格式不对！" 
      valid="required|isEmail" length="50" 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知"></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id="sqrmobileid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrmobile" size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id="sqrfaxid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrfax" size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
  <TBODY style="DISPLAY: none" id=A-0>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">代理人信息</DIV>
      <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() onclick="setPeopleValue('dlr');" value=我是代理人 type=button tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg 
      colSpan=2>&nbsp;&nbsp;&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="agent_desc" size=60 errmsg="代理权限说明不能为空！" 
      valid="required" length="180" tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。"> 
  </TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id="dlrnameid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlrname" size=35 errmsg="不能为空！" 
      valid="required" length="100" tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致"> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id="dlraddressid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlraddress" size=35 errmsg="不能为空！" 
      valid="required" length="100" tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件"></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id="dlrpostCodeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlrpostCode" size=35 
      errmsg="不能为空！" valid="required" length="8" tips="请填写邮政编码"></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id="dlrcontactPersonid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrcontactPerson" size=35 errmsg="不能为空！" 
      valid="required" length="40" tips="请填写联系人"></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id="dlrphoneid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="dlrphone" size=35 
      tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id="dlremailId" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlremail" size=35 errmsg="不能为空！|E-mail格式不对！" 
      valid="required|isEmail" length="50" 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知"></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id="dlrmobileid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrmobile" size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id="dlrfaxid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrfax" size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式">
      
    </td></tr></tbody>
					</table>
				</div>
<TABLE align=center style="background-color:#fff;">
  <TBODY>
  <TR height=5>
    <TD colSpan=3></TD></TR>
  <TR>
   <TD width=50 style="padding-right:16px;">
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/z73/save');"/>
    </TD>
    <TD width=50 style="padding-right:16px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/z73/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></TBODY></TABLE></FORM></DIV>
</body>
</html>
    