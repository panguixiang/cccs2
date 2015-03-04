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
<SCRIPT language=JavaScript src="js/form2/general2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/formcheck2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/createPeoples2.js"></SCRIPT>
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
<input type="hidden" name="flow_num" value="${r42.flow_num}" />
<TABLE style="BORDER-COLLAPSE: collapse" border=0 cellSpacing=0 
borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" align=center><B>撤销计算机软件登记请求书</B> &nbsp;
      <IMG id=myhelp 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() src="images/icon_alert.gif" 
      width=18 tips="软件权利利害人提出撤销软件著作权登记或合同登记时使用此表格"></TD></TR></TBODY></TABLE>
<DIV id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; MARGIN-TOP: 20px; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" 
      colSpan=2>撤销简况<BR>根据《计算机软件著作权登记办法》二十三条的规定 </TD></TR>
  <TR>
    <TD class=contentbg>撤销依据</TD>
    <TD class=contentbg>
    <INPUT name="evidence" value="最终司法判决"  type="radio" <c:if test="${r42.evidence=='最终司法判决'}">checked="checked"</c:if> />最终司法判决
    <INPUT name="evidence" value="著作权行政管理部门作出的行政处罚决定"  type="radio" <c:if test="${r42.evidence=='著作权行政管理部门作出的行政处罚决定'}">checked="checked"</c:if> />著作权行政管理部门作出的行政处罚决定 
    </TD></TR>
  <TR>
    <TD class=contentbg>登记类别</TD>
    <TD class=contentbg>
    <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) onmouseout=cpcc_showtip() 
    name="originalRegType" value="软件著作权登记" type="radio" tips="" <c:if test="${r42.originalRegType=='软件著作权登记'}">checked="checked"</c:if> />软件著作权登记 
    <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) onmouseout=cpcc_showtip() name="originalRegType"
     value="软件著作权转让合同登记" type="radio" tips="" <c:if test="${r42.originalRegType=='软件著作权转让合同登记'}">checked="checked"</c:if> />软件著作权转让合同登记
    <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500)  onmouseout=cpcc_showtip() name="originalRegType"
     value="软件著作权专有许可合同登记" type="radio" tips="" <c:if test="${r42.originalRegType=='软件著作权专有许可合同登记'}">checked="checked"</c:if> />软件著作权专有许可合同登记 </TD></TR>
  <TR>
    <TD class=contentbg>登记号</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="handleNumber" 
      tips="填写该软件著作权登记或合同登记证书中记载的登记号码。" errmsg="登记号不能为空!" length="40" 
      valid="required" value="<c:out value='${r42.handleNumber}' />" /></TD></TR>
  <TR> 
    <TD class=contentbg>登记日期</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name="handleDate" readOnly tips="填写该软件著作权登记证书或合同登记证书中记载的发证日期。" 
      errmsg="登记日期不能为空!" length="40" valid="required" value="<c:out value='${r42.handleDate}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>变更/补充<BR>登记证明编号</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="originalChangeNumber" tips="" 
      errmsg="变更/补充登记证明编号不能为空!" length="40" valid="" value="<c:out value='${r42.originalChangeNumber}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>软件名称及版本号</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="softName" size=50 
      tips="填写软件著作权或合同登记证书中记载的软件名称、简称、版本号。" errmsg="软件名称不能为空!" length="200" 
      valid="required" value="<c:out value='${r42.softName}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>撤销软件登记理由</TD>
    <TD class=contentbg>
    <TEXTAREA style="BORDER-RIGHT-WIDTH: 2px; WIDTH: 500px; BORDER-TOP-WIDTH: 2px; BORDER-BOTTOM-WIDTH: 2px; BORDER-LEFT-WIDTH: 2px" 
    onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() wrap=hard cols=200 rows=3
     name="reason" tips="" errmsg="撤销软件登记理由或依据说明不能为空！" length="200" valid="required"><c:out value='${r42.reason}' /></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请办理方式</TD>
    <TD class=contentbg>
    <INPUT onclick=agent_showOrHide(this) name="applyType" value="由利害关系人办理" type="radio" <c:if test="${r42.applyType=='由利害关系人办理'}">checked="checked"</c:if> />由利害关系人办理 
    <INPUT onclick=agent_showOrHide(this) name="applyType" value="代理人" type="radio" <c:if test="${r42.applyType=='代理人'}">checked="checked"</c:if> />由代理人办理 
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
  <INPUT id=shenqr name=shenqr value=申请人 type=hidden> <INPUT id=dailr name=dailr 
  value=代理人 type=hidden> 
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">申请人信息 </DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() 
      onclick="setPeopleValue('sqr');" value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入" /> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=sqrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="sqrname" size=35 
      tips="请准确填写申请人的姓名或单位名称，并与其他材料保持一致，申请人应是权利人之一" errmsg="姓名或单位名称不能为空！" 
      length="250" valid="required" value="<c:out value='${sqr.name}'/>" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=sqraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqraddress" size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" errmsg="不能为空！" length="100" 
      valid="required" value="<c:out value='${sqr.address}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=sqrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrpostCode" size=35 tips="请填写邮政编码" 
      length="8" value="<c:out value='${sqr.post_code}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=sqrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrcontactPerson" size=35 tips="请填写联系人" 
      errmsg="不能为空！" length="40" valid="required" value="<c:out value='${sqr.contact_person}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=sqrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="sqrphone" size=35 
      tips="请填写联系电话号码" errmsg="电话号码不能为空！" length="40" valid="required" value="<c:out value='${sqr.phone}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=sqremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqremail" size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" errmsg="不能为空！|格式不对！" 
      length="50" valid="required|isEmail" value="<c:out value='${sqr.email}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=sqrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrmobile" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${sqr.mobile}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=sqrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrfax" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${sqr.fax}'/>" /></TD></TR>
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
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" errmsg="代理权限说明不能为空！" length="180" 
      valid="required" value="<c:out value='${r42.agent_desc}'/>" /> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlrname" size=35 
      tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" errmsg="不能为空！" length="100" 
      valid="required" value="<c:out value='${dlr.name}'/>" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlraddress" size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" errmsg="不能为空！" length="100" 
      valid="required" value="<c:out value='${dlr.address}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlrpostCode" size=35 tips="请填写邮政编码" 
      errmsg="不能为空！" length="8" valid="required" value="<c:out value='${dlr.post_code}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=dlrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrcontactPerson" size=35 tips="请填写联系人" 
      errmsg="不能为空！" length="40" valid="required" value="<c:out value='${dlr.contact_person}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=dlrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="dlrphone" size=35 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.phone}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=dlremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlremail" size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" 
      errmsg="不能为空！|E-mail格式不对！" length="50" valid="required|isEmail" value="<c:out value='${dlr.email}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrmobile" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${dlr.mobile}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrfax" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${dlr.fax}'/>" />
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
   <TD width=50 style="padding-right:15px;">
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/r42/save');"/>
    </TD>
    <TD width=50 style="padding-right:15px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/r42/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></c:otherwise></c:choose></TBODY></TABLE></FORM></DIV>
</body>
<script language="javascript">
 $(document).ready(function(){
	var flowNum = "${r42.flow_num}";
	if(flowNum.length==0) {
		setDefaultChecked('evidence');
		setDefaultChecked('originalRegType');
		setDefaultChecked('applyType');
	} else {
		var applyType = "${r42.applyType}";
		if(applyType=='代理人'){
			$("#A-0").css("display","block");
		}
	}
	
 });
 
 function setDefaultChecked(obj)
 {
 	var len = document.all(obj).length;
 	// 将radio按钮组的第一个radio设为选中状态
 	document.all(obj)[0].checked=true;
 	for(var i=1; i<len; i++)
 	{
 		if(document.all(obj)[i].checked)
 		{
 			document.all(obj)[i].checked=false;
 		}
 	}
 }
</script>
</HTML>