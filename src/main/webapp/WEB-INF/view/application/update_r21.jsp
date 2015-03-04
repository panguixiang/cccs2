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
<input type="hidden" name="flow_num" value="${r21.flow_num}" />
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
    <TD class=contentbg><INPUT style="WIDTH: 448px" id="softFullName" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="softFullName" size=50 
      tips="填写合同涉及的软件名称，若软件已经登记的，软件名称、简称、版本号应当与该软件著作权登记证书中记载的事项一致。" length="200" 
      errmsg="软件全称不能为空!" valid="required" value="<c:out value='${r21.softFullName}' />"  /> </TD></TR>
  <TR>
    <TD class=contentbg>软件简称</TD>
    <TD class=contentbg><INPUT style="WIDTH: 448px" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="softForShort" size=50 tips="请填写合同涉及的软件简称。" 
      length="100" value="<c:out value='${r21.softForShort}' />"  /></TD></TR>
  <TR>
    <TD class=contentbg>版本号</TD>
    <TD class=contentbg><INPUT id="edition" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="edition" tips="请填写合同涉及软件的版本号。" length="40" 
      errmsg="版本号不能为空!" valid="required" value="<c:out value='${r21.edition}' />"  /> </TD></TR>
  <TR>
    <TD class=contentbg>软件著作权登记号</TD>
    <TD class=contentbg><INPUT id="origRegNumber" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="origRegNumber" tips="" length="40" 
      errmsg="软件著作权登记号不能为空!" valid="no" value="<c:out value='${r21.origRegNumber}' />"  /> </TD></TR>
  <TR>
    <TD class=contentbg>原变更/补充登记证明编号</TD>
    <TD class=contentbg><INPUT id="originalChangeNumber" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="originalChangeNumber" tips="" length="40"
       value="<c:out value='${r21.originalChangeNumber}' />"  /> 
    </TD></TR>
  <TR>
    <TD class=contentbg>合同类型${r21.contractType}</TD>
    <TD class=contentbg>
    <c:choose>
    <c:when test="${r21.contractType=='转让合同'}">
     <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=showContractType() name="contractType" 
      value="转让合同"  type="radio" CHECKED />转让合同
     <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=showContractType() name="contractType" 
      value="专有许可合同 " type="radio" />专有许可合同 
    </c:when>
    <c:otherwise>
     <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=showContractType() name="contractType" 
      value="转让合同"  type="radio" />转让合同
     <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() onclick=showContractType() name="contractType" 
      value="专有许可合同 " type="radio" CHECKED/>专有许可合同 
    </c:otherwise>
    </c:choose>
   </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">转让（许可）方信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT style="WIDTH: 120px" onclick="addRow('personData')" name=button value=增加转让/许可方 type=button> 
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
          <TD><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 300px; HEIGHT: 20px; OVERFLOW: hidden" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() 
          rows=1 name="name1" tips="法人或其他组织填写名称；个人填写姓名；" 
          length="100" errmsg="姓名或名称不能为空！" valid="required"></TEXTAREA> 
          </TD>
          <TD style="WIDTH: 40px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name="country1"> 
          <option selected="true" value="中国">中国</option>
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
															</SELECT> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          width=130>身份证明注册地</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><SELECT name="province1" inputsn="10"> 
            <option value="">-请选择-</option>
								<option value="境外">境外</option>
								<option value="北京" selected="true">北京</option>
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
								</SELECT> 
		<INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150)  onmouseout=cpcc_showtip() 
		 name="city1" maxLength=100 size=15 tips="法人和其他组织填写依法注册的省市；个人填写合法身份证明发放的省市。" length="50" 
            errmsg="市（区）不能为空！" valid="required"> </DIV>
            <DIV style="FLOAT: right">
            <INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV>
            <c:forEach items="${cps1}" var="cp1" varStatus="cp1stat">
      <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          width=130>姓名或名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <TEXTAREA style="TEXT-ALIGN: left; WIDTH: 300px; HEIGHT: 20px; OVERFLOW: hidden" 
          onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip() rows=1 
          name="name1" tips="法人或其他组织填写名称；个人填写姓名；" length="100" errmsg="姓名或名称不能为空！" valid="required">
          <c:out value="${cp1.name}" /></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 40px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">
          <SELECT 
            style="WIDTH: 115px" name="country1">
            <option value="中国"
				<c:if test="${cp1.country=='中国'}">selected="true"</c:if>>中国</option>

			<option value="智利"
				<c:if test="${cp1.country=='智利'}">selected="true"</c:if>>智利</option>
			<option value="直布罗陀"
				<c:if test="${cp1.country=='直布罗陀'}">selected="true"</c:if>>直布罗陀</option>
			<option value="乍得"
				<c:if test="${cp1.country=='乍得'}">selected="true"</c:if>>乍得</option>
			<option value="赞比亚"
				<c:if test="${cp1.country=='赞比亚'}">selected="true"</c:if>>赞比亚</option>
			<option value="越南"
				<c:if test="${cp1.country=='越南'}">selected="true"</c:if>>越南</option>
			<option value="约旦"
				<c:if test="${cp1.country=='约旦'}">selected="true"</c:if>>约旦</option>

			<option value="英属印度洋区"
				<c:if test="${cp1.country=='英属印度洋区'}">selected="true"</c:if>>英属印度洋区</option>
			<option value="英属维尔京群岛"
				<c:if test="${cp1.country=='英属维尔京群岛'}">selected="true"</c:if>>英属维尔京群岛</option>
			<option value="英国"
				<c:if test="${cp1.country=='英国'}">selected="true"</c:if>>英国</option>
			<option value="印度尼西亚"
				<c:if test="${cp1.country=='印度尼西亚'}">selected="true"</c:if>>印度尼西亚</option>
			<option value="印度"
				<c:if test="${cp1.country=='印度'}">selected="true"</c:if>>印度</option>
			<option value="意大利"
				<c:if test="${cp1.country=='意大利'}">selected="true"</c:if>>意大利</option>

			<option value="以色列"
				<c:if test="${cp1.country=='以色列'}">selected="true"</c:if>>以色列</option>
			<option value="伊朗"
				<c:if test="${cp1.country=='伊朗'}">selected="true"</c:if>>伊朗</option>
			<option value="伊拉克"
				<c:if test="${cp1.country=='伊拉克'}">selected="true"</c:if>>伊拉克</option>
			<option value="也门"
				<c:if test="${cp1.country=='也门'}">selected="true"</c:if>>也门</option>
			<option value="亚美尼亚"
				<c:if test="${cp1.country=='亚美尼亚'}">selected="true"</c:if>>亚美尼亚</option>
			<option value="牙买加"
				<c:if test="${cp1.country=='牙买加'}">selected="true"</c:if>>牙买加</option>

			<option value="叙利亚"
				<c:if test="${cp1.country=='叙利亚'}">selected="true"</c:if>>叙利亚</option>
			<option value="匈牙利"
				<c:if test="${cp1.country=='匈牙利'}">selected="true"</c:if>>匈牙利</option>
			<option value="新西兰"
				<c:if test="${cp1.country=='新西兰'}">selected="true"</c:if>>新西兰</option>
			<option value="新喀里多尼亚"
				<c:if test="${cp1.country=='新喀里多尼亚'}">selected="true"</c:if>>新喀里多尼亚</option>
			<option value="新加坡"
				<c:if test="${cp1.country=='新加坡'}">selected="true"</c:if>>新加坡</option>
			<option value="小奥特兰群岛"
				<c:if test="${cp1.country=='小奥特兰群岛'}">selected="true"</c:if>>小奥特兰群岛</option>

			<option value="象牙海岸"
				<c:if test="${cp1.country=='象牙海岸'}">selected="true"</c:if>>象牙海岸</option>
			<option value="希腊"
				<c:if test="${cp1.country=='希腊'}">selected="true"</c:if>>希腊</option>
			<option value="西班牙"
				<c:if test="${cp1.country=='西班牙'}">selected="true"</c:if>>西班牙</option>
			<option value="乌兹别克斯坦"
				<c:if test="${cp1.country=='乌兹别克斯坦'}">selected="true"</c:if>>乌兹别克斯坦</option>
			<option value="乌拉圭"
				<c:if test="${cp1.country=='乌拉圭'}">selected="true"</c:if>>乌拉圭</option>
			<option value="乌克兰"
				<c:if test="${cp1.country=='乌克兰'}">selected="true"</c:if>>乌克兰</option>

			<option value="乌干达"
				<c:if test="${cp1.country=='乌干达'}">selected="true"</c:if>>乌干达</option>
			<option value="文莱达鲁萨兰"
				<c:if test="${cp1.country=='文莱达鲁萨兰'}">selected="true"</c:if>>文莱达鲁萨兰</option>
			<option value="委内瑞拉"
				<c:if test="${cp1.country=='委内瑞拉'}">selected="true"</c:if>>委内瑞拉</option>
			<option value="危地马拉"
				<c:if test="${cp1.country=='危地马拉'}">selected="true"</c:if>>危地马拉</option>
			<option value="瓦努阿图"
				<c:if test="${cp1.country=='瓦努阿图'}">selected="true"</c:if>>瓦努阿图</option>
			<option value="瓦利斯/富图纳岛"
				<c:if test="${cp1.country=='瓦利斯/富图纳岛'}">selected="true"</c:if>>瓦利斯/富图纳岛</option>

			<option value="托客劳群岛"
				<c:if test="${cp1.country=='托客劳群岛'}">selected="true"</c:if>>托客劳群岛</option>
			<option value="土库曼斯坦"
				<c:if test="${cp1.country=='土库曼斯坦'}">selected="true"</c:if>>土库曼斯坦</option>
			<option value="土耳其"
				<c:if test="${cp1.country=='土耳其'}">selected="true"</c:if>>土耳其</option>
			<option value="图瓦卢"
				<c:if test="${cp1.country=='图瓦卢'}">selected="true"</c:if>>图瓦卢</option>
			<option value="突尼斯"
				<c:if test="${cp1.country=='突尼斯'}">selected="true"</c:if>>突尼斯</option>
			<option value="统一"
				<c:if test="${cp1.country=='统一'}">selected="true"</c:if>>统一</option>

			<option value="特立尼达/多巴哥"
				<c:if test="${cp1.country=='特立尼达/多巴哥'}">selected="true"</c:if>>特立尼达/多巴哥</option>
			<option value="特克斯/凯科斯岛"
				<c:if test="${cp1.country=='特克斯/凯科斯岛'}">selected="true"</c:if>>特克斯/凯科斯岛</option>
			<option value="汤加"
				<c:if test="${cp1.country=='汤加'}">selected="true"</c:if>>汤加</option>
			<option value="坦桑尼亚"
				<c:if test="${cp1.country=='坦桑尼亚'}">selected="true"</c:if>>坦桑尼亚</option>
			<option value="泰国"
				<c:if test="${cp1.country=='泰国'}">selected="true"</c:if>>泰国</option>
			<option value="塔吉克斯坦"
				<c:if test="${cp1.country=='塔吉克斯坦'}">selected="true"</c:if>>塔吉克斯坦</option>

			<option value="索马里"
				<c:if test="${cp1.country=='索马里'}">selected="true"</c:if>>索马里</option>
			<option value="所罗门群岛"
				<c:if test="${cp1.country=='所罗门群岛'}">selected="true"</c:if>>所罗门群岛</option>
			<option value="苏里南"
				<c:if test="${cp1.country=='苏里南'}">selected="true"</c:if>>苏里南</option>
			<option value="苏丹"
				<c:if test="${cp1.country=='苏丹'}">selected="true"</c:if>>苏丹</option>
			<option value="斯洛文尼亚"
				<c:if test="${cp1.country=='斯洛文尼亚'}">selected="true"</c:if>>斯洛文尼亚</option>
			<option value="斯洛伐克"
				<c:if test="${cp1.country=='斯洛伐克'}">selected="true"</c:if>>斯洛伐克</option>

			<option value="斯里兰卡"
				<c:if test="${cp1.country=='斯里兰卡'}">selected="true"</c:if>>斯里兰卡</option>
			<option value="圣文森特"
				<c:if test="${cp1.country=='圣文森特'}">selected="true"</c:if>>圣文森特</option>
			<option value="圣马力诺"
				<c:if test="${cp1.country=='圣马力诺'}">selected="true"</c:if>>圣马力诺</option>
			<option value="圣路西亚"
				<c:if test="${cp1.country=='圣路西亚'}">selected="true"</c:if>>圣路西亚</option>
			<option value="圣基茨和那维斯"
				<c:if test="${cp1.country=='圣基茨和那维斯'}">selected="true"</c:if>>圣基茨和那维斯</option>
			<option value="圣赫勒拿岛"
				<c:if test="${cp1.country=='圣赫勒拿岛'}">selected="true"</c:if>>圣赫勒拿岛</option>

			<option value="圣多马/普林西比"
				<c:if test="${cp1.country=='圣多马/普林西比'}">selected="true"</c:if>>圣多马/普林西比</option>
			<option value="圣诞岛"
				<c:if test="${cp1.country=='圣诞岛'}">selected="true"</c:if>>圣诞岛</option>
			<option value="沙特阿拉伯"
				<c:if test="${cp1.country=='沙特阿拉伯'}">selected="true"</c:if>>沙特阿拉伯</option>
			<option value="塞舌尔群岛"
				<c:if test="${cp1.country=='塞舌尔群岛'}">selected="true"</c:if>>塞舌尔群岛</option>
			<option value="塞浦路斯"
				<c:if test="${cp1.country=='塞浦路斯'}">selected="true"</c:if>>塞浦路斯</option>
			<option value="塞内加尔"
				<c:if test="${cp1.country=='塞内加尔'}">selected="true"</c:if>>塞内加尔</option>

			<option value="塞拉利昂"
				<c:if test="${cp1.country=='塞拉利昂'}">selected="true"</c:if>>塞拉利昂</option>
			<option value="塞尔维亚及门的"
				<c:if test="${cp1.country=='塞尔维亚及门的'}">selected="true"</c:if>>塞尔维亚及门的</option>
			<option value="塞尔维亚/Monten"
				<c:if test="${cp1.country=='塞尔维亚/Monten'}">selected="true"</c:if>>塞尔维亚/Monten</option>
			<option value="萨摩亚, 美国"
				<c:if test="${cp1.country=='萨摩亚, 美国'}">selected="true"</c:if>>萨摩亚,
				美国</option>
			<option value="萨摩亚"
				<c:if test="${cp1.country=='萨摩亚'}">selected="true"</c:if>>萨摩亚</option>
			<option value="萨尔瓦多"
				<c:if test="${cp1.country=='萨尔瓦多'}">selected="true"</c:if>>萨尔瓦多</option>

			<option value="撒哈拉西部"
				<c:if test="${cp1.country=='撒哈拉西部'}">selected="true"</c:if>>撒哈拉西部</option>
			<option value="瑞士"
				<c:if test="${cp1.country=='瑞士'}">selected="true"</c:if>>瑞士</option>
			<option value="瑞典"
				<c:if test="${cp1.country=='瑞典'}">selected="true"</c:if>>瑞典</option>
			<option value="日本"
				<c:if test="${cp1.country=='日本'}">selected="true"</c:if>>日本</option>
			<option value="乔治亚"
				<c:if test="${cp1.country=='乔治亚'}">selected="true"</c:if>>乔治亚</option>
			<option value="葡萄牙"
				<c:if test="${cp1.country=='葡萄牙'}">selected="true"</c:if>>葡萄牙</option>

			<option value="皮特肯岛"
				<c:if test="${cp1.country=='皮特肯岛'}">selected="true"</c:if>>皮特肯岛</option>
			<option value="帕劳"
				<c:if test="${cp1.country=='帕劳'}">selected="true"</c:if>>帕劳</option>
			<option value="诺福克岛"
				<c:if test="${cp1.country=='诺福克岛'}">selected="true"</c:if>>诺福克岛</option>
			<option value="挪威"
				<c:if test="${cp1.country=='挪威'}">selected="true"</c:if>>挪威</option>
			<option value="纽埃群岛"
				<c:if test="${cp1.country=='纽埃群岛'}">selected="true"</c:if>>纽埃群岛</option>
			<option value="尼日利亚"
				<c:if test="${cp1.country=='尼日利亚'}">selected="true"</c:if>>尼日利亚</option>

			<option value="尼日尔"
				<c:if test="${cp1.country=='尼日尔'}">selected="true"</c:if>>尼日尔</option>
			<option value="尼加拉瓜"
				<c:if test="${cp1.country=='尼加拉瓜'}">selected="true"</c:if>>尼加拉瓜</option>
			<option value="尼泊尔"
				<c:if test="${cp1.country=='尼泊尔'}">selected="true"</c:if>>尼泊尔</option>
			<option value="瑙鲁"
				<c:if test="${cp1.country=='瑙鲁'}">selected="true"</c:if>>瑙鲁</option>
			<option value="南三维治岛"
				<c:if test="${cp1.country=='南三维治岛'}">selected="true"</c:if>>南三维治岛</option>
			<option value="南极洲"
				<c:if test="${cp1.country=='南极洲'}">selected="true"</c:if>>南极洲</option>

			<option value="南非"
				<c:if test="${cp1.country=='南非'}">selected="true"</c:if>>南非</option>
			<option value="纳米比亚"
				<c:if test="${cp1.country=='纳米比亚'}">selected="true"</c:if>>纳米比亚</option>
			<option value="墨西哥"
				<c:if test="${cp1.country=='墨西哥'}">selected="true"</c:if>>墨西哥</option>
			<option value="莫桑比克"
				<c:if test="${cp1.country=='莫桑比克'}">selected="true"</c:if>>莫桑比克</option>
			<option value="摩纳哥"
				<c:if test="${cp1.country=='摩纳哥'}">selected="true"</c:if>>摩纳哥</option>
			<option value="摩洛哥"
				<c:if test="${cp1.country=='摩洛哥'}">selected="true"</c:if>>摩洛哥</option>

			<option value="摩尔多瓦"
				<c:if test="${cp1.country=='摩尔多瓦'}">selected="true"</c:if>>摩尔多瓦</option>
			<option value="缅甸"
				<c:if test="${cp1.country=='缅甸'}">selected="true"</c:if>>缅甸</option>
			<option value="秘鲁"
				<c:if test="${cp1.country=='秘鲁'}">selected="true"</c:if>>秘鲁</option>
			<option value="密克罗尼西亚"
				<c:if test="${cp1.country=='密克罗尼西亚'}">selected="true"</c:if>>密克罗尼西亚</option>
			<option value="孟加拉国"
				<c:if test="${cp1.country=='孟加拉国'}">selected="true"</c:if>>孟加拉国</option>
			<option value="蒙塞拉特岛"
				<c:if test="${cp1.country=='蒙塞拉特岛'}">selected="true"</c:if>>蒙塞拉特岛</option>

			<option value="蒙古"
				<c:if test="${cp1.country=='蒙古'}">selected="true"</c:if>>蒙古</option>
			<option value="美属维尔京群岛"
				<c:if test="${cp1.country=='美属维尔京群岛'}">selected="true"</c:if>>美属维尔京群岛</option>
			<option value="美国"
				<c:if test="${cp1.country=='美国'}">selected="true"</c:if>>美国</option>
			<option value="毛里塔尼亚"
				<c:if test="${cp1.country=='毛里塔尼亚'}">selected="true"</c:if>>毛里塔尼亚</option>
			<option value="毛里求斯"
				<c:if test="${cp1.country=='毛里求斯'}">selected="true"</c:if>>毛里求斯</option>
			<option value="马约特岛"
				<c:if test="${cp1.country=='马约特岛'}">selected="true"</c:if>>马约特岛</option>

			<option value="马提尼克"
				<c:if test="${cp1.country=='马提尼克'}">selected="true"</c:if>>马提尼克</option>
			<option value="马绍尔群岛"
				<c:if test="${cp1.country=='马绍尔群岛'}">selected="true"</c:if>>马绍尔群岛</option>
			<option value="马其顿"
				<c:if test="${cp1.country=='马其顿'}">selected="true"</c:if>>马其顿</option>
			<option value="马里"
				<c:if test="${cp1.country=='马里'}">selected="true"</c:if>>马里</option>
			<option value="马来西亚"
				<c:if test="${cp1.country=='马来西亚'}">selected="true"</c:if>>马来西亚</option>
			<option value="马拉维"
				<c:if test="${cp1.country=='马拉维'}">selected="true"</c:if>>马拉维</option>

			<option value="马耳他"
				<c:if test="${cp1.country=='马耳他'}">selected="true"</c:if>>马耳他</option>
			<option value="马尔代夫"
				<c:if test="${cp1.country=='马尔代夫'}">selected="true"</c:if>>马尔代夫</option>
			<option value="马达加斯加"
				<c:if test="${cp1.country=='马达加斯加'}">selected="true"</c:if>>马达加斯加</option>
			<option value="罗马尼亚"
				<c:if test="${cp1.country=='罗马尼亚'}">selected="true"</c:if>>罗马尼亚</option>
			<option value="卢旺达"
				<c:if test="${cp1.country=='卢旺达'}">selected="true"</c:if>>卢旺达</option>
			<option value="卢森堡"
				<c:if test="${cp1.country=='卢森堡'}">selected="true"</c:if>>卢森堡</option>

			<option value="列支敦士登"
				<c:if test="${cp1.country=='列支敦士登'}">selected="true"</c:if>>列支敦士登</option>
			<option value="立陶宛"
				<c:if test="${cp1.country=='立陶宛'}">selected="true"</c:if>>立陶宛</option>
			<option value="利比亚"
				<c:if test="${cp1.country=='利比亚'}">selected="true"</c:if>>利比亚</option>
			<option value="利比里亚"
				<c:if test="${cp1.country=='利比里亚'}">selected="true"</c:if>>利比里亚</option>
			<option value="黎巴嫩"
				<c:if test="${cp1.country=='黎巴嫩'}">selected="true"</c:if>>黎巴嫩</option>
			<option value="老挝"
				<c:if test="${cp1.country=='老挝'}">selected="true"</c:if>>老挝</option>

			<option value="莱索托"
				<c:if test="${cp1.country=='莱索托'}">selected="true"</c:if>>莱索托</option>
			<option value="拉脱维亚"
				<c:if test="${cp1.country=='拉脱维亚'}">selected="true"</c:if>>拉脱维亚</option>
			<option value="库科纳群岛"
				<c:if test="${cp1.country=='库科纳群岛'}">selected="true"</c:if>>库科纳群岛</option>
			<option value="肯尼亚"
				<c:if test="${cp1.country=='肯尼亚'}">selected="true"</c:if>>肯尼亚</option>
			<option value="克罗地亚"
				<c:if test="${cp1.country=='克罗地亚'}">selected="true"</c:if>>克罗地亚</option>
			<option value="科威特"
				<c:if test="${cp1.country=='科威特'}">selected="true"</c:if>>科威特</option>

			<option value="科摩罗群岛"
				<c:if test="${cp1.country=='科摩罗群岛'}">selected="true"</c:if>>科摩罗群岛</option>
			<option value="科克群岛"
				<c:if test="${cp1.country=='科克群岛'}">selected="true"</c:if>>科克群岛</option>
			<option value="开曼群岛"
				<c:if test="${cp1.country=='开曼群岛'}">selected="true"</c:if>>开曼群岛</option>
			<option value="卡塔尔"
				<c:if test="${cp1.country=='卡塔尔'}">selected="true"</c:if>>卡塔尔</option>
			<option value="喀麦隆"
				<c:if test="${cp1.country=='喀麦隆'}">selected="true"</c:if>>喀麦隆</option>
			<option value="津巴布韦"
				<c:if test="${cp1.country=='津巴布韦'}">selected="true"</c:if>>津巴布韦</option>

			<option value="捷克共和国"
				<c:if test="${cp1.country=='捷克共和国'}">selected="true"</c:if>>捷克共和国</option>
			<option value="柬埔寨"
				<c:if test="${cp1.country=='柬埔寨'}">selected="true"</c:if>>柬埔寨</option>
			<option value="加蓬"
				<c:if test="${cp1.country=='加蓬'}">selected="true"</c:if>>加蓬</option>
			<option value="加纳"
				<c:if test="${cp1.country=='加纳'}">selected="true"</c:if>>加纳</option>
			<option value="加拿大"
				<c:if test="${cp1.country=='加拿大'}">selected="true"</c:if>>加拿大</option>
			<option value="几内亚比绍"
				<c:if test="${cp1.country=='几内亚比绍'}">selected="true"</c:if>>几内亚比绍</option>

			<option value="几内亚"
				<c:if test="${cp1.country=='几内亚'}">selected="true"</c:if>>几内亚</option>
			<option value="吉尔吉斯斯坦"
				<c:if test="${cp1.country=='吉尔吉斯斯坦'}">selected="true"</c:if>>吉尔吉斯斯坦</option>
			<option value="吉布提"
				<c:if test="${cp1.country=='吉布提'}">selected="true"</c:if>>吉布提</option>
			<option value="基里巴斯"
				<c:if test="${cp1.country=='基里巴斯'}">selected="true"</c:if>>基里巴斯</option>
			<option value="洪都拉斯"
				<c:if test="${cp1.country=='洪都拉斯'}">selected="true"</c:if>>洪都拉斯</option>
			<option value="荷属安的列斯岛"
				<c:if test="${cp1.country=='荷属安的列斯岛'}">selected="true"</c:if>>荷属安的列斯岛</option>

			<option value="荷德/马克多纳岛"
				<c:if test="${cp1.country=='荷德/马克多纳岛'}">selected="true"</c:if>>荷德/马克多纳岛</option>
			<option value="荷 兰"
				<c:if test="${cp1.country=='荷 兰'}">selected="true"</c:if>>荷
				兰</option>
			<option value="韩国"
				<c:if test="${cp1.country=='韩国'}">selected="true"</c:if>>韩国</option>
			<option value="海地"
				<c:if test="${cp1.country=='海地'}">selected="true"</c:if>>海地</option>
			<option value="哈萨克斯坦"
				<c:if test="${cp1.country=='哈萨克斯坦'}">selected="true"</c:if>>哈萨克斯坦</option>
			<option value="圭亚那 "
				<c:if test="${cp1.country=='圭亚那'}">selected="true"</c:if>>圭亚那</option>

			<option value="关岛"
				<c:if test="${cp1.country=='关岛'}">selected="true"</c:if>>关岛</option>
			<option value="瓜达洛普"
				<c:if test="${cp1.country=='瓜达洛普'}">selected="true"</c:if>>瓜达洛普</option>
			<option value="古巴"
				<c:if test="${cp1.country=='古巴'}">selected="true"</c:if>>古巴</option>
			<option value="格陵兰岛"
				<c:if test="${cp1.country=='格陵兰岛'}">selected="true"</c:if>>格陵兰岛</option>
			<option value="格林纳达"
				<c:if test="${cp1.country=='格林纳达'}">selected="true"</c:if>>格林纳达</option>
			<option value="哥斯答黎加"
				<c:if test="${cp1.country=='哥斯答黎加'}">selected="true"</c:if>>哥斯答黎加</option>

			<option value="哥伦比亚"
				<c:if test="${cp1.country=='哥伦比亚'}">selected="true"</c:if>>哥伦比亚</option>
			<option value="刚果民主共和国"
				<c:if test="${cp1.country=='刚果民主共和国'}">selected="true"</c:if>>刚果民主共和国</option>
			<option value="刚果"
				<c:if test="${cp1.country=='刚果'}">selected="true"</c:if>>刚果</option>
			<option value="冈比亚"
				<c:if test="${cp1.country=='冈比亚'}">selected="true"</c:if>>冈比亚</option>
			<option value="福克兰群岛"
				<c:if test="${cp1.country=='福克兰群岛'}">selected="true"</c:if>>福克兰群岛</option>
			<option value="佛得角群岛"
				<c:if test="${cp1.country=='佛得角群岛'}">selected="true"</c:if>>佛得角群岛</option>

			<option value="芬兰"
				<c:if test="${cp1.country=='芬兰'}">selected="true"</c:if>>芬兰</option>
			<option value="斐济"
				<c:if test="${cp1.country=='斐济'}">selected="true"</c:if>>斐济</option>
			<option value="菲律宾"
				<c:if test="${cp1.country=='菲律宾'}">selected="true"</c:if>>菲律宾</option>
			<option value="梵蒂冈城"
				<c:if test="${cp1.country=='梵蒂冈城'}">selected="true"</c:if>>梵蒂冈城</option>
			<option value="法属圣特里特"
				<c:if test="${cp1.country=='法属圣特里特'}">selected="true"</c:if>>法属圣特里特</option>
			<option value="法属圭亚那"
				<c:if test="${cp1.country=='法属圭亚那'}">selected="true"</c:if>>法属圭亚那</option>

			<option value="法属波利尼西亚"
				<c:if test="${cp1.country=='法属波利尼西亚'}">selected="true"</c:if>>法属波利尼西亚</option>
			<option value="法罗群岛"
				<c:if test="${cp1.country=='法罗群岛'}">selected="true"</c:if>>法罗群岛</option>
			<option value="法国"
				<c:if test="${cp1.country=='法国'}">selected="true"</c:if>>法国</option>
			<option value="厄瓜多尔"
				<c:if test="${cp1.country=='厄瓜多尔'}">selected="true"</c:if>>厄瓜多尔</option>
			<option value="俄罗斯联邦"
				<c:if test="${cp1.country=='俄罗斯联邦'}">selected="true"</c:if>>俄罗斯联邦</option>
			<option value="多米尼加共和国"
				<c:if test="${cp1.country=='多米尼加共和国'}">selected="true"</c:if>>多米尼加共和国</option>

			<option value="多米尼加"
				<c:if test="${cp1.country=='多米尼加'}">selected="true"</c:if>>多米尼加</option>
			<option value="多哥"
				<c:if test="${cp1.country=='多哥'}">selected="true"</c:if>>多哥</option>
			<option value="东帝汶岛"
				<c:if test="${cp1.country=='东帝汶岛'}">selected="true"</c:if>>东帝汶岛</option>
			<option value="德国"
				<c:if test="${cp1.country=='德国'}">selected="true"</c:if>>德国</option>
			<option value="丹麦"
				<c:if test="${cp1.country=='丹麦'}">selected="true"</c:if>>丹麦</option>
			<option value="赤道几内亚"
				<c:if test="${cp1.country=='赤道几内亚'}">selected="true"</c:if>>赤道几内亚</option>

			<option value="布维群岛"
				<c:if test="${cp1.country=='布维群岛'}">selected="true"</c:if>>布维群岛</option>
			<option value="布隆迪"
				<c:if test="${cp1.country=='布隆迪'}">selected="true"</c:if>>布隆迪</option>
			<option value="布基纳法索"
				<c:if test="${cp1.country=='布基纳法索'}">selected="true"</c:if>>布基纳法索</option>
			<option value="不丹"
				<c:if test="${cp1.country=='不丹'}">selected="true"</c:if>>不丹</option>
			<option value="伯利兹"
				<c:if test="${cp1.country=='伯利兹'}">selected="true"</c:if>>伯利兹</option>
			<option value="博茨瓦纳"
				<c:if test="${cp1.country=='博茨瓦纳'}">selected="true"</c:if>>博茨瓦纳</option>

			<option value="玻利维亚"
				<c:if test="${cp1.country=='玻利维亚'}">selected="true"</c:if>>玻利维亚</option>
			<option value="波兰"
				<c:if test="${cp1.country=='波兰'}">selected="true"</c:if>>波兰</option>
			<option value="波黑"
				<c:if test="${cp1.country=='波黑'}">selected="true"</c:if>>波黑</option>
			<option value="波多黎哥"
				<c:if test="${cp1.country=='波多黎哥'}">selected="true"</c:if>>波多黎哥</option>
			<option value="冰岛"
				<c:if test="${cp1.country=='冰岛'}">selected="true"</c:if>>冰岛</option>
			<option value="比利时"
				<c:if test="${cp1.country=='比利时'}">selected="true"</c:if>>比利时</option>

			<option value="贝宁"
				<c:if test="${cp1.country=='贝宁'}">selected="true"</c:if>>贝宁</option>
			<option value="北马里亚纳"
				<c:if test="${cp1.country=='北马里亚纳'}">selected="true"</c:if>>北马里亚纳</option>
			<option value="北朝鲜"
				<c:if test="${cp1.country=='北朝鲜'}">selected="true"</c:if>>北朝鲜</option>
			<option value="保加利亚"
				<c:if test="${cp1.country=='保加利亚'}">selected="true"</c:if>>保加利亚</option>
			<option value="百慕大群岛"
				<c:if test="${cp1.country=='百慕大群岛'}">selected="true"</c:if>>百慕大群岛</option>
			<option value="白俄罗斯"
				<c:if test="${cp1.country=='白俄罗斯'}">selected="true"</c:if>>白俄罗斯</option>

			<option value="巴西"
				<c:if test="${cp1.country=='巴西'}">selected="true"</c:if>>巴西</option>
			<option value="巴拿马"
				<c:if test="${cp1.country=='巴拿马'}">selected="true"</c:if>>巴拿马</option>
			<option value="巴林"
				<c:if test="${cp1.country=='巴林'}">selected="true"</c:if>>巴林</option>
			<option value="巴拉圭"
				<c:if test="${cp1.country=='巴拉圭'}">selected="true"</c:if>>巴拉圭</option>
			<option value="巴基斯坦"
				<c:if test="${cp1.country=='巴基斯坦'}">selected="true"</c:if>>巴基斯坦</option>
			<option value="巴哈马(群岛)"
				<c:if test="${cp1.country=='巴哈马(群岛)'}">selected="true"</c:if>>巴哈马(群岛)</option>

			<option value="巴布亚新几内亚"
				<c:if test="${cp1.country=='巴布亚新几内亚'}">selected="true"</c:if>>巴布亚新几内亚</option>
			<option value="巴巴多斯"
				<c:if test="${cp1.country=='巴巴多斯'}">selected="true"</c:if>>巴巴多斯</option>
			<option value="奥地利"
				<c:if test="${cp1.country=='奥地利'}">selected="true"</c:if>>奥地利</option>
			<option value="澳大利亚"
				<c:if test="${cp1.country=='澳大利亚'}">selected="true"</c:if>>澳大利亚</option>
			<option value="安提瓜和巴布达"
				<c:if test="${cp1.country=='安提瓜和巴布达'}">selected="true"</c:if>>安提瓜和巴布达</option>
			<option value="安圭拉岛"
				<c:if test="${cp1.country=='安圭拉岛'}">selected="true"</c:if>>安圭拉岛</option>

			<option value="安哥拉"
				<c:if test="${cp1.country=='安哥拉'}">selected="true"</c:if>>安哥拉</option>
			<option value="安道尔"
				<c:if test="${cp1.country=='安道尔'}">selected="true"</c:if>>安道尔</option>
			<option value="爱沙尼亚"
				<c:if test="${cp1.country=='爱沙尼亚'}">selected="true"</c:if>>爱沙尼亚</option>
			<option value="爱尔兰"
				<c:if test="${cp1.country=='爱尔兰'}">selected="true"</c:if>>爱尔兰</option>
			<option value="埃塞俄比亚"
				<c:if test="${cp1.country=='埃塞俄比亚'}">selected="true"</c:if>>埃塞俄比亚</option>
			<option value="埃立特里亚"
				<c:if test="${cp1.country=='埃立特里亚'}">selected="true"</c:if>>埃立特里亚</option>

			<option value="埃及"
				<c:if test="${cp1.country=='埃及'}">selected="true"</c:if>>埃及</option>
			<option value="阿塞拜疆"
				<c:if test="${cp1.country=='阿塞拜疆'}">selected="true"</c:if>>阿塞拜疆</option>
			<option value="阿曼"
				<c:if test="${cp1.country=='阿曼'}">selected="true"</c:if>>阿曼</option>
			<option value="阿鲁巴"
				<c:if test="${cp1.country=='阿鲁巴'}">selected="true"</c:if>>阿鲁巴</option>
			<option value="阿联酋"
				<c:if test="${cp1.country=='阿联酋'}">selected="true"</c:if>>阿联酋</option>
			<option value="阿根廷"
				<c:if test="${cp1.country=='阿根廷'}">selected="true"</c:if>>阿根廷</option>

			<option value="阿富汗"
				<c:if test="${cp1.country=='阿富汗'}">selected="true"</c:if>>阿富汗</option>
			<option value="阿尔及利亚"
				<c:if test="${cp1.country=='阿尔及利亚'}">selected="true"</c:if>>阿尔及利亚</option>
			<option value="阿尔巴尼亚"
				<c:if test="${cp1.country=='阿尔巴尼亚'}">selected="true"</c:if>>阿尔巴尼亚</option>
			<option value="SZ"
				<c:if test="${cp1.country=='SZ'}">selected="true"</c:if>>斯威士兰</option>
			<option value="St.Pier,Miquel."
				<c:if test="${cp1.country=='St.Pier,Miquel.'}">selected="true"</c:if>>St.Pier,Miquel.</option>
			<option value="CAR"
				<c:if test="${cp1.country=='CAR'}">selected="true"="selected="true""</c:if>>CAR</option>

</SELECT> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          width=130>身份证明注册地</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><SELECT name="province1" inputsn="10">
          <option value="">-请选择-</option>
		<option value="境外"
			<c:if test="${cp1.province=='境外'}">selected="true"</c:if>>境外</option>
		<option value="北京"
			<c:if test="${cp1.province=='北京'}">selected="true"</c:if>>北京</option>
		<option value="上海"
			<c:if test="${cp1.province=='上海'}">selected="true"</c:if>>上海</option>
		<option value="天津"
			<c:if test="${cp1.province=='天津'}">selected="true"</c:if>>天津</option>
		<option value="内蒙古"
			<c:if test="${cp1.province=='内蒙古'}">selected="true"</c:if>>内蒙古</option>
		<option value="山西"
			<c:if test="${cp1.province=='山西'}">selected="true"</c:if>>山西</option>
		<option value="河北"
			<c:if test="${cp1.province=='河北'}">selected="true"</c:if>>河北</option>
		<option value="辽宁"
			<c:if test="${cp1.province=='辽宁'}">selected="true"</c:if>>辽宁</option>
		<option value="吉林"
			<c:if test="${cp1.province=='吉林'}">selected="true"</c:if>>吉林</option>
		<option value="黑龙江"
			<c:if test="${cp1.province=='黑龙江'}">selected="true"</c:if>>黑龙江</option>
		<option value="江苏"
			<c:if test="${cp1.province=='江苏'}">selected="true"</c:if>>江苏</option>
		<option value="安徽"
			<c:if test="${cp1.province=='安徽'}">selected="true"</c:if>>安徽</option>
		<option value="山东"
			<c:if test="${cp1.province=='山东'}">selected="true"</c:if>>山东</option>
		<option value="浙江"
			<c:if test="${cp1.province=='浙江'}">selected="true"</c:if>>浙江</option>
		<option value="江西"
			<c:if test="${cp1.province=='江西'}">selected="true"</c:if>>江西</option>
		<option value="福建"
			<c:if test="${cp1.province=='福建'}">selected="true"</c:if>>福建</option>
		<option value="湖南"
			<c:if test="${cp1.province=='湖南'}">selected="true"</c:if>>湖南</option>
		<option value="湖北"
			<c:if test="${cp1.province=='湖北'}">selected="true"</c:if>>湖北</option>
		<option value="河南"
			<c:if test="${cp1.province=='河南'}">selected="true"</c:if>>河南</option>
		<option value="广东"
			<c:if test="${cp1.province=='广东'}">selected="true"</c:if>>广东</option>
		<option value="海南"
			<c:if test="${cp1.province=='海南'}">selected="true"</c:if>>海南</option>
		<option value="广西"
			<c:if test="${cp1.province=='广西'}">selected="true"</c:if>>广西</option>
		<option value="贵州"
			<c:if test="${cp1.province=='贵州'}">selected="true"</c:if>>贵州</option>
		<option value="四川"
			<c:if test="${cp1.province=='四川'}">selected="true"</c:if>>四川</option>
		<option value="云南"
			<c:if test="${cp1.province=='云南'}">selected="true"</c:if>>云南</option>
		<option value="陕西"
			<c:if test="${cp1.province=='陕西'}">selected="true"</c:if>>陕西</option>
		<option value="甘肃"
			<c:if test="${cp1.province=='甘肃'}">selected="true"</c:if>>甘肃</option>
		<option value="宁夏"
			<c:if test="${cp1.province=='宁夏'}">selected="true"</c:if>>宁夏</option>
		<option value="青海"
			<c:if test="${cp1.province=='青海'}">selected="true"</c:if>>青海</option>
		<option value="新疆"
			<c:if test="${cp1.province=='新疆'}">selected="true"</c:if>>新疆</option>
		<option value="西藏"
			<c:if test="${cp1.province=='西藏'}">selected="true"</c:if>>西藏</option>
		<option value="重庆"
			<c:if test="${cp1.province=='重庆'}">selected="true"</c:if>>重庆</option>
		<option value="香港"
			<c:if test="${cp1.province=='香港'}">selected="true"</c:if>>香港</option>
		<option value="澳门"
			<c:if test="${cp1.province=='澳门'}">selected="true"</c:if>>澳门</option>
		<option value="台湾"
			<c:if test="${cp1.province=='台湾'}">selected="true"</c:if>>台湾</option>
	</SELECT> <INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name="city1" maxLength=100 size=15 
            tips="法人和其他组织填写依法注册的省市；个人填写合法身份证明发放的省市。" length="50" 
            errmsg="市（区）不能为空！" valid="required" value="<c:out value='${cp1.city}' />" />
             <c:if test="${cp1stat.index!=0}">
             <DIV style="FLOAT: right">
            <INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></c:if>
            </TD></TR>
            </TBODY></TABLE>
            </DIV>
            </c:forEach>
            </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">受让（被许可）方信息</DIV>
      <DIV style="FLOAT: right" id=personData1Info>
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
          <TD><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 300px; HEIGHT: 20px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
          onmouseout=cpcc_showtip() rows=1 name="name2" tips="法人或其他组织填写名称；个人填写姓名；" length="100" errmsg="姓名或名称不能为空！" valid="required"></TEXTAREA> 
          </TD>
          <TD style="WIDTH: 40px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name="country2">
             <option selected="true" value="中国">中国</option>
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
															</SELECT> </TD>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          width=130>身份证明注册地</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left">
            <SELECT name="province2" inputsn="10"> 
            <option value="">-请选择-</option>
															<option value="境外">境外</option>
															<option value="北京" selected="true">北京</option>
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
															</SELECT> <INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name=city2 maxLength=100 size=15 
            tips="法人和其他组织填写依法注册的省市；个人填写合法身份证明发放的省市。" length="50" 
            errmsg="市（区）不能为空！" valid="required"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV>
            <c:forEach items="${cps2}" var="cp2" varStatus="cp2Stat">
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
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><TEXTAREA style="TEXT-ALIGN: left; WIDTH: 300px; HEIGHT: 20px; OVERFLOW: hidden" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350)
          onmouseout=cpcc_showtip() rows=1 name="name2" tips="法人或其他组织填写名称；个人填写姓名；" length="100" errmsg="姓名或名称不能为空！"
           valid="required"><c:out value='${cp2.name}' /></TEXTAREA> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 40px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px">国籍</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><SELECT 
            style="WIDTH: 115px" name="country2">
            <option value="中国"
				<c:if test="${cp2.country=='中国'}">selected="true"</c:if>>中国</option>
			<option value="智利"
				<c:if test="${cp2.country=='智利'}">selected="true"</c:if>>智利</option>
			<option value="直布罗陀"
				<c:if test="${cp2.country=='直布罗陀'}">selected="true"</c:if>>直布罗陀</option>
			<option value="乍得"
				<c:if test="${cp2.country=='乍得'}">selected="true"</c:if>>乍得</option>
			<option value="赞比亚"
				<c:if test="${cp2.country=='赞比亚'}">selected="true"</c:if>>赞比亚</option>
			<option value="越南"
				<c:if test="${cp2.country=='越南'}">selected="true"</c:if>>越南</option>
			<option value="约旦"
				<c:if test="${cp2.country=='约旦'}">selected="true"</c:if>>约旦</option>

			<option value="英属印度洋区"
				<c:if test="${cp2.country=='英属印度洋区'}">selected="true"</c:if>>英属印度洋区</option>
			<option value="英属维尔京群岛"
				<c:if test="${cp2.country=='英属维尔京群岛'}">selected="true"</c:if>>英属维尔京群岛</option>
			<option value="英国"
				<c:if test="${cp2.country=='英国'}">selected="true"</c:if>>英国</option>
			<option value="印度尼西亚"
				<c:if test="${cp2.country=='印度尼西亚'}">selected="true"</c:if>>印度尼西亚</option>
			<option value="印度"
				<c:if test="${cp2.country=='印度'}">selected="true"</c:if>>印度</option>
			<option value="意大利"
				<c:if test="${cp2.country=='意大利'}">selected="true"</c:if>>意大利</option>

			<option value="以色列"
				<c:if test="${cp2.country=='以色列'}">selected="true"</c:if>>以色列</option>
			<option value="伊朗"
				<c:if test="${cp2.country=='伊朗'}">selected="true"</c:if>>伊朗</option>
			<option value="伊拉克"
				<c:if test="${cp2.country=='伊拉克'}">selected="true"</c:if>>伊拉克</option>
			<option value="也门"
				<c:if test="${cp2.country=='也门'}">selected="true"</c:if>>也门</option>
			<option value="亚美尼亚"
				<c:if test="${cp2.country=='亚美尼亚'}">selected="true"</c:if>>亚美尼亚</option>
			<option value="牙买加"
				<c:if test="${cp2.country=='牙买加'}">selected="true"</c:if>>牙买加</option>

			<option value="叙利亚"
				<c:if test="${cp2.country=='叙利亚'}">selected="true"</c:if>>叙利亚</option>
			<option value="匈牙利"
				<c:if test="${cp2.country=='匈牙利'}">selected="true"</c:if>>匈牙利</option>
			<option value="新西兰"
				<c:if test="${cp2.country=='新西兰'}">selected="true"</c:if>>新西兰</option>
			<option value="新喀里多尼亚"
				<c:if test="${cp2.country=='新喀里多尼亚'}">selected="true"</c:if>>新喀里多尼亚</option>
			<option value="新加坡"
				<c:if test="${cp2.country=='新加坡'}">selected="true"</c:if>>新加坡</option>
			<option value="小奥特兰群岛"
				<c:if test="${cp2.country=='小奥特兰群岛'}">selected="true"</c:if>>小奥特兰群岛</option>

			<option value="象牙海岸"
				<c:if test="${cp2.country=='象牙海岸'}">selected="true"</c:if>>象牙海岸</option>
			<option value="希腊"
				<c:if test="${cp2.country=='希腊'}">selected="true"</c:if>>希腊</option>
			<option value="西班牙"
				<c:if test="${cp2.country=='西班牙'}">selected="true"</c:if>>西班牙</option>
			<option value="乌兹别克斯坦"
				<c:if test="${cp2.country=='乌兹别克斯坦'}">selected="true"</c:if>>乌兹别克斯坦</option>
			<option value="乌拉圭"
				<c:if test="${cp2.country=='乌拉圭'}">selected="true"</c:if>>乌拉圭</option>
			<option value="乌克兰"
				<c:if test="${cp2.country=='乌克兰'}">selected="true"</c:if>>乌克兰</option>

			<option value="乌干达"
				<c:if test="${cp2.country=='乌干达'}">selected="true"</c:if>>乌干达</option>
			<option value="文莱达鲁萨兰"
				<c:if test="${cp2.country=='文莱达鲁萨兰'}">selected="true"</c:if>>文莱达鲁萨兰</option>
			<option value="委内瑞拉"
				<c:if test="${cp2.country=='委内瑞拉'}">selected="true"</c:if>>委内瑞拉</option>
			<option value="危地马拉"
				<c:if test="${cp2.country=='危地马拉'}">selected="true"</c:if>>危地马拉</option>
			<option value="瓦努阿图"
				<c:if test="${cp2.country=='瓦努阿图'}">selected="true"</c:if>>瓦努阿图</option>
			<option value="瓦利斯/富图纳岛"
				<c:if test="${cp2.country=='瓦利斯/富图纳岛'}">selected="true"</c:if>>瓦利斯/富图纳岛</option>

			<option value="托客劳群岛"
				<c:if test="${cp2.country=='托客劳群岛'}">selected="true"</c:if>>托客劳群岛</option>
			<option value="土库曼斯坦"
				<c:if test="${cp2.country=='土库曼斯坦'}">selected="true"</c:if>>土库曼斯坦</option>
			<option value="土耳其"
				<c:if test="${cp2.country=='土耳其'}">selected="true"</c:if>>土耳其</option>
			<option value="图瓦卢"
				<c:if test="${cp2.country=='图瓦卢'}">selected="true"</c:if>>图瓦卢</option>
			<option value="突尼斯"
				<c:if test="${cp2.country=='突尼斯'}">selected="true"</c:if>>突尼斯</option>
			<option value="统一"
				<c:if test="${cp2.country=='统一'}">selected="true"</c:if>>统一</option>

			<option value="特立尼达/多巴哥"
				<c:if test="${cp2.country=='特立尼达/多巴哥'}">selected="true"</c:if>>特立尼达/多巴哥</option>
			<option value="特克斯/凯科斯岛"
				<c:if test="${cp2.country=='特克斯/凯科斯岛'}">selected="true"</c:if>>特克斯/凯科斯岛</option>
			<option value="汤加"
				<c:if test="${cp2.country=='汤加'}">selected="true"</c:if>>汤加</option>
			<option value="坦桑尼亚"
				<c:if test="${cp2.country=='坦桑尼亚'}">selected="true"</c:if>>坦桑尼亚</option>
			<option value="泰国"
				<c:if test="${cp2.country=='泰国'}">selected="true"</c:if>>泰国</option>
			<option value="塔吉克斯坦"
				<c:if test="${cp2.country=='塔吉克斯坦'}">selected="true"</c:if>>塔吉克斯坦</option>

			<option value="索马里"
				<c:if test="${cp2.country=='索马里'}">selected="true"</c:if>>索马里</option>
			<option value="所罗门群岛"
				<c:if test="${cp2.country=='所罗门群岛'}">selected="true"</c:if>>所罗门群岛</option>
			<option value="苏里南"
				<c:if test="${cp2.country=='苏里南'}">selected="true"</c:if>>苏里南</option>
			<option value="苏丹"
				<c:if test="${cp2.country=='苏丹'}">selected="true"</c:if>>苏丹</option>
			<option value="斯洛文尼亚"
				<c:if test="${cp2.country=='斯洛文尼亚'}">selected="true"</c:if>>斯洛文尼亚</option>
			<option value="斯洛伐克"
				<c:if test="${cp2.country=='斯洛伐克'}">selected="true"</c:if>>斯洛伐克</option>

			<option value="斯里兰卡"
				<c:if test="${cp2.country=='斯里兰卡'}">selected="true"</c:if>>斯里兰卡</option>
			<option value="圣文森特"
				<c:if test="${cp2.country=='圣文森特'}">selected="true"</c:if>>圣文森特</option>
			<option value="圣马力诺"
				<c:if test="${cp2.country=='圣马力诺'}">selected="true"</c:if>>圣马力诺</option>
			<option value="圣路西亚"
				<c:if test="${cp2.country=='圣路西亚'}">selected="true"</c:if>>圣路西亚</option>
			<option value="圣基茨和那维斯"
				<c:if test="${cp2.country=='圣基茨和那维斯'}">selected="true"</c:if>>圣基茨和那维斯</option>
			<option value="圣赫勒拿岛"
				<c:if test="${cp2.country=='圣赫勒拿岛'}">selected="true"</c:if>>圣赫勒拿岛</option>

			<option value="圣多马/普林西比"
				<c:if test="${cp2.country=='圣多马/普林西比'}">selected="true"</c:if>>圣多马/普林西比</option>
			<option value="圣诞岛"
				<c:if test="${cp2.country=='圣诞岛'}">selected="true"</c:if>>圣诞岛</option>
			<option value="沙特阿拉伯"
				<c:if test="${cp2.country=='沙特阿拉伯'}">selected="true"</c:if>>沙特阿拉伯</option>
			<option value="塞舌尔群岛"
				<c:if test="${cp2.country=='塞舌尔群岛'}">selected="true"</c:if>>塞舌尔群岛</option>
			<option value="塞浦路斯"
				<c:if test="${cp2.country=='塞浦路斯'}">selected="true"</c:if>>塞浦路斯</option>
			<option value="塞内加尔"
				<c:if test="${cp2.country=='塞内加尔'}">selected="true"</c:if>>塞内加尔</option>

			<option value="塞拉利昂"
				<c:if test="${cp2.country=='塞拉利昂'}">selected="true"</c:if>>塞拉利昂</option>
			<option value="塞尔维亚及门的"
				<c:if test="${cp2.country=='塞尔维亚及门的'}">selected="true"</c:if>>塞尔维亚及门的</option>
			<option value="塞尔维亚/Monten"
				<c:if test="${cp2.country=='塞尔维亚/Monten'}">selected="true"</c:if>>塞尔维亚/Monten</option>
			<option value="萨摩亚, 美国"
				<c:if test="${cp2.country=='萨摩亚, 美国'}">selected="true"</c:if>>萨摩亚,
				美国</option>
			<option value="萨摩亚"
				<c:if test="${cp2.country=='萨摩亚'}">selected="true"</c:if>>萨摩亚</option>
			<option value="萨尔瓦多"
				<c:if test="${cp2.country=='萨尔瓦多'}">selected="true"</c:if>>萨尔瓦多</option>

			<option value="撒哈拉西部"
				<c:if test="${cp2.country=='撒哈拉西部'}">selected="true"</c:if>>撒哈拉西部</option>
			<option value="瑞士"
				<c:if test="${cp2.country=='瑞士'}">selected="true"</c:if>>瑞士</option>
			<option value="瑞典"
				<c:if test="${cp2.country=='瑞典'}">selected="true"</c:if>>瑞典</option>
			<option value="日本"
				<c:if test="${cp2.country=='日本'}">selected="true"</c:if>>日本</option>
			<option value="乔治亚"
				<c:if test="${cp2.country=='乔治亚'}">selected="true"</c:if>>乔治亚</option>
			<option value="葡萄牙"
				<c:if test="${cp2.country=='葡萄牙'}">selected="true"</c:if>>葡萄牙</option>

			<option value="皮特肯岛"
				<c:if test="${cp2.country=='皮特肯岛'}">selected="true"</c:if>>皮特肯岛</option>
			<option value="帕劳"
				<c:if test="${cp2.country=='帕劳'}">selected="true"</c:if>>帕劳</option>
			<option value="诺福克岛"
				<c:if test="${cp2.country=='诺福克岛'}">selected="true"</c:if>>诺福克岛</option>
			<option value="挪威"
				<c:if test="${cp2.country=='挪威'}">selected="true"</c:if>>挪威</option>
			<option value="纽埃群岛"
				<c:if test="${cp2.country=='纽埃群岛'}">selected="true"</c:if>>纽埃群岛</option>
			<option value="尼日利亚"
				<c:if test="${cp2.country=='尼日利亚'}">selected="true"</c:if>>尼日利亚</option>

			<option value="尼日尔"
				<c:if test="${cp2.country=='尼日尔'}">selected="true"</c:if>>尼日尔</option>
			<option value="尼加拉瓜"
				<c:if test="${cp2.country=='尼加拉瓜'}">selected="true"</c:if>>尼加拉瓜</option>
			<option value="尼泊尔"
				<c:if test="${cp2.country=='尼泊尔'}">selected="true"</c:if>>尼泊尔</option>
			<option value="瑙鲁"
				<c:if test="${cp2.country=='瑙鲁'}">selected="true"</c:if>>瑙鲁</option>
			<option value="南三维治岛"
				<c:if test="${cp2.country=='南三维治岛'}">selected="true"</c:if>>南三维治岛</option>
			<option value="南极洲"
				<c:if test="${cp2.country=='南极洲'}">selected="true"</c:if>>南极洲</option>

			<option value="南非"
				<c:if test="${cp2.country=='南非'}">selected="true"</c:if>>南非</option>
			<option value="纳米比亚"
				<c:if test="${cp2.country=='纳米比亚'}">selected="true"</c:if>>纳米比亚</option>
			<option value="墨西哥"
				<c:if test="${cp2.country=='墨西哥'}">selected="true"</c:if>>墨西哥</option>
			<option value="莫桑比克"
				<c:if test="${cp2.country=='莫桑比克'}">selected="true"</c:if>>莫桑比克</option>
			<option value="摩纳哥"
				<c:if test="${cp2.country=='摩纳哥'}">selected="true"</c:if>>摩纳哥</option>
			<option value="摩洛哥"
				<c:if test="${cp2.country=='摩洛哥'}">selected="true"</c:if>>摩洛哥</option>

			<option value="摩尔多瓦"
				<c:if test="${cp2.country=='摩尔多瓦'}">selected="true"</c:if>>摩尔多瓦</option>
			<option value="缅甸"
				<c:if test="${cp2.country=='缅甸'}">selected="true"</c:if>>缅甸</option>
			<option value="秘鲁"
				<c:if test="${cp2.country=='秘鲁'}">selected="true"</c:if>>秘鲁</option>
			<option value="密克罗尼西亚"
				<c:if test="${cp2.country=='密克罗尼西亚'}">selected="true"</c:if>>密克罗尼西亚</option>
			<option value="孟加拉国"
				<c:if test="${cp2.country=='孟加拉国'}">selected="true"</c:if>>孟加拉国</option>
			<option value="蒙塞拉特岛"
				<c:if test="${cp2.country=='蒙塞拉特岛'}">selected="true"</c:if>>蒙塞拉特岛</option>

			<option value="蒙古"
				<c:if test="${cp2.country=='蒙古'}">selected="true"</c:if>>蒙古</option>
			<option value="美属维尔京群岛"
				<c:if test="${cp2.country=='美属维尔京群岛'}">selected="true"</c:if>>美属维尔京群岛</option>
			<option value="美国"
				<c:if test="${cp2.country=='美国'}">selected="true"</c:if>>美国</option>
			<option value="毛里塔尼亚"
				<c:if test="${cp2.country=='毛里塔尼亚'}">selected="true"</c:if>>毛里塔尼亚</option>
			<option value="毛里求斯"
				<c:if test="${cp2.country=='毛里求斯'}">selected="true"</c:if>>毛里求斯</option>
			<option value="马约特岛"
				<c:if test="${cp2.country=='马约特岛'}">selected="true"</c:if>>马约特岛</option>

			<option value="马提尼克"
				<c:if test="${cp2.country=='马提尼克'}">selected="true"</c:if>>马提尼克</option>
			<option value="马绍尔群岛"
				<c:if test="${cp2.country=='马绍尔群岛'}">selected="true"</c:if>>马绍尔群岛</option>
			<option value="马其顿"
				<c:if test="${cp2.country=='马其顿'}">selected="true"</c:if>>马其顿</option>
			<option value="马里"
				<c:if test="${cp2.country=='马里'}">selected="true"</c:if>>马里</option>
			<option value="马来西亚"
				<c:if test="${cp2.country=='马来西亚'}">selected="true"</c:if>>马来西亚</option>
			<option value="马拉维"
				<c:if test="${cp2.country=='马拉维'}">selected="true"</c:if>>马拉维</option>

			<option value="马耳他"
				<c:if test="${cp2.country=='马耳他'}">selected="true"</c:if>>马耳他</option>
			<option value="马尔代夫"
				<c:if test="${cp2.country=='马尔代夫'}">selected="true"</c:if>>马尔代夫</option>
			<option value="马达加斯加"
				<c:if test="${cp2.country=='马达加斯加'}">selected="true"</c:if>>马达加斯加</option>
			<option value="罗马尼亚"
				<c:if test="${cp2.country=='罗马尼亚'}">selected="true"</c:if>>罗马尼亚</option>
			<option value="卢旺达"
				<c:if test="${cp2.country=='卢旺达'}">selected="true"</c:if>>卢旺达</option>
			<option value="卢森堡"
				<c:if test="${cp2.country=='卢森堡'}">selected="true"</c:if>>卢森堡</option>

			<option value="列支敦士登"
				<c:if test="${cp2.country=='列支敦士登'}">selected="true"</c:if>>列支敦士登</option>
			<option value="立陶宛"
				<c:if test="${cp2.country=='立陶宛'}">selected="true"</c:if>>立陶宛</option>
			<option value="利比亚"
				<c:if test="${cp2.country=='利比亚'}">selected="true"</c:if>>利比亚</option>
			<option value="利比里亚"
				<c:if test="${cp2.country=='利比里亚'}">selected="true"</c:if>>利比里亚</option>
			<option value="黎巴嫩"
				<c:if test="${cp2.country=='黎巴嫩'}">selected="true"</c:if>>黎巴嫩</option>
			<option value="老挝"
				<c:if test="${cp2.country=='老挝'}">selected="true"</c:if>>老挝</option>

			<option value="莱索托"
				<c:if test="${cp2.country=='莱索托'}">selected="true"</c:if>>莱索托</option>
			<option value="拉脱维亚"
				<c:if test="${cp2.country=='拉脱维亚'}">selected="true"</c:if>>拉脱维亚</option>
			<option value="库科纳群岛"
				<c:if test="${cp2.country=='库科纳群岛'}">selected="true"</c:if>>库科纳群岛</option>
			<option value="肯尼亚"
				<c:if test="${cp2.country=='肯尼亚'}">selected="true"</c:if>>肯尼亚</option>
			<option value="克罗地亚"
				<c:if test="${cp2.country=='克罗地亚'}">selected="true"</c:if>>克罗地亚</option>
			<option value="科威特"
				<c:if test="${cp2.country=='科威特'}">selected="true"</c:if>>科威特</option>

			<option value="科摩罗群岛"
				<c:if test="${cp2.country=='科摩罗群岛'}">selected="true"</c:if>>科摩罗群岛</option>
			<option value="科克群岛"
				<c:if test="${cp2.country=='科克群岛'}">selected="true"</c:if>>科克群岛</option>
			<option value="开曼群岛"
				<c:if test="${cp2.country=='开曼群岛'}">selected="true"</c:if>>开曼群岛</option>
			<option value="卡塔尔"
				<c:if test="${cp2.country=='卡塔尔'}">selected="true"</c:if>>卡塔尔</option>
			<option value="喀麦隆"
				<c:if test="${cp2.country=='喀麦隆'}">selected="true"</c:if>>喀麦隆</option>
			<option value="津巴布韦"
				<c:if test="${cp2.country=='津巴布韦'}">selected="true"</c:if>>津巴布韦</option>

			<option value="捷克共和国"
				<c:if test="${cp2.country=='捷克共和国'}">selected="true"</c:if>>捷克共和国</option>
			<option value="柬埔寨"
				<c:if test="${cp2.country=='柬埔寨'}">selected="true"</c:if>>柬埔寨</option>
			<option value="加蓬"
				<c:if test="${cp2.country=='加蓬'}">selected="true"</c:if>>加蓬</option>
			<option value="加纳"
				<c:if test="${cp2.country=='加纳'}">selected="true"</c:if>>加纳</option>
			<option value="加拿大"
				<c:if test="${cp2.country=='加拿大'}">selected="true"</c:if>>加拿大</option>
			<option value="几内亚比绍"
				<c:if test="${cp2.country=='几内亚比绍'}">selected="true"</c:if>>几内亚比绍</option>

			<option value="几内亚"
				<c:if test="${cp2.country=='几内亚'}">selected="true"</c:if>>几内亚</option>
			<option value="吉尔吉斯斯坦"
				<c:if test="${cp2.country=='吉尔吉斯斯坦'}">selected="true"</c:if>>吉尔吉斯斯坦</option>
			<option value="吉布提"
				<c:if test="${cp2.country=='吉布提'}">selected="true"</c:if>>吉布提</option>
			<option value="基里巴斯"
				<c:if test="${cp2.country=='基里巴斯'}">selected="true"</c:if>>基里巴斯</option>
			<option value="洪都拉斯"
				<c:if test="${cp2.country=='洪都拉斯'}">selected="true"</c:if>>洪都拉斯</option>
			<option value="荷属安的列斯岛"
				<c:if test="${cp2.country=='荷属安的列斯岛'}">selected="true"</c:if>>荷属安的列斯岛</option>

			<option value="荷德/马克多纳岛"
				<c:if test="${cp2.country=='荷德/马克多纳岛'}">selected="true"</c:if>>荷德/马克多纳岛</option>
			<option value="荷 兰"
				<c:if test="${cp2.country=='荷 兰'}">selected="true"</c:if>>荷
				兰</option>
			<option value="韩国"
				<c:if test="${cp2.country=='韩国'}">selected="true"</c:if>>韩国</option>
			<option value="海地"
				<c:if test="${cp2.country=='海地'}">selected="true"</c:if>>海地</option>
			<option value="哈萨克斯坦"
				<c:if test="${cp2.country=='哈萨克斯坦'}">selected="true"</c:if>>哈萨克斯坦</option>
			<option value="圭亚那 "
				<c:if test="${cp2.country=='圭亚那'}">selected="true"</c:if>>圭亚那</option>

			<option value="关岛"
				<c:if test="${cp2.country=='关岛'}">selected="true"</c:if>>关岛</option>
			<option value="瓜达洛普"
				<c:if test="${cp2.country=='瓜达洛普'}">selected="true"</c:if>>瓜达洛普</option>
			<option value="古巴"
				<c:if test="${cp2.country=='古巴'}">selected="true"</c:if>>古巴</option>
			<option value="格陵兰岛"
				<c:if test="${cp2.country=='格陵兰岛'}">selected="true"</c:if>>格陵兰岛</option>
			<option value="格林纳达"
				<c:if test="${cp2.country=='格林纳达'}">selected="true"</c:if>>格林纳达</option>
			<option value="哥斯答黎加"
				<c:if test="${cp2.country=='哥斯答黎加'}">selected="true"</c:if>>哥斯答黎加</option>

			<option value="哥伦比亚"
				<c:if test="${cp2.country=='哥伦比亚'}">selected="true"</c:if>>哥伦比亚</option>
			<option value="刚果民主共和国"
				<c:if test="${cp2.country=='刚果民主共和国'}">selected="true"</c:if>>刚果民主共和国</option>
			<option value="刚果"
				<c:if test="${cp2.country=='刚果'}">selected="true"</c:if>>刚果</option>
			<option value="冈比亚"
				<c:if test="${cp2.country=='冈比亚'}">selected="true"</c:if>>冈比亚</option>
			<option value="福克兰群岛"
				<c:if test="${cp2.country=='福克兰群岛'}">selected="true"</c:if>>福克兰群岛</option>
			<option value="佛得角群岛"
				<c:if test="${cp2.country=='佛得角群岛'}">selected="true"</c:if>>佛得角群岛</option>

			<option value="芬兰"
				<c:if test="${cp2.country=='芬兰'}">selected="true"</c:if>>芬兰</option>
			<option value="斐济"
				<c:if test="${cp2.country=='斐济'}">selected="true"</c:if>>斐济</option>
			<option value="菲律宾"
				<c:if test="${cp2.country=='菲律宾'}">selected="true"</c:if>>菲律宾</option>
			<option value="梵蒂冈城"
				<c:if test="${cp2.country=='梵蒂冈城'}">selected="true"</c:if>>梵蒂冈城</option>
			<option value="法属圣特里特"
				<c:if test="${cp2.country=='法属圣特里特'}">selected="true"</c:if>>法属圣特里特</option>
			<option value="法属圭亚那"
				<c:if test="${cp2.country=='法属圭亚那'}">selected="true"</c:if>>法属圭亚那</option>

			<option value="法属波利尼西亚"
				<c:if test="${cp2.country=='法属波利尼西亚'}">selected="true"</c:if>>法属波利尼西亚</option>
			<option value="法罗群岛"
				<c:if test="${cp2.country=='法罗群岛'}">selected="true"</c:if>>法罗群岛</option>
			<option value="法国"
				<c:if test="${cp2.country=='法国'}">selected="true"</c:if>>法国</option>
			<option value="厄瓜多尔"
				<c:if test="${cp2.country=='厄瓜多尔'}">selected="true"</c:if>>厄瓜多尔</option>
			<option value="俄罗斯联邦"
				<c:if test="${cp2.country=='俄罗斯联邦'}">selected="true"</c:if>>俄罗斯联邦</option>
			<option value="多米尼加共和国"
				<c:if test="${cp2.country=='多米尼加共和国'}">selected="true"</c:if>>多米尼加共和国</option>

			<option value="多米尼加"
				<c:if test="${cp2.country=='多米尼加'}">selected="true"</c:if>>多米尼加</option>
			<option value="多哥"
				<c:if test="${cp2.country=='多哥'}">selected="true"</c:if>>多哥</option>
			<option value="东帝汶岛"
				<c:if test="${cp2.country=='东帝汶岛'}">selected="true"</c:if>>东帝汶岛</option>
			<option value="德国"
				<c:if test="${cp2.country=='德国'}">selected="true"</c:if>>德国</option>
			<option value="丹麦"
				<c:if test="${cp2.country=='丹麦'}">selected="true"</c:if>>丹麦</option>
			<option value="赤道几内亚"
				<c:if test="${cp2.country=='赤道几内亚'}">selected="true"</c:if>>赤道几内亚</option>

			<option value="布维群岛"
				<c:if test="${cp2.country=='布维群岛'}">selected="true"</c:if>>布维群岛</option>
			<option value="布隆迪"
				<c:if test="${cp2.country=='布隆迪'}">selected="true"</c:if>>布隆迪</option>
			<option value="布基纳法索"
				<c:if test="${cp2.country=='布基纳法索'}">selected="true"</c:if>>布基纳法索</option>
			<option value="不丹"
				<c:if test="${cp2.country=='不丹'}">selected="true"</c:if>>不丹</option>
			<option value="伯利兹"
				<c:if test="${cp2.country=='伯利兹'}">selected="true"</c:if>>伯利兹</option>
			<option value="博茨瓦纳"
				<c:if test="${cp2.country=='博茨瓦纳'}">selected="true"</c:if>>博茨瓦纳</option>

			<option value="玻利维亚"
				<c:if test="${cp2.country=='玻利维亚'}">selected="true"</c:if>>玻利维亚</option>
			<option value="波兰"
				<c:if test="${cp2.country=='波兰'}">selected="true"</c:if>>波兰</option>
			<option value="波黑"
				<c:if test="${cp2.country=='波黑'}">selected="true"</c:if>>波黑</option>
			<option value="波多黎哥"
				<c:if test="${cp2.country=='波多黎哥'}">selected="true"</c:if>>波多黎哥</option>
			<option value="冰岛"
				<c:if test="${cp2.country=='冰岛'}">selected="true"</c:if>>冰岛</option>
			<option value="比利时"
				<c:if test="${cp2.country=='比利时'}">selected="true"</c:if>>比利时</option>

			<option value="贝宁"
				<c:if test="${cp2.country=='贝宁'}">selected="true"</c:if>>贝宁</option>
			<option value="北马里亚纳"
				<c:if test="${cp2.country=='北马里亚纳'}">selected="true"</c:if>>北马里亚纳</option>
			<option value="北朝鲜"
				<c:if test="${cp2.country=='北朝鲜'}">selected="true"</c:if>>北朝鲜</option>
			<option value="保加利亚"
				<c:if test="${cp2.country=='保加利亚'}">selected="true"</c:if>>保加利亚</option>
			<option value="百慕大群岛"
				<c:if test="${cp2.country=='百慕大群岛'}">selected="true"</c:if>>百慕大群岛</option>
			<option value="白俄罗斯"
				<c:if test="${cp2.country=='白俄罗斯'}">selected="true"</c:if>>白俄罗斯</option>

			<option value="巴西"
				<c:if test="${cp2.country=='巴西'}">selected="true"</c:if>>巴西</option>
			<option value="巴拿马"
				<c:if test="${cp2.country=='巴拿马'}">selected="true"</c:if>>巴拿马</option>
			<option value="巴林"
				<c:if test="${cp2.country=='巴林'}">selected="true"</c:if>>巴林</option>
			<option value="巴拉圭"
				<c:if test="${cp2.country=='巴拉圭'}">selected="true"</c:if>>巴拉圭</option>
			<option value="巴基斯坦"
				<c:if test="${cp2.country=='巴基斯坦'}">selected="true"</c:if>>巴基斯坦</option>
			<option value="巴哈马(群岛)"
				<c:if test="${cp2.country=='巴哈马(群岛)'}">selected="true"</c:if>>巴哈马(群岛)</option>

			<option value="巴布亚新几内亚"
				<c:if test="${cp2.country=='巴布亚新几内亚'}">selected="true"</c:if>>巴布亚新几内亚</option>
			<option value="巴巴多斯"
				<c:if test="${cp2.country=='巴巴多斯'}">selected="true"</c:if>>巴巴多斯</option>
			<option value="奥地利"
				<c:if test="${cp2.country=='奥地利'}">selected="true"</c:if>>奥地利</option>
			<option value="澳大利亚"
				<c:if test="${cp2.country=='澳大利亚'}">selected="true"</c:if>>澳大利亚</option>
			<option value="安提瓜和巴布达"
				<c:if test="${cp2.country=='安提瓜和巴布达'}">selected="true"</c:if>>安提瓜和巴布达</option>
			<option value="安圭拉岛"
				<c:if test="${cp2.country=='安圭拉岛'}">selected="true"</c:if>>安圭拉岛</option>

			<option value="安哥拉"
				<c:if test="${cp2.country=='安哥拉'}">selected="true"</c:if>>安哥拉</option>
			<option value="安道尔"
				<c:if test="${cp2.country=='安道尔'}">selected="true"</c:if>>安道尔</option>
			<option value="爱沙尼亚"
				<c:if test="${cp2.country=='爱沙尼亚'}">selected="true"</c:if>>爱沙尼亚</option>
			<option value="爱尔兰"
				<c:if test="${cp2.country=='爱尔兰'}">selected="true"</c:if>>爱尔兰</option>
			<option value="埃塞俄比亚"
				<c:if test="${cp2.country=='埃塞俄比亚'}">selected="true"</c:if>>埃塞俄比亚</option>
			<option value="埃立特里亚"
				<c:if test="${cp2.country=='埃立特里亚'}">selected="true"</c:if>>埃立特里亚</option>

			<option value="埃及"
				<c:if test="${cp2.country=='埃及'}">selected="true"</c:if>>埃及</option>
			<option value="阿塞拜疆"
				<c:if test="${cp2.country=='阿塞拜疆'}">selected="true"</c:if>>阿塞拜疆</option>
			<option value="阿曼"
				<c:if test="${cp2.country=='阿曼'}">selected="true"</c:if>>阿曼</option>
			<option value="阿鲁巴"
				<c:if test="${cp2.country=='阿鲁巴'}">selected="true"</c:if>>阿鲁巴</option>
			<option value="阿联酋"
				<c:if test="${cp2.country=='阿联酋'}">selected="true"</c:if>>阿联酋</option>
			<option value="阿根廷"
				<c:if test="${cp2.country=='阿根廷'}">selected="true"</c:if>>阿根廷</option>

			<option value="阿富汗"
				<c:if test="${cp2.country=='阿富汗'}">selected="true"</c:if>>阿富汗</option>
			<option value="阿尔及利亚"
				<c:if test="${cp2.country=='阿尔及利亚'}">selected="true"</c:if>>阿尔及利亚</option>
			<option value="阿尔巴尼亚"
				<c:if test="${cp2.country=='阿尔巴尼亚'}">selected="true"</c:if>>阿尔巴尼亚</option>
			<option value="SZ"
				<c:if test="${cp2.country=='SZ'}">selected="true"</c:if>>斯威士兰</option>
			<option value="St.Pier,Miquel."
				<c:if test="${cp2.country=='St.Pier,Miquel.'}">selected="true"</c:if>>St.Pier,Miquel.</option>
			<option value="CAR"
				<c:if test="${cp2.country=='CAR'}">selected="true"="selected="true""</c:if>>CAR</option>
				</SELECT></TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          width=130>身份证明注册地</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><SELECT name="province2" inputsn="10">
         	<option value="">-请选择-</option>
			<option value="境外"
				<c:if test="${cp2.province=='境外'}">selected="true"</c:if>>境外</option>
			<option value="北京"
				<c:if test="${cp2.province=='北京'}">selected="true"</c:if>>北京</option>
			<option value="上海"
				<c:if test="${cp2.province=='上海'}">selected="true"</c:if>>上海</option>
			<option value="天津"
				<c:if test="${cp2.province=='天津'}">selected="true"</c:if>>天津</option>
			<option value="内蒙古"
				<c:if test="${cp2.province=='内蒙古'}">selected="true"</c:if>>内蒙古</option>
			<option value="山西"
				<c:if test="${cp2.province=='山西'}">selected="true"</c:if>>山西</option>
			<option value="河北"
				<c:if test="${cp2.province=='河北'}">selected="true"</c:if>>河北</option>
			<option value="辽宁"
				<c:if test="${cp2.province=='辽宁'}">selected="true"</c:if>>辽宁</option>
			<option value="吉林"
				<c:if test="${cp2.province=='吉林'}">selected="true"</c:if>>吉林</option>
			<option value="黑龙江"
				<c:if test="${cp2.province=='黑龙江'}">selected="true"</c:if>>黑龙江</option>
			<option value="江苏"
				<c:if test="${cp2.province=='江苏'}">selected="true"</c:if>>江苏</option>
			<option value="安徽"
				<c:if test="${cp2.province=='安徽'}">selected="true"</c:if>>安徽</option>
			<option value="山东"
				<c:if test="${cp2.province=='山东'}">selected="true"</c:if>>山东</option>
			<option value="浙江"
				<c:if test="${cp2.province=='浙江'}">selected="true"</c:if>>浙江</option>
			<option value="江西"
				<c:if test="${cp2.province=='江西'}">selected="true"</c:if>>江西</option>
			<option value="福建"
				<c:if test="${cp2.province=='福建'}">selected="true"</c:if>>福建</option>
			<option value="湖南"
				<c:if test="${cp2.province=='湖南'}">selected="true"</c:if>>湖南</option>
			<option value="湖北"
				<c:if test="${cp2.province=='湖北'}">selected="true"</c:if>>湖北</option>
			<option value="河南"
				<c:if test="${cp2.province=='河南'}">selected="true"</c:if>>河南</option>
			<option value="广东"
				<c:if test="${cp2.province=='广东'}">selected="true"</c:if>>广东</option>
			<option value="海南"
				<c:if test="${cp2.province=='海南'}">selected="true"</c:if>>海南</option>
			<option value="广西"
				<c:if test="${cp2.province=='广西'}">selected="true"</c:if>>广西</option>
			<option value="贵州"
				<c:if test="${cp2.province=='贵州'}">selected="true"</c:if>>贵州</option>
			<option value="四川"
				<c:if test="${cp2.province=='四川'}">selected="true"</c:if>>四川</option>
			<option value="云南"
				<c:if test="${cp2.province=='云南'}">selected="true"</c:if>>云南</option>
			<option value="陕西"
				<c:if test="${cp2.province=='陕西'}">selected="true"</c:if>>陕西</option>
			<option value="甘肃"
				<c:if test="${cp2.province=='甘肃'}">selected="true"</c:if>>甘肃</option>
			<option value="宁夏"
				<c:if test="${cp2.province=='宁夏'}">selected="true"</c:if>>宁夏</option>
			<option value="青海"
				<c:if test="${cp2.province=='青海'}">selected="true"</c:if>>青海</option>
			<option value="新疆"
				<c:if test="${cp2.province=='新疆'}">selected="true"</c:if>>新疆</option>
			<option value="西藏"
				<c:if test="${cp2.province=='西藏'}">selected="true"</c:if>>西藏</option>
			<option value="重庆"
				<c:if test="${cp2.province=='重庆'}">selected="true"</c:if>>重庆</option>
			<option value="香港"
				<c:if test="${cp2.province=='香港'}">selected="true"</c:if>>香港</option>
			<option value="澳门"
				<c:if test="${cp2.province=='澳门'}">selected="true"</c:if>>澳门</option>
			<option value="台湾"
				<c:if test="${cp2.province=='台湾'}">selected="true"</c:if>>台湾</option>
		</SELECT> 
	<INPUT  onmousemove=cpcc_showtip(this.tips,this.valid,this.length,150) 
            onmouseout=cpcc_showtip() name="city2" maxLength=100 size=15 
            tips="法人和其他组织填写依法注册的省市；个人填写合法身份证明发放的省市。" length="50" 
            errmsg="市（区）不能为空！" valid="required" value="<c:out value='${cp2.city}' />" /> 
</TD></TR>
<c:if test="${cp2Stat.index!=0}">
      <DIV style="FLOAT: right">
            <INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></c:if>
</TBODY></TABLE></DIV>
</c:forEach>
</TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>合同主要内容</TD></TR>
  <TBODY id=contract1>
  <TR>
    <TD class=contentbg>转让权利范围</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="rightScope1" value="全部权利" type="radio" 
      tips="指《计算机软件保护条例》第8条规定的全部权利；" <c:if test="${r21.rightScope=='全部权利'}">checked="checked"</c:if> />全部权利 
      <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="rightScope1" value="部分权利" type="radio" tips="指《计算机软件保护条例》第8条规定的一项或者多项权利，并需要注明具体的权利种类。"
       <c:if test="${r21.rightScope=='部分权利'}">checked="checked"</c:if> />部分权利 </TD></TR>
  <TR>
    <TD class=contentbg>转让地域范围</TD>
    <TD class=contentbg>
      <DIV style="TEXT-ALIGN: left; WIDTH: 231px; FLOAT: left"><SELECT 
      id=regionScope1 onchange="isQita('regionScope1')" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="regionScope1" 
      tips="根据软件著作权专有许可合同所约定的地域范围，如：在中国等。" length="200" errmsg="转让地域范围不能为空!" 
      valid="required">
    <OPTION <c:if test="${r21.regionScope=='无地域范围限制'}">selected="true"</c:if> value="无地域范围限制">无地域范围限制</OPTION> 
    <OPTION <c:if test="${r21.regionScope=='中国地域范围（包括港、澳、台地区）'}">selected="true"</c:if> value="中国地域范围（包括港、澳、台地区）">中国地域范围（包括港、澳、台地区）</OPTION>
    <OPTION <c:if test="${r21.regionScope=='中国地域范围（不包括港、澳、台地区）'}">selected="true"</c:if> value="中国地域范围（不包括港、澳、台地区）">中国地域范围（不包括港、澳、台地区）</OPTION>
    <OPTION <c:if test="${r21.regionScope=='其他地域范围'}">selected="true"</c:if> value="其他地域范围">其他地域范围</OPTION>
    </SELECT></DIV>
      <DIV style="TEXT-ALIGN: left; WIDTH: 251px; DISPLAY: none; FLOAT: right" 
      id=regionScope1_Info>
     <INPUT id="regionScope1_" name="regionScope1_" value="<c:out value='${r21.regionScope_}' />" />(可填写)</DIV></TD></TR>
  <TR>
    <TD class=contentbg>转让合同生效日期</TD>
    <TD class=contentbg>
    <INPUT onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="validStartDate1" tips="" id="validStartDate1"
      errmsg="转让合同生效日期不能为空!" valid="required" value="${r21.validStartDate}"> </TD></TR></TBODY>
      
  <TBODY style="DISPLAY: none" id=contract2>
  <TR>
    <TD class=contentbg>许可权利范围</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="rightScope2" value="全部权利"  type="radio" 
      tips="指《计算机软件保护条例》第8条规定的一项或者多项权利，并需要注明具体的权利种类。"
       <c:if test="${r21.rightScope=='全部权利'}">checked="checked"</c:if> />全部权利 <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="rightScope2" value="部分权利 " type="radio" 
      tips="指《计算机软件保护条例》第8条规定的一项或者多项权利，并需要注明具体的权利种类。"
       <c:if test="${r21.rightScope=='部分权利'}">checked="checked"</c:if> />部分权利 </TD></TR>
  <TR>
    <TD class=contentbg>许可地域范围</TD>
    <TD class=contentbg>
     
      <DIV style="TEXT-ALIGN: left; WIDTH: 231px; FLOAT: left"><SELECT 
      id=regionScope2 onchange="isQita('regionScope2')" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name=regionScope2 tips="指软件著作权转让合同的约定所确定的地域范围。" 
      length="200" errmsg="许可地域范围不能为空!" valid="required"> 
        <OPTION <c:if test="${r21.regionScope=='无地域范围限制'}">selected="true"</c:if> value="无地域范围限制">无地域范围限制</OPTION> 
    <OPTION <c:if test="${r21.regionScope=='中国地域范围（包括港、澳、台地区）'}">selected="true"</c:if> value="中国地域范围（包括港、澳、台地区）">中国地域范围（包括港、澳、台地区）</OPTION>
    <OPTION <c:if test="${r21.regionScope=='中国地域范围（不包括港、澳、台地区）'}">selected="true"</c:if> value="中国地域范围（不包括港、澳、台地区）">中国地域范围（不包括港、澳、台地区）</OPTION>
    <OPTION <c:if test="${r21.regionScope=='其他地域范围'}">selected="true"</c:if> value="其他地域范围">其他地域范围</OPTION>
        </SELECT></DIV>
      <DIV style="TEXT-ALIGN: left; WIDTH: 251px; DISPLAY: none; FLOAT: right" 
      id=regionScope2_Info><INPUT id="regionScope2_" 
    name="regionScope2_" value="<c:out value='${r21.regionScope_}' />" />(可填写)</DIV></TD></TR>
  <TR>
    <TD class=contentbg>许可权利期限</TD>
    <TD class=contentbg>自&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="validStartDate2" size=15 id="validStartDate2"
      tips="指根据软件著作权专有许可合同所约定的期限，如：2007年10月30日至2009年10月30日。" errmsg="起始日期不能为空!" 
      valid="required" value="${r21.validStartDate}"  /> &nbsp;起，至&nbsp;<INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
      onmouseout=cpcc_showtip() name="validEndDate2" size=15 id="validEndDate2"
      tips="指根据软件著作权专有许可合同所约定的期限，如：2007年10月30日至2009年10月30日。" errmsg="截止日期不能为空!" 
      valid="required" value="${r21.validEndDate}" />&nbsp;止。 </TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请办理方式</TD>
    <TD class=contentbg>
    <INPUT onclick=agent_showOrHide(this) name="applyType" value="由转让（许可）方办理"  
    type="radio" <c:if test="${r21.applyType=='由转让（许可）方办理'}">checked="checked"</c:if> />由转让（许可）方办理 
    <INPUT onclick=agent_showOrHide(this) name="applyType" value="由受让（被许可）方办理" 
      type="radio" <c:if test="${r21.applyType=='由受让（被许可）方办理'}">checked="checked"</c:if> />由受让（被许可）方办理
    <INPUT onclick=agent_showOrHide(this) name="applyType" value="代理人" type="radio" 
     <c:if test="${r21.applyType=='代理人'}">checked="checked"</c:if> />由代理人办理 </TD></TR>
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
      onclick="setPeopleValue('sqr');" value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=sqrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="sqrname" size=35 
      tips="请准确填写申请人的姓名或单位名称，并与其他材料保持一致，申请人应是权利人之一" length="250" 
      errmsg="姓名或单位名称不能为空！" valid="required" value="<c:out value='${sqr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=sqraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqraddress" size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" length="100" errmsg="不能为空！" 
      valid="required" value="<c:out value='${sqr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=sqrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrpostCode" size=35 tips="请填写邮政编码" 
      length="8" value="<c:out value='${sqr.post_code}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=sqrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrcontactPerson" size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required" value="<c:out value='${sqr.contact_person}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=sqrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="sqrphone" size=35 
      tips="请填写联系电话号码" length="40" errmsg="电话号码不能为空！" valid="required" value="<c:out value='${sqr.phone}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=sqremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="sqremail" size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|格式不对！" valid="required|isEmail" value="<c:out value='${sqr.email}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=sqrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrmobile" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${sqr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=sqrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="sqrfax" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${sqr.fax}' />" /></TD></TR>
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
      onmouseout=cpcc_showtip() name="agent_desc" size=60 
      tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" length="180" errmsg="代理权限说明不能为空！" 
      valid="required" value="<c:out value='${r21.agent_desc}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlrname" size=35 
      tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" length="100" errmsg="不能为空！" 
      valid="required" value="<c:out value='${dlr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlraddress" size=35 
      tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" length="100" errmsg="不能为空！" 
      valid="required" value="<c:out value='${dlr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name="dlrpostCode" size=35 tips="请填写邮政编码" 
      length="8" errmsg="不能为空！" valid="required" value="<c:out value='${dlr.post_code}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=dlrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrcontactPerson" size=35 tips="请填写联系人" 
      length="40" errmsg="不能为空！" valid="required" value="<c:out value='${dlr.contact_person}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=dlrphone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name="dlrphone" size=35 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.phone}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=dlremail 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name="dlremail" size=35 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|E-mail格式不对！" valid="required|isEmail" value="<c:out value='${dlr.email}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrmobile" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      length="30" value="<c:out value='${dlr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name="dlrfax" size=35 tips="可选项，但如果要填写请按照正确的格式" 
      value="<c:out value='${dlr.fax}' />" />
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
   <TD width=50>
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/r21/save');"/>
    </TD>
    <TD width=50>
    <input type="button" value="提交" id="subId" class="m_button" 
    onClick="subForm('${pageContext.request.contextPath}/application/r21/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR>
    </c:otherwise></c:choose>
    </TBODY></TABLE></FORM></DIV>
</body>
<SCRIPT language=javascript>
$(document).ready(function(){
	//合同类型
	var contractType = "${r21.contractType}";
	var regionScope_Info = "${r21.regionScope}";
	if(contractType=='专有许可合同') {
		document.all("contract1").style.display="none";
		document.all("contract2").style.display="block";
		document.getElementById("personData1Info").style.display="none";
		document.getElementById("regionScope1_").value="";
		if(regionScope_Info=='其他地域范围'){
		$("#regionScope2_Info").css("display", "block");
		}
	} else {
		if(regionScope_Info=='其他地域范围') {
			$("#regionScope1_Info").css("display", "block");
		}
	}
	var applyType = "${r21.applyType}";
	if(applyType=='代理人') {
		$("#A-0").css("display","block");
	}
});

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
			document.getElementById("validStartDate1").value = document.getElementById(str1).value;
		} 
		else
		{
			str1="validStartDate2";
			str2="validEndDate2";
			// 向隐藏域设置值
			document.getElementById("validStartDate2").value = document.getElementById(str1).value;
			document.getElementById("validEndDate2").value = document.getElementById(str2).value;
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
	
	
    function isQita(regionScope){
      var regionScope1=document.getElementById(regionScope).value;
      if(regionScope1.indexOf("其他")>-1){
        document.getElementById(regionScope+"_Info").style.display="block";
      }else{
        document.getElementById(regionScope+"_Info").style.display="none";
      }
    }
    function beforeValid(){
    }
</SCRIPT>
</HTML>