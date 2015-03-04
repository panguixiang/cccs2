<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<LINK rel=stylesheet type=text/css href="css/table.css">
<LINK rel=stylesheet type=text/css href="css/form/formStyle2.css">
<script language="JavaScript" src="js/jquery-1.4.2.min.js"></script>
<SCRIPT language=JavaScript src="js/form2/formcheck2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/createPeoples2.js"></SCRIPT>
<SCRIPT language=JavaScript src="js/form2/showtips2.js"></SCRIPT>
<title>影视作品节目信息</title>
</head>
<body>
<form  name="generalForm" method="post" action="">
<div id="mytips"></div>
<br>
<table width="80%" align="center" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" style="margin-top:20px; border-collapse:collapse">
  <tr><td align="center" style="font-size:14px;"><b>影视作品详细节目</b></td></tr>
</table><br>
<div style="width:900px;margin-top:10px;" id="SoftRegSLZYD">

<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" style="margin-top:20px; border-collapse:collapse">
  <tr>
  	 <td class="contentbg" width="80px">节目类型</td>
     <td class="contentbg">
     		<input type="radio" name="langType" value="华语节目" <c:if test="${z72.langType=='华语节目'}">checked="checked"</c:if> />华语节目 &nbsp;&nbsp;
	    	<input type="radio" name="langType" value="外语节目" <c:if test="${z72.langType=='外语节目'}">checked="checked"</c:if> />外语节目 &nbsp;&nbsp;
     </td>
  </tr>
</table>
<table id="newRecord" width="100%" align="center" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" style="border-collapse:collapse">
	<tr>
  	    <td class="contentbg" colspan="4" style="border-top-width:0px">
  	    	<div style="float:left;"><b>节目信息列表</b></div>
			<div style="float:right;">
			<input type="button" value="增加节目" style="width:60px" onclick="addRow('personData');" tips="授权关系相同，节目多于一部时，请点击此按钮。" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"/>
			</div>
	    </td>
    </tr>
    <tr>
      <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" 
    id=personData class=contentbg colSpan=2>
	<div style="display: none;">
		<table width="100%" border="1" cellpadding="0" cellspacing="0"
			bordercolor="#CCCCCC">
			<tbody>
				<tr>
			<td class="contentbg" width="80px" style="text-align:center;border-top-width:2px">中文片名</td>
			<td colspan="3" style="border-top-width:2px">
			<textarea name="cnTitle_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写中文片名" length="200"  
			valid="required" onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" 
			onMouseOut="cpcc_showtip()" errmsg="中文片名不能为空！"></textarea>
		</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">英文片名</td>
			<td colspan="3">
			<textarea name="enTitle_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写英文片名" length="200" 
			 valid="required" onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"
			 errmsg="英文片名不能为空！"></textarea></td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">制片公司<br>（中英文）</td>
			<td colspan="3">
			<textarea name="company_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。"
			 length="200" valid="required" onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" 
			 onMouseOut="cpcc_showtip()" errmsg="制片公司不能为空！"></textarea>
			</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">制片公司<br>国&nbsp;&nbsp;&nbsp;&nbsp;别</td>
			<td colspan="3">
			<textarea name="proCountry_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写制片公司国别" length="200" valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"  errmsg="制片公司国别不能为空！"></textarea>
			</td>
		</tr> 
		<tr>
			<td class="contentbg" style="text-align:center">导演<br>（中英文）</td>
			<td colspan="3">
			<textarea name="director_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="导演不能为空！"></textarea></td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">主演<br>（中英文）</td>
			<td colspan="3">
			<textarea name="leadRole_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。" length="200"   valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="主演不能为空！"></textarea>
		</td>
</tr>
<tr>
	<td class="contentbg" style="text-align:center">出品时间</td>
		<td width="40%" title="年份为四位数字">
			<textarea name="publishDate_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写出品时间"
				 valid="required|custom" rules="/^[1-9]\d{3}$/" length="4" errmsg="出品时间不能为空！|请正确填写年份"
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"></textarea>
			</td>
	<td class="contentbg" width="100px" style="text-align:center">影视作品出品地</td>
<td><div style="float: left;width:80%"><textarea name="country1" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写国别或地区" length="200"   valid="required" 
 onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()" 
 errmsg="影视作品出品地不能为空！"></textarea></div>
 <DIV style="FLOAT: right">
 <INPUT onclick=deleteRow(this); value=删除 type=button>
 </DIV></TD></TR></TBODY></TABLE></DIV>
   <c:choose>
	  <c:when test="${empty movies}">
	  <script language="Javascript">
	$(document).ready(function(){
		 setDefaultChecked('langType');
		 setDefaultChecked('isOffical');
     });
	  </script>
      <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
       <tr>
			<td class="contentbg" width="80px" style="text-align:center">中文片名</td>
			<td colspan="3">
			<textarea name="cnTitle_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写中文片名" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="中文片名不能为空！"></textarea>
		</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">英文片名</td>
			<td colspan="3">
			<textarea name="enTitle_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写英文片名" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="英文片名不能为空！"></textarea></td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">制片公司<br>（中英文）</td>
			<td colspan="3">
			<textarea name="company_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。" length="200"valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="制片公司不能为空！"></textarea>
			</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">制片公司<br>国&nbsp;&nbsp;&nbsp;&nbsp;别</td>
			<td colspan="3">
			<textarea name="proCountry_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写制片公司国别"  length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="制片公司国别不能为空！"></textarea>
			</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">导演<br>（中英文）</td>
			<td colspan="3">
			<textarea name="director_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。" length="200" valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="导演不能为空！"></textarea></td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">主演<br>（中英文）</td>
			<td colspan="3">
			<textarea name="leadRole_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="主演不能为空！"></textarea>
		</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">出品时间</td>
			<td width="40%" title="年份为四位数字">
			<textarea name="publishDate_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写出品时间"
				 valid="required|custom" rules="/^[1-9]\d{3}$/" length="4" errmsg="出品时间不能为空！|请正确填写年份"
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"></textarea>
			</td>
			<td class="contentbg" width="100px" style="text-align:center">影视作品出品地</td>
			<td><textarea name="country1" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写影视作品出品地" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()"   errmsg="影视作品出品地不能为空！"></textarea>
			</td>
		</tr>
	</tbody>
	</table>
	</div>
	 </c:when>
	  <c:otherwise>
	  <c:forEach items="${movies}" var="movie" varStatus="movStat">
	   <DIV>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
       <tr>
			<td class="contentbg" width="80px" style="text-align:center">中文片名</td>
			<td colspan="3">
			<textarea name="cnTitle_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写中文片名" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()" 
				errmsg="中文片名不能为空！"><c:out value='${movie.cnTitle_}' /></textarea>
		</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">英文片名</td>
			<td colspan="3">
			<textarea name="enTitle_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写英文片名" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()" 
            errmsg="英文片名不能为空！"><c:out value='${movie.enTitle_}' /></textarea></td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">制片公司<br>（中英文）</td>
			<td colspan="3">
			<textarea name="company_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。" length="200"valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()" 
				errmsg="制片公司不能为空！"><c:out value='${movie.company_}' /></textarea>
			</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">制片公司<br>国&nbsp;&nbsp;&nbsp;&nbsp;别</td>
			<td colspan="3">
			<textarea name="proCountry_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写制片公司国别"  length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()" 
				errmsg="制片公司国别不能为空！"><c:out value='${movie.proCountry_}' /></textarea>
			</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">导演<br>（中英文）</td>
			<td colspan="3">
			<textarea name="director_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。" length="200" valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" 
				onMouseOut="cpcc_showtip()" errmsg="导演不能为空！"><c:out value='${movie.director_}' /></textarea></td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">主演<br>（中英文）</td>
			<td colspan="3">
			<textarea name="leadRole_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="无中文译名时可仅填写原名。" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()" 
				errmsg="主演不能为空！"><c:out value='${movie.leadRole_}' /></textarea>
		</td>
		</tr>
		<tr>
			<td class="contentbg" style="text-align:center">出品时间</td>
			<td width="40%" title="年份为四位数字">
			<textarea name="publishDate_" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写出品时间"
				 valid="required|custom" rules="/^[1-9]\d{3}$/" length="4" errmsg="出品时间不能为空！|请正确填写年份"
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()">
				<c:out value='${movie.publishDate_}' /></textarea>
			</td>
			<td class="contentbg" width="100px" style="text-align:center">影视作品出品地</td>
			<td><textarea name="country1" cols="25" rows="2" style="width:100%;overflow:hidden" tips="请填写影视作品出品地" length="200"  valid="required" 
				onmousemove="cpcc_showtip(this.tips,this.valid,this.length,200)" onMouseOut="cpcc_showtip()" 
				errmsg="影视作品出品地不能为空！"><c:out value='${movie.country1}' /></textarea>
				<c:if test="${movStat.index!=0}">
				 <DIV style="FLOAT: right">
               <INPUT onclick=deleteRow(this); value=删除 type=button>
                </DIV></c:if>
			</td>
		</tr>
	</tbody>
	</table>
	</div>
	 </c:forEach>
	  </c:otherwise>
	  </c:choose>
	</td>
	</tr>
</table>
</div>
<table align="center" border="0">
  <TBODY>
  <TR height=5>
    <TD colSpan=3></TD></TR>
  <TR>
  <TD width=50>
   <input type="button" value="上一步" title="返回影视作品合同登记申请表" class="m_button" 
		 onClick="javascript:modifyInfo('${pageContext.request.contextPath}/application/initupdate/z72/${flow_num}');" />
    </TD> 
 <TD width=50>
   <input type="button" value="提交" class="m_button" 
    onClick="saveForms('${pageContext.request.contextPath}/application/addmovie/${flow_num}');" />
    </TD> 
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></TBODY>
</table>
</form>
</body>
<script language="javascript">

	 function saveForms(url)
	{
	  if(confirm("表格提交后将自动进入初审状态,\r无法在操作下进行修改和删除!")){
		clearErrorMsgDiv();
		var canSubmit = false;
		var comVerify = validFormElements();
		var specialVerify = afterValid();
		
		if(comVerify && specialVerify){
			canSubmit = true;
		}
		
		if(canSubmit)
		{
			getItemsValue();
			document.forms[0].action=url;
			document.forms[0].submit();
		}
	  }
	} 
	
	function getItemsValue()
	{
		setDateValue('cnTitle_');
		setDateValue('country1');
	}
	
	
	
	function setDateValue(obj)
	{
		var obj1 = document.all(obj);
		for(var i=1; i<obj1.length; i++)
		{
			if(obj1[i].value == null || obj1[i].value == "")
			{
				obj1[i].value=" ";
			}
		}
		
	}
	
	function addNew(strid){
		var myt = document.getElementById(strid);
		if(myt){
			var hiddrenObj = myt.children(1);
			var temp = hiddrenObj.cloneNode(true);
			temp.firstChild.firstChild.innerHTML=myt.rows.length-1;
			temp.style.display = '';
			myt.appendChild(temp);
		}
	}
	
	function delRow(obj)
	{
		obj.parentNode.parentNode.removeNode(true);
	}
	
function modifyInfo(targeturl)
{
	window.location.href=targeturl;
}

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
</script>
</html>
