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
<STYLE>
BODY {
	TEXT-ALIGN: center; MARGIN: 0px
}
#SoftRegSLZYD {
	TEXT-ALIGN: center; PADDING-BOTTOM: 0px; LINE-HEIGHT: 22px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-SIZE: 13px; PADDING-TOP: 0px
}
#SoftRegSLZYD TABLE {
	BORDER-COLLAPSE: collapse
}
#SoftRegSLZYD .contentbg {
	BACKGROUND-COLOR: #e3f4ff
}
#SoftRegSLZYD .resultbg {
	BACKGROUND-COLOR: #f2faff
}
#SoftRegSLZYD TD {
	BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; PADDING-BOTTOM: 2px; LINE-HEIGHT: 18px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; HEIGHT: 30px; FONT-SIZE: 13px; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid; PADDING-TOP: 2px
}
#SoftRegSLZYD .titleLable {
	TEXT-ALIGN: center; BACKGROUND-COLOR: #bfdeff
}
#SoftRegSLZYD .noRightBord {
	BORDER-RIGHT: 0px
}
#SoftRegSLZYD .small_title {
	BACKGROUND-COLOR: #cccccc; FONT-WEIGHT: bold
}
.right_result {
	COLOR: #339900; FONT-WEIGHT: bold
}
.error_result {
	COLOR: #ff0000; FONT-WEIGHT: bold
}
#bustableitemdivid TABLE {
	BACKGROUND-COLOR: #ffffcc; BORDER-COLLAPSE: collapse
}
#bustableitemdivid TD {
	BORDER-BOTTOM: #555555 1px solid; TEXT-ALIGN: left; BORDER-LEFT: #555555 1px solid; PADDING-BOTTOM: 3px; LINE-HEIGHT: 22px; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; HEIGHT: 22px; FONT-SIZE: 13px; VERTICAL-ALIGN: middle; BORDER-TOP: #555555 1px solid; BORDER-RIGHT: #555555 1px solid; PADDING-TOP: 3px
}
.input_class {
	WIDTH: 85%
}
</STYLE>
<LINK rel=stylesheet type=text/css href="css/table.css">
<LINK rel=stylesheet type=text/css href="css/form/formStyle2.css">
<script language="JavaScript" src="js/jquery-1.4.2.min.js"></script>
<SCRIPT language=JavaScript src="js/form2/formcheck2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/createPeoples2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/showtips2.js"></SCRIPT>
<script language="JavaScript" src="js/pgCalPicker.js"></script>
<SCRIPT language=javascript>
	function lastLogic()
	{
		var regionScope_=document.getElementById("regionScope2_").value;
		if(regionScope_!=null&&regionScope_!=undefined&&regionScope_!=""&&regionScope_!="undefined"){
		  document.getElementById("regionScope1_").value=regionScope_;
		} 
	}

	// 特殊校验
	function afterValid()
	{
		var str1;
		var str2;
		if(document.all("contractType")[0].checked == true)
		{
			str1="validStartDate1";
			// 向隐藏域设置值
		} 
		else
		{
			str1="validStartDate2";
			str2="validEndDate2";
			// 向隐藏域设置值
		}	
		
		var flag = true;				
	//许可权利开始日期要早于结束时间
		if(!isEmptyOrNull(str1) && !isEmptyOrNull(str2))
		{
			var startd = StringToDate(document.all(str1).value);
			var endd = StringToDate(document.all(str2).value);
			if(startd.getTime()-endd.getTime() >= 0)
			{
				showErrorMsg(document.all(str2), "截至日期要大于起始日期！");
				flag=false;
			}
		}	
		return flag;
	}
	
	

	function showContractType()
	{
		if(document.all("contractType")[0].checked == true)
		{
			document.all("contract1").style.display="block";
			document.all("contract2").style.display="none";
			document.getElementById("personData1Info").style.display="block";
			document.getElementById("regionScope2_").value="";
		} 
		else
		{
			document.all("contract1").style.display="none";
			document.all("contract2").style.display="block";
			document.getElementById("personData1Info").style.display="none";
			document.getElementById("regionScope1_").value="";
		}	
	}
	

	function getRightTypeValue()
	{
		var str1;
		if(document.all("contractType")[0].checked == true)
		{
			str1="rightType1";
		} 
		else
		{
			str1="rightType2";
		}
	}

    function isQita(regionScope){
      var regionScope1=document.getElementById(regionScope).value;
      if(regionScope1.indexOf("其他")>-1){
        document.getElementById(regionScope+"_Info").style.display="block";
      }else{
        document.getElementById(regionScope+"_Info").style.display="none";
      }
    }
</SCRIPT>
</HEAD>
<BODY><!-- 申请人选项div -->
<DIV id=mytips></DIV>
<DIV 
style="BORDER-BOTTOM: #333333 1px solid; POSITION: absolute; TEXT-ALIGN: left; BORDER-LEFT: #333333 1px solid; PADDING-BOTTOM: 3px; LINE-HEIGHT: 15px; BACKGROUND-COLOR: #ffff99; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; DISPLAY: none; HEIGHT: 30px; FONT-SIZE: 13px; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid; PADDING-TOP: 3px; TOP: 0px; LEFT: 0px" 
id=_sqr_div onmouseover="this.style.display='block';" 
onmouseout="this.style.display='none';"></DIV>
<DIV 
style="TEXT-ALIGN: center; PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; WIDTH: 900px; PADDING-RIGHT: 0px; PADDING-TOP: 10px">
<FORM action="" method="post" name="generalForm" id="generalFormId">
<TABLE style="BORDER-COLLAPSE: collapse" border=0 cellSpacing=0 
borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" align=center><B>计算机软件著作权转让或专有许可合同登记申请表</B> 
      &nbsp;&nbsp; <IMG id=myhelp 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() 
      src="images/icon_alert.gif" width=18 
      tips="本表适用于软件著作权转让合同和专有许可合同当事人申请合同登记时填写使用，并且只适用《著作权转让或专有许可合同登记》，办理著作权转让登记，不要填写此登记，请填R11（即著作权登记申请表）表格。"></TD></TR></TBODY></TABLE>
<DIV style="MARGIN-TOP: 10px" id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>涉及软件概况</TD></TR>
  <TR>
    <TD class=contentbg width=100>软件全称</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" id=softFullName 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=softFullName size=50 
      tips="填写合同涉及的软件名称，若软件已经登记的，软件名称、简称、版本号应当与该软件著作权登记证书中记载的事项一致。" length="200" 
      errmsg="软件全称不能为空!" valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>软件简称</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=softForShort size=50 tips="请填写合同涉及的软件简称。" 
      length="100"></TD></TR>
  <TR>
    <TD class=contentbg>版本号</TD>
    <TD class=contentbg><INPUT id=edition 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=edition tips="请填写合同涉及软件的版本号。" length="40" 
      errmsg="版本号不能为空!" valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>软件著作权登记号</TD>
    <TD class=contentbg><INPUT id=origRegNumber 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=origRegNumber tips="" length="40" 
      errmsg="软件著作权登记号不能为空!" valid="no"> </TD></TR>
  <TR>
    <TD class=contentbg>原变更/补充登记证明编号</TD>
    <TD class=contentbg><INPUT id=originalChangeNumber 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=originalChangeNumber tips="" length="40"> 
    </TD></TR>
  <TR>
    <TD class=contentbg>合同类型</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=showContractType() name=contractType 
      value="转让合同" CHECKED type=radio tips="">转让合同 <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=showContractType() name=contractType 
      value="专有许可合同" type=radio tips="">专有许可合同 </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">转让（许可）方信息</DIV>
      <DIV style="FLOAT: right"><!-- <input type="button" onClick="setComposerValue();" value="我是转让/许可方" /> --><INPUT style="WIDTH: 120px" onclick="addRow('personData')" name=button value=增加转让/许可方 type=button> 
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
          width=130>姓名或名称</TD>
          <TD><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 300px; HEIGHT: 20px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=1 name=name1 tips="法人或其他组织填写名称；个人填写姓名；" length="100" errmsg="姓名或名称不能为空！" valid="required"></TEXTAREA> 
          </TD>
          <TD style="WIDTH: 40px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name=country1> <OPTION selected 
              value=中国>中国</OPTION> <OPTION value=智利>智利</OPTION> <OPTION 
              value=直布罗陀>直布罗陀</OPTION> <OPTION value=乍得>乍得</OPTION> <OPTION 
              value=赞比亚>赞比亚</OPTION> <OPTION value=越南>越南</OPTION> <OPTION 
              value=约旦>约旦</OPTION> <OPTION value=英属印度洋区>英属印度洋区</OPTION> <OPTION 
              value=英属维尔京群岛>英属维尔京群岛</OPTION> <OPTION value=英国>英国</OPTION> 
              <OPTION value=印度尼西亚>印度尼西亚</OPTION> <OPTION value=印度>印度</OPTION> 
              <OPTION value=意大利>意大利</OPTION> <OPTION value=以色列>以色列</OPTION> 
              <OPTION value=伊朗>伊朗</OPTION> <OPTION value=伊拉克>伊拉克</OPTION> 
              <OPTION value=也门>也门</OPTION> <OPTION value=亚美尼亚>亚美尼亚</OPTION> 
              <OPTION value=牙买加>牙买加</OPTION> <OPTION value=叙利亚>叙利亚</OPTION> 
              <OPTION value=匈牙利>匈牙利</OPTION> <OPTION value=新西兰>新西兰</OPTION> 
              <OPTION value=新喀里多尼亚>新喀里多尼亚</OPTION> <OPTION 
              value=新加坡>新加坡</OPTION> <OPTION value=小奥特兰群岛>小奥特兰群岛</OPTION> 
              <OPTION value=象牙海岸>象牙海岸</OPTION> <OPTION value=希腊>希腊</OPTION> 
              <OPTION value=西班牙>西班牙</OPTION> <OPTION 
              value=乌兹别克斯坦>乌兹别克斯坦</OPTION> <OPTION value=乌拉圭>乌拉圭</OPTION> 
              <OPTION value=乌克兰>乌克兰</OPTION> <OPTION value=乌干达>乌干达</OPTION> 
              <OPTION value=文莱达鲁萨兰>文莱达鲁萨兰</OPTION> <OPTION 
              value=委内瑞拉>委内瑞拉</OPTION> <OPTION value=危地马拉>危地马拉</OPTION> <OPTION 
              value=瓦努阿图>瓦努阿图</OPTION> <OPTION value=瓦利斯/富图纳岛>瓦利斯/富图纳岛</OPTION> 
              <OPTION value=托客劳群岛>托客劳群岛</OPTION> <OPTION 
              value=土库曼斯坦>土库曼斯坦</OPTION> <OPTION value=土耳其>土耳其</OPTION> <OPTION 
              value=图瓦卢>图瓦卢</OPTION> <OPTION value=突尼斯>突尼斯</OPTION> <OPTION 
              value=统一>统一</OPTION> <OPTION value=特立尼达/多巴哥>特立尼达/多巴哥</OPTION> 
              <OPTION value=特克斯/凯科斯岛>特克斯/凯科斯岛</OPTION> <OPTION 
              value=汤加>汤加</OPTION> <OPTION value=坦桑尼亚>坦桑尼亚</OPTION> <OPTION 
              value=泰国>泰国</OPTION> <OPTION value=塔吉克斯坦>塔吉克斯坦</OPTION> <OPTION 
              value=索马里>索马里</OPTION> <OPTION value=所罗门群岛>所罗门群岛</OPTION> <OPTION 
              value=苏里南>苏里南</OPTION> <OPTION value=苏丹>苏丹</OPTION> <OPTION 
              value=斯洛文尼亚>斯洛文尼亚</OPTION> <OPTION value=斯洛伐克>斯洛伐克</OPTION> 
              <OPTION value=斯里兰卡>斯里兰卡</OPTION> <OPTION value=圣文森特>圣文森特</OPTION> 
              <OPTION value=圣马力诺>圣马力诺</OPTION> <OPTION value=圣路西亚>圣路西亚</OPTION> 
              <OPTION value=圣基茨和那维斯>圣基茨和那维斯</OPTION> <OPTION 
              value=圣赫勒拿岛>圣赫勒拿岛</OPTION> <OPTION 
              value=圣多马/普林西比>圣多马/普林西比</OPTION> <OPTION value=圣诞岛>圣诞岛</OPTION> 
              <OPTION value=沙特阿拉伯>沙特阿拉伯</OPTION> <OPTION 
              value=塞舌尔群岛>塞舌尔群岛</OPTION> <OPTION value=塞浦路斯>塞浦路斯</OPTION> 
              <OPTION value=塞内加尔>塞内加尔</OPTION> <OPTION value=塞拉利昂>塞拉利昂</OPTION> 
              <OPTION value=塞尔维亚及门的>塞尔维亚及门的</OPTION> <OPTION 
              value=塞尔维亚/Monten>塞尔维亚/Monten</OPTION> <OPTION 
              value="萨摩亚, 美国">萨摩亚, 美国</OPTION> <OPTION value=萨摩亚>萨摩亚</OPTION> 
              <OPTION value=萨尔瓦多>萨尔瓦多</OPTION> <OPTION 
              value=撒哈拉西部>撒哈拉西部</OPTION> <OPTION value=瑞士>瑞士</OPTION> <OPTION 
              value=瑞典>瑞典</OPTION> <OPTION value=日本>日本</OPTION> <OPTION 
              value=乔治亚>乔治亚</OPTION> <OPTION value=葡萄牙>葡萄牙</OPTION> <OPTION 
              value=皮特肯岛>皮特肯岛</OPTION> <OPTION value=帕劳>帕劳</OPTION> <OPTION 
              value=诺福克岛>诺福克岛</OPTION> <OPTION value=挪威>挪威</OPTION> <OPTION 
              value=纽埃群岛>纽埃群岛</OPTION> <OPTION value=尼日利亚>尼日利亚</OPTION> <OPTION 
              value=尼日尔>尼日尔</OPTION> <OPTION value=尼加拉瓜>尼加拉瓜</OPTION> <OPTION 
              value=尼泊尔>尼泊尔</OPTION> <OPTION value=瑙鲁>瑙鲁</OPTION> <OPTION 
              value=南三维治岛>南三维治岛</OPTION> <OPTION value=南极洲>南极洲</OPTION> <OPTION 
              value=南非>南非</OPTION> <OPTION value=纳米比亚>纳米比亚</OPTION> <OPTION 
              value=墨西哥>墨西哥</OPTION> <OPTION value=莫桑比克>莫桑比克</OPTION> <OPTION 
              value=摩纳哥>摩纳哥</OPTION> <OPTION value=摩洛哥>摩洛哥</OPTION> <OPTION 
              value=摩尔多瓦>摩尔多瓦</OPTION> <OPTION value=缅甸>缅甸</OPTION> <OPTION 
              value=秘鲁>秘鲁</OPTION> <OPTION value=密克罗尼西亚>密克罗尼西亚</OPTION> <OPTION 
              value=孟加拉国>孟加拉国</OPTION> <OPTION value=蒙塞拉特岛>蒙塞拉特岛</OPTION> 
              <OPTION value=蒙古>蒙古</OPTION> <OPTION 
              value=美属维尔京群岛>美属维尔京群岛</OPTION> <OPTION value=美国>美国</OPTION> 
              <OPTION value=毛里塔尼亚>毛里塔尼亚</OPTION> <OPTION 
              value=毛里求斯>毛里求斯</OPTION> <OPTION value=马约特岛>马约特岛</OPTION> <OPTION 
              value=马提尼克>马提尼克</OPTION> <OPTION value=马绍尔群岛>马绍尔群岛</OPTION> 
              <OPTION value=马其顿>马其顿</OPTION> <OPTION value=马里>马里</OPTION> 
              <OPTION value=马来西亚>马来西亚</OPTION> <OPTION value=马拉维>马拉维</OPTION> 
              <OPTION value=马耳他>马耳他</OPTION> <OPTION value=马尔代夫>马尔代夫</OPTION> 
              <OPTION value=马达加斯加>马达加斯加</OPTION> <OPTION 
              value=罗马尼亚>罗马尼亚</OPTION> <OPTION value=卢旺达>卢旺达</OPTION> <OPTION 
              value=卢森堡>卢森堡</OPTION> <OPTION value=列支敦士登>列支敦士登</OPTION> <OPTION 
              value=立陶宛>立陶宛</OPTION> <OPTION value=利比亚>利比亚</OPTION> <OPTION 
              value=利比里亚>利比里亚</OPTION> <OPTION value=黎巴嫩>黎巴嫩</OPTION> <OPTION 
              value=老挝>老挝</OPTION> <OPTION value=莱索托>莱索托</OPTION> <OPTION 
              value=拉脱维亚>拉脱维亚</OPTION> <OPTION value=库科纳群岛>库科纳群岛</OPTION> 
              <OPTION value=肯尼亚>肯尼亚</OPTION> <OPTION value=克罗地亚>克罗地亚</OPTION> 
              <OPTION value=科威特>科威特</OPTION> <OPTION value=科摩罗群岛>科摩罗群岛</OPTION> 
              <OPTION value=科克群岛>科克群岛</OPTION> <OPTION value=开曼群岛>开曼群岛</OPTION> 
              <OPTION value=卡塔尔>卡塔尔</OPTION> <OPTION value=喀麦隆>喀麦隆</OPTION> 
              <OPTION value=津巴布韦>津巴布韦</OPTION> <OPTION 
              value=捷克共和国>捷克共和国</OPTION> <OPTION value=柬埔寨>柬埔寨</OPTION> <OPTION 
              value=加蓬>加蓬</OPTION> <OPTION value=加纳>加纳</OPTION> <OPTION 
              value=加拿大>加拿大</OPTION> <OPTION value=几内亚比绍>几内亚比绍</OPTION> <OPTION 
              value=几内亚>几内亚</OPTION> <OPTION value=吉尔吉斯斯坦>吉尔吉斯斯坦</OPTION> 
              <OPTION value=吉布提>吉布提</OPTION> <OPTION value=基里巴斯>基里巴斯</OPTION> 
              <OPTION value=洪都拉斯>洪都拉斯</OPTION> <OPTION 
              value=荷属安的列斯岛>荷属安的列斯岛</OPTION> <OPTION 
              value=荷德/马克多纳岛>荷德/马克多纳岛</OPTION> <OPTION value="荷 兰">荷 兰</OPTION> 
              <OPTION value=韩国>韩国</OPTION> <OPTION value=海地>海地</OPTION> <OPTION 
              value=哈萨克斯坦>哈萨克斯坦</OPTION> <OPTION value=圭亚那>圭亚那</OPTION> <OPTION 
              value=关岛>关岛</OPTION> <OPTION value=瓜达洛普>瓜达洛普</OPTION> <OPTION 
              value=古巴>古巴</OPTION> <OPTION value=格陵兰岛>格陵兰岛</OPTION> <OPTION 
              value=格林纳达>格林纳达</OPTION> <OPTION value=哥斯答黎加>哥斯答黎加</OPTION> 
              <OPTION value=哥伦比亚>哥伦比亚</OPTION> <OPTION 
              value=刚果民主共和国>刚果民主共和国</OPTION> <OPTION value=刚果>刚果</OPTION> 
              <OPTION value=冈比亚>冈比亚</OPTION> <OPTION value=福克兰群岛>福克兰群岛</OPTION> 
              <OPTION value=佛得角群岛>佛得角群岛</OPTION> <OPTION value=芬兰>芬兰</OPTION> 
              <OPTION value=斐济>斐济</OPTION> <OPTION value=菲律宾>菲律宾</OPTION> 
              <OPTION value=梵蒂冈城>梵蒂冈城</OPTION> <OPTION 
              value=法属圣特里特>法属圣特里特</OPTION> <OPTION value=法属圭亚那>法属圭亚那</OPTION> 
              <OPTION value=法属波利尼西亚>法属波利尼西亚</OPTION> <OPTION 
              value=法罗群岛>法罗群岛</OPTION> <OPTION value=法国>法国</OPTION> <OPTION 
              value=厄瓜多尔>厄瓜多尔</OPTION> <OPTION value=俄罗斯联邦>俄罗斯联邦</OPTION> 
              <OPTION value=多米尼加共和国>多米尼加共和国</OPTION> <OPTION 
              value=多米尼加>多米尼加</OPTION> <OPTION value=多哥>多哥</OPTION> <OPTION 
              value=东帝汶岛>东帝汶岛</OPTION> <OPTION value=德国>德国</OPTION> <OPTION 
              value=丹麦>丹麦</OPTION> <OPTION value=赤道几内亚>赤道几内亚</OPTION> <OPTION 
              value=布维群岛>布维群岛</OPTION> <OPTION value=布隆迪>布隆迪</OPTION> <OPTION 
              value=布基纳法索>布基纳法索</OPTION> <OPTION value=不丹>不丹</OPTION> <OPTION 
              value=伯利兹>伯利兹</OPTION> <OPTION value=博茨瓦纳>博茨瓦纳</OPTION> <OPTION 
              value=玻利维亚>玻利维亚</OPTION> <OPTION value=波兰>波兰</OPTION> <OPTION 
              value=波黑>波黑</OPTION> <OPTION value=波多黎哥>波多黎哥</OPTION> <OPTION 
              value=冰岛>冰岛</OPTION> <OPTION value=比利时>比利时</OPTION> <OPTION 
              value=贝宁>贝宁</OPTION> <OPTION value=北马里亚纳>北马里亚纳</OPTION> <OPTION 
              value=北朝鲜>北朝鲜</OPTION> <OPTION value=保加利亚>保加利亚</OPTION> <OPTION 
              value=百慕大群岛>百慕大群岛</OPTION> <OPTION value=白俄罗斯>白俄罗斯</OPTION> 
              <OPTION value=巴西>巴西</OPTION> <OPTION value=巴拿马>巴拿马</OPTION> 
              <OPTION value=巴林>巴林</OPTION> <OPTION value=巴拉圭>巴拉圭</OPTION> 
              <OPTION value=巴基斯坦>巴基斯坦</OPTION> <OPTION 
              value=巴哈马(群岛)>巴哈马(群岛)</OPTION> <OPTION 
              value=巴布亚新几内亚>巴布亚新几内亚</OPTION> <OPTION value=巴巴多斯>巴巴多斯</OPTION> 
              <OPTION value=奥地利>奥地利</OPTION> <OPTION value=澳大利亚>澳大利亚</OPTION> 
              <OPTION value=安提瓜和巴布达>安提瓜和巴布达</OPTION> <OPTION 
              value=安圭拉岛>安圭拉岛</OPTION> <OPTION value=安哥拉>安哥拉</OPTION> <OPTION 
              value=安道尔>安道尔</OPTION> <OPTION value=爱沙尼亚>爱沙尼亚</OPTION> <OPTION 
              value=爱尔兰>爱尔兰</OPTION> <OPTION value=埃塞俄比亚>埃塞俄比亚</OPTION> <OPTION 
              value=埃立特里亚>埃立特里亚</OPTION> <OPTION value=埃及>埃及</OPTION> <OPTION 
              value=阿塞拜疆>阿塞拜疆</OPTION> <OPTION value=阿曼>阿曼</OPTION> <OPTION 
              value=阿鲁巴>阿鲁巴</OPTION> <OPTION value=阿联酋>阿联酋</OPTION> <OPTION 
              value=阿根廷>阿根廷</OPTION> <OPTION value=阿富汗>阿富汗</OPTION> <OPTION 
              value=阿尔及利亚>阿尔及利亚</OPTION> <OPTION value=阿尔巴尼亚>阿尔巴尼亚</OPTION> 
              <OPTION value=SZ>斯威士兰</OPTION> <OPTION 
              value=St.Pier,Miquel.>St.Pier,Miquel.</OPTION> <OPTION 
              value=CAR>CAR</OPTION></SELECT> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          width=130>身份证明注册地</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><SELECT name=province1 inputsn="10"> 
              <OPTION value="">-请选择-</OPTION> <OPTION value=境外>境外</OPTION> 
              <OPTION selected value=北京>北京</OPTION> <OPTION value=上海>上海</OPTION> 
              <OPTION value=天津>天津</OPTION> <OPTION value=内蒙古>内蒙古</OPTION> 
              <OPTION value=山西>山西</OPTION> <OPTION value=河北>河北</OPTION> <OPTION 
              value=辽宁>辽宁</OPTION> <OPTION value=吉林>吉林</OPTION> <OPTION 
              value=黑龙江>黑龙江</OPTION> <OPTION value=江苏>江苏</OPTION> <OPTION 
              value=安徽>安徽</OPTION> <OPTION value=山东>山东</OPTION> <OPTION 
              value=浙江>浙江</OPTION> <OPTION value=江西>江西</OPTION> <OPTION 
              value=福建>福建</OPTION> <OPTION value=湖南>湖南</OPTION> <OPTION 
              value=湖北>湖北</OPTION> <OPTION value=河南>河南</OPTION> <OPTION 
              value=广东>广东</OPTION> <OPTION value=海南>海南</OPTION> <OPTION 
              value=广西>广西</OPTION> <OPTION value=贵州>贵州</OPTION> <OPTION 
              value=四川>四川</OPTION> <OPTION value=云南>云南</OPTION> <OPTION 
              value=陕西>陕西</OPTION> <OPTION value=甘肃>甘肃</OPTION> <OPTION 
              value=宁夏>宁夏</OPTION> <OPTION value=青海>青海</OPTION> <OPTION 
              value=新疆>新疆</OPTION> <OPTION value=西藏>西藏</OPTION> <OPTION 
              value=重庆>重庆</OPTION> <OPTION value=香港>香港</OPTION> <OPTION 
              value=澳门>澳门</OPTION> <OPTION value=台湾>台湾</OPTION></SELECT> <INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name=city1 maxLength=100 size=15 
            tips="法人和其他组织填写依法注册的省市；个人填写合法身份证明发放的省市。" length="50" 
            errmsg="市（区）不能为空！" valid="required"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button></DIV></TD></TR></TBODY></TABLE></DIV>
      <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=130>姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 300px; HEIGHT: 20px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=1 name=name1 tips="法人或其他组织填写名称；个人填写姓名；" length="100" errmsg="姓名或名称不能为空！" valid="required"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 40px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name=country1> <OPTION selected 
              value=中国>中国</OPTION> <OPTION value=智利>智利</OPTION> <OPTION 
              value=直布罗陀>直布罗陀</OPTION> <OPTION value=乍得>乍得</OPTION> <OPTION 
              value=赞比亚>赞比亚</OPTION> <OPTION value=越南>越南</OPTION> <OPTION 
              value=约旦>约旦</OPTION> <OPTION value=英属印度洋区>英属印度洋区</OPTION> <OPTION 
              value=英属维尔京群岛>英属维尔京群岛</OPTION> <OPTION value=英国>英国</OPTION> 
              <OPTION value=印度尼西亚>印度尼西亚</OPTION> <OPTION value=印度>印度</OPTION> 
              <OPTION value=意大利>意大利</OPTION> <OPTION value=以色列>以色列</OPTION> 
              <OPTION value=伊朗>伊朗</OPTION> <OPTION value=伊拉克>伊拉克</OPTION> 
              <OPTION value=也门>也门</OPTION> <OPTION value=亚美尼亚>亚美尼亚</OPTION> 
              <OPTION value=牙买加>牙买加</OPTION> <OPTION value=叙利亚>叙利亚</OPTION> 
              <OPTION value=匈牙利>匈牙利</OPTION> <OPTION value=新西兰>新西兰</OPTION> 
              <OPTION value=新喀里多尼亚>新喀里多尼亚</OPTION> <OPTION 
              value=新加坡>新加坡</OPTION> <OPTION value=小奥特兰群岛>小奥特兰群岛</OPTION> 
              <OPTION value=象牙海岸>象牙海岸</OPTION> <OPTION value=希腊>希腊</OPTION> 
              <OPTION value=西班牙>西班牙</OPTION> <OPTION 
              value=乌兹别克斯坦>乌兹别克斯坦</OPTION> <OPTION value=乌拉圭>乌拉圭</OPTION> 
              <OPTION value=乌克兰>乌克兰</OPTION> <OPTION value=乌干达>乌干达</OPTION> 
              <OPTION value=文莱达鲁萨兰>文莱达鲁萨兰</OPTION> <OPTION 
              value=委内瑞拉>委内瑞拉</OPTION> <OPTION value=危地马拉>危地马拉</OPTION> <OPTION 
              value=瓦努阿图>瓦努阿图</OPTION> <OPTION value=瓦利斯/富图纳岛>瓦利斯/富图纳岛</OPTION> 
              <OPTION value=托客劳群岛>托客劳群岛</OPTION> <OPTION 
              value=土库曼斯坦>土库曼斯坦</OPTION> <OPTION value=土耳其>土耳其</OPTION> <OPTION 
              value=图瓦卢>图瓦卢</OPTION> <OPTION value=突尼斯>突尼斯</OPTION> <OPTION 
              value=统一>统一</OPTION> <OPTION value=特立尼达/多巴哥>特立尼达/多巴哥</OPTION> 
              <OPTION value=特克斯/凯科斯岛>特克斯/凯科斯岛</OPTION> <OPTION 
              value=汤加>汤加</OPTION> <OPTION value=坦桑尼亚>坦桑尼亚</OPTION> <OPTION 
              value=泰国>泰国</OPTION> <OPTION value=塔吉克斯坦>塔吉克斯坦</OPTION> <OPTION 
              value=索马里>索马里</OPTION> <OPTION value=所罗门群岛>所罗门群岛</OPTION> <OPTION 
              value=苏里南>苏里南</OPTION> <OPTION value=苏丹>苏丹</OPTION> <OPTION 
              value=斯洛文尼亚>斯洛文尼亚</OPTION> <OPTION value=斯洛伐克>斯洛伐克</OPTION> 
              <OPTION value=斯里兰卡>斯里兰卡</OPTION> <OPTION value=圣文森特>圣文森特</OPTION> 
              <OPTION value=圣马力诺>圣马力诺</OPTION> <OPTION value=圣路西亚>圣路西亚</OPTION> 
              <OPTION value=圣基茨和那维斯>圣基茨和那维斯</OPTION> <OPTION 
              value=圣赫勒拿岛>圣赫勒拿岛</OPTION> <OPTION 
              value=圣多马/普林西比>圣多马/普林西比</OPTION> <OPTION value=圣诞岛>圣诞岛</OPTION> 
              <OPTION value=沙特阿拉伯>沙特阿拉伯</OPTION> <OPTION 
              value=塞舌尔群岛>塞舌尔群岛</OPTION> <OPTION value=塞浦路斯>塞浦路斯</OPTION> 
              <OPTION value=塞内加尔>塞内加尔</OPTION> <OPTION value=塞拉利昂>塞拉利昂</OPTION> 
              <OPTION value=塞尔维亚及门的>塞尔维亚及门的</OPTION> <OPTION 
              value=塞尔维亚/Monten>塞尔维亚/Monten</OPTION> <OPTION 
              value="萨摩亚, 美国">萨摩亚, 美国</OPTION> <OPTION value=萨摩亚>萨摩亚</OPTION> 
              <OPTION value=萨尔瓦多>萨尔瓦多</OPTION> <OPTION 
              value=撒哈拉西部>撒哈拉西部</OPTION> <OPTION value=瑞士>瑞士</OPTION> <OPTION 
              value=瑞典>瑞典</OPTION> <OPTION value=日本>日本</OPTION> <OPTION 
              value=乔治亚>乔治亚</OPTION> <OPTION value=葡萄牙>葡萄牙</OPTION> <OPTION 
              value=皮特肯岛>皮特肯岛</OPTION> <OPTION value=帕劳>帕劳</OPTION> <OPTION 
              value=诺福克岛>诺福克岛</OPTION> <OPTION value=挪威>挪威</OPTION> <OPTION 
              value=纽埃群岛>纽埃群岛</OPTION> <OPTION value=尼日利亚>尼日利亚</OPTION> <OPTION 
              value=尼日尔>尼日尔</OPTION> <OPTION value=尼加拉瓜>尼加拉瓜</OPTION> <OPTION 
              value=尼泊尔>尼泊尔</OPTION> <OPTION value=瑙鲁>瑙鲁</OPTION> <OPTION 
              value=南三维治岛>南三维治岛</OPTION> <OPTION value=南极洲>南极洲</OPTION> <OPTION 
              value=南非>南非</OPTION> <OPTION value=纳米比亚>纳米比亚</OPTION> <OPTION 
              value=墨西哥>墨西哥</OPTION> <OPTION value=莫桑比克>莫桑比克</OPTION> <OPTION 
              value=摩纳哥>摩纳哥</OPTION> <OPTION value=摩洛哥>摩洛哥</OPTION> <OPTION 
              value=摩尔多瓦>摩尔多瓦</OPTION> <OPTION value=缅甸>缅甸</OPTION> <OPTION 
              value=秘鲁>秘鲁</OPTION> <OPTION value=密克罗尼西亚>密克罗尼西亚</OPTION> <OPTION 
              value=孟加拉国>孟加拉国</OPTION> <OPTION value=蒙塞拉特岛>蒙塞拉特岛</OPTION> 
              <OPTION value=蒙古>蒙古</OPTION> <OPTION 
              value=美属维尔京群岛>美属维尔京群岛</OPTION> <OPTION value=美国>美国</OPTION> 
              <OPTION value=毛里塔尼亚>毛里塔尼亚</OPTION> <OPTION 
              value=毛里求斯>毛里求斯</OPTION> <OPTION value=马约特岛>马约特岛</OPTION> <OPTION 
              value=马提尼克>马提尼克</OPTION> <OPTION value=马绍尔群岛>马绍尔群岛</OPTION> 
              <OPTION value=马其顿>马其顿</OPTION> <OPTION value=马里>马里</OPTION> 
              <OPTION value=马来西亚>马来西亚</OPTION> <OPTION value=马拉维>马拉维</OPTION> 
              <OPTION value=马耳他>马耳他</OPTION> <OPTION value=马尔代夫>马尔代夫</OPTION> 
              <OPTION value=马达加斯加>马达加斯加</OPTION> <OPTION 
              value=罗马尼亚>罗马尼亚</OPTION> <OPTION value=卢旺达>卢旺达</OPTION> <OPTION 
              value=卢森堡>卢森堡</OPTION> <OPTION value=列支敦士登>列支敦士登</OPTION> <OPTION 
              value=立陶宛>立陶宛</OPTION> <OPTION value=利比亚>利比亚</OPTION> <OPTION 
              value=利比里亚>利比里亚</OPTION> <OPTION value=黎巴嫩>黎巴嫩</OPTION> <OPTION 
              value=老挝>老挝</OPTION> <OPTION value=莱索托>莱索托</OPTION> <OPTION 
              value=拉脱维亚>拉脱维亚</OPTION> <OPTION value=库科纳群岛>库科纳群岛</OPTION> 
              <OPTION value=肯尼亚>肯尼亚</OPTION> <OPTION value=克罗地亚>克罗地亚</OPTION> 
              <OPTION value=科威特>科威特</OPTION> <OPTION value=科摩罗群岛>科摩罗群岛</OPTION> 
              <OPTION value=科克群岛>科克群岛</OPTION> <OPTION value=开曼群岛>开曼群岛</OPTION> 
              <OPTION value=卡塔尔>卡塔尔</OPTION> <OPTION value=喀麦隆>喀麦隆</OPTION> 
              <OPTION value=津巴布韦>津巴布韦</OPTION> <OPTION 
              value=捷克共和国>捷克共和国</OPTION> <OPTION value=柬埔寨>柬埔寨</OPTION> <OPTION 
              value=加蓬>加蓬</OPTION> <OPTION value=加纳>加纳</OPTION> <OPTION 
              value=加拿大>加拿大</OPTION> <OPTION value=几内亚比绍>几内亚比绍</OPTION> <OPTION 
              value=几内亚>几内亚</OPTION> <OPTION value=吉尔吉斯斯坦>吉尔吉斯斯坦</OPTION> 
              <OPTION value=吉布提>吉布提</OPTION> <OPTION value=基里巴斯>基里巴斯</OPTION> 
              <OPTION value=洪都拉斯>洪都拉斯</OPTION> <OPTION 
              value=荷属安的列斯岛>荷属安的列斯岛</OPTION> <OPTION 
              value=荷德/马克多纳岛>荷德/马克多纳岛</OPTION> <OPTION value="荷 兰">荷 兰</OPTION> 
              <OPTION value=韩国>韩国</OPTION> <OPTION value=海地>海地</OPTION> <OPTION 
              value=哈萨克斯坦>哈萨克斯坦</OPTION> <OPTION value=圭亚那>圭亚那</OPTION> <OPTION 
              value=关岛>关岛</OPTION> <OPTION value=瓜达洛普>瓜达洛普</OPTION> <OPTION 
              value=古巴>古巴</OPTION> <OPTION value=格陵兰岛>格陵兰岛</OPTION> <OPTION 
              value=格林纳达>格林纳达</OPTION> <OPTION value=哥斯答黎加>哥斯答黎加</OPTION> 
              <OPTION value=哥伦比亚>哥伦比亚</OPTION> <OPTION 
              value=刚果民主共和国>刚果民主共和国</OPTION> <OPTION value=刚果>刚果</OPTION> 
              <OPTION value=冈比亚>冈比亚</OPTION> <OPTION value=福克兰群岛>福克兰群岛</OPTION> 
              <OPTION value=佛得角群岛>佛得角群岛</OPTION> <OPTION value=芬兰>芬兰</OPTION> 
              <OPTION value=斐济>斐济</OPTION> <OPTION value=菲律宾>菲律宾</OPTION> 
              <OPTION value=梵蒂冈城>梵蒂冈城</OPTION> <OPTION 
              value=法属圣特里特>法属圣特里特</OPTION> <OPTION value=法属圭亚那>法属圭亚那</OPTION> 
              <OPTION value=法属波利尼西亚>法属波利尼西亚</OPTION> <OPTION 
              value=法罗群岛>法罗群岛</OPTION> <OPTION value=法国>法国</OPTION> <OPTION 
              value=厄瓜多尔>厄瓜多尔</OPTION> <OPTION value=俄罗斯联邦>俄罗斯联邦</OPTION> 
              <OPTION value=多米尼加共和国>多米尼加共和国</OPTION> <OPTION 
              value=多米尼加>多米尼加</OPTION> <OPTION value=多哥>多哥</OPTION> <OPTION 
              value=东帝汶岛>东帝汶岛</OPTION> <OPTION value=德国>德国</OPTION> <OPTION 
              value=丹麦>丹麦</OPTION> <OPTION value=赤道几内亚>赤道几内亚</OPTION> <OPTION 
              value=布维群岛>布维群岛</OPTION> <OPTION value=布隆迪>布隆迪</OPTION> <OPTION 
              value=布基纳法索>布基纳法索</OPTION> <OPTION value=不丹>不丹</OPTION> <OPTION 
              value=伯利兹>伯利兹</OPTION> <OPTION value=博茨瓦纳>博茨瓦纳</OPTION> <OPTION 
              value=玻利维亚>玻利维亚</OPTION> <OPTION value=波兰>波兰</OPTION> <OPTION 
              value=波黑>波黑</OPTION> <OPTION value=波多黎哥>波多黎哥</OPTION> <OPTION 
              value=冰岛>冰岛</OPTION> <OPTION value=比利时>比利时</OPTION> <OPTION 
              value=贝宁>贝宁</OPTION> <OPTION value=北马里亚纳>北马里亚纳</OPTION> <OPTION 
              value=北朝鲜>北朝鲜</OPTION> <OPTION value=保加利亚>保加利亚</OPTION> <OPTION 
              value=百慕大群岛>百慕大群岛</OPTION> <OPTION value=白俄罗斯>白俄罗斯</OPTION> 
              <OPTION value=巴西>巴西</OPTION> <OPTION value=巴拿马>巴拿马</OPTION> 
              <OPTION value=巴林>巴林</OPTION> <OPTION value=巴拉圭>巴拉圭</OPTION> 
              <OPTION value=巴基斯坦>巴基斯坦</OPTION> <OPTION 
              value=巴哈马(群岛)>巴哈马(群岛)</OPTION> <OPTION 
              value=巴布亚新几内亚>巴布亚新几内亚</OPTION> <OPTION value=巴巴多斯>巴巴多斯</OPTION> 
              <OPTION value=奥地利>奥地利</OPTION> <OPTION value=澳大利亚>澳大利亚</OPTION> 
              <OPTION value=安提瓜和巴布达>安提瓜和巴布达</OPTION> <OPTION 
              value=安圭拉岛>安圭拉岛</OPTION> <OPTION value=安哥拉>安哥拉</OPTION> <OPTION 
              value=安道尔>安道尔</OPTION> <OPTION value=爱沙尼亚>爱沙尼亚</OPTION> <OPTION 
              value=爱尔兰>爱尔兰</OPTION> <OPTION value=埃塞俄比亚>埃塞俄比亚</OPTION> <OPTION 
              value=埃立特里亚>埃立特里亚</OPTION> <OPTION value=埃及>埃及</OPTION> <OPTION 
              value=阿塞拜疆>阿塞拜疆</OPTION> <OPTION value=阿曼>阿曼</OPTION> <OPTION 
              value=阿鲁巴>阿鲁巴</OPTION> <OPTION value=阿联酋>阿联酋</OPTION> <OPTION 
              value=阿根廷>阿根廷</OPTION> <OPTION value=阿富汗>阿富汗</OPTION> <OPTION 
              value=阿尔及利亚>阿尔及利亚</OPTION> <OPTION value=阿尔巴尼亚>阿尔巴尼亚</OPTION> 
              <OPTION value=SZ>斯威士兰</OPTION> <OPTION 
              value=St.Pier,Miquel.>St.Pier,Miquel.</OPTION> <OPTION 
              value=CAR>CAR</OPTION></SELECT> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          width=130>身份证明注册地</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><SELECT name=province1 inputsn="10"> <OPTION 
              value="">-请选择-</OPTION> <OPTION value=境外>境外</OPTION> <OPTION 
              selected value=北京>北京</OPTION> <OPTION value=上海>上海</OPTION> <OPTION 
              value=天津>天津</OPTION> <OPTION value=内蒙古>内蒙古</OPTION> <OPTION 
              value=山西>山西</OPTION> <OPTION value=河北>河北</OPTION> <OPTION 
              value=辽宁>辽宁</OPTION> <OPTION value=吉林>吉林</OPTION> <OPTION 
              value=黑龙江>黑龙江</OPTION> <OPTION value=江苏>江苏</OPTION> <OPTION 
              value=安徽>安徽</OPTION> <OPTION value=山东>山东</OPTION> <OPTION 
              value=浙江>浙江</OPTION> <OPTION value=江西>江西</OPTION> <OPTION 
              value=福建>福建</OPTION> <OPTION value=湖南>湖南</OPTION> <OPTION 
              value=湖北>湖北</OPTION> <OPTION value=河南>河南</OPTION> <OPTION 
              value=广东>广东</OPTION> <OPTION value=海南>海南</OPTION> <OPTION 
              value=广西>广西</OPTION> <OPTION value=贵州>贵州</OPTION> <OPTION 
              value=四川>四川</OPTION> <OPTION value=云南>云南</OPTION> <OPTION 
              value=陕西>陕西</OPTION> <OPTION value=甘肃>甘肃</OPTION> <OPTION 
              value=宁夏>宁夏</OPTION> <OPTION value=青海>青海</OPTION> <OPTION 
              value=新疆>新疆</OPTION> <OPTION value=西藏>西藏</OPTION> <OPTION 
              value=重庆>重庆</OPTION> <OPTION value=香港>香港</OPTION> <OPTION 
              value=澳门>澳门</OPTION> <OPTION value=台湾>台湾</OPTION></SELECT> <INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name=city1 maxLength=100 size=15 
            tips="法人和其他组织填写依法注册的省市；个人填写合法身份证明发放的省市。" length="50" 
            errmsg="市（区）不能为空！" valid="required"></TD></TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">受让（被许可）方信息</DIV>
      <DIV style="FLOAT: right" id=personData1Info>
      <!--  <input type="button" onClick="setComposerValue();" value="我是受让/被许可方" />-->
      <INPUT style="WIDTH: 120px" onclick="addRow('personData1')" name=button value=增加受让/被许可方 type=button> 
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
          width=130>姓名或名称</TD>
          <TD><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 300px; HEIGHT: 20px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=1 name=name2 tips="法人或其他组织填写名称；个人填写姓名；" length="100" errmsg="姓名或名称不能为空！" valid="required"></TEXTAREA> 
          </TD>
          <TD style="WIDTH: 40px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name=country2> <OPTION selected 
              value=中国>中国</OPTION> <OPTION value=智利>智利</OPTION> <OPTION 
              value=直布罗陀>直布罗陀</OPTION> <OPTION value=乍得>乍得</OPTION> <OPTION 
              value=赞比亚>赞比亚</OPTION> <OPTION value=越南>越南</OPTION> <OPTION 
              value=约旦>约旦</OPTION> <OPTION value=英属印度洋区>英属印度洋区</OPTION> <OPTION 
              value=英属维尔京群岛>英属维尔京群岛</OPTION> <OPTION value=英国>英国</OPTION> 
              <OPTION value=印度尼西亚>印度尼西亚</OPTION> <OPTION value=印度>印度</OPTION> 
              <OPTION value=意大利>意大利</OPTION> <OPTION value=以色列>以色列</OPTION> 
              <OPTION value=伊朗>伊朗</OPTION> <OPTION value=伊拉克>伊拉克</OPTION> 
              <OPTION value=也门>也门</OPTION> <OPTION value=亚美尼亚>亚美尼亚</OPTION> 
              <OPTION value=牙买加>牙买加</OPTION> <OPTION value=叙利亚>叙利亚</OPTION> 
              <OPTION value=匈牙利>匈牙利</OPTION> <OPTION value=新西兰>新西兰</OPTION> 
              <OPTION value=新喀里多尼亚>新喀里多尼亚</OPTION> <OPTION 
              value=新加坡>新加坡</OPTION> <OPTION value=小奥特兰群岛>小奥特兰群岛</OPTION> 
              <OPTION value=象牙海岸>象牙海岸</OPTION> <OPTION value=希腊>希腊</OPTION> 
              <OPTION value=西班牙>西班牙</OPTION> <OPTION 
              value=乌兹别克斯坦>乌兹别克斯坦</OPTION> <OPTION value=乌拉圭>乌拉圭</OPTION> 
              <OPTION value=乌克兰>乌克兰</OPTION> <OPTION value=乌干达>乌干达</OPTION> 
              <OPTION value=文莱达鲁萨兰>文莱达鲁萨兰</OPTION> <OPTION 
              value=委内瑞拉>委内瑞拉</OPTION> <OPTION value=危地马拉>危地马拉</OPTION> <OPTION 
              value=瓦努阿图>瓦努阿图</OPTION> <OPTION value=瓦利斯/富图纳岛>瓦利斯/富图纳岛</OPTION> 
              <OPTION value=托客劳群岛>托客劳群岛</OPTION> <OPTION 
              value=土库曼斯坦>土库曼斯坦</OPTION> <OPTION value=土耳其>土耳其</OPTION> <OPTION 
              value=图瓦卢>图瓦卢</OPTION> <OPTION value=突尼斯>突尼斯</OPTION> <OPTION 
              value=统一>统一</OPTION> <OPTION value=特立尼达/多巴哥>特立尼达/多巴哥</OPTION> 
              <OPTION value=特克斯/凯科斯岛>特克斯/凯科斯岛</OPTION> <OPTION 
              value=汤加>汤加</OPTION> <OPTION value=坦桑尼亚>坦桑尼亚</OPTION> <OPTION 
              value=泰国>泰国</OPTION> <OPTION value=塔吉克斯坦>塔吉克斯坦</OPTION> <OPTION 
              value=索马里>索马里</OPTION> <OPTION value=所罗门群岛>所罗门群岛</OPTION> <OPTION 
              value=苏里南>苏里南</OPTION> <OPTION value=苏丹>苏丹</OPTION> <OPTION 
              value=斯洛文尼亚>斯洛文尼亚</OPTION> <OPTION value=斯洛伐克>斯洛伐克</OPTION> 
              <OPTION value=斯里兰卡>斯里兰卡</OPTION> <OPTION value=圣文森特>圣文森特</OPTION> 
              <OPTION value=圣马力诺>圣马力诺</OPTION> <OPTION value=圣路西亚>圣路西亚</OPTION> 
              <OPTION value=圣基茨和那维斯>圣基茨和那维斯</OPTION> <OPTION 
              value=圣赫勒拿岛>圣赫勒拿岛</OPTION> <OPTION 
              value=圣多马/普林西比>圣多马/普林西比</OPTION> <OPTION value=圣诞岛>圣诞岛</OPTION> 
              <OPTION value=沙特阿拉伯>沙特阿拉伯</OPTION> <OPTION 
              value=塞舌尔群岛>塞舌尔群岛</OPTION> <OPTION value=塞浦路斯>塞浦路斯</OPTION> 
              <OPTION value=塞内加尔>塞内加尔</OPTION> <OPTION value=塞拉利昂>塞拉利昂</OPTION> 
              <OPTION value=塞尔维亚及门的>塞尔维亚及门的</OPTION> <OPTION 
              value=塞尔维亚/Monten>塞尔维亚/Monten</OPTION> <OPTION 
              value="萨摩亚, 美国">萨摩亚, 美国</OPTION> <OPTION value=萨摩亚>萨摩亚</OPTION> 
              <OPTION value=萨尔瓦多>萨尔瓦多</OPTION> <OPTION 
              value=撒哈拉西部>撒哈拉西部</OPTION> <OPTION value=瑞士>瑞士</OPTION> <OPTION 
              value=瑞典>瑞典</OPTION> <OPTION value=日本>日本</OPTION> <OPTION 
              value=乔治亚>乔治亚</OPTION> <OPTION value=葡萄牙>葡萄牙</OPTION> <OPTION 
              value=皮特肯岛>皮特肯岛</OPTION> <OPTION value=帕劳>帕劳</OPTION> <OPTION 
              value=诺福克岛>诺福克岛</OPTION> <OPTION value=挪威>挪威</OPTION> <OPTION 
              value=纽埃群岛>纽埃群岛</OPTION> <OPTION value=尼日利亚>尼日利亚</OPTION> <OPTION 
              value=尼日尔>尼日尔</OPTION> <OPTION value=尼加拉瓜>尼加拉瓜</OPTION> <OPTION 
              value=尼泊尔>尼泊尔</OPTION> <OPTION value=瑙鲁>瑙鲁</OPTION> <OPTION 
              value=南三维治岛>南三维治岛</OPTION> <OPTION value=南极洲>南极洲</OPTION> <OPTION 
              value=南非>南非</OPTION> <OPTION value=纳米比亚>纳米比亚</OPTION> <OPTION 
              value=墨西哥>墨西哥</OPTION> <OPTION value=莫桑比克>莫桑比克</OPTION> <OPTION 
              value=摩纳哥>摩纳哥</OPTION> <OPTION value=摩洛哥>摩洛哥</OPTION> <OPTION 
              value=摩尔多瓦>摩尔多瓦</OPTION> <OPTION value=缅甸>缅甸</OPTION> <OPTION 
              value=秘鲁>秘鲁</OPTION> <OPTION value=密克罗尼西亚>密克罗尼西亚</OPTION> <OPTION 
              value=孟加拉国>孟加拉国</OPTION> <OPTION value=蒙塞拉特岛>蒙塞拉特岛</OPTION> 
              <OPTION value=蒙古>蒙古</OPTION> <OPTION 
              value=美属维尔京群岛>美属维尔京群岛</OPTION> <OPTION value=美国>美国</OPTION> 
              <OPTION value=毛里塔尼亚>毛里塔尼亚</OPTION> <OPTION 
              value=毛里求斯>毛里求斯</OPTION> <OPTION value=马约特岛>马约特岛</OPTION> <OPTION 
              value=马提尼克>马提尼克</OPTION> <OPTION value=马绍尔群岛>马绍尔群岛</OPTION> 
              <OPTION value=马其顿>马其顿</OPTION> <OPTION value=马里>马里</OPTION> 
              <OPTION value=马来西亚>马来西亚</OPTION> <OPTION value=马拉维>马拉维</OPTION> 
              <OPTION value=马耳他>马耳他</OPTION> <OPTION value=马尔代夫>马尔代夫</OPTION> 
              <OPTION value=马达加斯加>马达加斯加</OPTION> <OPTION 
              value=罗马尼亚>罗马尼亚</OPTION> <OPTION value=卢旺达>卢旺达</OPTION> <OPTION 
              value=卢森堡>卢森堡</OPTION> <OPTION value=列支敦士登>列支敦士登</OPTION> <OPTION 
              value=立陶宛>立陶宛</OPTION> <OPTION value=利比亚>利比亚</OPTION> <OPTION 
              value=利比里亚>利比里亚</OPTION> <OPTION value=黎巴嫩>黎巴嫩</OPTION> <OPTION 
              value=老挝>老挝</OPTION> <OPTION value=莱索托>莱索托</OPTION> <OPTION 
              value=拉脱维亚>拉脱维亚</OPTION> <OPTION value=库科纳群岛>库科纳群岛</OPTION> 
              <OPTION value=肯尼亚>肯尼亚</OPTION> <OPTION value=克罗地亚>克罗地亚</OPTION> 
              <OPTION value=科威特>科威特</OPTION> <OPTION value=科摩罗群岛>科摩罗群岛</OPTION> 
              <OPTION value=科克群岛>科克群岛</OPTION> <OPTION value=开曼群岛>开曼群岛</OPTION> 
              <OPTION value=卡塔尔>卡塔尔</OPTION> <OPTION value=喀麦隆>喀麦隆</OPTION> 
              <OPTION value=津巴布韦>津巴布韦</OPTION> <OPTION 
              value=捷克共和国>捷克共和国</OPTION> <OPTION value=柬埔寨>柬埔寨</OPTION> <OPTION 
              value=加蓬>加蓬</OPTION> <OPTION value=加纳>加纳</OPTION> <OPTION 
              value=加拿大>加拿大</OPTION> <OPTION value=几内亚比绍>几内亚比绍</OPTION> <OPTION 
              value=几内亚>几内亚</OPTION> <OPTION value=吉尔吉斯斯坦>吉尔吉斯斯坦</OPTION> 
              <OPTION value=吉布提>吉布提</OPTION> <OPTION value=基里巴斯>基里巴斯</OPTION> 
              <OPTION value=洪都拉斯>洪都拉斯</OPTION> <OPTION 
              value=荷属安的列斯岛>荷属安的列斯岛</OPTION> <OPTION 
              value=荷德/马克多纳岛>荷德/马克多纳岛</OPTION> <OPTION value="荷 兰">荷 兰</OPTION> 
              <OPTION value=韩国>韩国</OPTION> <OPTION value=海地>海地</OPTION> <OPTION 
              value=哈萨克斯坦>哈萨克斯坦</OPTION> <OPTION value=圭亚那>圭亚那</OPTION> <OPTION 
              value=关岛>关岛</OPTION> <OPTION value=瓜达洛普>瓜达洛普</OPTION> <OPTION 
              value=古巴>古巴</OPTION> <OPTION value=格陵兰岛>格陵兰岛</OPTION> <OPTION 
              value=格林纳达>格林纳达</OPTION> <OPTION value=哥斯答黎加>哥斯答黎加</OPTION> 
              <OPTION value=哥伦比亚>哥伦比亚</OPTION> <OPTION 
              value=刚果民主共和国>刚果民主共和国</OPTION> <OPTION value=刚果>刚果</OPTION> 
              <OPTION value=冈比亚>冈比亚</OPTION> <OPTION value=福克兰群岛>福克兰群岛</OPTION> 
              <OPTION value=佛得角群岛>佛得角群岛</OPTION> <OPTION value=芬兰>芬兰</OPTION> 
              <OPTION value=斐济>斐济</OPTION> <OPTION value=菲律宾>菲律宾</OPTION> 
              <OPTION value=梵蒂冈城>梵蒂冈城</OPTION> <OPTION 
              value=法属圣特里特>法属圣特里特</OPTION> <OPTION value=法属圭亚那>法属圭亚那</OPTION> 
              <OPTION value=法属波利尼西亚>法属波利尼西亚</OPTION> <OPTION 
              value=法罗群岛>法罗群岛</OPTION> <OPTION value=法国>法国</OPTION> <OPTION 
              value=厄瓜多尔>厄瓜多尔</OPTION> <OPTION value=俄罗斯联邦>俄罗斯联邦</OPTION> 
              <OPTION value=多米尼加共和国>多米尼加共和国</OPTION> <OPTION 
              value=多米尼加>多米尼加</OPTION> <OPTION value=多哥>多哥</OPTION> <OPTION 
              value=东帝汶岛>东帝汶岛</OPTION> <OPTION value=德国>德国</OPTION> <OPTION 
              value=丹麦>丹麦</OPTION> <OPTION value=赤道几内亚>赤道几内亚</OPTION> <OPTION 
              value=布维群岛>布维群岛</OPTION> <OPTION value=布隆迪>布隆迪</OPTION> <OPTION 
              value=布基纳法索>布基纳法索</OPTION> <OPTION value=不丹>不丹</OPTION> <OPTION 
              value=伯利兹>伯利兹</OPTION> <OPTION value=博茨瓦纳>博茨瓦纳</OPTION> <OPTION 
              value=玻利维亚>玻利维亚</OPTION> <OPTION value=波兰>波兰</OPTION> <OPTION 
              value=波黑>波黑</OPTION> <OPTION value=波多黎哥>波多黎哥</OPTION> <OPTION 
              value=冰岛>冰岛</OPTION> <OPTION value=比利时>比利时</OPTION> <OPTION 
              value=贝宁>贝宁</OPTION> <OPTION value=北马里亚纳>北马里亚纳</OPTION> <OPTION 
              value=北朝鲜>北朝鲜</OPTION> <OPTION value=保加利亚>保加利亚</OPTION> <OPTION 
              value=百慕大群岛>百慕大群岛</OPTION> <OPTION value=白俄罗斯>白俄罗斯</OPTION> 
              <OPTION value=巴西>巴西</OPTION> <OPTION value=巴拿马>巴拿马</OPTION> 
              <OPTION value=巴林>巴林</OPTION> <OPTION value=巴拉圭>巴拉圭</OPTION> 
              <OPTION value=巴基斯坦>巴基斯坦</OPTION> <OPTION 
              value=巴哈马(群岛)>巴哈马(群岛)</OPTION> <OPTION 
              value=巴布亚新几内亚>巴布亚新几内亚</OPTION> <OPTION value=巴巴多斯>巴巴多斯</OPTION> 
              <OPTION value=奥地利>奥地利</OPTION> <OPTION value=澳大利亚>澳大利亚</OPTION> 
              <OPTION value=安提瓜和巴布达>安提瓜和巴布达</OPTION> <OPTION 
              value=安圭拉岛>安圭拉岛</OPTION> <OPTION value=安哥拉>安哥拉</OPTION> <OPTION 
              value=安道尔>安道尔</OPTION> <OPTION value=爱沙尼亚>爱沙尼亚</OPTION> <OPTION 
              value=爱尔兰>爱尔兰</OPTION> <OPTION value=埃塞俄比亚>埃塞俄比亚</OPTION> <OPTION 
              value=埃立特里亚>埃立特里亚</OPTION> <OPTION value=埃及>埃及</OPTION> <OPTION 
              value=阿塞拜疆>阿塞拜疆</OPTION> <OPTION value=阿曼>阿曼</OPTION> <OPTION 
              value=阿鲁巴>阿鲁巴</OPTION> <OPTION value=阿联酋>阿联酋</OPTION> <OPTION 
              value=阿根廷>阿根廷</OPTION> <OPTION value=阿富汗>阿富汗</OPTION> <OPTION 
              value=阿尔及利亚>阿尔及利亚</OPTION> <OPTION value=阿尔巴尼亚>阿尔巴尼亚</OPTION> 
              <OPTION value=SZ>斯威士兰</OPTION> <OPTION 
              value=St.Pier,Miquel.>St.Pier,Miquel.</OPTION> <OPTION 
              value=CAR>CAR</OPTION></SELECT> </TD>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          width=130>身份证明注册地</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><SELECT name=province2 inputsn="10"> 
              <OPTION value="">-请选择-</OPTION> <OPTION value=境外>境外</OPTION> 
              <OPTION selected value=北京>北京</OPTION> <OPTION value=上海>上海</OPTION> 
              <OPTION value=天津>天津</OPTION> <OPTION value=内蒙古>内蒙古</OPTION> 
              <OPTION value=山西>山西</OPTION> <OPTION value=河北>河北</OPTION> <OPTION 
              value=辽宁>辽宁</OPTION> <OPTION value=吉林>吉林</OPTION> <OPTION 
              value=黑龙江>黑龙江</OPTION> <OPTION value=江苏>江苏</OPTION> <OPTION 
              value=安徽>安徽</OPTION> <OPTION value=山东>山东</OPTION> <OPTION 
              value=浙江>浙江</OPTION> <OPTION value=江西>江西</OPTION> <OPTION 
              value=福建>福建</OPTION> <OPTION value=湖南>湖南</OPTION> <OPTION 
              value=湖北>湖北</OPTION> <OPTION value=河南>河南</OPTION> <OPTION 
              value=广东>广东</OPTION> <OPTION value=海南>海南</OPTION> <OPTION 
              value=广西>广西</OPTION> <OPTION value=贵州>贵州</OPTION> <OPTION 
              value=四川>四川</OPTION> <OPTION value=云南>云南</OPTION> <OPTION 
              value=陕西>陕西</OPTION> <OPTION value=甘肃>甘肃</OPTION> <OPTION 
              value=宁夏>宁夏</OPTION> <OPTION value=青海>青海</OPTION> <OPTION 
              value=新疆>新疆</OPTION> <OPTION value=西藏>西藏</OPTION> <OPTION 
              value=重庆>重庆</OPTION> <OPTION value=香港>香港</OPTION> <OPTION 
              value=澳门>澳门</OPTION> <OPTION value=台湾>台湾</OPTION></SELECT> <INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name=city2 maxLength=100 size=15 
            tips="法人和其他组织填写依法注册的省市；个人填写合法身份证明发放的省市。" length="50" 
            errmsg="市（区）不能为空！" valid="required"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button></DIV></TD></TR></TBODY></TABLE></DIV>
      <DIV>
      <TABLE 
      style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" 
      border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=130>姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 300px; HEIGHT: 20px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=1 name=name2 tips="法人或其他组织填写名称；个人填写姓名；" length="100" errmsg="姓名或名称不能为空！" valid="required"></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 40px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name=country2> <OPTION selected 
              value=中国>中国</OPTION> <OPTION value=智利>智利</OPTION> <OPTION 
              value=直布罗陀>直布罗陀</OPTION> <OPTION value=乍得>乍得</OPTION> <OPTION 
              value=赞比亚>赞比亚</OPTION> <OPTION value=越南>越南</OPTION> <OPTION 
              value=约旦>约旦</OPTION> <OPTION value=英属印度洋区>英属印度洋区</OPTION> <OPTION 
              value=英属维尔京群岛>英属维尔京群岛</OPTION> <OPTION value=英国>英国</OPTION> 
              <OPTION value=印度尼西亚>印度尼西亚</OPTION> <OPTION value=印度>印度</OPTION> 
              <OPTION value=意大利>意大利</OPTION> <OPTION value=以色列>以色列</OPTION> 
              <OPTION value=伊朗>伊朗</OPTION> <OPTION value=伊拉克>伊拉克</OPTION> 
              <OPTION value=也门>也门</OPTION> <OPTION value=亚美尼亚>亚美尼亚</OPTION> 
              <OPTION value=牙买加>牙买加</OPTION> <OPTION value=叙利亚>叙利亚</OPTION> 
              <OPTION value=匈牙利>匈牙利</OPTION> <OPTION value=新西兰>新西兰</OPTION> 
              <OPTION value=新喀里多尼亚>新喀里多尼亚</OPTION> <OPTION 
              value=新加坡>新加坡</OPTION> <OPTION value=小奥特兰群岛>小奥特兰群岛</OPTION> 
              <OPTION value=象牙海岸>象牙海岸</OPTION> <OPTION value=希腊>希腊</OPTION> 
              <OPTION value=西班牙>西班牙</OPTION> <OPTION 
              value=乌兹别克斯坦>乌兹别克斯坦</OPTION> <OPTION value=乌拉圭>乌拉圭</OPTION> 
              <OPTION value=乌克兰>乌克兰</OPTION> <OPTION value=乌干达>乌干达</OPTION> 
              <OPTION value=文莱达鲁萨兰>文莱达鲁萨兰</OPTION> <OPTION 
              value=委内瑞拉>委内瑞拉</OPTION> <OPTION value=危地马拉>危地马拉</OPTION> <OPTION 
              value=瓦努阿图>瓦努阿图</OPTION> <OPTION value=瓦利斯/富图纳岛>瓦利斯/富图纳岛</OPTION> 
              <OPTION value=托客劳群岛>托客劳群岛</OPTION> <OPTION 
              value=土库曼斯坦>土库曼斯坦</OPTION> <OPTION value=土耳其>土耳其</OPTION> <OPTION 
              value=图瓦卢>图瓦卢</OPTION> <OPTION value=突尼斯>突尼斯</OPTION> <OPTION 
              value=统一>统一</OPTION> <OPTION value=特立尼达/多巴哥>特立尼达/多巴哥</OPTION> 
              <OPTION value=特克斯/凯科斯岛>特克斯/凯科斯岛</OPTION> <OPTION 
              value=汤加>汤加</OPTION> <OPTION value=坦桑尼亚>坦桑尼亚</OPTION> <OPTION 
              value=泰国>泰国</OPTION> <OPTION value=塔吉克斯坦>塔吉克斯坦</OPTION> <OPTION 
              value=索马里>索马里</OPTION> <OPTION value=所罗门群岛>所罗门群岛</OPTION> <OPTION 
              value=苏里南>苏里南</OPTION> <OPTION value=苏丹>苏丹</OPTION> <OPTION 
              value=斯洛文尼亚>斯洛文尼亚</OPTION> <OPTION value=斯洛伐克>斯洛伐克</OPTION> 
              <OPTION value=斯里兰卡>斯里兰卡</OPTION> <OPTION value=圣文森特>圣文森特</OPTION> 
              <OPTION value=圣马力诺>圣马力诺</OPTION> <OPTION value=圣路西亚>圣路西亚</OPTION> 
              <OPTION value=圣基茨和那维斯>圣基茨和那维斯</OPTION> <OPTION 
              value=圣赫勒拿岛>圣赫勒拿岛</OPTION> <OPTION 
              value=圣多马/普林西比>圣多马/普林西比</OPTION> <OPTION value=圣诞岛>圣诞岛</OPTION> 
              <OPTION value=沙特阿拉伯>沙特阿拉伯</OPTION> <OPTION 
              value=塞舌尔群岛>塞舌尔群岛</OPTION> <OPTION value=塞浦路斯>塞浦路斯</OPTION> 
              <OPTION value=塞内加尔>塞内加尔</OPTION> <OPTION value=塞拉利昂>塞拉利昂</OPTION> 
              <OPTION value=塞尔维亚及门的>塞尔维亚及门的</OPTION> <OPTION 
              value=塞尔维亚/Monten>塞尔维亚/Monten</OPTION> <OPTION 
              value="萨摩亚, 美国">萨摩亚, 美国</OPTION> <OPTION value=萨摩亚>萨摩亚</OPTION> 
              <OPTION value=萨尔瓦多>萨尔瓦多</OPTION> <OPTION 
              value=撒哈拉西部>撒哈拉西部</OPTION> <OPTION value=瑞士>瑞士</OPTION> <OPTION 
              value=瑞典>瑞典</OPTION> <OPTION value=日本>日本</OPTION> <OPTION 
              value=乔治亚>乔治亚</OPTION> <OPTION value=葡萄牙>葡萄牙</OPTION> <OPTION 
              value=皮特肯岛>皮特肯岛</OPTION> <OPTION value=帕劳>帕劳</OPTION> <OPTION 
              value=诺福克岛>诺福克岛</OPTION> <OPTION value=挪威>挪威</OPTION> <OPTION 
              value=纽埃群岛>纽埃群岛</OPTION> <OPTION value=尼日利亚>尼日利亚</OPTION> <OPTION 
              value=尼日尔>尼日尔</OPTION> <OPTION value=尼加拉瓜>尼加拉瓜</OPTION> <OPTION 
              value=尼泊尔>尼泊尔</OPTION> <OPTION value=瑙鲁>瑙鲁</OPTION> <OPTION 
              value=南三维治岛>南三维治岛</OPTION> <OPTION value=南极洲>南极洲</OPTION> <OPTION 
              value=南非>南非</OPTION> <OPTION value=纳米比亚>纳米比亚</OPTION> <OPTION 
              value=墨西哥>墨西哥</OPTION> <OPTION value=莫桑比克>莫桑比克</OPTION> <OPTION 
              value=摩纳哥>摩纳哥</OPTION> <OPTION value=摩洛哥>摩洛哥</OPTION> <OPTION 
              value=摩尔多瓦>摩尔多瓦</OPTION> <OPTION value=缅甸>缅甸</OPTION> <OPTION 
              value=秘鲁>秘鲁</OPTION> <OPTION value=密克罗尼西亚>密克罗尼西亚</OPTION> <OPTION 
              value=孟加拉国>孟加拉国</OPTION> <OPTION value=蒙塞拉特岛>蒙塞拉特岛</OPTION> 
              <OPTION value=蒙古>蒙古</OPTION> <OPTION 
              value=美属维尔京群岛>美属维尔京群岛</OPTION> <OPTION value=美国>美国</OPTION> 
              <OPTION value=毛里塔尼亚>毛里塔尼亚</OPTION> <OPTION 
              value=毛里求斯>毛里求斯</OPTION> <OPTION value=马约特岛>马约特岛</OPTION> <OPTION 
              value=马提尼克>马提尼克</OPTION> <OPTION value=马绍尔群岛>马绍尔群岛</OPTION> 
              <OPTION value=马其顿>马其顿</OPTION> <OPTION value=马里>马里</OPTION> 
              <OPTION value=马来西亚>马来西亚</OPTION> <OPTION value=马拉维>马拉维</OPTION> 
              <OPTION value=马耳他>马耳他</OPTION> <OPTION value=马尔代夫>马尔代夫</OPTION> 
              <OPTION value=马达加斯加>马达加斯加</OPTION> <OPTION 
              value=罗马尼亚>罗马尼亚</OPTION> <OPTION value=卢旺达>卢旺达</OPTION> <OPTION 
              value=卢森堡>卢森堡</OPTION> <OPTION value=列支敦士登>列支敦士登</OPTION> <OPTION 
              value=立陶宛>立陶宛</OPTION> <OPTION value=利比亚>利比亚</OPTION> <OPTION 
              value=利比里亚>利比里亚</OPTION> <OPTION value=黎巴嫩>黎巴嫩</OPTION> <OPTION 
              value=老挝>老挝</OPTION> <OPTION value=莱索托>莱索托</OPTION> <OPTION 
              value=拉脱维亚>拉脱维亚</OPTION> <OPTION value=库科纳群岛>库科纳群岛</OPTION> 
              <OPTION value=肯尼亚>肯尼亚</OPTION> <OPTION value=克罗地亚>克罗地亚</OPTION> 
              <OPTION value=科威特>科威特</OPTION> <OPTION value=科摩罗群岛>科摩罗群岛</OPTION> 
              <OPTION value=科克群岛>科克群岛</OPTION> <OPTION value=开曼群岛>开曼群岛</OPTION> 
              <OPTION value=卡塔尔>卡塔尔</OPTION> <OPTION value=喀麦隆>喀麦隆</OPTION> 
              <OPTION value=津巴布韦>津巴布韦</OPTION> <OPTION 
              value=捷克共和国>捷克共和国</OPTION> <OPTION value=柬埔寨>柬埔寨</OPTION> <OPTION 
              value=加蓬>加蓬</OPTION> <OPTION value=加纳>加纳</OPTION> <OPTION 
              value=加拿大>加拿大</OPTION> <OPTION value=几内亚比绍>几内亚比绍</OPTION> <OPTION 
              value=几内亚>几内亚</OPTION> <OPTION value=吉尔吉斯斯坦>吉尔吉斯斯坦</OPTION> 
              <OPTION value=吉布提>吉布提</OPTION> <OPTION value=基里巴斯>基里巴斯</OPTION> 
              <OPTION value=洪都拉斯>洪都拉斯</OPTION> <OPTION 
              value=荷属安的列斯岛>荷属安的列斯岛</OPTION> <OPTION 
              value=荷德/马克多纳岛>荷德/马克多纳岛</OPTION> <OPTION value="荷 兰">荷 兰</OPTION> 
              <OPTION value=韩国>韩国</OPTION> <OPTION value=海地>海地</OPTION> <OPTION 
              value=哈萨克斯坦>哈萨克斯坦</OPTION> <OPTION value=圭亚那>圭亚那</OPTION> <OPTION 
              value=关岛>关岛</OPTION> <OPTION value=瓜达洛普>瓜达洛普</OPTION> <OPTION 
              value=古巴>古巴</OPTION> <OPTION value=格陵兰岛>格陵兰岛</OPTION> <OPTION 
              value=格林纳达>格林纳达</OPTION> <OPTION value=哥斯答黎加>哥斯答黎加</OPTION> 
              <OPTION value=哥伦比亚>哥伦比亚</OPTION> <OPTION 
              value=刚果民主共和国>刚果民主共和国</OPTION> <OPTION value=刚果>刚果</OPTION> 
              <OPTION value=冈比亚>冈比亚</OPTION> <OPTION value=福克兰群岛>福克兰群岛</OPTION> 
              <OPTION value=佛得角群岛>佛得角群岛</OPTION> <OPTION value=芬兰>芬兰</OPTION> 
              <OPTION value=斐济>斐济</OPTION> <OPTION value=菲律宾>菲律宾</OPTION> 
              <OPTION value=梵蒂冈城>梵蒂冈城</OPTION> <OPTION 
              value=法属圣特里特>法属圣特里特</OPTION> <OPTION value=法属圭亚那>法属圭亚那</OPTION> 
              <OPTION value=法属波利尼西亚>法属波利尼西亚</OPTION> <OPTION 
              value=法罗群岛>法罗群岛</OPTION> <OPTION value=法国>法国</OPTION> <OPTION 
              value=厄瓜多尔>厄瓜多尔</OPTION> <OPTION value=俄罗斯联邦>俄罗斯联邦</OPTION> 
              <OPTION value=多米尼加共和国>多米尼加共和国</OPTION> <OPTION 
              value=多米尼加>多米尼加</OPTION> <OPTION value=多哥>多哥</OPTION> <OPTION 
              value=东帝汶岛>东帝汶岛</OPTION> <OPTION value=德国>德国</OPTION> <OPTION 
              value=丹麦>丹麦</OPTION> <OPTION value=赤道几内亚>赤道几内亚</OPTION> <OPTION 
              value=布维群岛>布维群岛</OPTION> <OPTION value=布隆迪>布隆迪</OPTION> <OPTION 
              value=布基纳法索>布基纳法索</OPTION> <OPTION value=不丹>不丹</OPTION> <OPTION 
              value=伯利兹>伯利兹</OPTION> <OPTION value=博茨瓦纳>博茨瓦纳</OPTION> <OPTION 
              value=玻利维亚>玻利维亚</OPTION> <OPTION value=波兰>波兰</OPTION> <OPTION 
              value=波黑>波黑</OPTION> <OPTION value=波多黎哥>波多黎哥</OPTION> <OPTION 
              value=冰岛>冰岛</OPTION> <OPTION value=比利时>比利时</OPTION> <OPTION 
              value=贝宁>贝宁</OPTION> <OPTION value=北马里亚纳>北马里亚纳</OPTION> <OPTION 
              value=北朝鲜>北朝鲜</OPTION> <OPTION value=保加利亚>保加利亚</OPTION> <OPTION 
              value=百慕大群岛>百慕大群岛</OPTION> <OPTION value=白俄罗斯>白俄罗斯</OPTION> 
              <OPTION value=巴西>巴西</OPTION> <OPTION value=巴拿马>巴拿马</OPTION> 
              <OPTION value=巴林>巴林</OPTION> <OPTION value=巴拉圭>巴拉圭</OPTION> 
              <OPTION value=巴基斯坦>巴基斯坦</OPTION> <OPTION 
              value=巴哈马(群岛)>巴哈马(群岛)</OPTION> <OPTION 
              value=巴布亚新几内亚>巴布亚新几内亚</OPTION> <OPTION value=巴巴多斯>巴巴多斯</OPTION> 
              <OPTION value=奥地利>奥地利</OPTION> <OPTION value=澳大利亚>澳大利亚</OPTION> 
              <OPTION value=安提瓜和巴布达>安提瓜和巴布达</OPTION> <OPTION 
              value=安圭拉岛>安圭拉岛</OPTION> <OPTION value=安哥拉>安哥拉</OPTION> <OPTION 
              value=安道尔>安道尔</OPTION> <OPTION value=爱沙尼亚>爱沙尼亚</OPTION> <OPTION 
              value=爱尔兰>爱尔兰</OPTION> <OPTION value=埃塞俄比亚>埃塞俄比亚</OPTION> <OPTION 
              value=埃立特里亚>埃立特里亚</OPTION> <OPTION value=埃及>埃及</OPTION> <OPTION 
              value=阿塞拜疆>阿塞拜疆</OPTION> <OPTION value=阿曼>阿曼</OPTION> <OPTION 
              value=阿鲁巴>阿鲁巴</OPTION> <OPTION value=阿联酋>阿联酋</OPTION> <OPTION 
              value=阿根廷>阿根廷</OPTION> <OPTION value=阿富汗>阿富汗</OPTION> <OPTION 
              value=阿尔及利亚>阿尔及利亚</OPTION> <OPTION value=阿尔巴尼亚>阿尔巴尼亚</OPTION> 
              <OPTION value=SZ>斯威士兰</OPTION> <OPTION 
              value=St.Pier,Miquel.>St.Pier,Miquel.</OPTION> <OPTION 
              value=CAR>CAR</OPTION></SELECT></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          width=130>身份证明注册地</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><SELECT name=province2 inputsn="10"> <OPTION 
              value="">-请选择-</OPTION> <OPTION value=境外>境外</OPTION> <OPTION 
              selected value=北京>北京</OPTION> <OPTION value=上海>上海</OPTION> <OPTION 
              value=天津>天津</OPTION> <OPTION value=内蒙古>内蒙古</OPTION> <OPTION 
              value=山西>山西</OPTION> <OPTION value=河北>河北</OPTION> <OPTION 
              value=辽宁>辽宁</OPTION> <OPTION value=吉林>吉林</OPTION> <OPTION 
              value=黑龙江>黑龙江</OPTION> <OPTION value=江苏>江苏</OPTION> <OPTION 
              value=安徽>安徽</OPTION> <OPTION value=山东>山东</OPTION> <OPTION 
              value=浙江>浙江</OPTION> <OPTION value=江西>江西</OPTION> <OPTION 
              value=福建>福建</OPTION> <OPTION value=湖南>湖南</OPTION> <OPTION 
              value=湖北>湖北</OPTION> <OPTION value=河南>河南</OPTION> <OPTION 
              value=广东>广东</OPTION> <OPTION value=海南>海南</OPTION> <OPTION 
              value=广西>广西</OPTION> <OPTION value=贵州>贵州</OPTION> <OPTION 
              value=四川>四川</OPTION> <OPTION value=云南>云南</OPTION> <OPTION 
              value=陕西>陕西</OPTION> <OPTION value=甘肃>甘肃</OPTION> <OPTION 
              value=宁夏>宁夏</OPTION> <OPTION value=青海>青海</OPTION> <OPTION 
              value=新疆>新疆</OPTION> <OPTION value=西藏>西藏</OPTION> <OPTION 
              value=重庆>重庆</OPTION> <OPTION value=香港>香港</OPTION> <OPTION 
              value=澳门>澳门</OPTION> <OPTION value=台湾>台湾</OPTION></SELECT> <INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name=city2 maxLength=100 size=15 
            tips="法人和其他组织填写依法注册的省市；个人填写合法身份证明发放的省市。" length="50" 
            errmsg="市（区）不能为空！" valid="required"> 
</TD></TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>合同主要内容</TD></TR>
  <TBODY id=contract1>
  <TR>
    <TD class=contentbg>转让权利范围</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=rightScope1 value=全部权利 CHECKED type=radio 
      tips="指《计算机软件保护条例》第8条规定的全部权利；">全部权利 <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=rightScope1 value=部分权利 type=radio 
      tips="指《计算机软件保护条例》第8条规定的一项或者多项权利，并需要注明具体的权利种类。">部分权利 </TD></TR>
	
  <TR>
    <TD class=contentbg>转让地域范围</TD>
    <TD class=contentbg>
      <DIV style="TEXT-ALIGN: left; WIDTH: 231px; FLOAT: left"><SELECT 
      id=regionScope1 onchange="isQita('regionScope1')" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=regionScope1 
      tips="根据软件著作权专有许可合同所约定的地域范围，如：在中国等。" length="200" errmsg="转让地域范围不能为空!" 
      valid="required"> <OPTION selected value=无地域范围限制>无地域范围限制</OPTION> 
        <OPTION value=中国地域范围（包括港、澳、台地区）>中国地域范围（包括港、澳、台地区）</OPTION> <OPTION 
        value=中国地域范围（不包括港、澳、台地区）>中国地域范围（不包括港、澳、台地区）</OPTION> <OPTION 
        value=其他地域范围>其他地域范围</OPTION></SELECT></DIV>
      <DIV style="TEXT-ALIGN: left; WIDTH: 251px; DISPLAY: none; FLOAT: right" 
      id=regionScope1_Info><INPUT id=regionScope1_ 
    name=regionScope1_>(可填写)</DIV></TD></TR>
  <TR>
    <TD class=contentbg>转让合同生效日期</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=validStartDate1 tips="" 
      errmsg="转让合同生效日期不能为空!" valid="required"> </TD></TR></TBODY>
  <TBODY style="DISPLAY: none" id=contract2>
  <TR>
    <TD class=contentbg>许可权利范围</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=rightScope2 value=全部权利 CHECKED type=radio 
      tips="指《计算机软件保护条例》第8条规定的一项或者多项权利，并需要注明具体的权利种类。">全部权利 <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=rightScope2 value=部分权利 type=radio 
      tips="指《计算机软件保护条例》第8条规定的一项或者多项权利，并需要注明具体的权利种类。">部分权利 </TD></TR>
  <TR>
    <TD class=contentbg>许可地域范围</TD>
    <TD class=contentbg>
      <DIV style="TEXT-ALIGN: left; WIDTH: 231px; FLOAT: left"><SELECT 
      id=regionScope2 onchange="isQita('regionScope2')" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=regionScope2 tips="指软件著作权转让合同的约定所确定的地域范围。" 
      length="200" errmsg="许可地域范围不能为空!" valid="required"> <OPTION selected 
        value=无地域范围限制>无地域范围限制</OPTION> <OPTION 
        value=中国地域范围（包括港、澳、台地区）>中国地域范围（包括港、澳、台地区）</OPTION> <OPTION 
        value=中国地域范围（不包括港、澳、台地区）>中国地域范围（不包括港、澳、台地区）</OPTION> <OPTION 
        value=其他地域范围>其他地域范围</OPTION></SELECT></DIV>
      <DIV style="TEXT-ALIGN: left; WIDTH: 251px; DISPLAY: none; FLOAT: right" 
      id=regionScope2_Info><INPUT id=regionScope2_ 
    name=regionScope2_>(可填写)</DIV></TD></TR>
  <TR>
    <TD class=contentbg>许可权利期限</TD>
    <TD class=contentbg>自&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=validStartDate2 size=15 
      tips="指根据软件著作权专有许可合同所约定的期限，如：2007年10月30日至2009年10月30日。" errmsg="起始日期不能为空!" 
      valid="required"> &nbsp;起，至&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=validEndDate2 size=15 
      tips="指根据软件著作权专有许可合同所约定的期限，如：2007年10月30日至2009年10月30日。" errmsg="截止日期不能为空!" 
      valid="required">&nbsp;止。 </TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请办理方式</TD>
    <TD class=contentbg><INPUT onclick=agent_showOrHide(this) name="applyType" 
      value="由转让（许可）方办理" CHECKED type="radio" />由转让（许可）方办理 <INPUT 
      onclick=agent_showOrHide(this) name="applyType" value="由受让（被许可）方办理" 
      type="radio" />由受让（被许可）方办理 <INPUT onclick=agent_showOrHide(this) 
      name="applyType" value="代理人" type="radio" />由代理人办理 </TD></TR>
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
      <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() onclick="setPeopleValue('sqr');" value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=sqrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=sqrname size=35 
      tips="请准确填写申请人的姓名或单位名称，并与其他材料保持一致，申请人应是权利人之一" length="250" 
      errmsg="姓名或单位名称不能为空！" valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=sqraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqraddress size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" length="100" errmsg="不能为空！" 
      valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=sqrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrpostCode size=35 tips="请填写邮政编码" 
      length="8"></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=sqrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrcontactPerson size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=sqrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name=sqrphone size=35 
      tips="请填写联系电话号码" length="40" errmsg="电话号码不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=sqremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqremail size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|格式不对！" valid="required|isEmail"></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=sqrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30"></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=sqrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrfax size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30"></TD></TR>
  <TBODY style="DISPLAY: none" id=A-0>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">代理人信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() 
      onclick="setPeopleValue('dlr');" value=我是代理人 type=button tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg 
      colSpan=2>&nbsp;&nbsp;&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=agent_desc size=60 
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" length="180" errmsg="代理权限说明不能为空！" 
      valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlrname size=35 
      tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" length="100" errmsg="不能为空！" 
      valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlraddress size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" length="100" errmsg="不能为空！" 
      valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlrpostCode size=35 tips="请填写邮政编码" 
      length="8" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=dlrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrcontactPerson size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=dlrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name=dlrphone size=35 
      tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=dlremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlremail size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|E-mail格式不对！" valid="required|isEmail"></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30"></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrfax size=35 tips="可选项，但如果要填写请按照正确的格式" 
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
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/r21/save');"/>
    </TD>
    <TD width=50 style="padding-right:15px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/r21/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></TBODY></TABLE></FORM></DIV>
</body>
</HTML>