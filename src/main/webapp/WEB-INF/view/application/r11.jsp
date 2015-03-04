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
<DIV id=mytips></DIV><!--流程步骤 -->
<STYLE>#xsnazzy H1 {
	MARGIN: 0px 10px; LETTER-SPACING: 1px
}
#xsnazzy H2 {
	MARGIN: 0px 10px; LETTER-SPACING: 1px
}
#xsnazzy P {
	MARGIN: 0px 10px; LETTER-SPACING: 1px
}
#xsnazzy H1 {
	COLOR: #fff; FONT-SIZE: 2.5em
}
#xsnazzy H2 {
	BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; COLOR: #06a; FONT-SIZE: 2em; BORDER-TOP: 0px; BORDER-RIGHT: 0px
}
#xsnazzy P {
	PADDING-BOTTOM: 0.5em
}
#xsnazzy H2 {
	PADDING-TOP: 0.5em
}
#xsnazzy {
	MARGIN: 1em; BACKGROUND: none transparent scroll repeat 0% 0%
}
.xtop {
	DISPLAY: block; BACKGROUND: none transparent scroll repeat 0% 0%; FONT-SIZE: 1px
}
.xbottom {
	DISPLAY: block; BACKGROUND: none transparent scroll repeat 0% 0%; FONT-SIZE: 1px
}
.xb1 {
	DISPLAY: block; OVERFLOW: hidden
}
.xb2 {
	DISPLAY: block; OVERFLOW: hidden
}
.xb3 {
	DISPLAY: block; OVERFLOW: hidden
}
.xb4 {
	DISPLAY: block; OVERFLOW: hidden
}
.xb1 {
	HEIGHT: 1px
}
.xb2 {
	HEIGHT: 1px
}
.xb3 {
	HEIGHT: 1px
}
.xb2 {
	BORDER-LEFT: #ffffff 1px solid; BACKGROUND: #99cccc; BORDER-RIGHT: #99cccc 1px solid
}
.xb3 {
	BORDER-LEFT: #ffffff 1px solid; BACKGROUND: #99cccc; BORDER-RIGHT: #99cccc 1px solid
}
.xb4 {
	BORDER-LEFT: #ffffff 1px solid; BACKGROUND: #99cccc; BORDER-RIGHT: #99cccc 1px solid
}
.xb1 {
	MARGIN: 0px 5px; BACKGROUND: #99cccc
}
.xb2 {
	BORDER-RIGHT-WIDTH: 2px; MARGIN: 0px 3px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 2px
}
.xb3 {
	MARGIN: 0px 2px
}
.xb4 {
	MARGIN: 0px 1px; HEIGHT: 2px
}
.xboxcontent {
	BORDER-BOTTOM: #ffffff 0px solid; BORDER-LEFT: #ffffff 1px solid; DISPLAY: block; BACKGROUND: #99cccc; BORDER-TOP: #ffffff 0px solid; BORDER-RIGHT: #ffffff 1px solid
}
.aspect {
	BORDER-BOTTOM: #999999 2px solid; TEXT-ALIGN: center; BORDER-LEFT: #ffffff 1px solid; WIDTH: 95px; BACKGROUND: #ffff99; HEIGHT: 25px; FONT-SIZE: 12px; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #999999 2px solid
}
.arrow {
	BORDER-BOTTOM: orange 1px solid; BORDER-LEFT: orange 1px solid; BORDER-TOP: orange 1px solid; BORDER-RIGHT: orange 1px solid
}
.currentaspect {
	BORDER-BOTTOM: #999999 2px solid; TEXT-ALIGN: center; BORDER-LEFT: #ffffff 1px solid; WIDTH: 95px; BACKGROUND: #ffff99; HEIGHT: 25px; COLOR: #ff0000; FONT-SIZE: 12px; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #999999 2px solid
}
</STYLE>

<DIV 
style="Z-INDEX: 1; BORDER-BOTTOM: #000000 0px; POSITION: absolute; BORDER-LEFT: #000000 0px; BORDER-TOP: #000000 0px; BORDER-RIGHT: #000000 0px; TOP: 84px; LEFT: 0px; layer-background-color: #330033" 
id=divMenu>
<DIV style="MARGIN: 0px; WIDTH: 150px">
<DIV id=xsnazzy><B class=xtop><B class=xb1></B><B class=xb2></B><B 
class=xb3></B><B class=xb4></B></B>
<DIV class=xboxcontent>
<TABLE 
style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid" 
id=guide border=0 width=100 align=center>
  <TBODY>
  <TR style="HEIGHT: 30px">
    <TH 
    style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; HEIGHT: 30px; FONT-SIZE: 14px; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid"><IMG 
      style="POSITION: relative; TOP: -20px; LEFT: -10px" align=middle 
      src="images/boshi3.gif" width=40 height=40><SPAN 
      style="POSITION: relative; COLOR: #990000; TOP: -5px; LEFT: -10px"><U>申请表</U></SPAN><BR><SPAN 
      style="POSITION: relative; COLOR: #990000; FONT-SIZE: 14px; TOP: -10px; LEFT: 0px"><U>填报流程</U></SPAN> 
    </TH></TR>
  <TR>
    <TD class=currentaspect onmouseover="one.style.display='block'" 
    onmouseout="one.style.display='none'">①填写申请表 
      <DIV style="DISPLAY: none; COLOR: #333333" id=one align=left>
      <HR>
      按要求填写申请表各项内容。</DIV></TD></TR>
  <TR>
    <TD align=center><IMG 
src="images/process_dot.gif"></TD></TR>
  <TR>
    <TD class=aspect onmouseover="two.style.display='block'" 
    onmouseout="two.style.display='none'">②保存填写内容 
      <DIV style="DISPLAY: none; COLOR: #333333" id=two align=left>
      <HR>
      点击“保存”按钮会进入打印预览界面，如填写有误请点击“修改”按钮进行修改。</DIV></TD></TR>
  <TR>
    <TD align=center><IMG 
src="images/process_dot.gif"></TD></TR>
  <TR>
    <TD class=aspect onmouseover="three.style.display='block'" 
    onmouseout="three.style.display='none'">③确认提交 
      <DIV style="DISPLAY: none; COLOR: #333333" id=three align=left>
      <HR>
      点击“确认提交”生成流水号和条形码。确认提交后您的登记将不能进行修改。</DIV></TD></TR>
  <TR>
    <TD align=center><IMG 
src="images/process_dot.gif"></TD></TR>
  <TR>
    <TD class=aspect onmouseover="four.style.display='block'" 
    onmouseout="four.style.display='none'">④打印申请表 
      <DIV style="DISPLAY: none; COLOR: #333333" id=four align=left>
      <HR>
      点击“打印”打印申请表，申请表填写完成。</DIV></TD></TR>
  <TR>
    <TD>&nbsp;</TD></TR></TBODY></TABLE></DIV><B class=xbottom><B class=xb4></B><B 
class=xb3></B><B class=xb2></B><B class=xb1></B></B></DIV></DIV></DIV>
<!-- 申请人选项div -->
<DIV 
style="BORDER-BOTTOM: #333333 1px solid; POSITION: absolute; TEXT-ALIGN: left; BORDER-LEFT: #333333 1px solid; PADDING-BOTTOM: 3px; LINE-HEIGHT: 15px; BACKGROUND-COLOR: #ffff99; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; DISPLAY: none; HEIGHT: 30px; FONT-SIZE: 13px; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid; PADDING-TOP: 3px; TOP: 0px; LEFT: 0px" 
id=_sqr_div onmouseover="this.style.display='block';" 
onmouseout="this.style.display='none';"></DIV>
<DIV 
style="TEXT-ALIGN: center; PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; WIDTH: 900px; PADDING-RIGHT: 0px; PADDING-TOP: 20px">
<FORM method="post" name="generalForm" action="">
<TABLE style="BORDER-COLLAPSE: collapse" border=0 cellSpacing=0 
borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" align=center><B>计算机软件著作权登记申请表</B> &nbsp;&nbsp; 
      <IMG id=myhelp 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() src="images/icon_alert.gif" 
      width=18 
      tips="本表适用于著作权人原始取得著作权，以及通过转让、继承或承受取得著作权的软件著作权人登记申请时填写。应当使用中文简体填写申请表中各事项，软件名称可以使用英文填写。外国人申请登记的，软件名称、著作权人、申请人事项仅限使用中文或英文填写。申请人可以另附一页用其它标注出申请表的有关事项，留作备案。"></TD></TR></TBODY></TABLE>
<DIV style="MARGIN-TOP: 10px" id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 0px solid; BORDER-LEFT: #333333 0px solid; BORDER-TOP: #333333 0px solid; BORDER-RIGHT: #333333 0px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>软件基本信息</TD></TR>
  <TR>
    <TD class=contentbg width=130>软件全称</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" id="softFullNameid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="softFullName" size=50 
      tips="申请著作权登记的软件的全称。软件名称应简短明确、针对性强，各种文件中的软件名称应填写一致。可参考软件行业协会发布的：品牌&nbsp;+&nbsp;产品用途与功能+“软件”的命名规范；" 
      length="200" errmsg="软件全称不能为空!" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>软件简称</TD>
    <TD class=contentbg>
      <DIV style="FLOAT: left"><INPUT style="WIDTH: 448px" id="softForShortid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="softForShort" size=50 
      tips="对登记软件全称进行简化的名称。如：DOS、Windows、WPS等；（没有简称可以不填此栏）" length="100"> </DIV>
      <DIV style="FLOAT: left" id=showissame></DIV></TD></TR>
  <TR>
    <TD class=contentbg>分类号</TD>
    <TD class=contentbg><INPUT id="softNumberid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=windowOpen_SoftNumber() name="softNumber" 
      readOnly
      tips="在表中提供的原国家标准GB/T13702和国家标准GB/4754-2002中的代码确定的分类编号选择填写,且不支持IE8请选择IE7或较低版本；" 
      errmsg="分类号不能为空!" valid="required"> 
<INPUT onclick=windowOpen_SoftNumber(); value=选择分类号 type=button> </TD></TR>
  <TR>
    <TD class=contentbg>版本号</TD>
    <TD class=contentbg><INPUT id="editionNumberid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="editionNumber" 
      tips="申请著作权登记的软件的版本号。登记软件的版本号，一般情况下，按照“VX.X”方式填写。" length="40" 
      errmsg="版本号不能为空!" valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>软件作品说明</TD>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    class=contentbg><!-- 软件性质 -->
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-BOTTOM: 1px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" 
          colSpan=2><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() 
            onclick="showOrHideDevelopCircs(this,'s');" name="developCircs" 
            value="1" CHECKED type="radio" tips="">原创 <INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() 
            onclick="showOrHideDevelopCircs(this,'s');" name="developCircs" 
            value="2" type="radio" 
            tips="在原有软件基础上修改后，形成的在功能或性能方面有重要改进的软件。">修改(含翻译软件、合成软件) </TD></TR>
        <TBODY style="DISPLAY: none" id="xgxx">
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; 
          BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          colSpan=2><INPUT id="developCircsExplainid" name="developCircsExplain" 
            value="0" type="checkbox">是修改、翻译或合成别人软件，且需要原权利人授权的</TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          colSpan=2><INPUT id="origSoftRegCircsid" 
            onclick="showOrHideDevelopCircs(this,'m');" name="origSoftRegCircs" 
            value="0" type="checkbox">原有软件已经登记</TD></TR>
            </TBODY>
        <TBODY style="DISPLAY: none" id=ydjxx>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width="20%">原登记号</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width="80%"><INPUT id="origRegisterNumberid" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name="origRegisterNumber" size=35 
            tips="请填写原登记号" length="50" errmsg="原登记号不能为空!" valid="required" value=""> 
        </TD></TR></TBODY>
        <TBODY style="DISPLAY: none" id=smxx>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; 
          BORDER-LEFT-WIDTH: 0px" 
          width=80>修改合成或翻译说明</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px;BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
           <TEXTAREA style="WIDTH: 400px" id="origSoftModifyDescriptionid" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500)
           onmouseout=cpcc_showtip() cols=25 name="origSoftModifyDescription" tips="需要简明阐述软件新增加、删改的功能模块及程序的变化；&nbsp;<br>翻译软件简明阐述由一种计算机语言转换成另一种计算机语言表达的说明；&nbsp;<br>合成软件需要简明阐述合成或汇编的已有软件或程序，并对其取得著作权的材料及所编入的材料进行概括性描述；&nbsp;申请软件属于修改软件的，请简短明确阐述修改软件“新增功能模块”或“程序的第10～100行”、“全部翻译文本”等。对翻译或合成软件应对其取得著作权的材料及所编入的材料进行概括性描述。说明字数限于100字之内。若原有软件已经进行登记的，应注明原有软件著作权登记号。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" length="400" errmsg="修改合成或翻译说明说明不能为空!" valid="required"></TEXTAREA> 
          </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=contentbg>开发完成日期</TD>
    <TD class=contentbg><INPUT id="completeDate" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);"
      name="completeDate" readOnly size=12 tips="选择填写软件开发者将该软件全部固定在某种物质载体上的日期。" 
      errmsg="开发完成日期不能为空!" valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>发表状态</TD>
    <TD class=contentbg>
      <DIV style="FLOAT: left"><INPUT id="publishStatusid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=showOrHide() name="publishStatus" value="1" 
      CHECKED type=radio tips="软件已发表的，请选择已发表选项，并填写首次发表日期和首次发表地点所在的国家或城市"> 已发表 
      <INPUT id="publishStatusid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=showOrHide() name="publishStatus" value="0" 
      type="radio" tips="软件未发表的，请选择未发表选项，并选择填写是允许公众查阅该申请登记软件的鉴别材料。"> 未发表 </DIV></TD></TR>
  <TBODY id="pubstate">
  <TR>
    <TD class=contentbg rowSpan=2>已发表信息</TD>
    <TD class=contentbg>首次发表日期：<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" id="appearDateid"  
      name="appearDate" class="Wdate" readOnly size=12 tips="请填写首次发表日期" errmsg="首次发表日期不能为空！" 
      valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>首次发表地点 国家：<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) onmouseout=cpcc_showtip() 
      name="appearAreaCountry" value="中国" size=12 id="appearAreaCountryid"
      tips="请填写国家" length="40" errmsg="国家不能为空！" valid="required"> 
      城市：<INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="appearAreaCity" id="appearAreaCityid" size=12 tips="请填写城市" 
      length="40" errmsg="城市不能为空！" valid="required"> </TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class=contentbg>开发方式</TD>
    <TD class=contentbg><INPUT id="developModeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="developMode" value="1" CHECKED type="radio" 
      tips="指依靠自身的条件自行开发完成的软件。"> 独立开发 <INPUT id="developModeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="developMode" value="2" type="radio" 
      tips="指两人或两人以上依据合作协议共同开发完成的软件。需要提供的证明文件：证明申请人享有权利合作开发协议&#13;&#10;"> 合作开发 
      <INPUT id="developModeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="developMode" value="3" type="radio" 
      tips="指委托人与被委托人之间依据委托协议开发完成的软件。需要提供的证明文件：证明申请人享有著作权的委托协议&#13;&#10;"> 委托开发 
      <INPUT id="developModeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="developMode" value="4" type="radio" 
      tips="指由国家下达任务开发的软件。应提交项目任务书或合同。无项目任务书或合同，应提交相关证明。"> 下达任务开发 </TD></TR>
  <TR>
    <TD class=contentbg>权利取得方式</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() onclick="setDefaultCheck(this,'m')" 
      name="rightObtainMode" value="1" CHECKED type="radio" 
      tips="自然人、法人或其他组织对其所开发完成的软件依法享有著作权。">原始取得<BR><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() onclick="setDefaultCheck(this,'m')" 
      name="rightObtainMode" value="2" type="radio" tips="包括受让、承受、继承取得著作权的方式。">
      继受取得 ( 
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      disabled onmouseout=cpcc_showtip() name="inheritanceMode" value="22" 
      type=radio 
      tips="是指著作权人将著作权中的全部或部分财产权有偿或无偿地移交给他人所有的法律行为。需要提供的证明文件为著作权转让合同。">受让 <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) disabled 
      onmouseout=cpcc_showtip() name="inheritanceMode" value="23" type="radio" 
      tips="是指享有原著作权的企业被合并或分立，由合并或分立后其他企业享有著作权情况。需要提供的证明文件是企业变更证明及其他证明（合同、债权人会议决定和清算组织公告等）。">承受 
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      disabled onmouseout=cpcc_showtip() name=inheritanceMode value="21" 
      type="radio" 
      tips="指根据继承法继承人继承被继承人的著作权中财产权利。需要提供的证明文件是被继承人的死亡证明、被继承人有效遗嘱、与被继承人的关系证明、继承人身份证明、法院的法律文书。">继承 
      )<BR>&nbsp;&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300); disabled 
      onmouseout=cpcc_showtip() onclick=isCheck(this) name="isSoftReg" value="0" 
      type="checkbox" tips="若软件已登记，则可不填写软件技术特点相关内容">软件是否已登记 （原登记号：<INPUT 
      id="regNumberid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) disabled 
      onmouseout=cpcc_showtip() name="regNumber" size=10 tips="若软件已登记，请填写原登记号" 
      length="30"> ）<BR>&nbsp;&nbsp;<INPUT disabled name="isSoftChanged" value="0" 
      type=checkbox>原登记是否做过变更或补充 （变更或补充证明编号：<INPUT id="changeNumberid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) disabled 
      onmouseout=cpcc_showtip() name="changeNumber" 
      tips="若原登记做过变更或补充，请填写变更或补充证明书编号" length="150">） </TD></TR>
  <TR>
    <TD class=contentbg>权利范围</TD>
    <TD class=contentbg>
      <DIV><INPUT onclick=s_h_item(this); name="rightScope" value="1" CHECKED 
      type="radio">全部<BR><INPUT onclick=s_h_item(this); name="rightScope" value="2"
      type="radio">部分 <BR>&nbsp;&nbsp; <INPUT disabled name="rightScope_" value="发表权" 
      type="checkbox">发表权 <INPUT disabled name="rightScope_" value="署名权" 
      type="checkbox">署名权 <INPUT disabled name="rightScope_" value="修改权" 
      type="checkbox">修改权 <INPUT disabled name="rightScope_" value="复制权" 
      type="checkbox">复制权 <INPUT disabled name="rightScope_" value="发行权" 
      type="checkbox">发行权 <BR>&nbsp;&nbsp; <INPUT disabled name="rightScope_" 
      value="出租权" type="checkbox">出租权 <INPUT disabled name="rightScope_" value="信息网络传播权" 
      type="checkbox">信息网络传播权 <INPUT disabled name="rightScope_" value="翻译权" 
      type="checkbox">翻译权 <INPUT disabled name="rightScope_" value="应当由著作权人享有的其他权利" 
      type="checkbox">应当由著作权人享有的其他权利 </DIV>
      <DIV id="showrstip"></DIV></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>软件技术特点</TD></TR>
  <TR>
    <TD class=contentbg>硬件环境</TD>
    <TD class=contentbg>
    <TEXTAREA style="WIDTH: 448px" id="hardwareEnvid" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500)
    onmouseout=cpcc_showtip() cols=45 rows=3 name="hardwareEnv" tips="指开发和运行登记软件的计算机硬件和专用设备。" length="255"></TEXTAREA></TD></TR>
  <TR>
    <TD class=contentbg>软件环境</TD>
    <TD class=contentbg><TEXTAREA style="WIDTH: 448px" id="softwareEnvid" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
    onmouseout=cpcc_showtip() cols=45 rows=3 name="softwareEnv" tips="指开发和运行登记软件的操作系统、支持软件的名称及版本号。" length="255"></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class=contentbg>编程语言</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" id="programLanguageid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="programLanguage" size=45 
      tips="指编写登记软件的编程语言，如：VC&nbsp;6.0，VB&nbsp;6.0&nbsp;。&nbsp;" length="100" 
      errmsg="请填写编程语言!" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>源程序量</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" id="sourceCodeCapacity" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="sourceCodeCapacity" size=45 
      tips="指登记软件的源程序的总行数或者总条数。" length="40" errmsg="请填写源程序量!" 
    valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>主要功能和技术特点</TD>
    <TD class=contentbg><TEXTAREA style="WIDTH: 448px" id="softFunctionAndSpecialtyid" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
    onmouseout=cpcc_showtip() cols=45 rows=5 name="softFunctionAndSpecialty" tips="简短明确阐述软件的创作目的、主要功能、用途和技术特点。说明字数限于500个汉字。" length="1000" errmsg="请填写主要功能和技术特点!" valid="required"></TEXTAREA></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">著作权人信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) onmouseout=cpcc_showtip() 
    onclick=setComposerValue();
      value="我是著作权人" type="button" tips="著作权人为当前注册用户，可以从用户注册信息中提取相关信息，无需再输入"> 
<INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() 
onclick="addRow('personData')" name="button" value="增加著作权人" type="button" tips="多个著作权人点这里添加"> 
      </DIV></TD></TR>
  <TR><!-- 著作权人信息 -->
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id="personData" class=contentbg colSpan=2>
      <DIV style="DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=110>姓名/单位名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=50>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&nbsp;<br>1.著作权人是自然人的，应填写真实姓名，需要提交的证明文件复印件包括身份证、&nbsp;<br>&nbsp;&nbsp;军官证、护照或其他身份证明；&nbsp;<br>2.著作权人是法人的，应填写名称、类别、国籍、省份、城市和园区。&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;企业法人，指获得法人资格的企业。&nbsp;需提交的文件为工商营业执照；&nbsp;<br>　&nbsp;&nbsp;机关法人，指获得法人资格的国家机关。需提交的文件为组织机构代码证书；&nbsp;<br>　&nbsp;&nbsp;事业单位法人，指获得法人资格的事业单位。需提交的文件为事业单位法人证书；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;社会团体法人，指获得法人资格的社会团体。需提交的文件为社团法人证书；&nbsp;<br>3.其他组织：其他组织是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法人的分支机构需提交的文件为营业执照或社会团体登记证，以及法人不主张著作权的证明。&nbsp;<br>4.其他：&nbsp;是指不属于上面三类人的人">
          <SELECT onchange="setIsValid('peopleType1','idNumber1','4');setIdTypesValue()" 
            name="peopleType1"> 
             <OPTION value="自然人">自然人</OPTION>
            <OPTGROUP label="法人"> 
                <OPTION selected value="企业法人">企业法人</OPTION>
                <OPTION value="机关法人">机关法人</OPTION> 
                <OPTION value="事业单位法人">事业单位法人</OPTION>
                <OPTION value="社会团体法人">社会团体法人</OPTION>
           </OPTGROUP>
           <OPTION value="其他组织">其他组织</OPTION> 
           <OPTION value="其他">其他</OPTION>
           </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <SELECT name="country1">
             	<option selected="selected" value="中国">中国</option>
						<option value="智利">智利</option>
						<option value="直布罗陀">直布罗陀</option>
						<option value="乍得">乍得</option>
						<option value="赞比亚">赞比亚</option>
						<option value="越南">越南</option>
						<option value="约旦">约旦</option>
						<option value="英属印度洋区">英属印度洋区</option>
						<option value="英属维尔京群岛">英属维尔京群岛</option>
						<option value="英国">英国</option>
						<option value="印度尼西亚">印度尼西亚</option>
						<option value="印度">印度</option>
						<option value="意大利">意大利</option>
						<option value="以色列">以色列</option>
						<option value="伊朗">伊朗</option>
						<option value="伊拉克">伊拉克</option>
						<option value="也门">也门</option>
						<option value="亚美尼亚">亚美尼亚</option>
						<option value="牙买加">牙买加</option>
						<option value="叙利亚">叙利亚</option>
						<option value="匈牙利">匈牙利</option>
						<option value="新西兰">新西兰</option>
						<option value="新喀里多尼亚">新喀里多尼亚</option>
						<option value="新加坡">新加坡</option>
						<option value="小奥特兰群岛">小奥特兰群岛</option>
						<option value="象牙海岸">象牙海岸</option>
						<option value="希腊">希腊</option>
						<option value="西班牙">西班牙</option>
						<option value="乌兹别克斯坦">乌兹别克斯坦</option>
						<option value="乌拉圭">乌拉圭</option>
						<option value="乌克兰">乌克兰</option>
						<option value="乌干达">乌干达</option>
						<option value="文莱达鲁萨兰">文莱达鲁萨兰</option>
						<option value="委内瑞拉">委内瑞拉</option>
						<option value="危地马拉">危地马拉</option>
						<option value="瓦努阿图">瓦努阿图</option>
						<option value="瓦利斯/富图纳岛">瓦利斯/富图纳岛</option>
						<option value="托客劳群岛">托客劳群岛</option>
						<option value="土库曼斯坦">土库曼斯坦</option>
						<option value="土耳其">土耳其</option>
						<option value="图瓦卢">图瓦卢</option>
						<option value="突尼斯">突尼斯</option>
						<option value="统一">统一</option>
						<option value="特立尼达/多巴哥">特立尼达/多巴哥</option>
						<option value="特克斯/凯科斯岛">特克斯/凯科斯岛</option>
						<option value="汤加">汤加</option>
						<option value="坦桑尼亚">坦桑尼亚</option>
						<option value="泰国">泰国</option>
						<option value="塔吉克斯坦">塔吉克斯坦</option>
						<option value="索马里">索马里</option>
						<option value="所罗门群岛">所罗门群岛</option>
						<option value="苏里南">苏里南</option>
						<option value="苏丹">苏丹</option>
						<option value="斯洛文尼亚">斯洛文尼亚</option>
						<option value="斯洛伐克">斯洛伐克</option>
						<option value="斯里兰卡">斯里兰卡</option>
						<option value="圣文森特">圣文森特</option>
						<option value="圣马力诺">圣马力诺</option>
						<option value="圣路西亚">圣路西亚</option>
						<option value="圣基茨和那维斯">圣基茨和那维斯</option>
						<option value="圣赫勒拿岛">圣赫勒拿岛</option>
						<option value="圣多马/普林西比">圣多马/普林西比</option>
						<option value="圣诞岛">圣诞岛</option>
						<option value="沙特阿拉伯">沙特阿拉伯</option>
						<option value="塞舌尔群岛">塞舌尔群岛</option>
						<option value="塞浦路斯">塞浦路斯</option>
						<option value="塞内加尔">塞内加尔</option>
						<option value="塞拉利昂">塞拉利昂</option>
						<option value="塞尔维亚及门的">塞尔维亚及门的</option>
						<option value="塞尔维亚/Monten">塞尔维亚/Monten</option>
						<option value="萨摩亚, 美国">萨摩亚, 美国</option>
						<option value="萨摩亚">萨摩亚</option>
						<option value="萨尔瓦多">萨尔瓦多</option>
						<option value="撒哈拉西部">撒哈拉西部</option>
						<option value="瑞士">瑞士</option>
						<option value="瑞典">瑞典</option>
						<option value="日本">日本</option>
						<option value="乔治亚">乔治亚</option>
						<option value="葡萄牙">葡萄牙</option>
						<option value="皮特肯岛">皮特肯岛</option>
						<option value="帕劳">帕劳</option>
						<option value="诺福克岛">诺福克岛</option>
						<option value="挪威">挪威</option>
						<option value="纽埃群岛">纽埃群岛</option>
						<option value="尼日利亚">尼日利亚</option>
						<option value="尼日尔">尼日尔</option>
						<option value="尼加拉瓜">尼加拉瓜</option>
						<option value="尼泊尔">尼泊尔</option>
						<option value="瑙鲁">瑙鲁</option>
						<option value="南三维治岛">南三维治岛</option>
						<option value="南极洲">南极洲</option>
						<option value="南非">南非</option>
						<option value="纳米比亚">纳米比亚</option>
						<option value="墨西哥">墨西哥</option>
						<option value="莫桑比克">莫桑比克</option>
						<option value="摩纳哥">摩纳哥</option>
						<option value="摩洛哥">摩洛哥</option>
						<option value="摩尔多瓦">摩尔多瓦</option>
						<option value="缅甸">缅甸</option>
						<option value="秘鲁">秘鲁</option>
						<option value="密克罗尼西亚">密克罗尼西亚</option>
						<option value="孟加拉国">孟加拉国</option>
						<option value="蒙塞拉特岛">蒙塞拉特岛</option>
						<option value="蒙古">蒙古</option>
						<option value="美属维尔京群岛">美属维尔京群岛</option>
						<option value="美国">美国</option>
						<option value="毛里塔尼亚">毛里塔尼亚</option>
						<option value="毛里求斯">毛里求斯</option>
						<option value="马约特岛">马约特岛</option>
						<option value="马提尼克">马提尼克</option>
						<option value="马绍尔群岛">马绍尔群岛</option>
						<option value="马其顿">马其顿</option>
						<option value="马里">马里</option>
						<option value="马来西亚">马来西亚</option>
						<option value="马拉维">马拉维</option>
						<option value="马耳他">马耳他</option>
						<option value="马尔代夫">马尔代夫</option>
						<option value="马达加斯加">马达加斯加</option>
						<option value="罗马尼亚">罗马尼亚</option>
						<option value="卢旺达">卢旺达</option>
						<option value="卢森堡">卢森堡</option>
						<option value="列支敦士登">列支敦士登</option>
						<option value="立陶宛">立陶宛</option>
						<option value="利比亚">利比亚</option>
						<option value="利比里亚">利比里亚</option>
						<option value="黎巴嫩">黎巴嫩</option>
						<option value="老挝">老挝</option>
						<option value="莱索托">莱索托</option>
						<option value="拉脱维亚">拉脱维亚</option>
						<option value="库科纳群岛">库科纳群岛</option>
						<option value="肯尼亚">肯尼亚</option>
						<option value="克罗地亚">克罗地亚</option>
						<option value="科威特">科威特</option>
						<option value="科摩罗群岛">科摩罗群岛</option>
						<option value="科克群岛">科克群岛</option>
						<option value="开曼群岛">开曼群岛</option>
						<option value="卡塔尔">卡塔尔</option>
						<option value="喀麦隆">喀麦隆</option>
						<option value="津巴布韦">津巴布韦</option>
						<option value="捷克共和国">捷克共和国</option>
						<option value="柬埔寨">柬埔寨</option>
						<option value="加蓬">加蓬</option>
						<option value="加纳">加纳</option>
						<option value="加拿大">加拿大</option>
						<option value="几内亚比绍">几内亚比绍</option>
						<option value="几内亚">几内亚</option>
						<option value="吉尔吉斯斯坦">吉尔吉斯斯坦</option>
						<option value="吉布提">吉布提</option>
						<option value="基里巴斯">基里巴斯</option>
						<option value="洪都拉斯">洪都拉斯</option>
						<option value="荷属安的列斯岛">荷属安的列斯岛</option>
						<option value="荷德/马克多纳岛">荷德/马克多纳岛</option>
						<option value="荷 兰">荷 兰</option>
						<option value="韩国">韩国</option>
						<option value="海地">海地</option>
						<option value="哈萨克斯坦">哈萨克斯坦</option>
						<option value="圭亚那">圭亚那</option>
						<option value="关岛">关岛</option>
						<option value="瓜达洛普">瓜达洛普</option>
						<option value="古巴">古巴</option>
						<option value="格陵兰岛">格陵兰岛</option>
						<option value="格林纳达">格林纳达</option>
						<option value="哥斯答黎加">哥斯答黎加</option>
						<option value="哥伦比亚">哥伦比亚</option>
						<option value="刚果民主共和国">刚果民主共和国</option>
						<option value="刚果">刚果</option>
						<option value="冈比亚">冈比亚</option>
						<option value="福克兰群岛">福克兰群岛</option>
						<option value="佛得角群岛">佛得角群岛</option>
						<option value="芬兰">芬兰</option>
						<option value="斐济">斐济</option>
						<option value="菲律宾">菲律宾</option>
						<option value="梵蒂冈城">梵蒂冈城</option>
						<option value="法属圣特里特">法属圣特里特</option>
						<option value="法属圭亚那">法属圭亚那</option>
						<option value="法属波利尼西亚">法属波利尼西亚</option>
						<option value="法罗群岛">法罗群岛</option>
						<option value="法国">法国</option>
						<option value="厄瓜多尔">厄瓜多尔</option>
						<option value="俄罗斯联邦">俄罗斯联邦</option>
						<option value="多米尼加共和国">多米尼加共和国</option>
						<option value="多米尼加">多米尼加</option>
						<option value="多哥">多哥</option>
						<option value="东帝汶岛">东帝汶岛</option>
						<option value="德国">德国</option>
						<option value="丹麦">丹麦</option>
						<option value="赤道几内亚">赤道几内亚</option>
						<option value="布维群岛">布维群岛</option>
						<option value="布隆迪">布隆迪</option>
						<option value="布基纳法索">布基纳法索</option>
						<option value="不丹">不丹</option>
						<option value="伯利兹">伯利兹</option>
						<option value="博茨瓦纳">博茨瓦纳</option>
						<option value="玻利维亚">玻利维亚</option>
						<option value="波兰">波兰</option>
						<option value="波黑">波黑</option>
						<option value="波多黎哥">波多黎哥</option>
						<option value="冰岛">冰岛</option>
						<option value="比利时">比利时</option>
						<option value="贝宁">贝宁</option>
						<option value="北马里亚纳">北马里亚纳</option>
						<option value="北朝鲜">北朝鲜</option>
						<option value="保加利亚">保加利亚</option>
						<option value="百慕大群岛">百慕大群岛</option>
						<option value="白俄罗斯">白俄罗斯</option>
						<option value="巴西">巴西</option>
						<option value="巴拿马">巴拿马</option>
						<option value="巴林">巴林</option>
						<option value="巴拉圭">巴拉圭</option>
						<option value="巴基斯坦">巴基斯坦</option>
						<option value="巴哈马(群岛)">巴哈马(群岛)</option>
						<option value="巴布亚新几内亚">巴布亚新几内亚</option>
						<option value="巴巴多斯">巴巴多斯</option>
						<option value="奥地利">奥地利</option>
						<option value="澳大利亚">澳大利亚</option>
						<option value="安提瓜和巴布达">安提瓜和巴布达</option>
						<option value="安圭拉岛">安圭拉岛</option>
						<option value="安哥拉">安哥拉</option>
						<option value="安道尔">安道尔</option>
						<option value="爱沙尼亚">爱沙尼亚</option>
						<option value="爱尔兰">爱尔兰</option>
						<option value="埃塞俄比亚">埃塞俄比亚</option>
						<option value="埃立特里亚">埃立特里亚</option>
						<option value="埃及">埃及</option>
						<option value="阿塞拜疆">阿塞拜疆</option>
						<option value="阿曼">阿曼</option>
						<option value="阿鲁巴">阿鲁巴</option>
						<option value="阿联酋">阿联酋</option>
						<option value="阿根廷">阿根廷</option>
						<option value="阿富汗">阿富汗</option>
						<option value="阿尔及利亚">阿尔及利亚</option>
						<option value="阿尔巴尼亚">阿尔巴尼亚</option>
						<option value="SZ">斯威士兰</option>
						<option value="St.Pier,Miquel.">St.Pier,Miquel.</option>
						<option value="CAR">CAR</option>
						</SELECT></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=4><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 110px; HEIGHT: 70px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=3 name=name1 
          tips="著作权人是自然人的，应填写真实姓名。&nbsp;<br>著作权人是法人或其他组织的，应填写名称。&nbsp;<br>姓名或名称应与身份证明文件一致。" length="100" errmsg="著作权人姓名或名称不能为空！" valid="required"></TEXTAREA></TD>
          <TD>省份</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <SELECT name="province1" inputsn="10"> 
            <option value=" ">-请选择-</option>
			<option value="境外">境外</option>
			<option value="北京" selected="selected">北京</option>
			<option value="上海">上海</option>
			<option value="天津">天津</option>
			<option value="内蒙古">内蒙古</option>
			<option value="山西">山西</option>
			<option value="河北">河北</option>
			<option value="辽宁">辽宁</option>
			<option value="吉林">吉林</option>
			<option value="黑龙江">黑龙江</option>
			<option value="江苏">江苏</option>
			<option value="安徽">安徽</option>
			<option value="山东">山东</option>
			<option value="浙江">浙江</option>
			<option value="江西">江西</option>
			<option value="福建">福建</option>
			<option value="湖南">湖南</option>
			<option value="湖北">湖北</option>
			<option value="河南">河南</option>
			<option value="广东">广东</option>
			<option value="海南">海南</option>
			<option value="广西">广西</option>
			<option value="贵州">贵州</option>
			<option value="四川">四川</option>
			<option value="云南">云南</option>
			<option value="陕西">陕西</option>
			<option value="甘肃">甘肃</option>
			<option value="宁夏">宁夏</option>
			<option value="青海">青海</option>
			<option value="新疆">新疆</option>
			<option value="西藏">西藏</option>
			<option value="重庆">重庆</option>
			<option value="香港">香港</option>
			<option value="澳门">澳门</option>
			<option value="台湾">台湾</option>
			</SELECT></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">城市</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <INPUT style="WIDTH: 200px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name="city1" maxLength=100 size=15 
            tips="请填写城市" length="50" errmsg="城市不能为空！" valid="required"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <SELECT name="idTypes1"> 
            <option value="居民身份证">居民身份证</option>
			<option value="军官证">军官证</option>
			<option value="护照">护照</option>
			<option value="企业法人营业执照">企业法人营业执照</option>
			<option value="组织机构代码证书">组织机构代码证书</option>
			<option value="事业单位法人证书">事业单位法人证书</option>
			<option value="社团法人证书">社团法人证书</option>
			<option value="营业执照">营业执照</option>
			<option value="其他有效证件">其他有效证件</option>
          </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <INPUT style="WIDTH: 200px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name="idNumber1" maxLength=40 
            tips="填写相关证件号码" length="40" errmsg="证件号码不能为空！" 
        valid="required"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">园区</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">
            <DIV style="FLOAT: left">
            <SELECT name="garden1">
             <OPTION value=" "></OPTION>
             <OPTION value="清华软件园">清华软件园</OPTION>
             <OPTION value="上海浦东软件园">上海浦东软件园</OPTION>
             <OPTION value="杭州软件园">杭州软件园</OPTION> 
             <OPTION value="江苏软件园">江苏软件园</OPTION>
             <OPTION value="东大软件园">东大软件园</OPTION> 
             <OPTION value="齐鲁软件园">齐鲁软件园</OPTION> 
             <OPTION value="西部软件园">西部软件园</OPTION>
            <OPTION value="长沙软件园">长沙软件园</OPTION>
           <OPTION value="北京软件产业基地">北京软件产业基地</OPTION>
           <OPTION value="天津华苑软件园">天津华苑软件园</OPTION>
          <OPTION value="湖北软件产业基地">湖北软件产业基地</OPTION>
           <OPTION value="杭州高新软件园">杭州高新软件园</OPTION>
          <OPTION value="福州软件园">福州软件园</OPTION> 
           <OPTION value="江西金庐软件园">江西金庐软件园</OPTION>
          <OPTION value="西安软件园">西安软件园</OPTION>
          <OPTION value="大连软件园">大连软件园</OPTION> 
         <OPTION value="广州软件园">广州软件园</OPTION>
         <OPTION value="上海软件园">上海软件园</OPTION>
        <OPTION value="南京软件园">南京软件园</OPTION> 
         <OPTION value="长春软件园">长春软件园</OPTION>
          <OPTION value="厦门软件园">厦门软件园</OPTION>
        <OPTION value="合肥软件园">合肥软件园</OPTION> 
      <OPTION value="云南软件园">云南软件园</OPTION>
      <OPTION value="深圳软件园">深圳软件园</OPTION>
      <OPTION value="兰州软件园">兰州软件园</OPTION> 
      <OPTION value="青岛软件园">青岛软件园</OPTION>
       <OPTION value="吉林软件园">吉林软件园</OPTION>
      <OPTION value="中部软件产业园">中部软件产业园</OPTION> 
      <OPTION value="无锡软件园">无锡软件园</OPTION>
      <OPTION value="苏州软件园">苏州软件园</OPTION>
      <OPTION value="常州软件园">常州软件园</OPTION> 
     <OPTION value="宁波国际软件园">宁波国际软件园</OPTION>
     <OPTION value="河北省软件产业基地（石家庄）">河北省软件产业基地（石家庄）</OPTION>
     <OPTION value="其他园区">其他园区</OPTION>
     </SELECT></DIV></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="DISPLAY: block" id=busName>企业类别</DIV></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="DISPLAY: block" id=busName1><SELECT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name="busType1" tips="请根据实际情况选择相应企业类别" 
            errmsg="企业类别不能为空！" valid="required">
            <OPTION value="">--请选择企业类别--</OPTION>
            <OPTION value="国有企业">国有企业</OPTION>
            <OPTION value="集体企业">集体企业</OPTION>
            <OPTION value="私营企业">私营企业</OPTION>
            <OPTION value="港澳台商投资企业">港澳台商投资企业</OPTION> 
            <OPTION value="外商投资企业">外商投资企业</OPTION>
            <OPTION value="股份有限公司">股份有限公司</OPTION>
            </SELECT></DIV></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">申请证书副本</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><SELECT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name="hasLetter1" 
            tips="此著作权人如需证书副本请选择‘是’，如不要证书副本请选择‘否’"> 
            <OPTION selected value="">--请选择--</OPTION>
            <OPTION value="是">是</OPTION>
           <OPTION value="否">否</OPTION>
           </SELECT></DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button></DIV></TD></TR></TBODY></TABLE></DIV>
      <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=110>姓名/单位名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=50>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&nbsp;<br>1.著作权人是自然人的，应填写真实姓名，需要提交的证明文件复印件包括身份证、&nbsp;<br>&nbsp;&nbsp;军官证、护照或其他身份证明；&nbsp;<br>2.著作权人是法人的，应填写名称、类别、国籍、省份、城市和园区。&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;企业法人，指获得法人资格的企业。&nbsp;需提交的文件为工商营业执照；&nbsp;<br>　&nbsp;&nbsp;机关法人，指获得法人资格的国家机关。需提交的文件为组织机构代码证书；&nbsp;<br>　&nbsp;&nbsp;事业单位法人，指获得法人资格的事业单位。需提交的文件为事业单位法人证书；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;社会团体法人，指获得法人资格的社会团体。需提交的文件为社团法人证书；&nbsp;<br>3.其他组织：其他组织是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法人的分支机构需提交的文件为营业执照或社会团体登记证，以及法人不主张著作权的证明。&nbsp;<br>4.其他：&nbsp;是指不属于上面三类人的人"><SELECT 
            onchange="setIsValid('peopleType1','idNumber1','4');setIdTypesValue()" 
            name=peopleType1>  <OPTION value="自然人">自然人</OPTION>
            <OPTGROUP label="法人"> 
                <OPTION selected value="企业法人">企业法人</OPTION>
                <OPTION value="机关法人">机关法人</OPTION> 
                <OPTION value="事业单位法人">事业单位法人</OPTION>
                <OPTION value="社会团体法人">社会团体法人</OPTION>
           </OPTGROUP>
           <OPTION value="其他组织">其他组织</OPTION> 
           <OPTION value="其他">其他</OPTION></SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <SELECT name="country1">
           <option selected="selected" value="中国">中国</option>
						<option value="智利">智利</option>
						<option value="直布罗陀">直布罗陀</option>
						<option value="乍得">乍得</option>
						<option value="赞比亚">赞比亚</option>
						<option value="越南">越南</option>
						<option value="约旦">约旦</option>
						<option value="英属印度洋区">英属印度洋区</option>
						<option value="英属维尔京群岛">英属维尔京群岛</option>
						<option value="英国">英国</option>
						<option value="印度尼西亚">印度尼西亚</option>
						<option value="印度">印度</option>
						<option value="意大利">意大利</option>
						<option value="以色列">以色列</option>
						<option value="伊朗">伊朗</option>
						<option value="伊拉克">伊拉克</option>
						<option value="也门">也门</option>
						<option value="亚美尼亚">亚美尼亚</option>
						<option value="牙买加">牙买加</option>
						<option value="叙利亚">叙利亚</option>
						<option value="匈牙利">匈牙利</option>
						<option value="新西兰">新西兰</option>
						<option value="新喀里多尼亚">新喀里多尼亚</option>
						<option value="新加坡">新加坡</option>
						<option value="小奥特兰群岛">小奥特兰群岛</option>
						<option value="象牙海岸">象牙海岸</option>
						<option value="希腊">希腊</option>
						<option value="西班牙">西班牙</option>
						<option value="乌兹别克斯坦">乌兹别克斯坦</option>
						<option value="乌拉圭">乌拉圭</option>
						<option value="乌克兰">乌克兰</option>
						<option value="乌干达">乌干达</option>
						<option value="文莱达鲁萨兰">文莱达鲁萨兰</option>
						<option value="委内瑞拉">委内瑞拉</option>
						<option value="危地马拉">危地马拉</option>
						<option value="瓦努阿图">瓦努阿图</option>
						<option value="瓦利斯/富图纳岛">瓦利斯/富图纳岛</option>
						<option value="托客劳群岛">托客劳群岛</option>
						<option value="土库曼斯坦">土库曼斯坦</option>
						<option value="土耳其">土耳其</option>
						<option value="图瓦卢">图瓦卢</option>
						<option value="突尼斯">突尼斯</option>
						<option value="统一">统一</option>
						<option value="特立尼达/多巴哥">特立尼达/多巴哥</option>
						<option value="特克斯/凯科斯岛">特克斯/凯科斯岛</option>
						<option value="汤加">汤加</option>
						<option value="坦桑尼亚">坦桑尼亚</option>
						<option value="泰国">泰国</option>
						<option value="塔吉克斯坦">塔吉克斯坦</option>
						<option value="索马里">索马里</option>
						<option value="所罗门群岛">所罗门群岛</option>
						<option value="苏里南">苏里南</option>
						<option value="苏丹">苏丹</option>
						<option value="斯洛文尼亚">斯洛文尼亚</option>
						<option value="斯洛伐克">斯洛伐克</option>
						<option value="斯里兰卡">斯里兰卡</option>
						<option value="圣文森特">圣文森特</option>
						<option value="圣马力诺">圣马力诺</option>
						<option value="圣路西亚">圣路西亚</option>
						<option value="圣基茨和那维斯">圣基茨和那维斯</option>
						<option value="圣赫勒拿岛">圣赫勒拿岛</option>
						<option value="圣多马/普林西比">圣多马/普林西比</option>
						<option value="圣诞岛">圣诞岛</option>
						<option value="沙特阿拉伯">沙特阿拉伯</option>
						<option value="塞舌尔群岛">塞舌尔群岛</option>
						<option value="塞浦路斯">塞浦路斯</option>
						<option value="塞内加尔">塞内加尔</option>
						<option value="塞拉利昂">塞拉利昂</option>
						<option value="塞尔维亚及门的">塞尔维亚及门的</option>
						<option value="塞尔维亚/Monten">塞尔维亚/Monten</option>
						<option value="萨摩亚, 美国">萨摩亚, 美国</option>
						<option value="萨摩亚">萨摩亚</option>
						<option value="萨尔瓦多">萨尔瓦多</option>
						<option value="撒哈拉西部">撒哈拉西部</option>
						<option value="瑞士">瑞士</option>
						<option value="瑞典">瑞典</option>
						<option value="日本">日本</option>
						<option value="乔治亚">乔治亚</option>
						<option value="葡萄牙">葡萄牙</option>
						<option value="皮特肯岛">皮特肯岛</option>
						<option value="帕劳">帕劳</option>
						<option value="诺福克岛">诺福克岛</option>
						<option value="挪威">挪威</option>
						<option value="纽埃群岛">纽埃群岛</option>
						<option value="尼日利亚">尼日利亚</option>
						<option value="尼日尔">尼日尔</option>
						<option value="尼加拉瓜">尼加拉瓜</option>
						<option value="尼泊尔">尼泊尔</option>
						<option value="瑙鲁">瑙鲁</option>
						<option value="南三维治岛">南三维治岛</option>
						<option value="南极洲">南极洲</option>
						<option value="南非">南非</option>
						<option value="纳米比亚">纳米比亚</option>
						<option value="墨西哥">墨西哥</option>
						<option value="莫桑比克">莫桑比克</option>
						<option value="摩纳哥">摩纳哥</option>
						<option value="摩洛哥">摩洛哥</option>
						<option value="摩尔多瓦">摩尔多瓦</option>
						<option value="缅甸">缅甸</option>
						<option value="秘鲁">秘鲁</option>
						<option value="密克罗尼西亚">密克罗尼西亚</option>
						<option value="孟加拉国">孟加拉国</option>
						<option value="蒙塞拉特岛">蒙塞拉特岛</option>
						<option value="蒙古">蒙古</option>
						<option value="美属维尔京群岛">美属维尔京群岛</option>
						<option value="美国">美国</option>
						<option value="毛里塔尼亚">毛里塔尼亚</option>
						<option value="毛里求斯">毛里求斯</option>
						<option value="马约特岛">马约特岛</option>
						<option value="马提尼克">马提尼克</option>
						<option value="马绍尔群岛">马绍尔群岛</option>
						<option value="马其顿">马其顿</option>
						<option value="马里">马里</option>
						<option value="马来西亚">马来西亚</option>
						<option value="马拉维">马拉维</option>
						<option value="马耳他">马耳他</option>
						<option value="马尔代夫">马尔代夫</option>
						<option value="马达加斯加">马达加斯加</option>
						<option value="罗马尼亚">罗马尼亚</option>
						<option value="卢旺达">卢旺达</option>
						<option value="卢森堡">卢森堡</option>
						<option value="列支敦士登">列支敦士登</option>
						<option value="立陶宛">立陶宛</option>
						<option value="利比亚">利比亚</option>
						<option value="利比里亚">利比里亚</option>
						<option value="黎巴嫩">黎巴嫩</option>
						<option value="老挝">老挝</option>
						<option value="莱索托">莱索托</option>
						<option value="拉脱维亚">拉脱维亚</option>
						<option value="库科纳群岛">库科纳群岛</option>
						<option value="肯尼亚">肯尼亚</option>
						<option value="克罗地亚">克罗地亚</option>
						<option value="科威特">科威特</option>
						<option value="科摩罗群岛">科摩罗群岛</option>
						<option value="科克群岛">科克群岛</option>
						<option value="开曼群岛">开曼群岛</option>
						<option value="卡塔尔">卡塔尔</option>
						<option value="喀麦隆">喀麦隆</option>
						<option value="津巴布韦">津巴布韦</option>
						<option value="捷克共和国">捷克共和国</option>
						<option value="柬埔寨">柬埔寨</option>
						<option value="加蓬">加蓬</option>
						<option value="加纳">加纳</option>
						<option value="加拿大">加拿大</option>
						<option value="几内亚比绍">几内亚比绍</option>
						<option value="几内亚">几内亚</option>
						<option value="吉尔吉斯斯坦">吉尔吉斯斯坦</option>
						<option value="吉布提">吉布提</option>
						<option value="基里巴斯">基里巴斯</option>
						<option value="洪都拉斯">洪都拉斯</option>
						<option value="荷属安的列斯岛">荷属安的列斯岛</option>
						<option value="荷德/马克多纳岛">荷德/马克多纳岛</option>
						<option value="荷 兰">荷 兰</option>
						<option value="韩国">韩国</option>
						<option value="海地">海地</option>
						<option value="哈萨克斯坦">哈萨克斯坦</option>
						<option value="圭亚那">圭亚那</option>
						<option value="关岛">关岛</option>
						<option value="瓜达洛普">瓜达洛普</option>
						<option value="古巴">古巴</option>
						<option value="格陵兰岛">格陵兰岛</option>
						<option value="格林纳达">格林纳达</option>
						<option value="哥斯答黎加">哥斯答黎加</option>
						<option value="哥伦比亚">哥伦比亚</option>
						<option value="刚果民主共和国">刚果民主共和国</option>
						<option value="刚果">刚果</option>
						<option value="冈比亚">冈比亚</option>
						<option value="福克兰群岛">福克兰群岛</option>
						<option value="佛得角群岛">佛得角群岛</option>
						<option value="芬兰">芬兰</option>
						<option value="斐济">斐济</option>
						<option value="菲律宾">菲律宾</option>
						<option value="梵蒂冈城">梵蒂冈城</option>
						<option value="法属圣特里特">法属圣特里特</option>
						<option value="法属圭亚那">法属圭亚那</option>
						<option value="法属波利尼西亚">法属波利尼西亚</option>
						<option value="法罗群岛">法罗群岛</option>
						<option value="法国">法国</option>
						<option value="厄瓜多尔">厄瓜多尔</option>
						<option value="俄罗斯联邦">俄罗斯联邦</option>
						<option value="多米尼加共和国">多米尼加共和国</option>
						<option value="多米尼加">多米尼加</option>
						<option value="多哥">多哥</option>
						<option value="东帝汶岛">东帝汶岛</option>
						<option value="德国">德国</option>
						<option value="丹麦">丹麦</option>
						<option value="赤道几内亚">赤道几内亚</option>
						<option value="布维群岛">布维群岛</option>
						<option value="布隆迪">布隆迪</option>
						<option value="布基纳法索">布基纳法索</option>
						<option value="不丹">不丹</option>
						<option value="伯利兹">伯利兹</option>
						<option value="博茨瓦纳">博茨瓦纳</option>
						<option value="玻利维亚">玻利维亚</option>
						<option value="波兰">波兰</option>
						<option value="波黑">波黑</option>
						<option value="波多黎哥">波多黎哥</option>
						<option value="冰岛">冰岛</option>
						<option value="比利时">比利时</option>
						<option value="贝宁">贝宁</option>
						<option value="北马里亚纳">北马里亚纳</option>
						<option value="北朝鲜">北朝鲜</option>
						<option value="保加利亚">保加利亚</option>
						<option value="百慕大群岛">百慕大群岛</option>
						<option value="白俄罗斯">白俄罗斯</option>
						<option value="巴西">巴西</option>
						<option value="巴拿马">巴拿马</option>
						<option value="巴林">巴林</option>
						<option value="巴拉圭">巴拉圭</option>
						<option value="巴基斯坦">巴基斯坦</option>
						<option value="巴哈马(群岛)">巴哈马(群岛)</option>
						<option value="巴布亚新几内亚">巴布亚新几内亚</option>
						<option value="巴巴多斯">巴巴多斯</option>
						<option value="奥地利">奥地利</option>
						<option value="澳大利亚">澳大利亚</option>
						<option value="安提瓜和巴布达">安提瓜和巴布达</option>
						<option value="安圭拉岛">安圭拉岛</option>
						<option value="安哥拉">安哥拉</option>
						<option value="安道尔">安道尔</option>
						<option value="爱沙尼亚">爱沙尼亚</option>
						<option value="爱尔兰">爱尔兰</option>
						<option value="埃塞俄比亚">埃塞俄比亚</option>
						<option value="埃立特里亚">埃立特里亚</option>
						<option value="埃及">埃及</option>
						<option value="阿塞拜疆">阿塞拜疆</option>
						<option value="阿曼">阿曼</option>
						<option value="阿鲁巴">阿鲁巴</option>
						<option value="阿联酋">阿联酋</option>
						<option value="阿根廷">阿根廷</option>
						<option value="阿富汗">阿富汗</option>
						<option value="阿尔及利亚">阿尔及利亚</option>
						<option value="阿尔巴尼亚">阿尔巴尼亚</option>
						<option value="SZ">斯威士兰</option>
						<option value="St.Pier,Miquel.">St.Pier,Miquel.</option>
						<option value="CAR">CAR</option>
						</SELECT></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=4><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 110px; HEIGHT: 70px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=3 name=name1 tips="著作权人是自然人的，应填写真实姓名。&nbsp;<br>著作权人是法人或其他组织的，应填写名称。&nbsp;<br>姓名或名称应与身份证明文件一致。" length="100" errmsg="著作权人姓名或名称不能为空！" valid="required"></TEXTAREA></TD>
          <TD>省份</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name=province1 inputsn="10">
              <option value=" ">-请选择-</option>
			<option value="境外">境外</option>
			<option value="北京" selected="selected">北京</option>
			<option value="上海">上海</option>
			<option value="天津">天津</option>
			<option value="内蒙古">内蒙古</option>
			<option value="山西">山西</option>
			<option value="河北">河北</option>
			<option value="辽宁">辽宁</option>
			<option value="吉林">吉林</option>
			<option value="黑龙江">黑龙江</option>
			<option value="江苏">江苏</option>
			<option value="安徽">安徽</option>
			<option value="山东">山东</option>
			<option value="浙江">浙江</option>
			<option value="江西">江西</option>
			<option value="福建">福建</option>
			<option value="湖南">湖南</option>
			<option value="湖北">湖北</option>
			<option value="河南">河南</option>
			<option value="广东">广东</option>
			<option value="海南">海南</option>
			<option value="广西">广西</option>
			<option value="贵州">贵州</option>
			<option value="四川">四川</option>
			<option value="云南">云南</option>
			<option value="陕西">陕西</option>
			<option value="甘肃">甘肃</option>
			<option value="宁夏">宁夏</option>
			<option value="青海">青海</option>
			<option value="新疆">新疆</option>
			<option value="西藏">西藏</option>
			<option value="重庆">重庆</option>
			<option value="香港">香港</option>
			<option value="澳门">澳门</option>
			<option value="台湾">台湾</option>
			</SELECT></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">城市</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            style="WIDTH: 200px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name="city1" maxLength=100 size=15 
            tips="请填写城市" length="50" errmsg="城市不能为空！" valid="required"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name="idTypes1"> 
            <option value="居民身份证">居民身份证</option>
			<option value="军官证">军官证</option>
			<option value="护照">护照</option>
			<option value="企业法人营业执照">企业法人营业执照</option>
			<option value="组织机构代码证书">组织机构代码证书</option>
			<option value="事业单位法人证书">事业单位法人证书</option>
			<option value="社团法人证书">社团法人证书</option>
			<option value="营业执照">营业执照</option>
			<option value="其他有效证件">其他有效证件</option>
			</SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            style="WIDTH: 200px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name=idNumber1 tips="填写相关证件号码" length="40" 
            errmsg="证件号码不能为空！" valid="required"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">园区</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            name="garden1">
             <OPTION value=" "></OPTION>
             <OPTION value="清华软件园">清华软件园</OPTION>
             <OPTION value="上海浦东软件园">上海浦东软件园</OPTION>
             <OPTION value="杭州软件园">杭州软件园</OPTION> 
             <OPTION value="江苏软件园">江苏软件园</OPTION>
             <OPTION value="东大软件园">东大软件园</OPTION> 
             <OPTION value="齐鲁软件园">齐鲁软件园</OPTION> 
             <OPTION value="西部软件园">西部软件园</OPTION>
            <OPTION value="长沙软件园">长沙软件园</OPTION>
           <OPTION value="北京软件产业基地">北京软件产业基地</OPTION>
           <OPTION value="天津华苑软件园">天津华苑软件园</OPTION>
          <OPTION value="湖北软件产业基地">湖北软件产业基地</OPTION>
           <OPTION value="杭州高新软件园">杭州高新软件园</OPTION>
          <OPTION value="福州软件园">福州软件园</OPTION> 
           <OPTION value="江西金庐软件园">江西金庐软件园</OPTION>
          <OPTION value="西安软件园">西安软件园</OPTION>
          <OPTION value="大连软件园">大连软件园</OPTION> 
         <OPTION value="广州软件园">广州软件园</OPTION>
         <OPTION value="上海软件园">上海软件园</OPTION>
        <OPTION value="南京软件园">南京软件园</OPTION> 
         <OPTION value="长春软件园">长春软件园</OPTION>
          <OPTION value="厦门软件园">厦门软件园</OPTION>
        <OPTION value="合肥软件园">合肥软件园</OPTION> 
      <OPTION value="云南软件园">云南软件园</OPTION>
      <OPTION value="深圳软件园">深圳软件园</OPTION>
      <OPTION value="兰州软件园">兰州软件园</OPTION> 
      <OPTION value="青岛软件园">青岛软件园</OPTION>
       <OPTION value="吉林软件园">吉林软件园</OPTION>
      <OPTION value="中部软件产业园">中部软件产业园</OPTION> 
      <OPTION value="无锡软件园">无锡软件园</OPTION>
      <OPTION value="苏州软件园">苏州软件园</OPTION>
      <OPTION value="常州软件园">常州软件园</OPTION> 
     <OPTION value="宁波国际软件园">宁波国际软件园</OPTION>
     <OPTION value="河北省软件产业基地（石家庄）">河北省软件产业基地（石家庄）</OPTION>
     <OPTION value="其他园区">其他园区</OPTION>
     </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="DISPLAY: block" id=busName>企业类别</DIV></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="DISPLAY: block" id=busName1><SELECT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name="busType1" tips="请根据实际情况选择相应企业类别" 
            errmsg="企业类别不能为空！" valid="required"> 
            <OPTION value="">--请选择企业类别--</OPTION>
            <OPTION value="国有企业">国有企业</OPTION>
            <OPTION value="集体企业">集体企业</OPTION>
            <OPTION value="私营企业">私营企业</OPTION>
            <OPTION value="港澳台商投资企业">港澳台商投资企业</OPTION> 
            <OPTION value="外商投资企业">外商投资企业</OPTION>
            <OPTION value="股份有限公司">股份有限公司</OPTION>
            </SELECT> 
      </DIV></TD>
    <DIV style="display: none"><SELECT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name="hasLetter1" 
            tips="此著作权人如需证书副本请选择‘是’，如不要证书副本请选择‘否’"> 
            <OPTION selected value=""></OPTION>
           </SELECT></DIV>
      </TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请办理方式</TD>
    <TD class=contentbg><INPUT onclick=agent_showOrHide(this) name="applyType" 
      value="由著作权人申请" CHECKED type="radio">由著作权人申请 <INPUT 
      onclick=agent_showOrHide(this) name="applyType" value="代理人" type="radio">由代理人申请 
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
  <INPUT id="shenqr" name="shenqr" value="申请人" type="hidden">
  <INPUT id="dailr" name="dailr" value="代理人" type="hidden"> 
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">申请人信息 </DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() 
      onclick="setPeopleValue('sqr');" value="我是申请人" type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id="sqrnameid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="sqrname" size=35 
      tips="请准确填写申请人的姓名或单位名称，并与其他材料保持一致，申请人应是权利人之一" length="250" 
      errmsg="姓名或单位名称不能为空！" valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id="sqraddressid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqraddress" size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" length="100" errmsg="不能为空！" 
      valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id="sqrpostCodeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrpostCode" size=35 tips="请填写邮政编码" 
      length="8"></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id="sqrcontactPersonid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrcontactPerson" size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id="sqrphoneid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="sqrphone" size=35 
      tips="请填写联系电话号码" length="40" errmsg="电话号码不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id="sqremailid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqremail" size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|格式不对！" valid="required|isEmail"></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id="sqrmobileid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrmobile" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30"></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id="sqrfaxid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrfax" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30"></TD></TR>
  <TBODY style="DISPLAY: none" id="A-0">
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">代理人信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() 
      onclick="setPeopleValue('dlr');" value="我是代理人" type="button" tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg 
      colSpan=2>&nbsp;&nbsp;&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="agent_desc" size=60 
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" length="180" errmsg="代理权限说明不能为空！" 
      valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id="dlrnameid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlrname" size=35 
      tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" length="100" errmsg="不能为空！" 
      valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id="dlraddressid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlraddress" size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" length="100" errmsg="不能为空！" 
      valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id="dlrpostCodeid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlrpostCode" size=35 tips="请填写邮政编码" 
      length="8" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id="dlrcontactPersonid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrcontactPerson" size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id="dlrphoneid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="dlrphone" size=35 
      tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id="dlremailid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlremail" size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|E-mail格式不对！" valid="required|isEmail"></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id="dlrmobileid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrmobile" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30"></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id="dlrfaxid" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrfax" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30"></TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>软件鉴别材料</TD></TR>
  <TR>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=changeIdentifyState() 
      name="difmatReferMode" value="1" CHECKED type="radio" 
      tips="源程序的连续的前30页和连续的后30页（前、后30页可以是自然排序，也可以是自行定义；&nbsp;
      <br>提交一种文档的连续的前30页和连续的后30页，申请人可以选择提交一种以上的文档，每增加一种文档，缴纳80元的费用；&nbsp;<br>">一般交存 
    </TD>
    <TD 
      class=contentbg>&nbsp;&nbsp;提交源程序前连续的30页和后连续的30页；<BR>&nbsp;&nbsp;提交任何一种文档的前连续的30页和后连续的30页；<BR>
      <INPUT 
      name="isMutilDoc" value="oneDoc" CHECKED type="radio">一种文档<BR><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="isMutilDoc" value="mutilDoc" type="radio" 
      tips="申请人可以选择提交一种以上的文档，每增加一种文档，需缴纳80元的费用。">多种文档，种类为： <INPUT 
      id="mutilDocType" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="mutilDocType" value="0" size=10 
      tips="请填写多种文档种类" length="10"> </TD></TR>
  <TR>
    <TD class=contentbg rowSpan=3><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=changeIdentifyState() 
      name="difmatReferMode" value="2" type="radio" 
      tips="1.选择例外交存方式需另外缴纳320元的费用。&nbsp;<br>2.例外交存的选择下列方式之一：&nbsp;<br>a.提交源程序的前、后30页使用黑色宽斜线覆盖百分之五十（由登记机构实施）；&nbsp;<br>b.提交源程序的前10页和任选连续的50页；&nbsp;
      <br>c.提交目标程序的前、后30页和源程序任选连续的20页（三种方式中选择其一）。&nbsp;<br>">例外交存 
    </TD>
    <TD class=contentbg><INPUT disabled name="difmatReferModeExcep" value="exp1" 
      type="radio">使用黑色宽斜线覆盖，页码为： <INPUT id=difmatReferPages 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) disabled 
      onmouseout=cpcc_showtip() name="difmatReferPages" size=50 
      tips="填写需要覆盖的程序或文档的页码。覆盖的页数不能超过提交源程序或文档的百分之五十，覆盖由登记机构实施。" length="100"> 
  </TD></TR>
  <TR>
    <TD class=contentbg><INPUT disabled name="difmatReferModeExcep" value="exp2" 
      type=radio>前10页和任选连续的50页</TD></TR>
  <TR>
    <TD class=contentbg><INPUT disabled name="difmatReferModeExcep" value="exp3" 
      type=radio>目标程序的连续的前、后各30页和源程序任选连续的20页
    </td></tr></tbody>
					</table>
				</div>
<TABLE align=center>
  <TBODY>
  <TR height=5>
    <TD colSpan=3></TD></TR>
  <TR>
   <TD width=50 style="padding-right:15px;">
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForms('${pageContext.request.contextPath}/application/r11/save');"/>
    </TD>
    <TD width=50 style="padding-right:15px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForms('${pageContext.request.contextPath}/application/r11/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></TBODY></TABLE></FORM></DIV></div>
</body>
<!--  与数据字典关联的数据-->
<SCRIPT type=text/javascript>
// 防止多次提交表单
var SUB_ONCE = false;
function hasSubmitOnce(){
   if(SUB_ONCE){
   	alert("页面请求已经递交，请稍后......");
   }
   return SUB_ONCE;

}

function subForms(url){
 if(confirm("表格提交后将自动进入初审状态,\r无法在操作下进行修改和删除!")){
	clearErrorMsgDiv();
	// 校验前的处理function
	beforeValid();
	var canSubmit = false;
	var comVerify = validFormElements();
	var specialVerify = afterValid();

	if(comVerify && specialVerify){
		canSubmit = true;
	}
	if(canSubmit){
		if(hasSubmitOnce()){
			return;
		}else{
			SUB_ONCE = true;
			// 校验之后需要处理的一些逻辑
			lastLogic();
			document.forms[0].action=url;
			document.forms[0].submit();
		}
	 }else{
		SUB_ONCE = false;
	 }
 }
}

function saveForms(url){
	lastLogic();
	document.forms[0].action=url;
	document.forms[0].submit();
}
// 在通用校验之前的处理
function beforeValid(){
	/**
	 * 选转让后 软件技术特点是非必填项
	 */
	//['编程语言', '源程序量', '主要功能和技术特点']
	var idbuf = ['programLanguage', 'sourceCodeCapacity', 'softFunctionAndSpecialty'];
	var jy_ = "required";
	if(document.all('inheritanceMode')[0].checked){
		jy_ = "no";
	}
	for(var i=0; i<idbuf.length; i++){
		var tmp_ = document.all(idbuf[i]);
		if(tmp_.valid){
			tmp_.valid = jy_;
		}
	}
}
function showOrHide()
{	
	if(document.all("publishStatus")[0].checked == true)
	{
		document.all("pubstate").style.display="block";
	} 
	else
	{
		$("#appearDateid").val("");
		$("#appearAreaCountryid").val("");
		$("#appearAreaCityid").val("");
		document.all("pubstate").style.display="none";
	}		
}
 function setIsValid(type,name,val)
    {
	    var obj1 = document.all(type);
		var obj2 = document.all(name);
		if(obj1!=null&&obj2!=null){
			for(var i=1;i<obj1.length; i++){
			    if(obj1[i]!=null){ 
					if(obj1[i].value == val){
						obj2[i].valid = "no";
					}
					else{
						obj2[i].valid = "required";
					}
			  }
			}
		}
		setIdTypesValue();
    }
//著作权人证件类型跟随类别自动被选中
function setIdTypesValue(){
	var obj = document.getElementById("personData");
	var lastChildren="";
	var tableObj="";
	var peopleTypeValue="";
    var idTypesValue="";
	
	for(var lobj=0;lobj<obj.children.length;lobj++){
		lastChildren =obj.children(lobj);
		tableObj = lastChildren.children(0);
		
		// 类别-用户类型 
		var peopleTypeObj = tableObj.rows(0).cells(2).children(0);	
		// 证件类型
		var idTypesObj = tableObj.rows(2).cells(1).children(0);
		for(var i=0; i<peopleTypeObj.options.length; i++){
			if(peopleTypeObj.options(i).selected == true){
				peopleTypeValue=peopleTypeObj.options(i).value;
				break;
			}
		}
		if(peopleTypeValue=="自然人"){
			  idTypesValue="1";
			  document.all("busName")[lobj].style.display="none";
			  document.all("busName1")[lobj].style.display="none";
			  document.all("busType1")[lobj].valid = "no";
			  document.all("busType1")[lobj].style.display="none";
			  document.all("busType1")[lobj].value="";
			}
			if(peopleTypeValue=="企业法人"){
			  idTypesValue="5";
			  document.all("busName")[lobj].style.display="block";
			  document.all("busName1")[lobj].style.display="block";
			  document.all("busType1")[lobj].valid = "required";
			  document.all("busType1")[lobj].style.display="block";
			}
			
			if(peopleTypeValue=="机关法人"){
			  idTypesValue="6";
			  document.all("busName")[lobj].style.display="none";
			  document.all("busName1")[lobj].style.display="none";
			  document.all("busType1")[lobj].valid = "no";
			  document.all("busType1")[lobj].style.display="none";
			  document.all("busType1")[lobj].value="";
			}
			if(peopleTypeValue=="事业单位法人"){
			  idTypesValue="7";
			  document.all("busName")[lobj].style.display="none";
			  document.all("busName1")[lobj].style.display="none";
			  document.all("busType1")[lobj].valid = "no";
			  document.all("busType1")[lobj].style.display="none";
			  document.all("busType1")[lobj].value="";
			}
			
			if(peopleTypeValue=="社会团体法人"){
			  idTypesValue="8";
			  document.all("busName")[lobj].style.display="none";
			  document.all("busName1")[lobj].style.display="none";
			  document.all("busType1")[lobj].valid = "no";
			  document.all("busType1")[lobj].style.display="none";
			  document.all("busType1")[lobj].value="";
			}
			if(peopleTypeValue=="其他组织"||peopleTypeValue=="其他"){
			  idTypesValue="";
			  document.all("busName")[lobj].style.display="none";
			  document.all("busName1")[lobj].style.display="none";
			  document.all("busType1")[lobj].valid = "no";
			  document.all("busType1")[lobj].style.display="none";
			  document.all("busType1")[lobj].value="";
			}
		for(var i=0; i<idTypesObj.options.length; i++){
			if(idTypesObj.options(i).value == idTypesValue){
				idTypesObj.options(i).selected = true;
				break;
			}
		}
	}
	 
	
}

// 特殊校验
function afterValid()
{	
	var flag = true;

	// 若为已发表，比较开发完成日期与首次发表日期
	if(document.all("publishStatus")[0].checked) //已发表
	{		
		if(document.all("appearDate").value != "")
		{
			var appd = StringToDate(document.all("appearDate").value);
			var cmpd = StringToDate(document.all("completeDate").value);
			if(appd.getTime()-cmpd.getTime() < 0)
			{
				showErrorMsg(document.all("appearDate"), "首次发表日期应大于等于开发完成日期！");
				flag = false;
			}
		}
	}
	
	//判断首次发表日期是否大于目前系统时间
	  if(document.all("appearDate").value!=""){
	      var app = StringToDate(document.all("appearDate").value);
	      var now=new Date();
	      if(now.getTime()-app.getTime() < 0){
	        showErrorMsg(document.all("appearDate"), "首次发表日期应小于等于当前日期！");
				flag = false;
	      }
	  }
	  
	  //判断开发完成日期是否大于目前系统时间
	  if(document.all("completeDate").value!=""){
	      var com = StringToDate(document.all("completeDate").value);
	      var now=new Date();
	      if(now.getTime()-com.getTime() < 0){
	        showErrorMsg(document.all("completeDate"), "开发完成日期应小于等于当前日期！");
				flag = false;
	      }
	  }
	// 权利取得方式
	if(getCheckedValue("rightObtainMode") == "2") //继受取得权利
	{
		//软件是否已登记
		if(document.all("isSoftReg").checked)
		{
			//regNumber
			if(isEmptyOrNull('regNumber'))
			{	
				showErrorMsg(document.all("regNumber"), "原登记号不能为空！");
				flag = false;
			}
		}
		
		// 原登记是否做过变更或补充
		if(document.all("isSoftChanged").checked)
		{
			//changeNumber
			if(isEmptyOrNull('changeNumber'))
			{	
				showErrorMsg(document.all("changeNumber"), "变更或补充证明书编号不能为空！");
				flag = false;
			}
		}
	} 

	//权利范围
	if(getCheckedValue("rightScope") == "2") // 选中部分权利
	{
		if(!isRadioChecked('rightScope_'))
		{
			showErrorMsg(document.all("showrstip"), "&nbsp;&nbsp;&nbsp;请选择权利范围！");
			flag = false;
		}	
	}
	//软件名称和软件简称是否相同
	var softFullName = document.getElementById("softFullNameid").value;                 
	var softForShort = document.getElementById("softForShortid").value;
	if(softFullName!=null&&softForShort!=null){
		if(softFullName.trim() == softForShort.trim()){
			showErrorMsg(document.all("showissame"), "&nbsp;&nbsp;软件全称和简称不可以相同！");
				flag = false;
		}
	}
	
	//软件鉴别材料
	var type = getCheckedValue('difmatReferMode');
	if(type == "1") // 一般交存
	{
		if(getCheckedValue("isMutilDoc") == "mutilDoc")
		{
			if(!isNumber(getVal('mutilDocType')))
			{
				showErrorMsg(document.all("mutilDocType"), "一般交存页数应为大于0的整数！");
				flag = false;
			}
		}
	}
	else if(type == "2")  // 例外交存
	{
		var expType = getCheckedValue('difmatReferModeExcep');
		if(expType == 'exp1')
		{
			if(getVal('difmatReferPages')=="")
			{
				showErrorMsg(document.all("difmatReferPages"), "请填写例外交存页数！");
				flag = false;
			}
		}
	}
	
	return flag;
}

function lastLogic()
{
	getDevelopCircsExplainValue();
	//判断版本号，若为小写v开头，则将小写v改为大写V
	var edition = document.all('editionNumber').value;
	edition = edition.replace("v","V"); 
	document.all('editionNumber').value = edition;
}


function goBack()
{
	self.close();
	opener.focus();
}

// 判断“是否修改、翻译或合成别人软件，且需要原权利人授权的”
function getDevelopCircsExplainValue()
{
	if(document.getElementById("developCircsExplain").checked)
	{
		document.getElementById("developCircsExplainid").value = 1;
	}
	else
	{
		document.getElementById("developCircsExplainid").value = 0;
	}
}


function clearArrayListChoice(obj)
{
	var obj = document.all(obj);
	for(var i=0; i<obj.length; i++)
	{
		if(obj[i].checked)
		{
			obj[i].checked=false;
		}
	}
}

// 清除例外交存的选择,及例外交存页数
function clearExpModeItem()
{
	clearArrayListChoice('difmatReferModeExcep');
	document.all("difmatReferPages").value=0;
}

// 清除一般交存的选择,及交存种类
function clearCommonModeItem()
{
	clearArrayListChoice('isMutilDoc');
	document.all("mutilDocType").value=0;
}

function clearKeepModeItem()
{
	// 清除封存的选择，及封存页数
	clearArrayListChoice('difmatKeepMode');
	document.all("codePages").value=0;
	document.all("cdPages").value=0;
}
function setChecked(obj)
{
	var _obj = document.all(obj);
	_obj[0].checked = true;
}

function changeIdentifyState()
{
	var type = getCheckedValue('difmatReferMode');
	if(type == '1')
	{
		// 若为一般交存方式，清除例外交存的子选项
		clearExpModeItem();
		// 选中一般交存子方式的第一个选项
		setChecked("isMutilDoc");
		setCheckBoxState('difmatReferModeExcep',true);
		document.all('difmatReferPages').disabled=true;
		setCheckBoxState('isMutilDoc',false);
		document.all('mutilDocType').disabled=false;
		
	}
	else if(type =='2')
	{
		clearCommonModeItem();
		//选中例外交存子方式的第一个选项
		setChecked("difmatReferModeExcep");
		setCheckBoxState('isMutilDoc',true);
		document.all('mutilDocType').disabled=true;
		setCheckBoxState('difmatReferModeExcep',false);
		document.all('difmatReferPages').disabled=false;
	}
}

function setDefaultCheck(obj,str)
{	
	//debugger;
	if(str=='m') // 权利取得方式
	{
		if(obj.value=='2' && obj.checked) //继受取得权利
		{
			setChecked('inheritanceMode');
			setCheckBoxState('inheritanceMode',false);
			document.all('isSoftReg').disabled=false;
			document.all('isSoftChanged').disabled=false;
			document.all('regNumber').disabled=false;
			document.all('changeNumber').disabled=false;
		}
		else if(obj.value=='1' && obj.checked)
		{	
			clearArrayListChoice('inheritanceMode');
			document.all("isSoftReg").checked=false;
			setChecked("difmatReferMode");
	 		setDisabledValue("difmatReferMode");
	 		changeIdentifyState();
	 		
			
			document.all("isSoftChanged").checked="";
			document.all("regNumber").value="";
			document.all("changeNumber").value="";
			setCheckBoxState('inheritanceMode',true);
			document.all('isSoftReg').disabled=true;
			document.all('isSoftChanged').disabled=true;
			document.all('regNumber').disabled=true;
			document.all('changeNumber').disabled=true;
		}
	}	
}

function ComposerBean(){
	// 用户名
	this.name = "${sessionScope.CCCS_NAME}";
	// 类别-用户类型
	this.peopleType = "1";
	// 证件类型
	this.idTypes = "1";
	// 证件号码
	this.idNumber = "";
	// 国家
	this.country = "中国";
	// 省份
	this.province = "北京";
	// 城市
	this.city = "";
	// 园区
	this.garden = " ";
}

function windowOpen_SoftNumber(){
/* 	 window.open("/SoftClassNumber.html","",
			 "dialogWidth:760px;dialogHeight:1150px;resizable:no;scrollbars:yes;status:yes;"); */
	 window.open ('/SoftClassNumber.html','请选择软件分类号','height=1200,width=800,top=20,left=70,toolbar=no,menubar=no,scrollbars=yes,resizable=no,status=no')
}

function showOrHideDevelopCircs(obj,str)
{
	if(str == "s")
	{
		if(obj.value == "2" )
		{
			document.all("xgxx").style.display = "block";
			document.all("smxx").style.display = "block";
			$("#origRegisterNumberid").val("");
			if(document.all("origSoftRegCircs").checked)
			{
				document.all("ydjxx").style.display = "block";
			}
			else
			{
				$("#origRegisterNumberid").val("");
				document.all("ydjxx").style.display = "none";
			}
		}
		else
		{
			document.all('developCircsExplain').checked=false;
			document.all('origSoftRegCircs').checked=false;
			$("#origRegisterNumberid").val("");
			$("#origSoftModifyDescriptionid").val("");
			document.all("xgxx").style.display = "none";
			document.all("ydjxx").style.display = "none";
			document.all("smxx").style.display = "none";
		}
	}

	if(str == "m")
	{
		if(obj.checked == true)
		{
			document.all("ydjxx").style.display = "block";
		}
		else
		{
			$("#origRegisterNumberid").val("");
			document.all("ydjxx").style.display = "none";
		}
		
	}	
}

	function clearCheckBoxChoice(obj)
	{
		var obj = document.all(obj);
		for(var i=0; i<obj.length; i++)
		{
			obj[i].checked=false;
			obj[i].disabled=true;
		}
	}
	
	function setDisabledValue(obj,flag){
		var obj = document.all(obj);
		for(var i=0; i<obj.length; i++)
		{
			obj[i].disabled=false;
		}
	}
	
	 function isCheck(obj){
	 	if(obj.checked){//软件著作权是属于继受取得的，且申请软件已做过软件著作权登记
	 		clearCheckBoxChoice("difmatReferMode");
	 		clearCheckBoxChoice("isMutilDoc");
	 		document.all("mutilDocType").disabled=true;
	 		document.all("mutilDocType").value=0;
	 		document.all("difmatReferPages").disabled=true;
	 		document.all("difmatReferPages").value="";
			
	 	}else{
	 		setChecked("difmatReferMode");
	 		setDisabledValue("difmatReferMode");
	 		changeIdentifyState();
	 	}
	 }
</SCRIPT>
</html>   