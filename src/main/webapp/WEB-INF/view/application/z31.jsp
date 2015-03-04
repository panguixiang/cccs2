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
<script language="JavaScript" src="${pageContext.request.contextPath}/js/pgCalPicker.js"></script>

<SCRIPT language=JavaScript>
function addRowInfo(idstr){
	var td_obj = document.getElementById(idstr);
	var table_objs = td_obj.children;
	var hidden_table = table_objs(1);
	var tmp_div = document.createElement("DIV");
	tmp_div.innerHTML = hidden_table.innerHTML;
	td_obj.appendChild(tmp_div);
}

	function afterValid()
	{	
		//1.留存样本 若"电子介质"与"纸介质"都为空，则必须填写一项
		var flag = true;	
		var startd = StringToDate(document.all("create_date").value);
		var now=new Date();
		if(now.getTime()-startd.getTime() < 0){
	        showErrorMsg(document.all("create_date"), "该日期应小于等于当前日期！");
				flag = false;
	      }
		if(isEmptyOrNull("emedium") && isEmptyOrNull("pmedium"))
		{
			showErrorMsg(document.all("pmedium"), "留存样本不能都为空!");
			flag=false;
		}
		
		if(!isEmptyOrNull("emedium"))
		{
			if(isEmptyOrNull("ecount"))
			{
				showErrorMsg(document.all("ecount"), "电子介质件数不能为空!");
				flag=false;
			}
		}
		
		if(!isEmptyOrNull("pmedium"))
		{
			if(isEmptyOrNull("pcount"))
			{
				showErrorMsg(document.all("pcount"), "纸介质件数不能为空!");
				flag=false;
			}
		}
		return flag;
	}
		
</SCRIPT>
</HEAD>
<BODY>
<DIV id=mytips></DIV><!-- 申请人选项div -->
<DIV 
style="BORDER-BOTTOM: #333333 1px solid; POSITION: absolute; TEXT-ALIGN: left; BORDER-LEFT: #333333 1px solid; PADDING-BOTTOM: 3px; LINE-HEIGHT: 15px; BACKGROUND-COLOR: #ffff99; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; DISPLAY: none; HEIGHT: 30px; FONT-SIZE: 13px; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid; PADDING-TOP: 3px; TOP: 0px; LEFT: 0px" 
id=_sqr_div onmouseover="this.style.display='block';" 
onmouseout="this.style.display='none';"></DIV>
<DIV 
style="TEXT-ALIGN: center; PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; WIDTH: 900px; PADDING-RIGHT: 0px; PADDING-TOP: 10px">
<form  action=""
				method="post" name="generalForm" id="generalFormId">

<TABLE style="MARGIN-TOP: 20px; BORDER-COLLAPSE: collapse" border=0 
cellSpacing=0 borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" align=center><B>与著作权有关权利事项登记申请表</B> 
      &nbsp;&nbsp; <IMG id=myhelp 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() src="images/icon_alert.gif" 
      width=18 
      tips="本表适用于录音录像制作者对其录制的录音、录像制品，表演者对其表演，广播电台、电视台对其播放的广播、电视，出版者对其出版的图书、期刊版式设计有关事项的登记申请。"></TD></TR></TBODY></TABLE>
<DIV style="MARGIN-TOP: 10px" id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>基本事项</TD></TR>
  <TR>
    <TD class=contentbg width=130>名称</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="opus_name"  size=70 
      tips="填写申请登记涉及的录音、录像制品、表演、广播、电视和图书、期刊版式设计的名称。各种申请材料中的名称应该填写一致。" 
      length="200" errmsg="名称不能为空！" valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>类别</TD>
    <TD class=contentbg><INPUT onclick=changedaytype(this.value); 
      name="opus_type" value="录音制品" checked="checked" type="radio">录音制品 <INPUT 
      onclick=changedaytype(this.value); name="opus_type" value="录像制品 " 
      type="radio">录像制品 <INPUT onclick=changedaytype(this.value); 
      name="opus_type" value="表演" type="radio">表演 <INPUT 
      onclick=changedaytype(this.value); name="opus_type" value="版式设计" 
      type="radio">版式设计 <INPUT onclick=changedaytype(this.value); 
      name="opus_type" value="广播、电视" type="radio">广播、电视 </TD></TR>
  <SCRIPT>
			function changedaytype(type){
						switch (type) {
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
				}

			</SCRIPT>

  <TR>
    <TD class=contentbg><SPAN id="daytype">制作完成</SPAN>日期</TD>
    <TD class=contentbg><INPUT id="appearDate" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name="create_date" readOnly tips="请填写日期" errmsg="日期不能为空！" valid="required"> 
    </TD></TR>
  <TR>
    <TD class=contentbg><SPAN id="areatype">制作完成</SPAN>地点</TD>
    <TD class=contentbg>国家：<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="create_country" value=中国 size=12 tips="请填写国家" 
      length="40" errmsg="国家不能为空！" valid="required"> 城市：<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="create_city" size=12 tips="请填写城市" length="40" 
      errmsg="城市不能为空！" valid="required"> </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">权利人信息</DIV>
      <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) onmouseout=cpcc_showtip() onclick="addRow('personData')" name=button value=增加权利人 type=button tips="多个权利人点这里添加"> 
      </DIV></TD></TR>
  <TR><!-- 权利人信息 -->
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
          <TD width=70>类别</TD>
          <TD onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&nbsp;<br>公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际条约的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&nbsp;<br>法人：包括：企业法人，指获得法人资格的企业；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机关法人，指获得法人资格的国家机关；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事业单位法人，指获得法人资格的事业单位；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;社会团体法人，指获得法人资格的社会团体。&nbsp;<br>其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人合伙组织&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法人合伙组织&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法人的分支机构&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人独资企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中外合作经营企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;外资企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;筹建中的法人">
          <SELECT style="WIDTH: 160px" name="peopleType1">
              <option value="自然人">自然人</option>
				<optgroup label="法人">
			    <option value="企业法人">企业法人</option>
				<option value="机关法人">机关法人</option>
				<option value="事业单位法人">事业单位法人</option>
				<option value="社会团体法人">社会团体法人</option>
				</optgroup>
				<option value="其他组织">其他组织</option>
				<option value="其他">其他</option>
            </SELECT> </TD>
          <TD>国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <SELECT style="WIDTH: 115px" name="country1">
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
          rowSpan=3>
          <TEXTAREA style="TEXT-ALIGN: left; WIDTH: 130px; HEIGHT: 70px; OVERFLOW: hidden" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300)
            onmouseout=cpcc_showtip() rows=3 name="name1" 
         tips="著作权人是自然人的，应填写真实姓名。&nbsp;<br>著作权人是法人或其他组织的，应填写名称。&nbsp;<br>姓名或名称应与身份证明文件一致。" length="100" errmsg="姓名或名称不能为空！" valid="required"></TEXTAREA></TD>
          <TD>地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT style="WIDTH: 470px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name="address1" tips="请填写地址" length="200" 
            errmsg="地址不能为空！" valid="required"> </TD></TR>
        <TR>
          <TD>证件类型</TD>
          <TD><select name="idTypes1" style="width: 115px;">

			<option value="居民身份证">居民身份证</option>

			<option value="军官证">军官证</option>

			<option value="护照">护照</option>

			<option value="企业法人营业执照">企业法人营业执照</option>

			<option value="组织机构代码证书">组织机构代码证书</option>

			<option value="事业单位法人证书">事业单位法人证书</option>

			<option value="社团法人证书">社团法人证书</option>

			<option value="营业执照">营业执照</option>

			<option value="其他有效证件">其他有效证件</option>
				</select></TD>
          <TD>证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name="idNumber1" size=15 tips="请填写证件号码" 
            length="60" errmsg="证件号码不能为空！" valid="no"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">权利人类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
          onmouseout=cpcc_showtip() colSpan=3 
          tips="在下拉菜单中选择：&nbsp;<br>公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际条约的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&nbsp;<br>法人：包括：企业法人，指获得法人资格的企业；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机关法人，指获得法人资格的国家机关；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事业单位法人，指获得法人资格的事业单位；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;社会团体法人，指获得法人资格的社会团体。&nbsp;<br>其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人合伙组织&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法人合伙组织&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法人的分支机构&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人独资企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中外合作经营企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;外资企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;筹建中的法人">
            <DIV style="FLOAT: left">
            <select style="WIDTH: 115px" name="sign1" onchange="s_h_sign(this)">
	
				<option value="录音制作者">录音制作者</option>
	
				<option value="录像制作者">录像制作者</option>
	
				<option value="表演者">表演者</option>
				
				<option value="图书、期刊出版者">图书、期刊出版者</option>
				<option value="广播电台">广播电台</option>
				<option value="电视台">电视台</option>
			</select>
            </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button></DIV></TD></TR></TBODY></TABLE></DIV>
      <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=130>姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          width=70>类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
          onmouseout=cpcc_showtip() 
          tips="在下拉菜单中选择：&nbsp;<br>公民：包括中国公民，作品作者所属国或者经常居住地国同中国签订有协议或共同参加国际条约的外国人、无国籍人，或者作品首先在中国境内出版的外国人、无国籍人。&nbsp;<br>法人：包括：企业法人，指获得法人资格的企业；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机关法人，指获得法人资格的国家机关；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事业单位法人，指获得法人资格的事业单位；&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;社会团体法人，指获得法人资格的社会团体。&nbsp;<br>其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。包括：&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人合伙组织&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法人合伙组织&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法人的分支机构&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人独资企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中外合作经营企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;外资企业&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;筹建中的法人">
           <SELECT style="WIDTH: 160px" name="peopleType1">
              <option value="自然人">自然人</option>
				<optgroup label="法人">
			    <option value="企业法人">企业法人</option>
				<option value="机关法人">机关法人</option>
				<option value="事业单位法人">事业单位法人</option>
				<option value="社会团体法人">社会团体法人</option>
				</optgroup>
				<option value="其他组织">其他组织</option>
				<option value="其他">其他</option>
            </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name="country1"> 
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
			<option value="CAR">CAR</option></SELECT></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          rowSpan=3><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 130px; HEIGHT: 70px; OVERFLOW: hidden"
           onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) onmouseout=cpcc_showtip() 
           rows=3 name="name1" tips="著作权人是自然人的，应填写真实姓名。&nbsp;<br>著作权人是法人或其他组织的，应填写名称。&nbsp;<br>姓名或名称应与身份证明文件一致。" length="100" errmsg="姓名或名称不能为空！" valid="required"></TEXTAREA></TD>
          <TD>地址</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT style="WIDTH: 470px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name="address1" tips="请填写地址" length="200" 
            errmsg="地址不能为空！" valid="required"> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <select name="idTypes1" style="width: 115px;">

			<option value="居民身份证">居民身份证</option>

			<option value="军官证">军官证</option>

			<option value="护照">护照</option>

			<option value="企业法人营业执照">企业法人营业执照</option>

			<option value="组织机构代码证书">组织机构代码证书</option>

			<option value="事业单位法人证书">事业单位法人证书</option>

			<option value="社团法人证书">社团法人证书</option>

			<option value="营业执照">营业执照</option>

			<option value="其他有效证件">其他有效证件</option>
				</select></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">证件号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name="idNumber1" size=15 tips="请填写证件号码" 
            length="60" errmsg="证件号码不能为空！" valid="no"></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">权利人类型</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3> 
          <select style="WIDTH: 115px" name="sign1" onchange="s_h_sign(this)">
				<option value="录音制作者">录音制作者</option>
	
				<option value="录像制作者">录像制作者</option>
	
				<option value="表演者">表演者</option>
				
				<option value="图书、期刊出版者">图书、期刊出版者</option>
				<option value="广播电台">广播电台</option>
				<option value="电视台">电视台</option>
			</select></TD></TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">使用作品</DIV>
      <DIV style="FLOAT: right">
      <INPUT style="padding:0 3px;" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,100) onmouseout=cpcc_showtip() 
      onclick="addRowInfo('useOpus');" value=添加 type=button tips="使用多个作品点这里添加"> 
      </DIV>
      <DIV style="FLOAT: right" id=opus_tip></DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id="useOpus" class=contentbg colSpan=2>
      <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 300px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">作品名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">作品类别</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          align=center>作品著作权人</TD></TR></TBODY></TABLE></DIV>
      <DIV style="DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 300px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name="nameAuts" size=40 
            tips="填写录音制品、录像制品、表演、版式设计、广播、电视所使用作品的名称。" length="200" 
            errmsg="作品名称不能为空！" valid="required"> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
          <SELECT style="WIDTH: 220px" name="opus_typeAuts"> 
           <OPTION selected value="文字">文字</OPTION>
           <OPTION value="口述">口述</OPTION>
           <OPTION value="音乐">音乐</OPTION>
           <OPTION value="戏剧">戏剧</OPTION>
           <OPTION value="曲艺">曲艺</OPTION>
           <OPTION value="舞蹈">舞蹈</OPTION>
           <OPTION value="杂技艺术">杂技艺术</OPTION>
           <OPTION value="美术">美术</OPTION>
           <OPTION value="建筑">建筑</OPTION>
           <OPTION value="摄影">摄影</OPTION>
           <OPTION value="电影和类似摄制电影方法创作的作品">电影和类似摄制电影方法创作的作品</OPTION>
           <OPTION value="图形">图形</OPTION>
           <OPTION value="模型">模型</OPTION>
           <OPTION value="其他">其他</OPTION>
           </SELECT> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name="signAuts" size=16 
            tips="填写所使用作品的著作权人姓名或名称。" length="100" errmsg="作品著作权人不能为空！" 
            valid="required"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button></DIV></TD></TR></TBODY></TABLE></DIV>
      <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 300px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name="nameAuts" size=40 
            tips="填写录音制品、录像制品、表演、版式设计、广播、电视所使用作品的名称。" length="200" 
            errmsg="作品名称不能为空！" valid="required"> </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 220px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px">
          <SELECT style="WIDTH: 220px" name="opus_typeAuts"> 
           <OPTION selected value="文字">文字</OPTION>
           <OPTION value="口述">口述</OPTION>
           <OPTION value="音乐">音乐</OPTION>
           <OPTION value="戏剧">戏剧</OPTION>
           <OPTION value="曲艺">曲艺</OPTION>
           <OPTION value="舞蹈">舞蹈</OPTION>
           <OPTION value="杂技艺术">杂技艺术</OPTION>
           <OPTION value="美术">美术</OPTION>
           <OPTION value="建筑">建筑</OPTION>
           <OPTION value="摄影">摄影</OPTION>
           <OPTION value="电影和类似摄制电影方法创作的作品">电影和类似摄制电影方法创作的作品</OPTION>
           <OPTION value="图形">图形</OPTION>
           <OPTION value="模型">模型</OPTION>
           <OPTION value="其他">其他</OPTION>
           </SELECT></TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
            onmouseout=cpcc_showtip() name="signAuts" size=16 
            tips="填写所使用作品的著作权人姓名或名称。" length="100" errmsg="作品著作权人不能为空！" 
            valid="required"> </TD></TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>留存作品样本</TD></TR>
  <TR>
    <TD class=contentbg>电子介质</TD>
    <TD class=contentbg><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="emedium" size=50 
      tips="如：软磁盘（FD），只读光盘（CD-ROM），交互式光盘（CD-I），照片光盘（Photo-CD），&nbsp;<br>高密度只读光盘（DVD-ROM），集成电路卡（IC&nbsp;Card）（安装《电子出版物管理规定》），&nbsp;<br>但是在实际工作中软磁盘，交互式光盘，照片光盘，高密度只读光盘，集成电路卡使用比较少。" 
      length="40">&nbsp;共&nbsp;
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name="ecount" size=10 tips="写明电子介质件数" 
      length="10">&nbsp;件 </TD></TR>
  <TR>
    <TD class=contentbg>纸&nbsp;介&nbsp;质</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="pmedium" size=50 tips="如：打印稿，样书等" 
      length="40">&nbsp;共&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name="pcount" size=10 tips="写明纸介质张数" 
      length="10">&nbsp;张 </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请方式</TD>
    <TD class=contentbg><INPUT onclick=agent_showOrHide(this) name="apply_type" 
      value=由权利人申请 CHECKED type=radio>由权利人申请 <INPUT 
      onclick=agent_showOrHide(this) name="apply_type" value="代理人" type=radio>由代理人申请 
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
      <DIV style="FLOAT: right"><INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150)
      onmouseout=cpcc_showtip() onclick="setPeopleValue('sqr');" value="我是申请人" type=button 
      tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
 
  <TBODY>
  <TR>
    <TD class=contentbg>姓名或名称</TD>
    <TD class=contentbg><INPUT id=sqrname_ 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="sqrname" size=35 
      tips="请准确填写申请人的姓名或名称，并与其他材料保持一致，申请人应是全部权利人，如果是多个申请人，请点击‘增加申请人’按钮，进行添加，并且在申请人签章处，要求是申请人的全部签章" 
      length="100" errmsg="姓名或单位名称不能为空！" valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=sqraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqraddress" size=35 tips="请填写详细地址" 
      length="100" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=sqrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrpostCode" size=35 tips="请填写邮政编码" 
      errmsg="不能为空!" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=sqrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrcontactPerson" size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=sqrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="sqrphone" size=35 
      tips="请填写联系电话号码" length="40" errmsg="电话号码不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=sqremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqremail" size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|格式不对！" valid="required|isEmail"></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id="sqrmobile" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" errmsg="手机号码不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=sqrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrfax" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30"></TD></TR>
  <TBODY style="DISPLAY: none" id=A-0>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">代理人信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
      onmouseout=cpcc_showtip() onclick="setPeopleValue('dlr');" 
      value="我是代理人 " type=button tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg 
      colSpan=2>&nbsp;&nbsp;&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="agent_desc" size=60 
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" length="180" errmsg="代理权限说明不能为空！" 
      valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlrname" size=35 
      tips="请准确填写代理人的姓名或名称，并与其他材料保持一致" length="100" errmsg="不能为空！" 
      valid="required"> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlraddress" size=35 tips="请填写详细地址" 
      length="100" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlrpostCode" size=35 tips="请填写邮政编码" 
      length="6" errmsg="不能为空！|格式为6位数字" valid="required|isZip"></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=dlrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrcontactPerson" size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=dlrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="dlrphone" size=35 
      tips="可选项，但如果要填写请按照正确的格式"></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=dlremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlremail" size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|E-mail格式不正确！" valid="required|isEmail"></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrmobile" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" errmsg="手机号码不能为空！" valid="required"></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrfax" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30">
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
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/z31/save');"/>
    </TD>
    <TD width=50 style="padding-right:16px;">
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/z31/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></TBODY></TABLE></FORM></DIV>
</body>
</html>
    