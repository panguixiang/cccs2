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
<SCRIPT language=JavaScript src="js/form2/showtips2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/formcheck2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/createPeoples2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/pgCalPicker.js"></SCRIPT>

</HEAD>
<BODY>
<DIV id=mytips></DIV>
<DIV 
style="BORDER-BOTTOM: #333333 1px solid; POSITION: absolute; TEXT-ALIGN: left; BORDER-LEFT: #333333 1px solid; PADDING-BOTTOM: 3px; LINE-HEIGHT: 15px; BACKGROUND-COLOR: #ffff99; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; DISPLAY: none; HEIGHT: 30px; FONT-SIZE: 13px; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid; PADDING-TOP: 3px; TOP: 0px; LEFT: 0px" 
id=_sqr_div onmouseover="this.style.display='block';" 
onmouseout="this.style.display='none';"></DIV>
<DIV 
style="TEXT-ALIGN: center; PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; WIDTH: 900px; PADDING-RIGHT: 0px; PADDING-TOP: 10px">
<FORM method="post" name="generalForm" action="">
<input type="hidden" name="flow_num" value="${z51.flow_num}" />
<TABLE style="BORDER-COLLAPSE: collapse" border=0 cellSpacing=0 
borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" 
align=center><B>著作权质权登记申请表</B></TD></TR></TBODY></TABLE>
<DIV style="MARGIN-TOP: 10px" id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>出质基本信息</TD></TR>
  <TR>
    <TD class=contentbg width=150>涉及作品名称</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=opusName size=50 length="200" 
      errmsg="质权涉及作品名称不能为空!" valid="required" tips="请填写质权涉及作品名称" value="<c:out value='${z51.opusName}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>涉及作品种类</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=文字 type=checkbox 
      tips="文字" <c:if test="${文字=='文字'}">checked="checked"</c:if> />文字&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=口述 type=checkbox 
      tips="口述" <c:if test="${口述=='口述'}">checked="checked"</c:if> />口述&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=音乐 type=checkbox 
      tips="音乐" <c:if test="${!音乐=='音乐'}">checked="checked"</c:if> />音乐&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=戏剧 type=checkbox 
      tips="戏剧" <c:if test="${戏剧=='戏剧'}">checked="checked"</c:if> />戏剧&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=曲艺 type=checkbox 
      tips="曲艺" <c:if test="${曲艺=='曲艺'}">checked="checked"</c:if> />曲艺&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=舞蹈 type=checkbox 
      tips="舞蹈" <c:if test="${舞蹈=='舞蹈'}">checked="checked"</c:if> />舞蹈&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=杂技艺术 type=checkbox 
      tips="杂技艺术" <c:if test="${杂技艺术=='杂技艺术'}">checked="checked"</c:if> />杂技艺术&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=美术 type=checkbox 
      tips="美术" <c:if test="${美术=='美术'}">checked="checked"</c:if> />美术&nbsp; <BR><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=建筑 type=checkbox 
      tips="建筑" <c:if test="${建筑=='建筑'}">checked="checked"</c:if> />建筑&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=摄影 type=checkbox 
      tips="摄影" <c:if test="${摄影=='摄影'}">checked="checked"</c:if> />摄影&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=电影和类似摄制电影方法创作的作品 
      type=checkbox tips="电影和类似摄制电影方法创作的作品" 
      <c:if test="${电影和类似摄制电影方法创作的作品=='电影和类似摄制电影方法创作的作品'}">checked="checked"</c:if> />电影和类似摄制电影方法创作的作品&nbsp;
     <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=图形 type=checkbox 
      tips="图形" <c:if test="${图形=='图形'}">checked="checked"</c:if> />图形&nbsp;
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=模型 type=checkbox 
      tips="模型" <c:if test="${模型=='模型'}">checked="checked"</c:if> />模型&nbsp;
     <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=录音制品 type=checkbox 
      tips="录音制品" <c:if test="${录音制品=='录音制品'}">checked="checked"</c:if> />录音制品&nbsp;
     <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=录像制品 type=checkbox 
      tips="录像制品" <c:if test="${录像制品=='录像制品'}">checked="checked"</c:if> />录像制品&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=版式设计 type=checkbox 
      tips="版式设计" <c:if test="${版式设计=='版式设计'}">checked="checked"</c:if> />版式设计&nbsp; <BR><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=广播节目 type=checkbox 
      tips="广播节目" <c:if test="${广播节目=='广播节目'}">checked="checked"</c:if> />广播节目&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=电视节目 type=checkbox 
      tips="电视节目" <c:if test="${电视节目=='电视节目'}">checked="checked"</c:if> />电视节目&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=表演 type=checkbox 
      tips="表演" <c:if test="${表演=='表演'}">checked="checked"</c:if> />表演&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=opusType_ value=其他 type=checkbox 
      tips="其他" <c:if test="${其他=='其他'}">checked="checked"</c:if> />其他&nbsp; <BR></TD></TR>
  <TR>
    <TD class=contentbg>创作完成日期</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name=completedDate readOnly size=12 errmsg="创作完成日期不能为空!" valid="required" 
      tips="即创作者将作品全部固定在某种物质载体上的日期" value="<c:out value='${z51.completedDate}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>首次发表日期</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name=appearDate readOnly size=12 errmsg="首次发表日期不能为空!" valid="required" 
      tips="当与著作权登记证书或著作权变更或补充通知书中的首次发表日期一致" value="<c:out value='${z51.appearDate}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>出质前该著作权是否授权</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=s_h_desc(this) name=isImpower value=是 
       type=radio tips="出质前著作权人曾授权许可他人以专有或非专有的形式使用质权合同涉及作品的著作权"
       <c:if test="${z51.isImpower=='是'}">checked="checked"</c:if> />是 <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=s_h_desc(this) name=isImpower value=否 
      type=radio tips="出质前著作权人未以任何形式授权许可他人使用质权合同涉及作品的著作权" 
       <c:if test="${z51.isImpower=='否'}">checked="checked"</c:if> />否 </TD></TR>
  <TBODY style="DISPLAY: block" id=sqsm>
  <TR>
    <TD class=contentbg>授权情况说明：</TD>
    <TD class=contentbg>
    <TEXTAREA style="TEXT-ALIGN: left; WIDTH: 400px; OVERFLOW: hidden" 
    onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
    name=impowerDesc length="400" errmsg="授权情况说明不能为空!" valid="required" 
    tips="请填写授权情况说明，写明授权种类、授权权限、授权地域（范围）等内容。"><c:out value='${z51.impowerDesc}' /></TEXTAREA> 
    </TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class=contentbg width=150>著作权登记号</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=zzqRegNumber size=50 length="25" 
      errmsg="著作权登记号不能为空!" valid="required" tips="请填写著作权登记号" value="<c:out value='${z51.zzqRegNumber}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>评估情况</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=s_h_pgjz(this) name=isAppraise value=是 
      type=radio tips="出质著作权如经过评估，填写评估单位名称和评估价值。没有经过评估选择“否”"
       <c:if test="${z51.isAppraise=='是'}">checked="checked"</c:if> />是 <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=s_h_pgjz(this) name=isAppraise value=否 
      type=radio tips="出质著作权如经过评估，填写评估单位名称和评估价值。没有经过评估选择“否”"
       <c:if test="${z51.isAppraise=='否'}">checked="checked"</c:if> />否 </TD></TR>
  <TBODY style="DISPLAY: block" id=pgjz>
  <TR>
    <TD class=contentbg>评估价值：</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=isAppraiseNum length="20" 
      errmsg="评估价值不能为空!" valid="required" tips="请准确填写评估价值" value="<c:out value='${z51.isAppraiseNum}' />" />(元) </TD></TR>
  <TR>
    <TD class=contentbg>评估机构名称：</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=isAppraiseName size=50 length="200" 
      errmsg="评估机构名称不能为空!" valid="required" tips="请准确填写评估机构名称" value="<c:out value='${z51.isAppraiseName}' />" /> </TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2><SPAN 
      class=datacell>质权合同内容</SPAN></TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>合同编号</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=contractNum size=50 length="100" 
      errmsg="合同编号不能为空!" valid="required" tips="主合同的合同编号" value="<c:out value='${z51.contractNum}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>主债务数额</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=creditorAmount size=50 length="100" 
      errmsg="主债务数额不能为空!" valid="required" tips="主合同约定的债权数额" value="<c:out value='${z51.creditorAmount}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>主债务履行期限</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=debtDateInfo size=50 errmsg="债务履行期限不能为空!" valid="required"  
      tips="以主合同为主，如文字描述，则填写文字描述内容；如有具体期限，则填写从 年 月 日  到 年 月 日" value="<c:out value='${z51.debtDateInfo}' />" /> 
    </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>出质著作权种类</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=copyrightType size=50 length="100" 
      errmsg="出质著作权种类不能为空!" valid="required" tips="请填写出质著作权种类" value="<c:out value='${z51.copyrightType}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>出质著作权范围</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350)  errmsg="出质著作权范围不能为空!" 
      onmouseout=cpcc_showtip() name=copyrightScope size=50 length="100" 
    valid="required" tips="填写对出质著作权财产权限定的地域范围和使用形式" value="<c:out value='${z51.copyrightScope}' />" /> 
  </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>质权担保金额</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=impawnSum length="50" errmsg="质权金额不能为空!" 
      valid="required" tips="质权合同担保的具体数额" value="<c:out value='${z51.impawnSum}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>质权担保范围</SPAN></TD>
    <TD class=contentbg><TEXTAREA style="WIDTH: 448px" id=assureScope onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350)
    onmouseout=cpcc_showtip() cols=45 rows=3 name=assureScope length="800" errmsg="质权担保范围不能为空!" 
    valid="required" tips="质权担保的范围是指出质人所承担的质权担保责任的范围，包括主债权及利息、违约金、损害赔偿金、质物保管费用和实现质权的费用。质权合同另有约定的，按照约定填写">
    <c:out value='${z51.assureScope}' /></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class=contentbg><SPAN class=datacell>质权担保期限</SPAN></TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=bailDateInfo size=50 errmsg="质权担保期限不能为空!" 
      valid="required" value="<c:out value='${z51.bailDateInfo}' />" 
      tips="出质人与质权人约定的质权标的被质权人直接或间接占有的期限，以质权合同为主，如文字描述，则填写文字描述内容；如有具体期限，则填写从 年 月 日  到 年 月 日。" /> 
    </TD></TR>
    
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
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&#13;&#10;<br>1、公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&#13;&#10;<br>2、法人：包括企业法人，指获得法人资格的企业；机关法人，指获得法人资格的国家机关；事业单位法人，指获得法人资格的事业单位；社会团体法人，指获得法人资格的社会团体。&#13;&#10;<br>3、其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   法人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  法人的分支机构&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人独资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  中外合作经营企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  外资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  筹建中的法人">
          <SELECT onchange=s_h_legalPeople(this) name=peopleType1> <OPTION selected 
              value=自然人>自然人</OPTION> <OPTGROUP label=法人> <OPTION 
                value=企业法人>企业法人</OPTION> <OPTION value=机关法人>机关法人</OPTION> <OPTION 
                value=事业单位法人>事业单位法人</OPTION> <OPTION value=社会团体法人>社会团体法人</OPTION> 
              </OPTGROUP> <OPTION value=其他组织>其他组织</OPTION> <OPTION 
              value=其他>其他</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
             onmouseout=cpcc_showtip() name=legalPeople1 size=15 
            length="100" errmsg="法定代表人不能为空!" valid="required" tips="请填写法定代表人" disabled /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=4><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden"
           onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=4 name=name1 length="200" errmsg="姓名或单位名称不能为空!" valid="required" tips="请填写姓名或单位名称"></TEXTAREA></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=idTypes1><OPTION selected value=居民身份证>居民身份证</OPTION> <OPTION 
              value=军官证>军官证</OPTION> <OPTION value=护照>护照</OPTION> <OPTION 
              value=企业法人营业执照>企业法人营业执照</OPTION> <OPTION value=组织机构代码证书>组织机构代码证书</OPTION> 
              <OPTION value=事业单位法人证书>事业单位法人证书</OPTION> <OPTION value=社团法人证书>社团法人证书</OPTION> 
              <OPTION value=营业执照>营业执照</OPTION> <OPTION value=其他有效证件>其他有效证件</OPTION> 
              </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=idNumber1 maxLength=40 size=15 
            length="40" errmsg="证件号码不能为空!" valid="required" tips="请填写证件号码"> 
        </TD></TR>
        <TR>
          <TD>出质人类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name=impawnType1> <OPTION selected 
              value=债务人>债务人</OPTION> <OPTION value=第三方>第三方</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone1 size=15 length="40" 
            tips="可选项，但如果要填写请按照正确的格式"> </TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 size=15 length="40" 
            errmsg="联系人不能为空!" valid="required" tips="请填写联系人"> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode1 size=15 length="6" 
            errmsg="不能为空！|格式为6位数字" valid="required|isZip" tips="请填写邮政编码"> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address1 size=50 length="100" 
            errmsg="地址不能为空!" valid="required" tips="请填写地址"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
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
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&#13;&#10;<br>1、公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&#13;&#10;<br>2、法人：包括企业法人，指获得法人资格的企业；机关法人，指获得法人资格的国家机关；事业单位法人，指获得法人资格的事业单位；社会团体法人，指获得法人资格的社会团体。&#13;&#10;<br>3、其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   法人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  法人的分支机构&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人独资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  中外合作经营企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  外资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  筹建中的法人"><SELECT 
            onchange=s_h_legalPeople(this) name=peopleType1><OPTION selected 
              value=自然人>自然人</OPTION> <OPTGROUP label=法人> <OPTION 
                value=企业法人>企业法人</OPTION> <OPTION value=机关法人>机关法人</OPTION> <OPTION 
                value=事业单位法人>事业单位法人</OPTION> <OPTION value=社会团体法人>社会团体法人</OPTION> 
              </OPTGROUP> <OPTION value=其他组织>其他组织</OPTION> <OPTION 
              value=其他>其他</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
             onmouseout=cpcc_showtip() name=legalPeople1 size=15 
            length="100" errmsg="法定代表人不能为空!" valid="required" tips="请填写法定代表人" disabled /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=4><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350)
          onmouseout=cpcc_showtip() rows=4 name=name1 length="200" errmsg="姓名或单位名称不能为空!" valid="required" tips="请填写姓名或单位名称"></TEXTAREA></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=idTypes1> <OPTION selected value=居民身份证>居民身份证</OPTION> <OPTION 
              value=军官证>军官证</OPTION> <OPTION value=护照>护照</OPTION> <OPTION 
              value=企业法人营业执照>企业法人营业执照</OPTION> <OPTION value=组织机构代码证书>组织机构代码证书</OPTION> 
              <OPTION value=事业单位法人证书>事业单位法人证书</OPTION> <OPTION value=社团法人证书>社团法人证书</OPTION> 
              <OPTION value=营业执照>营业执照</OPTION> <OPTION value=其他有效证件>其他有效证件</OPTION> </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=idNumber1 size=15 length="40" 
            errmsg="证件号码不能为空!" valid="required" tips="请填写证件号码"> </TD></TR>
        <TR>
          <TD>出质人类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name=impawnType1> <OPTION selected 
              value=债务人>债务人</OPTION> <OPTION value=第三方>第三方</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=phone1 size=15 length="40" 
            tips="可选项，但如果要填写请按照正确的格式"> </TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 size=15 length="40" 
            errmsg="联系人不能为空!" valid="required" tips="请填写联系人"> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=postCode1 size=15 length="6" 
            errmsg="不能为空！|格式为6位数字" valid="required|isZip" tips="请填写邮政编码"> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address1 size=50 length="100" 
            errmsg="地址不能为空!" valid="required" tips="请填写地址"> 
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
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&#13;&#10;<br>1、公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&#13;&#10;<br>2、法人：包括企业法人，指获得法人资格的企业；机关法人，指获得法人资格的国家机关；事业单位法人，指获得法人资格的事业单位；社会团体法人，指获得法人资格的社会团体。&#13;&#10;<br>3、其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   法人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  法人的分支机构&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人独资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  中外合作经营企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  外资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  筹建中的法人">
          <SELECT onchange=s_h_legalPeople(this) name=peopleType1>
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
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>法定代表人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
             onmouseout=cpcc_showtip() name=legalPeople1 size=15 
            length="100" errmsg="法定代表人不能为空!" valid="required" tips="请填写法定代表人"
             value="<c:out value='${cp1.hasLetter}' />" /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=4><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=4 
          name=name1 length="200" errmsg="姓名或单位名称不能为空!" valid="required" tips="请填写姓名或单位名称">
          <c:out value='${cp1.name}' /></TEXTAREA></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <SELECT name=idTypes1>
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
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) length="40" errmsg="证件号码不能为空!" 
            onmouseout=cpcc_showtip() name=idNumber1 maxLength=40 size=15 
            valid="required" tips="请填写证件号码" value="<c:out value='${cp1.id_number}' />" /> 
        </TD></TR> 
        <TR>
          <TD>出质人类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <SELECT style="WIDTH: 115px" name=impawnType1>
             <OPTION value=债务人 <c:if test="${cp1.busType=='债务人'}">selected</c:if>>债务人</OPTION>
             <OPTION value=第三方 <c:if test="${cp1.busType=='第三方'}">selected</c:if>>第三方</OPTION>
             </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人电话</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone1 size=15 length="40" 
            tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${cp1.sign}' />" /> </TD></TR>
        <TR>
          <TD>联系人</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 size=15 length="40" 
            errmsg="联系人不能为空!" valid="required" tips="请填写联系人" value="<c:out value='${cp1.opus_sign}' />" /> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode1 size=15 length="6" 
            errmsg="不能为空！|格式为6位数字" valid="required|isZip" tips="请填写邮政编码" value="<c:out value='${cp1.garden}' />" /> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address1 size=50 length="100" 
            errmsg="地址不能为空!" valid="required" tips="请填写地址" value="<c:out value='${cp1.addr}' />" /> </DIV>
            <c:if test="${cp1Stat.index!=0}">
            <DIV style="FLOAT: right">
            <INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></c:if>
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
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&#13;&#10;<br>1、公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&#13;&#10;<br>2、法人：包括企业法人，指获得法人资格的企业；机关法人，指获得法人资格的国家机关；事业单位法人，指获得法人资格的事业单位；社会团体法人，指获得法人资格的社会团体。&#13;&#10;<br>3、其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   法人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  法人的分支机构&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人独资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  中外合作经营企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  外资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  筹建中的法人"><SELECT 
            onchange=s_h_legalPeople(this) name=peopleType2><OPTION selected 
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
            length="100" errmsg="法定代表人不能为空!" valid="required" tips="请填写法定代表人" disabled /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=5><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350)
          onmouseout=cpcc_showtip() rows=4 name=name2 length="200" errmsg="姓名或单位名称不能为空!" valid="required" tips="请填写姓名或单位名称"></TEXTAREA> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型&nbsp;</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=idTypes2> <OPTION selected value=居民身份证>居民身份证</OPTION> <OPTION 
              value=军官证>军官证</OPTION> <OPTION value=护照>护照</OPTION> <OPTION 
              value=企业法人营业执照>企业法人营业执照</OPTION> <OPTION value=组织机构代码证书>组织机构代码证书</OPTION> 
              <OPTION value=事业单位法人证书>事业单位法人证书</OPTION> <OPTION value=社团法人证书>社团法人证书</OPTION> 
              <OPTION value=营业执照>营业执照</OPTION> <OPTION value=其他有效证件>其他有效证件</OPTION> </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=idNumber2 size=15 length="40" 
            errmsg="证件号码不能为空!" valid="required" tips="请填写证件号码"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson2 size=15 length="40" 
            errmsg="联系人不能为空!" valid="required" tips="请填写联系人"></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人电话 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone2 size=15 length="40" 
            tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode2 size=15 length="6" 
            errmsg="不能为空！|格式为6位数字" valid="required|isZip" tips="请填写邮政编码"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address2 size=50 length="100" 
            errmsg="地址不能为空!" valid="required" tips="请填写地址"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV>
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
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&#13;&#10;<br>1、公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&#13;&#10;<br>2、法人：包括企业法人，指获得法人资格的企业；机关法人，指获得法人资格的国家机关；事业单位法人，指获得法人资格的事业单位；社会团体法人，指获得法人资格的社会团体。&#13;&#10;<br>3、其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   法人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  法人的分支机构&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人独资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  中外合作经营企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  外资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  筹建中的法人"><SELECT 
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
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            id=test 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
             onmouseout=cpcc_showtip() name=legalPeople2 size=15 
            length="100" errmsg="法定代表人不能为空!" valid="required" tips="请填写法定代表人" disabled /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=5><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() rows=4 name=name2 length="200" errmsg="姓名或单位名称不能为空!" valid="required" tips="请填写姓名或单位名称"></TEXTAREA></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型&nbsp;</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=idTypes2> <OPTION selected value=居民身份证>居民身份证</OPTION> <OPTION 
              value=军官证>军官证</OPTION> <OPTION value=护照>护照</OPTION> <OPTION 
              value=企业法人营业执照>企业法人营业执照</OPTION> <OPTION value=组织机构代码证书>组织机构代码证书</OPTION> 
              <OPTION value=事业单位法人证书>事业单位法人证书</OPTION> <OPTION value=社团法人证书>社团法人证书</OPTION> 
              <OPTION value=营业执照>营业执照</OPTION> <OPTION value=其他有效证件>其他有效证件</OPTION> </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=idNumber2 size=15 length="40" 
            errmsg="证件号码不能为空!" valid="required" tips="请填写证件号码"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson2 size=15 length="40" 
            errmsg="联系人不能为空!" valid="required" tips="请填写联系人"></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人电话 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name=phone2 size=15 length="40" 
            tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode2 size=15 length="6" 
            errmsg="不能为空！|格式为6位数字" valid="required|isZip" tips="请填写邮政编码"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address2 size=50 length="100" 
            errmsg="地址不能为空!" valid="required" 
      tips="请填写地址"></TD></TR></TBODY></TABLE></DIV>
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
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=80>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&#13;&#10;<br>1、公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&#13;&#10;<br>2、法人：包括企业法人，指获得法人资格的企业；机关法人，指获得法人资格的国家机关；事业单位法人，指获得法人资格的事业单位；社会团体法人，指获得法人资格的社会团体。&#13;&#10;<br>3、其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   法人合伙组织&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  法人的分支机构&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;   个人独资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  中外合作经营企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  外资企业&#13;&#10;  <br>&nbsp;&nbsp;&nbsp;&nbsp;  筹建中的法人"><SELECT 
            onchange=s_h_legalPeople(this) name=peopleType2>
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
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=legalPeople2 size=15 
            length="100" errmsg="法定代表人不能为空!" valid="required" tips="请填写法定代表人" value="<c:out value='${cp2.hasLetter}' />" /> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=5><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 150px; HEIGHT: 110px; OVERFLOW: hidden" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=4 
          name=name2 length="200" errmsg="姓名或单位名称不能为空!" valid="required" tips="请填写姓名或单位名称">
          <c:out value='${cp2.name}' /></TEXTAREA> 
          </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型&nbsp;</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=idTypes2> <OPTION value=居民身份证 <c:if test="${cp2.id_type=='居民身份证'}">selected</c:if>>居民身份证</OPTION>
           <OPTION value=军官证 <c:if test="${cp2.id_type=='军官证'}">selected</c:if>>军官证</OPTION>
           <OPTION value=护照 <c:if test="${cp2.id_type=='护照'}">selected</c:if>>护照</OPTION>
           <OPTION value=企业法人营业执照 <c:if test="${cp2.id_type=='企业法人营业执照'}">selected</c:if>>企业法人营业执照</OPTION>
           <OPTION value=组织机构代码证书 <c:if test="${cp2.id_type=='组织机构代码证书'}">selected</c:if>>组织机构代码证书</OPTION> 
           <OPTION value=事业单位法人证书 <c:if test="${cp2.id_type=='事业单位法人证书'}">selected</c:if>>事业单位法人证书</OPTION>
           <OPTION value=社团法人证书 <c:if test="${cp2.id_type=='社团法人证书'}">selected</c:if>>社团法人证书</OPTION> 
           <OPTION value=营业执照 <c:if test="${cp2.id_type=='营业执照'}">selected</c:if>>营业执照</OPTION>
           <OPTION value=其他有效证件 <c:if test="${cp2.id_type=='其他有效证件'}">selected</c:if>>其他有效证件</OPTION> </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=idNumber2 size=15 length="40" 
            errmsg="证件号码不能为空!" valid="required" tips="请填写证件号码" value="<c:out value='${cp2.id_number}' />" /></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson2 size=15 length="40" 
            errmsg="联系人不能为空!" valid="required" tips="请填写联系人" value="<c:out value='${cp2.opus_sign}' />" /></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">联系人电话 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone2 size=15 length="40" 
            tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${cp2.sign}' />" /></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">邮政编码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=postCode2 size=15 length="6" 
            errmsg="不能为空！|格式为6位数字" valid="required|isZip" tips="请填写邮政编码" value="<c:out value='${cp2.garden}' />" /></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=4>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=address2 size=50 length="100" 
            errmsg="地址不能为空!" valid="required" tips="请填写地址" value="<c:out value='${cp2.addr}' />" /> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV>
            </c:forEach>
            </c:otherwise>
            </c:choose>
      
      </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请方式</TD>
    <TD class=contentbg><INPUT name=applyType value=由出质人办理  
      type=radio <c:if test="${z51.applyType=='由出质人办理'}">checked="checked"</c:if> />由出质人办理 
      <INPUT name=applyType value=由质权人办理 type=radio <c:if test="${z51.applyType=='由质权人办理'}">checked="checked"</c:if> />由质权人办理 
      <INPUT onclick=s_h_agent(this) name=isAgent value="代理人" 
      type=checkbox <c:if test="${z51.isAgent=='代理人'}">checked="checked"</c:if> />由代理人申请 </TD></TR>
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
  <INPUT id=shenqr name=shenqr value=申请人 type=hidden> <INPUT id=dailr name=dailr 
  value=代理人 type=hidden> 
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">出质人或质权人联系信息 </DIV>
      <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() 
      onclick="setPeopleValue('sqr');" value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TBODY>
  <TR>
    <TD class=contentbg>姓名或名称</TD>
    <TD class=contentbg><INPUT id=sqrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=sqrname size=35 length="100" 
      errmsg="姓名或单位名称不能为空！" valid="required" value="<c:out value='${sqr.name}'/>"
      tips="请准确填写申请人的姓名或名称，并与其他材料保持一致，申请人应是全部权利人，如果是多个申请人，请点击‘增加申请人’按钮，进行添加，并且在申请人签章处，要求是申请人的全部签章" /> 
    </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=sqraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqraddress size=35 length="100" 
      errmsg="不能为空！" valid="required" tips="请填写详细地址"  value="<c:out value='${sqr.address}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=sqrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrpostCode size=35 errmsg="不能为空!" 
      valid="required" tips="请填写邮政编码" value="<c:out value='${sqr.post_code}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=sqrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrcontactPerson size=35 length="40" 
      errmsg="不能为空！" valid="required" tips="请填写联系人" value="<c:out value='${sqr.contact_person}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=sqrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name=sqrphone size=35 
      length="40" errmsg="电话号码不能为空！" valid="required" tips="请填写联系电话号码" value="<c:out value='${sqr.phone}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=sqremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqremail size=35 length="50" 
      errmsg="不能为空！|格式不对！" valid="required|isEmail" 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" value="<c:out value='${sqr.email}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=sqrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrmobile size=35 length="30" 
      errmsg="手机号码不能为空！" valid="required" tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${sqr.mobile}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=sqrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrfax size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${sqr.fax}'/>" /></TD></TR>
  <TBODY style="DISPLAY: none" id=A-0>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">代理人信息</DIV>
      <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip()
      onclick="setPeopleValue('dlr');" value=我是代理人 type=button tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg 
      colSpan=2>&nbsp;&nbsp;&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=agentDesc size=60 length="180" 
      errmsg="代理权限说明不能为空！" valid="required" 
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" value="<c:out value='${z51.agentDesc}'/>" /> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlrname size=35 length="100" errmsg="不能为空！" 
      valid="required" tips="请准确填写代理人的姓名或名称，并与其他材料保持一致" value="<c:out value='${dlr.name}'/>" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlraddress size=35 length="100" 
      errmsg="不能为空！" valid="required" tips="请填写详细地址" value="<c:out value='${dlr.address}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlrpostCode size=35 length="6" 
      errmsg="不能为空！|格式为6位数字" valid="required|isZip" tips="请填写邮政编码" value="<c:out value='${dlr.post_code}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=dlrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrcontactPerson size=35 length="40" 
      errmsg="不能为空！" valid="required" tips="请填写联系人" value="<c:out value='${dlr.contact_person}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=dlrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name=dlrphone size=35 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.phone}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=dlremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlremail size=35 length="50" 
      errmsg="不能为空！|E-mail格式不正确！" valid="required|isEmail" 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" value="<c:out value='${dlr.email}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrmobile size=35 length="30" 
      errmsg="手机号码不能为空！" valid="required" tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.mobile}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrfax size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.fax}'/>" />
     </td></tr></tbody>
					</table>
				</div>
<TABLE align=center  style="background-color:#fff;">
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
			 class="m_button" onClick="onlySaveForm('${pageContext.request.contextPath}/application/z51/save');"/>
    </TD>
    <TD width=50 style="padding-right:15px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/z51/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></c:otherwise></c:choose></TBODY></TABLE></FORM></DIV>
    </BODY>
    <!--  与著作权质押合同登记申请的数据项-->
<SCRIPT language=javascript>
  $(document).ready(function(){
	 var flowNum = "${z51.flow_num}";
	 if(flowNum.length>0) { //修改初始化
		 var isImpow = "${z51.isImpower}";
		 if(isImpow=='否'){
			 $("#sqsm").css("display","none");
		 }
		 var isAppra = "${z51.isAppraise}";
		 if(isAppra=='否') {
			 $("#pgjz").css("display","none");
		 }
		 var isagent = "${z51.isAgent}";
		 if(isagent=='代理人') {
			 $("#A-0").css("display","block");
		 }
	 } else {//新增初始化
		 setDefaultChecked('opusType_');
		 setDefaultChecked('isImpower');
		 setDefaultChecked('isAppraise');
		 setDefaultChecked('applyType');
	 }
  });

  function setDefaultChecked(obj)
  {
  	var len = document.all(obj).length;
  	document.all(obj)[0].checked=true;
  	for(var i=1; i<len; i++)
  	{
  		if(document.all(obj)[i].checked)
  		{
  			document.all(obj)[i].checked=false;
  		}
  	}
  }
  
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
    
	// 特殊校验
	function afterValid()
	{	
		// 合同期限中，起始日期与截至日期比较	
		var flag = true;
		var startd=StringToDate(document.all("appearDate").value);
		var comDate=StringToDate(document.all("completedDate").value);
		var now=new Date();
		if(startd.getTime()-now.getTime() >= 0)
		{
			showErrorMsg(document.all("appearDate"), "首次发表日期应早于当前日期!");
			flag=false;
		}
		if(comDate.getTime()-now.getTime() >= 0)
		{
			showErrorMsg(document.all("completedDate"), "创作完成日期应早于当前日期!");
			flag=false;
		}
		if(comDate.getTime()-startd.getTime() > 0)
		{
			showErrorMsg(document.all("completedDate"), "创作完成日期应早于首次发表日期!");
			flag=false;
		}
		if(!isNumber(getVal('isappraiseNum'))&&getVal('isappraiseNum')!="")
			{
				showErrorMsg(document.all("isappraiseNum"), "评估价值应为大于0的整数！");
				flag = false;
			}
		return flag;
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
    
function s_h_pgjz(obj)
{
	if(obj.value == '是')
	{
		document.all('pgjz').style.display = "block";
		document.getElementById('isAppraiseNum').valid = "required";
		document.getElementById('isAppraiseName').valid = "required";
	}
	else
	{
		document.all('pgjz').style.display = "none";
		document.getElementById('isAppraiseNum').valid = "no";
		document.getElementById('isAppraiseName').valid = "no";
	}
}
function s_h_desc(obj)
{
	if(obj.value == '是')
	{
		document.all('sqsm').style.display = "block";
	}
	else
	{
		document.all('sqsm').style.display = "none";
	}
}

//保存表单响应函数
function onlySaveForm(url){
	lastLogic();
	document.forms[0].action=url;
	document.forms[0].submit();
}
</SCRIPT>
    </HTML>
