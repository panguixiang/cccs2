<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:useBean id="now" class="java.util.Date" />
<head>
<title>在线查看-作品著作权登记申请表</title>
<STYLE>TABLE {
	BORDER-BOTTOM-COLOR: #333333; BORDER-TOP-COLOR: #333333; BORDER-COLLAPSE: collapse; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; BORDER-LEFT-COLOR: #333333
}
TD {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: left; BORDER-TOP-COLOR: #333333; HEIGHT: 30px; BORDER-RIGHT-COLOR: #333333; VERTICAL-ALIGN: middle; OVERFLOW: auto; BORDER-LEFT-COLOR: #333333; WORD-BREAK: break-all
}
TH {
	BORDER-BOTTOM-COLOR: #333333; TEXT-ALIGN: center; BORDER-TOP-COLOR: #333333; HEIGHT: 30px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 14px; VERTICAL-ALIGN: middle; BORDER-LEFT-COLOR: #333333; FONT-WEIGHT: normal
}
UNKNOWN {
	BORDER-BOTTOM: black 1px solid; WIDTH: 200px; MARGIN-BOTTOM: 2px
}
.FenLeiInfo {
	TEXT-ALIGN: center; BACKGROUND-COLOR: #cccccc; WIDTH: 30px
}
.FenLeiInfo DIV {
	WIDTH: 25px
}
.title {
	TEXT-ALIGN: center; LINE-HEIGHT: 25px; MARGIN-TOP: 30px; LETTER-SPACING: 1px; FONT-FAMILY: 黑体; FONT-SIZE: 20px
}
.InputTd {
	BORDER-BOTTOM-COLOR: #333333; PADDING-BOTTOM: 8px; LINE-HEIGHT: 20px; BORDER-TOP-COLOR: #333333; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; BORDER-RIGHT-COLOR: #333333; FONT-SIZE: 13px; BORDER-LEFT-COLOR: #333333; PADDING-TOP: 8px
}
.flowno {
	BORDER-BOTTOM-COLOR: gray; BORDER-TOP-COLOR: gray; BORDER-RIGHT-COLOR: gray; BORDER-LEFT-COLOR: gray
}
.zhuzquanren {
	TEXT-ALIGN: center; LINE-HEIGHT: normal; FONT-VARIANT: normal; FONT-STYLE: normal; HEIGHT: 85px; FONT-SIZE: 12px; FONT-WEIGHT: normal
}
.zzqtitle {
	TEXT-ALIGN: center; LINE-HEIGHT: normal; FONT-VARIANT: normal; FONT-STYLE: normal; HEIGHT: 25px; FONT-SIZE: 14px; FONT-WEIGHT: normal
}
</STYLE>
<!--  与作品著作权登记申请相关的数据项-->
<SCRIPT language=javascript defer>
function printCertificate(){
	if (confirm('确定打印吗？')) { 
　　		//window.print();
		printIframeid.focus();   
  		window.print();
　　}
}
</script>
</HEAD>
<BODY style="TEXT-ALIGN: center; background-color:#e8e8e8;">
<!-- <INPUT onclick="printCertificate();" name=button_modify value=打印 type=button />  -->
<DIV id="printIframeid" 
style="TEXT-ALIGN: center; WIDTH: 630px; BORDER:#336699 1px solid; background-color:#fff; padding-left:10px;">
<TABLE style="BORDER-BOTTOM: black 2px solid;" border=0 cellSpacing=0 
cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 60px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">受理号:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid; WIDTH: 120px"><!--<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>--><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 110px"></SPAN></TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 70px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid" 
    >受理签字:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 140px"></SPAN></TD></TR>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 60px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid">登记号:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid; WIDTH: 120px"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 110px"></SPAN></TD>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; TEXT-ALIGN: center; BORDER-LEFT: gray 0px solid; WIDTH: 70px; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid" 
    >审查签字:</TD>
    <TD style="BORDER-BOTTOM: gray 0px solid"><SPAN 
      style="BORDER-BOTTOM: black 1px solid; WIDTH: 140px"></SPAN></TD></TR></TBODY></TABLE>
<TABLE 
style="BORDER-BOTTOM: red 0px solid; BORDER-LEFT: red 0px solid; BORDER-TOP: red 0px solid; BORDER-RIGHT: red 0px solid" 
border=0 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD 
    style="BORDER-BOTTOM: gray 0px solid; BORDER-LEFT: gray 0px solid; VERTICAL-ALIGN: middle; BORDER-TOP: gray 0px solid; BORDER-RIGHT: gray 0px solid" 
    >
      <DIV class=title>作品著作权登记申请表</DIV></TD></TR></TBODY></TABLE>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>作品信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 101px">作品名称</TH>
          <TD class=InputTd><SPAN class=suporsub>${z11.opus_name}</SPAN></TD></TR>
        <TR>
          <TH>作品类别</TH>
          <TD class=InputTd>
          <c:if test="${z11.opus_type!='文字'}">○&nbsp;文字</c:if>
		  <c:if test="${z11.opus_type=='文字'}">⊙&nbsp;文字</c:if>
          <c:if test="${z11.opus_type!='口述'}">○&nbsp;口述</c:if>
          <c:if test="${z11.opus_type=='口述'}">⊙&nbsp;口述</c:if>
          <c:if test="${z11.opus_type!='音乐'}">○&nbsp;音乐</c:if>
          <c:if test="${z11.opus_type=='音乐'}">⊙&nbsp;音乐</c:if>
          <c:if test="${z11.opus_type!='戏剧'}">○&nbsp;戏剧</c:if>
          <c:if test="${z11.opus_type=='戏剧'}">⊙&nbsp;戏剧</c:if>
          <c:if test="${z11.opus_type!='曲艺'}">○&nbsp;曲艺</c:if>
          <c:if test="${z11.opus_type=='曲艺'}">⊙&nbsp;曲艺</c:if>
          <c:if test="${z11.opus_type!='舞蹈'}">○&nbsp;舞蹈</c:if>
          <c:if test="${z11.opus_type=='舞蹈'}">⊙&nbsp;舞蹈</c:if>
          <c:if test="${z11.opus_type!='杂技艺术'}">○&nbsp;杂技艺术</c:if>
          <c:if test="${z11.opus_type=='杂技艺术'}">⊙&nbsp;杂技艺术</c:if><br> 
          <c:if test="${z11.opus_type!='美术'}">○&nbsp;美术</c:if> 
          <c:if test="${z11.opus_type=='美术'}">⊙&nbsp;美术</c:if>
          <c:if test="${z11.opus_type!='建筑'}">○&nbsp;建筑</c:if> 
          <c:if test="${z11.opus_type=='建筑'}">⊙&nbsp;建筑</c:if> 
          <c:if test="${z11.opus_type!='摄影'}">○&nbsp;摄影</c:if> 
          <c:if test="${z11.opus_type=='摄影'}">⊙&nbsp;摄影</c:if> 
          <c:if	test="${z11.opus_type!='电影和类似摄制电影方法创作的作品'}">○&nbsp;电影和类似摄制电影方法创作的作品</c:if>
		  <c:if test="${z11.opus_type=='电影和类似摄制电影方法创作的作品'}">⊙&nbsp;电影和类似摄制电影方法创作的作品</c:if>
		  <c:if test="${z11.opus_type!='图形'}">○&nbsp;图形</c:if> 
		  <c:if test="${z11.opus_type=='图形'}">⊙&nbsp;图形</c:if><br>
		  <c:if test="${z11.opus_type!='模型'}">○&nbsp;模型</c:if> 
		  <c:if test="${z11.opus_type=='模型'}">⊙&nbsp;模型</c:if> 
		  <c:if	test="${z11.opus_type!='其他'}">○&nbsp;其他</c:if> 
		  <c:if	test="${z11.opus_type=='其他'}">⊙&nbsp;其他</c:if>
          <BR>说明： <SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: auto" 
            class=suporsub>${z11.opus_type_desc}</SPAN></TD></TR></TBODY></TABLE></TD></TR>
    <TR>
    <TD class=FenLeiInfo>
      <DIV>著作权人</DIV></TD>
    <TD><!-- 著作权人信息  -->
      <TABLE style="TABLE-LAYOUT: fixed" border=1 cellSpacing=0 cellPadding=0 
      width="100%" frame=void align=center>
        <TBODY>
        <TR style="HEIGHT: 20px">
          <TH style="WIDTH: 102px; HEIGHT: 20px">姓名或名称</TH>
          <TH style="WIDTH: 50px">类别</TH>
          <TD style="WIDTH: 70px" class=zzqtitle>证件类型</TD>
          <TD style="WIDTH: 110px" class=zzqtitle>证件号码</TD>
          <TD style="WIDTH: 50px" class=zzqtitle>国籍</TD>
          <TD style="WIDTH: 50px" class=zzqtitle>省份</TD>
          <TD style="WIDTH: 50px" class=zzqtitle>城市</TD>
          <TD class=zzqtitle>署名情况</TD></TR>
          <c:forEach items="${cps}" var="cp">
        <TR>
          <TD style="WIDTH: 102px" class=zhuzquanren>${cp.name}</TD>
          <TD class=zhuzquanren>${cp.people_type}</TD>
          <TD class=zhuzquanren>${cp.id_type} </TD>
          <TD class=zhuzquanren>${cp.id_number}</TD>
          <TD class=zhuzquanren>${cp.country}</TD>
          <TD class=zhuzquanren>${cp.province}</TD>
          <TD class=zhuzquanren>${cp.city}</TD>
          <TD class=zhuzquanren>${cp.sign}
  </TD></TR></c:forEach>
  </TBODY></TABLE><!-- end 著作权人信息  --></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>作品基本信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <c:forEach items="${authors}" var="author">
        <TR>
          <TH width=100>作者姓名或名称</TH>
          <TH>${author.name}</TH>
          <TH>作品署名</TH>
          <TD class=InputTd>${author.sign}</TD>
          </TR>
        </c:forEach>  
        <TR>
          <TH style="WIDTH: 100px">作品创作性质</TH>
          <TD class=InputTd colSpan=3>
             <c:if test="${z11.opus_indite_kind!='原创'}">○&nbsp;原创</c:if>
             <c:if test="${z11.opus_indite_kind=='原创'}">⊙&nbsp;原创</c:if> 
             <c:if test="${z11.opus_indite_kind!='改编'}">○&nbsp;改编</c:if> 
             <c:if test="${z11.opus_indite_kind=='改编'}">⊙&nbsp;改编</c:if> 
             <c:if test="${z11.opus_indite_kind!='翻译'}">○&nbsp;翻译</c:if> 
             <c:if test="${z11.opus_indite_kind=='翻译'}">⊙&nbsp;翻译</c:if> 
             <c:if test="${z11.opus_indite_kind!='汇编'}">○&nbsp;汇编</c:if> 
             <c:if test="${z11.opus_indite_kind=='汇编'}">⊙&nbsp;汇编</c:if> 
             <c:if test="${z11.opus_indite_kind!='注释'}">○&nbsp;注释</c:if> 
             <c:if test="${z11.opus_indite_kind=='注释'}">⊙&nbsp;注释</c:if> 
             <c:if test="${z11.opus_indite_kind!='整理'}">○&nbsp;整理</c:if> 
             <c:if test="${z11.opus_indite_kind=='整理'}">⊙&nbsp;整理</c:if> 
             <c:if test="${z11.opus_indite_kind!='其他'}">○&nbsp;其他</c:if> 
             <c:if test="${z11.opus_indite_kind=='其他'}">⊙&nbsp;其他</c:if>        
           <BR>&nbsp;&nbsp;&nbsp;原创说明： <SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: auto" 
            class=suporsub>${z11.opus_desc}</SPAN></TD></TR>
        <TR>
          <TH style="WIDTH: 100px">创作完成日期</TH>
          <TD style="WIDTH: 200px" class=InputTd id="createDateid">
       </TD>
          <SCRIPT language="javascript">
				var sdates = "${z11.create_date}";
				if (sdates.length > 0) {
					var nyear = sdates.substring(0, 4); // 取子字符串。
					if(sdates.length>3) {
					  var nmonth = sdates.substring(5, 7);
					  var nday = sdates.substring(8, 11);
					  createDateid.innerText = (nyear+" 年"+nmonth+" 月"+nday+" 日");
					} else {
					  createDateid.innerText = nyear+" 年";
					}
				}
		</SCRIPT>
          <TD style="TEXT-ALIGN: center; WIDTH: 100px">创作完成地点</TD>
          <TD style="TEXT-ALIGN: center; WIDTH: 150px" 
            class=InputTd>国家：${z11.create_country}&nbsp;&nbsp;城市：${z11.create_city} </TD></TR>
        <TR>
          <TH style="WIDTH: 100px">发表状态</TH>
          <TD class=InputTd colSpan=3>
          <c:if test="${z11.publish_status!='已发表'}">○&nbsp;已发表</c:if>&nbsp;
          <c:if test="${z11.publish_status=='已发表'}">⊙&nbsp;已发表</c:if>&nbsp;
          <c:if test="${z11.publish_status!='未发表'}">○&nbsp;未发表</c:if> 
          <c:if test="${z11.publish_status=='未发表'}">⊙&nbsp;未发表</c:if>
            <BR>&nbsp;&nbsp;&nbsp; 首次发表日期: <U>&nbsp;${z11.appear_date}&nbsp;</U> 
            &nbsp;&nbsp; 发表地点: <U>国家：${z11.appear_country}&nbsp;&nbsp;城市：${z11.appear_city}&nbsp;</U> 
        </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>权利状况说明</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 101px">权利取得方式</TH>
          <TD class=InputTd>
         <c:if test="${z11.obtain_mode!='原始'}">○&nbsp;原始</c:if>
		<c:if test="${z11.obtain_mode=='原始'}">⊙&nbsp;原始</c:if>&nbsp; 
		<c:if test="${z11.obtain_mode!='继承'}">○&nbsp;继承</c:if> 
		<c:if test="${z11.obtain_mode=='继承'}">⊙&nbsp;继承</c:if>&nbsp; 
		<c:if test="${z11.obtain_mode!='承受'}">○&nbsp;承受</c:if> 
		<c:if test="${z11.obtain_mode=='承受'}">⊙&nbsp;承受</c:if>&nbsp;
		<c:if test="${z11.obtain_mode!='其他'}">○&nbsp;其他</c:if> 
		<c:if test="${z11.obtain_mode=='其他'}">⊙&nbsp;其他</c:if>
		<c:if test="${z11.obtain_mode!='原始'}">
		<br>&nbsp;&nbsp;&nbsp;说明： <span
			style="width: auto; border-bottom: 1px solid black"
					class="suporsub">${z11.inherit_desc}</span>
		</c:if>			
          </TD></TR>
        <TR>
          <TH>权利归属方式<BR>及其说明</TH>
          <TD class=InputTd>
           <c:if test="${z11.right_own_mode!='个人作品'}">○&nbsp;个人作品</c:if> 
           <c:if test="${z11.right_own_mode=='个人作品'}">⊙&nbsp;个人作品</c:if>&nbsp; 
           <c:if test="${z11.right_own_mode!='合作作品'}">○&nbsp;合作作品</c:if> 
           <c:if test="${z11.right_own_mode=='合作作品'}">⊙&nbsp;合作作品</c:if>&nbsp; 
           <c:if test="${z11.right_own_mode!='法人作品'}">○&nbsp;法人作品</c:if> 
           <c:if test="${z11.right_own_mode=='法人作品'}">⊙&nbsp;法人作品</c:if>&nbsp; 
           <c:if test="${z11.right_own_mode!='职务作品'}">○&nbsp;职务作品</c:if> 
           <c:if test="${z11.right_own_mode=='职务作品'}">⊙&nbsp;职务作品</c:if>&nbsp; 
           <c:if test="${z11.right_own_mode!='委托作品'}">○&nbsp;委托作品</c:if> 
           <c:if test="${z11.right_own_mode=='委托作品'}">⊙&nbsp;委托作品</c:if>       
          <BR>&nbsp;&nbsp;&nbsp;说明： <SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: auto" 
            class=suporsub>${z11.right_own_desc}</SPAN></TD>
            </TR>
        <TR>
          <TH>权利拥有状况<BR>及其说明</TH>
          <TD class=InputTd>
     <c:if test="${z11.scope=='全部'}">⊙ 全部</c:if>  
     <c:if test="${z11.scope!='全部'}">○ 全部</c:if>
     <c:if test="${z11.scope=='部分'}">⊙ 部分</c:if>
     <c:if test="${z11.scope!='部分'}">○ 部分</c:if>   
          <BR> <BR><SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${发表权=='发表权'}">√</c:if></SPAN>&nbsp;发表权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${署名权=='署名权'}">√</c:if></SPAN>&nbsp;署名权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${修改权=='修改权'}">√</c:if></SPAN>&nbsp;修改权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${保护作品完整权=='保护作品完整权'}">√</c:if></SPAN>&nbsp;保护作品完整权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${复制权=='复制权'}">√</c:if></SPAN>&nbsp;复制权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"> 
            <c:if test="${发行权=='发行权'}">√</c:if></SPAN>&nbsp;发行权 <BR><SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${出租权=='出租权'}">√</c:if></SPAN>&nbsp;出租权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${展览权=='展览权'}">√</c:if></SPAN>&nbsp;展览权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"> 
            <c:if test="${表演权=='表演权'}">√</c:if></SPAN>&nbsp;表演权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${放映权=='放映权'}">√</c:if></SPAN>&nbsp;放映权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"> 
            <c:if test="${广播权=='广播权'}">√</c:if></SPAN>&nbsp;广播权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"> 
            <c:if test="${信息网络传播权=='信息网络传播权'}">√</c:if></SPAN>&nbsp;信息网络传播权 <BR><SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"> 
            <c:if test="${摄制权=='摄制权'}">√</c:if></SPAN>&nbsp;摄制权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"> 
            <c:if test="${改编权=='改编权'}">√</c:if></SPAN>&nbsp;改编权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${翻译权=='翻译权'}">√</c:if></SPAN>&nbsp;翻译权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
            <c:if test="${汇编权=='汇编权'}">√</c:if></SPAN>&nbsp;汇编权 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; LINE-HEIGHT: 11px; WIDTH: 11px; FONT-SIZE: 10px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid"> 
            <c:if test="${其他=='其他'}">√</c:if></SPAN>&nbsp;其他 <BR>说明： <SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: auto" 
            class=suporsub>${z11.own_part_desc}</SPAN></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<P style="FONT-SIZE: 14px" align=center>第1页/共3页</P><BR 
style="PAGE-BREAK-AFTER: always">
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>留存作品样本</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 100px">电子介质</TH>
          <TD class=InputTd colSpan=3><SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 300px">${z11.emedium}</SPAN> 
            &nbsp;&nbsp;共 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 30px">${z11.ecount}</SPAN> 件 
        </TD></TR>
        <TR>
          <TH style="WIDTH: 100px">纸介质</TH>
          <TD class=InputTd colSpan=3><SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 300px">${z11.pmedium}</SPAN> 
            &nbsp;&nbsp;共 <SPAN 
            style="BORDER-BOTTOM: black 1px solid; WIDTH: 30px">${z11.pcount}</SPAN> 张 
        </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD colSpan=2>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR>
          <TH style="WIDTH: 135px">申请办理方式</TH></TH>
          <TD style="WIDTH: 530px" class=InputTd> 
          <c:if test="${z11.apply_type!='由著作权人申请'}">○&nbsp;由著作权人申请</c:if>
		  <c:if test="${z11.apply_type=='由著作权人申请'}">⊙&nbsp;由著作权人申请</c:if>&nbsp;
		  <c:if test="${z11.apply_type!='由代理人申请'}">○&nbsp;由代理人申请</c:if>
		  <c:if test="${z11.apply_type=='由代理人申请'}">⊙&nbsp;由代理人申请</c:if>
          </TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>申请人信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <c:forEach items="${parts}" var="part">
		  <TR height=50>
          <TH style="WIDTH: 100px">姓名或名称</TH>
          <TD style="WIDTH: 371px" class=InputTd><c:out value="${part.name}"></c:out></TD>
          <TH style="WIDTH: 50px">电话</TH>
          <TD style="WIDTH: 90px" class=InputTd><c:out value="${part.phone}"></c:out></TD></TR>
		</c:forEach>
        <TR height=50>
          <TH style="WIDTH: 100px">姓名或名称</TH>
          <TD style="WIDTH: 371px" class=InputTd>${sqr.name}</TD>
          <TH style="WIDTH: 50px">电话</TH>
          <TD style="WIDTH: 90px" class=InputTd>${sqr.phone}</TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">详细地址</TH>
          <TD style="WIDTH: 371px" class=InputTd>${sqr.address}</TD>
          <TH style="WIDTH: 50px">邮编</TH>
          <TD style="WIDTH: 90px" class=InputTd>${sqr.post_code}</TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">联系人</TH>
          <TD style="WIDTH: 371px" class=InputTd>${sqr.contact_person}</TD>
          <TH style="WIDTH: 50px">手机</TH>
          <TD style="WIDTH: 90px" class=InputTd>${sqr.mobile}</TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">E-mail</TH>
          <TD style="WIDTH: 371px" class=InputTd>${sqr.email}</TD>
          <TH style="WIDTH: 50px">传真</TH>
          <TD style="WIDTH: 90px" class=InputTd>${sqr.fax}</TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=FenLeiInfo>
      <DIV>代理人信息</DIV></TD>
    <TD>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" frame=void>
        <TBODY>
        <TR height=80>
          <TD style="WIDTH: 630px" class=InputTd colSpan=4>
            <DIV 
            style="MARGIN-TOP: 5px">&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<BR><U 
            id=agentDescU>${z11.agent_desc}</U></DIV></TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">姓名或名称</TH>
          <TD style="WIDTH: 371px" class=InputTd>${dlr.name}</TD>
          <TH style="WIDTH: 50px">电话</TH>
          <TD style="WIDTH: 90px" class=InputTd>${dlr.phone}</TD></TR>
        <TR height=50>
          <TH style="WIDTH: 100px">详细地址</TH>
          <TD style="WIDTH: 371px" class=InputTd>${dlr.address}</TD>
          <TH style="WIDTH: 50px">邮编</TH>
          <TD style="WIDTH: 90px" class=InputTd>${dlr.post_code}</TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">联系人</TH>
          <TD style="WIDTH: 371px" class=InputTd>${dlr.contact_person}</TD>
          <TH style="WIDTH: 50px">手机</TH>
          <TD style="WIDTH: 90px" class=InputTd>${dlr.mobile}</TD></TR>
        <TR height=30>
          <TH style="WIDTH: 100px">E-mail</TH>
          <TD style="WIDTH: 371px" class=InputTd>${dlr.email}</TD>
          <TH style="WIDTH: 50px">传真</TH>
          <TD style="WIDTH: 90px" class=InputTd>${dlr.fax}</TD></TR></TBODY></TABLE></TD></TR>
  <TR><!--<td class="FenLeiInfo"><div>申明和签章</div></td>-->
    <TD class=InputTd 
      colSpan=2>&nbsp;&nbsp;申请人认真阅读了填表说明，准确理解了所需填写的内容，保证所填写的内容真实。<BR>
      <P align=right>申请人签章： 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
      <P align=right><fmt:formatDate value="${now}" pattern="yyyy 年  MM 月  dd 日"/>&nbsp;</P></TD></TR></TBODY></TABLE>
<P style="FONT-SIZE: 14px" align=center>第2页/共3页</P><BR 
style="PAGE-BREAK-AFTER: always"><BR>
<P style="FONT-SIZE: 16px" align=center><B>附页、提交材料清单</B></P>
<TABLE border=2 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TH width=100><B>材料类型</B></TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left"><B>&nbsp;&nbsp;材料名称</B></DIV>
      <DIV style="FLOAT: right"><B>份数/页数</B></DIV></TD></TR>
  <TR>
    <TH width=100>登记申请表</TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left">打印签字盖章的登记申请表</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV></TD></TR>
  <TR>
    <TH>证明文件</TH>
    <TD class=InputTd>
      <DIV style="FLOAT: left">1、作品样本</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">2、申请者身份证明复印件</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">3、权属证明</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR>
      <DIV style="FLOAT: left">4、作品说明书</DIV>
      <DIV style="FLOAT: right">&nbsp;&nbsp;份/&nbsp;&nbsp;页</DIV><BR></TD></TR>
  <TR>
    <TH style="HEIGHT: 150px">其他材料</TH>
    <TD class=InputTd>&nbsp; </TD></TR></TBODY></TABLE>
<DIV style="MARGIN: 10px; WIDTH: 630px; FONT-SIZE: 14px">
<P 
style="MARGIN-TOP: 5px"><B>提交材料说明：</B></P>1、以上材料清单由系统根据你填写的申请表内容自动生成，请打印此清单后按要求准备好相应材料；<BR>2、准备好申请材料后将材料的份数页数手写在提交材料清单上，装订在一起与登记申请表一起寄出。 
</DIV>
<P style="FONT-SIZE: 14px" align=center>第3页/共3页</P></DIV></BODY></HTML>