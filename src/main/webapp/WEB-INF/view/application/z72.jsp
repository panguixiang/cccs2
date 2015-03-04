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
<SCRIPT language=JavaScript src="js/pgCalPicker.js"></SCRIPT>
<script language="JavaScript" src="js/jquery-1.4.2.min.js"></script>
<SCRIPT language=JavaScript src="js/form2/showtips2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/general2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/formcheck2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/createPeoples2.js"></SCRIPT>

</HEAD>
<BODY>
<DIV id=mytips></DIV>
<DIV 
style="TEXT-ALIGN: center; PADDING-BOTTOM: 5px; PADDING-LEFT: 0px; WIDTH: 900px; PADDING-RIGHT: 0px; PADDING-TOP: 10px">
<FORM method=post name=generalForm action="">
<input type="hidden" name="flow_num" value="${z72.flow_num}" />
<TABLE style="MARGIN-TOP: 20px; BORDER-COLLAPSE: collapse" border=0 
cellSpacing=0 borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 14px" 
    align=center><B>在线填报-出版境外音像制品（影视作品）合同登记申请表</B></TD></TR></TBODY></TABLE>
<TABLE style="MARGIN-TOP: 20px; BORDER-COLLAPSE: collapse" border=0 
cellSpacing=0 borderColor=#cccccc cellPadding=0 width="80%" align=center>
  <TBODY>
  <c:choose>
  <c:when test="${empty z72}">
  <TR>
    <TD style="FONT-SIZE: 13px">是否公版&nbsp;&nbsp;
    <INPUT onclick=javascript:s_h_pub(); name="isPublic" value="是" 
      type="radio" />是 
      &nbsp;&nbsp; <INPUT onclick=javascript:s_h_pub(); name="isPublic" value="否" 
      CHECKED type="radio" />否 </TD>
      </TR>
  </c:when>
  <c:otherwise>
  <TR>
    <TD style="FONT-SIZE: 13px">是否公版&nbsp;&nbsp;
    <INPUT onclick=javascript:s_h_pub(); name="isPublic" value="是" 
      type="radio" <c:if test="${z72.isPublic=='是'}">checked="checked"</c:if> />是 
      &nbsp;&nbsp; <INPUT onclick=javascript:s_h_pub(); name="isPublic" value="否" 
       type="radio" <c:if test="${z72.isPublic=='否'}">checked="checked"</c:if> />否 </TD>
      </TR>
  </c:otherwise>
  </c:choose>
  </TBODY></TABLE>
<DIV style="MARGIN-TOP: 10px" id=SoftRegSLZYD>
<TABLE 
style="BORDER-BOTTOM: #333333 1px solid; BORDER-LEFT: #333333 1px solid; BORDER-TOP: #333333 1px solid; BORDER-RIGHT: #333333 1px solid" 
border=0 cellSpacing=0 cellPadding=0 width="80%" align=center>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>影视作品信息</TD></TR>
  <TR>
    <TD class=contentbg width=110 noWrap>影视作品名称 </TD>
    <TD id=newRecord class=contentbg>
      <DIV>
      <TABLE style="MARGIN-TOP: 0px" border=0 cellSpacing=0 cellPadding=0 
      width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          vAlign=bottom noWrap>中文名</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 90%; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          vAlign=bottom><INPUT 
            style="WIDTH: 100%" id=ch_nameid 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=ch_name errmsg="请填写影视作品名称！" 
            valid="required" length="200" tips="请填写影视作品名称，仅填写中文名称。" 
            value="<c:out value='${record.ch_name}' />" /> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          vAlign=top noWrap>英文名</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 90%; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
          vAlign=top><INPUT style="WIDTH: 100%" id=en_nameid 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=en_name length="200" 
          tips="请填写英文名称"  value="<c:out value='${record.en_name}' />" >
          </TD></TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD style="100px: " class=contentbg>作品类别</TD>
    <c:choose>
  <c:when test="${empty z72}">
   <TD class=contentbg><INPUT id=ot1 onclick="checkOpt(this,'3','ot')" 
      name=opusType value=电影 type=radio CHECKED/>电影&nbsp;&nbsp;
（ <INPUT id=ot1_1 name=opusTypeSon value=故事片 type=radio CHECKED/>故事片&nbsp;&nbsp;
<INPUT id=ot1_2 name=opusTypeSon value=纪录片 type=radio />纪录片&nbsp;&nbsp;
<INPUT id=ot1_3 name=opusTypeSon value=科教片 type=radio  />科教片&nbsp;&nbsp;
<INPUT id=ot1_4 name=opusTypeSon value=美术片 type=radio  />美术片&nbsp;&nbsp;
<INPUT id=ot1_5 name=opusTypeSon value=专题片 type=radio  />专题片&nbsp;&nbsp; ) 
      <BR><INPUT id=ot2 onclick="checkOpt(this,'3','ot')" name=opusType 
      value=电视剧 type=radio />电视剧&nbsp;&nbsp;
（ <INPUT id=ot2_1  name=opusTypeSon value=一般电视剧 type=radio disabled/>一般电视剧&nbsp;&nbsp;
<INPUT id=ot2_2   name=opusTypeSon value=电视剧动画片 type=radio  disabled/>电视剧动画片&nbsp;&nbsp; ) 
      <BR><INPUT id=ot3 onclick="checkOpt(this,'3','ot')" name=opusType value=其他 
      type=radio  />其他&nbsp;&nbsp; 
      <BR><BR>说明：<TEXTAREA style="WIDTH: 500px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() cols=25 name=opusDesc tips="对作品类别按合同约定详细说明"></TEXTAREA> 
    </TD>
  </c:when>
  <c:otherwise>
   <TD class=contentbg>
  <c:if test="${record.opusType=='电影'}">
   <INPUT id=ot1 onclick="checkOpt(this,'3','ot')"  name=opusType value=电影 type=radio CHECKED />电影&nbsp;&nbsp;
（ <INPUT id=ot1_1 name=opusTypeSon value=故事片 type=radio <c:if test="${record.opusTypeSon=='故事片'}">checked="checked"</c:if> />故事片&nbsp;&nbsp;
<INPUT id=ot1_2 name=opusTypeSon value=纪录片 type=radio <c:if test="${record.opusTypeSon=='纪录片'}">checked="checked"</c:if> />纪录片&nbsp;&nbsp;
<INPUT id=ot1_3 name=opusTypeSon value=科教片 type=radio <c:if test="${record.opusTypeSon=='科教片'}">checked="checked"</c:if> />科教片&nbsp;&nbsp;
<INPUT id=ot1_4 name=opusTypeSon value=美术片 type=radio <c:if test="${record.opusTypeSon=='美术片'}">checked="checked"</c:if> />美术片&nbsp;&nbsp;
<INPUT id=ot1_5 name=opusTypeSon value=专题片 type=radio <c:if test="${record.opusTypeSon=='专题片'}">checked="checked"</c:if> />专题片&nbsp;&nbsp; ) 
      <BR><INPUT id=ot2 onclick="checkOpt(this,'3','ot')" name=opusType 
      value=电视剧 type=radio />电视剧&nbsp;&nbsp;
（ <INPUT id=ot2_1  name=opusTypeSon value=一般电视剧 type=radio  disabled/>一般电视剧&nbsp;&nbsp;
<INPUT id=ot2_2   name=opusTypeSon value=电视剧动画片 type=radio  disabled/>电视剧动画片&nbsp;&nbsp; ) 
 <BR><INPUT id=ot3 onclick="checkOpt(this,'3','ot')" name=opusType value=其他 
      type=radio />
  </c:if>
  <c:if test="${record.opusType=='电视剧'}">
  <INPUT id=ot1 onclick="checkOpt(this,'3','ot')"  name=opusType value=电影 type=radio />电影&nbsp;&nbsp;
（ <INPUT id=ot1_1 name=opusTypeSon value=故事片 type=radio disabled/>故事片&nbsp;&nbsp;
<INPUT id=ot1_2 name=opusTypeSon value=纪录片 type=radio disabled/>纪录片&nbsp;&nbsp;
<INPUT id=ot1_3 name=opusTypeSon value=科教片 type=radio disabled/>科教片&nbsp;&nbsp;
<INPUT id=ot1_4 name=opusTypeSon value=美术片 type=radio disabled/>美术片&nbsp;&nbsp;
<INPUT id=ot1_5 name=opusTypeSon value=专题片 type=radio disabled/>专题片&nbsp;&nbsp; ) 
<BR><INPUT id=ot2 onclick="checkOpt(this,'3','ot')" name=opusType 
      value=电视剧 type=radio CHECKED/>电视剧&nbsp;&nbsp;
（ <INPUT id=ot2_1  name=opusTypeSon value=一般电视剧 type=radio <c:if test="${record.opusTypeSon=='一般电视剧'}">checked="checked"</c:if> />一般电视剧&nbsp;&nbsp;
<INPUT id=ot2_2   name=opusTypeSon value=电视剧动画片 type=radio <c:if test="${record.opusTypeSon=='电视剧动画片'}">checked="checked"</c:if> />电视剧动画片&nbsp;&nbsp; ) 
 <BR><INPUT id=ot3 onclick="checkOpt(this,'3','ot')" name=opusType value=其他  type=radio />
  </c:if>
  <c:if test="${record.opusType=='其他'}">
  <INPUT id=ot1 onclick="checkOpt(this,'3','ot')"  name=opusType value=电影 type=radio />电影&nbsp;&nbsp;
（ <INPUT id=ot1_1 name=opusTypeSon value=故事片 type=radio disabled/>故事片&nbsp;&nbsp;
<INPUT id=ot1_2 name=opusTypeSon value=纪录片 type=radio disabled/>纪录片&nbsp;&nbsp;
<INPUT id=ot1_3 name=opusTypeSon value=科教片 type=radio disabled/>科教片&nbsp;&nbsp;
<INPUT id=ot1_4 name=opusTypeSon value=美术片 type=radio disabled/>美术片&nbsp;&nbsp;
<INPUT id=ot1_5 name=opusTypeSon value=专题片 type=radio disabled/>专题片&nbsp;&nbsp; ) 
<BR><INPUT id=ot2 onclick="checkOpt(this,'3','ot')" name=opusType 
      value=电视剧 type=radio CHECKED/>电视剧&nbsp;&nbsp;
（ <INPUT id=ot2_1  name=opusTypeSon value=一般电视剧 type=radio disabled />一般电视剧&nbsp;&nbsp;
<INPUT id=ot2_2   name=opusTypeSon value=电视剧动画片 type=radio disabled />电视剧动画片&nbsp;&nbsp; ) 
 <BR><INPUT id=ot3 onclick="checkOpt(this,'3','ot')" name=opusType value=其他  type=radio CHECKD/>
  </c:if>
  其他&nbsp;&nbsp; 
      <BR><BR>说明：<TEXTAREA style="WIDTH: 500px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() cols=25 name=opusDesc tips="对作品类别按合同约定详细说明">
      <c:out value='${record.opusDesc}' /></TEXTAREA> 
    </TD>
  </c:otherwise>
    </c:choose>
    
   
    
    
    </TR>
  <TBODY id=firstPlaceInfo>
  <TR>
    <TD class=contentbg>首次出品地</TD>
    <TD 
    style="background-color:#e3f4ff;BORDER-RIGHT-WIDTH: 0px; WIDTH: 90%; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
    vAlign=top><INPUT style="WIDTH: 80%" id=firstPlace 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=first_address length="200" 
  tips="请填写首次出品地" value="<c:out value='${record.first_address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>出品时间</TD>
    <TD class=contentbg><SELECT style="WIDTH: 80px" id="productYearid" name=create_date> </SELECT> 
    <script type="text/javascript">
            var cyear = document.getElementById("productYearid");
            var nyear = "${record.create_date}";
            for (var i=1900; i < 2051; i++) {
             var op = document.createElement("option");
             op.text = i;
             op.value = i;
             if(nyear.length > 0) {
                 if (op.value - 1 == nyear) {
    					cyear.options[cyear.options.length - 1].selected = 'selected';
    			 }
             }else{
            	 if (op.value - 1 == 2012) {
 					cyear.options[cyear.options.length - 1].selected = 'selected';
 			 	} 
             }
            cyear.options.add(op);
            }
            </script>
  </TD></TR></TBODY>
  <TBODY id=publicInfo>
  <TR>
    <TD class="contentbg small_title" 
    onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
    onmouseout=cpcc_showtip() colSpan=2 tips="">
      <DIV style="FLOAT: left">授权方信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT style="WIDTH: 60px" id=authBnt onclick="addRow('personData')" 
      name=button value=增加 type=button></DIV></TD></TR>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id=personData class=contentbg colSpan=2>
      <DIV style="TEXT-ALIGN: center; DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          colSpan=3><INPUT style="WIDTH: 550px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=name1 errmsg="名称不能为空！" 
            valid="required" length="200" tips="请按授权顺序增加授权方信息。授权方名称需要中英文填写。"> 
        </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">地址 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT style="WIDTH: 550px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=address1 errmsg="地址不能为空！" 
            valid="required" length="200" tips="请填写地址"> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">联系人 
          </TD>
          <TD><INPUT style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 length="40" tips=""> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 70px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">国别或地区</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 250px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            style="WIDTH: 100%" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=country1 errmsg="国别或地区不能为空！" 
            valid="required" length="200" tips="请填写国别或地区"> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">电话号码</TD>
          <TD><INPUT style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone1 length="30" tips="请填写电话号码"> 
</TD>
          <TD style="WIDTH: 60px">传真号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=fax1 length="30" tips="请填传真号码"> 
</TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">Email 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3>
            <DIV style="FLOAT: left"><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=email1 size=60 errmsg="Email不能为空！" 
            valid="required" length="50" tips="请填写Email"> </DIV>
            <DIV style="FLOAT: right"><INPUT style="WIDTH: 60px" onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV>
            <c:choose>
            <c:when test="${empty cps}">
            <DIV style="TEXT-ALIGN: center" id=s_h_info>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          colSpan=3><INPUT style="WIDTH: 550px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=name1 errmsg="名称不能为空！" 
            valid="required" length="200" tips="请按授权顺序增加授权方信息。授权方名称需要中英文填写。"> 
        </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">地址 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT style="WIDTH: 550px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=address1 errmsg="地址不能为空！" 
            valid="required" length="200" tips="请填写地址"> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">联系人 
          </TD>
          <TD><INPUT style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 length="40" tips=""> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 70px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">国别或地区</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 250px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            style="WIDTH: 100%" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=country1 errmsg="国别或地区不能为空！" 
            valid="required" length="200" tips="请填写国别或地区"> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">电话号码</TD>
          <TD><INPUT style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone1 length="30" tips="请填写电话号码"> 
</TD>
          <TD style="WIDTH: 60px">传真号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=fax1 length="30" tips="请填传真号码"> 
</TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">Email 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=email1 size=60 errmsg="Email不能为空！" 
            valid="required" length="50" tips="请填Email"> 
      </TD></TR></TBODY></TABLE>
      </DIV>
            </c:when>
            <c:otherwise>
            <c:forEach items="${cps}" var="cp" varStatus="cpStat">
            <DIV style="TEXT-ALIGN: center" id=s_h_info>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 100px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">名称</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
          colSpan=3><INPUT style="WIDTH: 550px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=name1 errmsg="名称不能为空！" 
            valid="required" length="200" tips="请按授权顺序增加授权方信息。授权方名称需要中英文填写。" value="<c:out value='${cp.name}' />" /> 
        </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">地址 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT style="WIDTH: 550px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,500) 
            onmouseout=cpcc_showtip() name=address1 errmsg="地址不能为空！" 
            valid="required" length="200" tips="请填写地址" value="<c:out value='${cp.addr}' />" /> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">联系人 
          </TD>
          <TD><INPUT style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=contactPerson1 length="40" tips="" value="<c:out value='${cp.opus_sign}' />" /> 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 70px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">国别或地区</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 250px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            style="WIDTH: 100%" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=country1 errmsg="国别或地区不能为空！" 
            valid="required" length="200" tips="请填写国别或地区" value="<c:out value='${cp.country}' />" /> </TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px">电话号码</TD>
          <TD><INPUT style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=phone1 length="30" tips="请填写电话号码" value="<c:out value='${cp.id_number}' />" /> 
</TD>
          <TD style="WIDTH: 60px">传真号码</TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px"><INPUT 
            style="WIDTH: 150px" 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=fax1 length="30" tips="请填传真号码" value="<c:out value='${cp.sign}' />" /> 
</TD></TR>
        <TR>
          <TD 
          style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px">Email 
          </TD>
          <TD 
          style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 1px" 
          colSpan=3><INPUT 
            onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
            onmouseout=cpcc_showtip() name=email1 size=60 errmsg="Email不能为空！" 
            valid="required" length="50" tips="请填Email" value="<c:out value='${cp.garden}' />" /> 
            <c:if test="${cpStat.index!=0}">
            <DIV style="FLOAT: right"><INPUT style="WIDTH: 60px" onclick=deleteRow(this); value=删除 type=button>
            </DIV></c:if>
      </TD></TR></TBODY></TABLE>
      </DIV>
      </c:forEach>
            </c:otherwise>
            </c:choose>
      
      </TD></TR>
  <TR></TR></TBODY>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>出版单位信息</TD></TR>
  <TR>
    <TD class=contentbg>名称</TD>
    <TD class=contentbg><INPUT id=unitNameid 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() onclick=selectUnit(); name=sqrname readOnly 
      size=35 errmsg="出版单位名称不能为空！" valid="required" length="100" 
      tips="请选择出版单位。" value="<c:out value='${sqr.name}'/>" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=address 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqraddress size=35 errmsg="不能为空！" 
      valid="required" length="100" tips="请填写详细地址"  value="<c:out value='${sqr.address}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=postCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqrpostCode size=35 errmsg="不能为空！|格式为6位数字" 
      valid="required|isZip" length="6" tips="请填写邮编"  value="<c:out value='${sqr.post_code}'/>" /> </TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=contactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrcontactPerson size=35 length="40" 
      tips="请填写联系人"  value="<c:out value='${sqr.contact_person}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>电话号码</TD>
    <TD class=contentbg><INPUT id=phone 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      title=格式如010-8888888 onmouseout=cpcc_showtip() name=sqrphone size=35 
      length="30" tips="请填写联系电话号码"  value="<c:out value='${sqr.phone}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>E-mail</TD>
    <TD class=contentbg><INPUT id=email 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=sqremail size=35 errmsg="不能为空！|格式不对！" 
      valid="required|isEmail" length="50" 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知"  value="<c:out value='${sqr.email}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=mobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrmobile size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式"  value="<c:out value='${sqr.mobile}'/>" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=fax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=sqrfax size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式"  value="<c:out value='${sqr.fax}'/>" /></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>出版合同主要内容</TD></TR>
  <TR>
    <TD class=contentbg 
    onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
    onmouseout=cpcc_showtip() tips="">出版类型</TD>
    <TD class=contentbg><INPUT id=vt1 onclick="checkChk(this,'5')" 
      name=recordType_ value=激光视盘 type=checkbox <c:if test="${激光视盘=='激光视盘'}">checked="checked"</c:if> />激光视盘&nbsp; 
      （ <INPUT id=vt1_1 
      onclick=checkSChk(this) name=recordTypeSon_ value=VCD 
      type=checkbox <c:if test="${VCD=='VCD'}">checked="checked"</c:if> />VCD&nbsp;&nbsp;
<INPUT id=vt1_2 onclick=checkSChk(this) 
      name=recordTypeSon_ value=DVD type=checkbox <c:if test="${DVD=='DVD'}">checked="checked"</c:if> />DVD&nbsp;&nbsp;
<INPUT id=vt1_3 onclick=checkSChk(this) name=recordTypeSon_ value=HDVD 
      type=checkbox <c:if test="${HDVD=='HDVD'}">checked="checked"</c:if> />HDVD&nbsp;&nbsp;
<INPUT id=vt1_4 onclick=checkSChk(this) name=recordTypeSon_ value=BD 
 type=checkbox <c:if test="${BD=='BD'}">checked="checked"</c:if> />BD&nbsp;&nbsp;
<INPUT id=vt1_5 onclick=checkSChk(this) name=recordTypeSon_ value=CBHD 
      type=checkbox <c:if test="${CBHD=='CBHD'}">checked="checked"</c:if> />CBHD&nbsp;&nbsp; )<BR>
<INPUT id=vt2 onclick="checkChk(this,'0')" name=recordType_ value=录像带 
      type=checkbox <c:if test="${录像带=='录像带'}">checked="checked"</c:if> />录像带&nbsp;
<INPUT id=vt3 onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick="checkChk(this,'0')" name=recordType_ 
 value=其他 type=checkbox tips="如选“其他”类型，请按合同约定详细说明。" <c:if test="${说明=='说明'}">checked="checked"</c:if> />其他&nbsp;
      <BR>说明：<TEXTAREA style="WIDTH: 500px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() cols=25 name=recordDesc tips="如选“其他”类型，请按合同约定详细说明。"><c:out value='${z72.recordDesc}' /></TEXTAREA> 
    </TD></TR>
  <TBODY id=c_h_info>
  <TR>
    <TD class=contentbg>是否专有</TD>
    <TD id=contract1 class=contentbg>
    <INPUT name=isProprietary value=是 type=radio <c:if test="${z72.isProprietary=='是'}">checked="checked"</c:if> />是 &nbsp;&nbsp;
    <INPUT name=isProprietary value=否 type=radio <c:if test="${z72.isProprietary=='否'}">checked="checked"</c:if> />否 
    </TD></TR>
  <TR>
    <TD class=contentbg>发行范围 </TD>
    <TD class=contentbg><INPUT style="WIDTH: 400px" name=publishScope 
      length="500" value="<c:out value='${z72.publishScope}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>合同签订日期</TD>
    <TD class=contentbg><INPUT id=contractSignDate 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,250) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name=contractSignDate readOnly size=12 tips="请填写合同签订时间" value="<c:out value='${z72.contractSignDate}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>合同有效期</TD>
    <TD class=contentbg>
      <DIV style="FLOAT: left">自&nbsp; <INPUT id=validStartDate 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,250) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name=validStartDate readOnly size=12 errmsg="起始日期不能为空!" valid="required" 
      tips="请填写合同有效期起始日期" value="<c:out value='${z72.validStartDate}' />" /> &nbsp;&nbsp;&nbsp;至&nbsp;&nbsp;&nbsp;
<INPUT id=validEndDate onmousemove=cpcc_showtip(this.tips,this.valid,this.length,250) 
      onmouseout=cpcc_showtip() onclick="fPopCalendar(this, this);" 
      name=validEndDate readOnly size=12 errmsg="截至日期不能为空!" valid="required" 
      tips="请填写合同有效期截至日期" value="<c:out value='${z72.validEndDate}' />" > </DIV>
      <DIV style="FLOAT: right" id=vd_tip></DIV></TD></TR>
  <TR>
    <TD class=contentbg>其他</TD>
    <TD class=contentbg>
    <TEXTAREA style="WIDTH: 500px" onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) onmouseout=cpcc_showtip()
 cols=25 name=otherInfo tips="请填写除上述内容外其他认为需要加以说明的其他内容。"><c:out value="${z72.otherInfo}" /></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>认证情况</TD></TR>
  <TR>
    <TD 
    style="BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
    class=contentbg>认证机构</TD>
    <TD class=contentbg><INPUT style="WIDTH: 450px" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() onclick=selectOrgUnit(); name=certOrg readOnly 
      length="40" 
      tips="国家版权局指定的认证机构，包括：美国电影协会、香港影业协会、韩国著作权委员会、台湾著作权保护协会等。如有认证书，请将核发认证书的机构如实填写；如没有认证书，不需填写。"
       value="<c:out value='${z72.certOrg}' />" /> 
    </TD></TR>
  <TR>
    <TD 
    style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 70px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
    class=contentbg>证明书编号</TD>
    <TD 
    style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 250px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
    class=contentbg><INPUT style="WIDTH: 100%" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=certNum length="200" tips="请填写认证书上面的编号。" value="<c:out value='${z72.certNum}' />" /> 
    </TD></TR>
  <TR>
    <TD 
    style="BORDER-RIGHT-WIDTH: 1px; WIDTH: 70px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 0px" 
    class=contentbg>回复结果</TD>
    <TD 
    style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px" 
    class=contentbg colSpan=3><INPUT style="WIDTH: 100%" 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=replyResult length="40" tips="请填写回复结果" value="<c:out value='${z72.replyResult}' />" /> 
  </TD></TR></TBODY>
  <TBODY>
  <TR>
    <TD class="contentbg small_title" colSpan=2>留存作品样本</TD></TR>
  <TR>
    <TD class=contentbg>电子介质</TD>
    <TD class=contentbg><INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=emedium size=50 length="40" 
      tips="" value="<c:out value='${z72.emedium}' />" />&nbsp;共&nbsp; <INPUT 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,200) 
      onmouseout=cpcc_showtip() name=ecount size=10 length="10" 
      tips="" value="<c:out value='${z72.ecount}' />" />&nbsp;件<BR></TD></TR>
  <TR>
    <TD class="contentbg small_title" colSpan=2>申请办理信息</TD></TR>
  <TR>
    <TD class=contentbg>申请方式</TD>
    <TD class=contentbg><INPUT onclick=agent_showOrHide(this) name="applyType" 
      value="由出版单位申请" type="radio" 
      <c:if test="${z72.applyType=='由出版单位申请'}">checked="checked"</c:if> />由出版单位申请 
     <INPUT onclick=agent_showOrHide(this) name="applyType" value=代理人 type="radio" 
      <c:if test="${z72.applyType=='代理人'}">checked="checked"</c:if> />由代理人申请 
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
      onmouseout=cpcc_showtip() name=agent_desc size=60 errmsg="代理权限说明不能为空！" valid="required" length="180"
       tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" value="<c:out value='${z72.agent_desc}' />" /> 
  </TD></TR>
  <TR>
    <TD class=contentbg>姓名或单位名称</TD>
    <TD class=contentbg><INPUT id=dlrname 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,400) 
      onmouseout=cpcc_showtip() name=dlrname size=35 errmsg="不能为空！" 
      valid="required" length="100" tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致"
      value="<c:out value='${dlr.name}' />" /> </TD></TR>
  <TR>
    <TD class=contentbg>详细地址</TD>
    <TD class=contentbg><INPUT id=dlraddress 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlraddress size=35 errmsg="不能为空！" 
      valid="required" length="100" tips="请填写实际联系地址，以便能及时收取证书或其它书面邮件" value="<c:out value='${dlr.address}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>邮政编码</TD>
    <TD class=contentbg><INPUT id=dlrpostCode 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,350) 
      onmouseout=cpcc_showtip() name=dlrpostCode size=35 errmsg="不能为空！" 
      valid="required" length="6" tips="请填写邮政编码" value="<c:out value='${dlr.post_code}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>联系人</TD>
    <TD class=contentbg><INPUT id=dlrcontactPerson 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrcontactPerson size=35 errmsg="不能为空！" 
      valid="required" length="40" tips="请填写联系人" value="<c:out value='${dlr.contact_person}' />" /></TD></TR>
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
      onmouseout=cpcc_showtip() name=dlremail size=35 errmsg="不能为空！|E-mail格式不对！" 
      valid="required|isEmail" length="50" 
      tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" value="<c:out value='${dlr.email}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>手机号码</TD>
    <TD class=contentbg><INPUT id=dlrmobile 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrmobile size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.mobile}' />" /></TD></TR>
  <TR>
    <TD class=contentbg>传真号码</TD>
    <TD class=contentbg><INPUT id=dlrfax 
      onmousemove=cpcc_showtip(this.tips,this.valid,this.length,300) 
      onmouseout=cpcc_showtip() name=dlrfax size=35 length="30" 
      tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.fax}' />" />
    </td></tr></tbody>
					</table>
				</div>
<TABLE align=center style="background-color:#fff;">
  <TBODY>
  <TR height=5>
    <TD colSpan=3></TD></TR>
  <TR>
  <TD width=50 style=" padding-right:16px;">
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/z72/savefor');"/>
    </TD> 
 <TD width=50 style=" padding-right:16px;">
   <input type="button" value="下一步" id="saveId" 
			 class="m_button" onClick="subForm('${pageContext.request.contextPath}/application/z72/subfor');"/>
    </TD> 
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></TBODY></TABLE></FORM></DIV>
</body>
<SCRIPT language=JavaScript>
$(document).ready(function(){
	var isPubli = "${z72.isPublic}";
	if(isPubli.length>0 && isPubli=='是') {
		document.all("publicInfo").style.display="none";
		document.all("s_h_info").style.display="none";
		document.all("c_h_info").style.display="none";
		document.all("firstPlaceInfo").style.display="none";
	} 
	else if(isPubli.length>0 && isPubli=='否') {
		document.all("publicInfo").style.display="block";
		document.all("s_h_info").style.display="block";
		document.all("c_h_info").style.display="block";
		document.all("firstPlaceInfo").style.display="block";
	}
	var applyType = "${z72.applyType}";
	if(applyType.length>0 && applyType=='代理人') {
		document.all("A-0").style.display="block";
	}
	var flowNum = "${z72.flow_num}";
	if(flowNum.length==0){
		 setDefaultChecked('opusType');
		 setDefaultChecked('opusTypeSon');
		 setDefaultChecked('isProprietary');
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

// 特殊校验
function afterValid()
{	
	//1.对授权有效期进行判断
	var flag = true;
	var sd = StringToDate(document.getElementById("validStartDate").value);
	var ed = StringToDate(document.getElementById("validEndDate").value);
	if(ed.getTime()-sd.getTime() < 0)
	{
		showErrorMsg(document.getElementById("vd_tip"), "截至日期应晚于起始日期！");
		flag = false;
	}
	return flag;
}



function selectUnit()
{
	window.open("/unitType.html","","width=760,scrollbars=no,resizable=no");
}


function s_h_pub()
{
	if(document.all("isPublic")[1].checked == true){
		document.all("publicInfo").style.display="block";
		document.all("s_h_info").style.display="block";
		document.all("c_h_info").style.display="block";
		document.all("firstPlaceInfo").style.display="block";
		
	}else{
		document.all("publicInfo").style.display="none";
		document.all("s_h_info").style.display="none";
		document.all("c_h_info").style.display="none";
		document.all("firstPlaceInfo").style.display="none";
	}	
}

function checkOpt(obj,count,idx) {
	var sid = obj.id+"_1";
	var sob = document.all(sid);
	if(sob) {
		sob.checked="checked";
         for(var j=1;j<10;j++){
			var ot = document.all(obj.id+"_"+j);
			if(ot) {
				document.all(obj.id+"_"+j).disabled=false;
			}			 
		 }
		 for(var i=0;i<count;i++) {
			var num=i+1;
			  if(obj.id.indexOf(num)==-1){
			    for(var j=1;j<10;j++){
				  var ot = document.all(idx+num+"_"+j);
					if(ot) {
						document.all(idx+num+"_"+j).checked="";
						document.all(idx+num+"_"+j).disabled=true;
					}
				}
			}else{
			 continue;
			}
			
		}
	} else {
		for(var i=0 ; i<count ; i++) {
			var num=i+1;
			for(var j=0;j<10;j++){
				  var ot = document.all(idx+i+"_"+j);
					if(ot) {
						document.all(idx+i+"_"+j).checked="";
						document.all(idx+i+"_"+j).disabled=true;
					}
			}
			
		}
		var v = obj.value;
		if(v=="其他"){
			obj.title="如选“其他”类型，请按合同约定详细说明。";
		}
	}
}

function checkChk(obj,count) {
	if(!obj.checked) {
		for(var i=1 ; i<=count ; i++) {
			var vt = document.all(obj.id+"_"+i);
			if(vt.checked) {
				document.all(obj.id+"_"+i).checked="";
			}
		}
	}
}

function checkSChk(obj) {
	var idstr = obj.id;
	var idx = idstr.indexOf("_");
	var pid = idstr.substring(0,idx);
	var pobj = document.all(pid);
	if(obj.checked) {
		pobj.checked="checked";
	}
}
	
function selectOrgUnit() {
	window.open("/certOrgList.html","","width=760,scrollbars=no,resizable=no");
}
</SCRIPT>
</html>
