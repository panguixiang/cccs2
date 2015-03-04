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
<title>录音制品曲目信息</title>
<script language="javascript">
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

// 重写formcheck.js中的方法saveForm()
// 此处的saveForm()方法只是对曲目页面进行校验，并将列表中的数据转换为一定格式 
function saveForm(url)
{
	clearErrorMsgDiv();
	var canSubmit = false;
	var comVerify = validFormElements();
	//alert("ddd");
	var specialVerify = afterValid();
	
	if(comVerify && specialVerify){
		canSubmit = true;
	}
	if(canSubmit)
	{
		// 设置曲目信息，将其传回父页面	
		//getItemsValue();
		$("#subid").attr('disabled', true);
		document.forms[0].action=url;
		document.forms[0].submit();
		alert("添加成功!")
		window.close();
	}

}
	
/* function alertMsg(){
  if(""!=""&&""!="null"){
    alert("");
    window.close();
  }
} */
</script>
<script language="JavaScript">
 if (window.attachEvent) { 
     window.attachEvent("onload", alertMsg); 
 } else if (window.addEventListener) { 
     window.addEventListener("load", alertMsg, false);   
 }  
</script>
</head>

<body>
<form  name="generalForm" method="post" action="">
<input type="hidden" name="ch_name" value="${record.ch_name}"/> 
<input type="hidden" name="en_name" value="${record.en_name}"/>
<div id="mytips"></div>

<table width="98%" border="0" cellspacing="0" cellpadding="0" style="border:0px solid #333333;margin-top:20px;" align="center">
  <tr><td align="center" style="font-size:14px;"><b>录音制品曲目信息</b></td></tr>
  <tr><td><div style="float:right;"><input type="button" value="增加" onClick="addNew('item');" /></div></td></tr>
  <tr><td><div style="float:left;"><font color="red" style="font-size:12px;">1.曲目名称要中英文填写</font></div></td></tr>
  <tr><td><div style="float:left;"><font color="red" style="font-size:12px;">2.每个输入框不能超过100字</font></div></td></tr>
</table>
<div id="SoftRegSLZYD" style="margin-top:10px"> 
<table id="item" width="98%" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #333333;" align="center">
	  <tr class="contentbg small_title">
	  	<td align="center" style="width:3%" nowrap>序号</td>
		<td align="center" style="width:20%" nowrap>曲名</td>
		<td align="center" style="width:17%" nowrap>演唱（奏）者</td>
		<td align="center" style="width:17%" nowrap>曲作者</td>
		<td align="center" style="width:17%" nowrap>词作者</td>
		<td align="center" style="width:10%" nowrap>曲长</td>
		<td align="center" style="width:10%" nowrap>备注</td>
		<td align="center" style="width:6%"  nowrap>操作</td>
	  </tr>
	 <tbody style="display:none;">
	  <tr>
	  	<td>1</td>
		<td>
			<textarea name="title_" cols="25" rows="5" style="width:99%;overflow:hidden" 
			length="200" valid="required"  errmsg="曲名不能为空！"
			></textarea>
		</td>
		<td>
			<textarea name="artist_" cols="25" rows="5" style="width:99%;overflow:hidden"
				length="200" valid="required"  errmsg="演唱（奏）者不能为空！"></textarea>
		</td>

		<td>
			<textarea name="songWriter_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				 length="200" valid="required" errmsg="曲作者不能为空！"></textarea>
		</td>
		<td>
			<textarea name="wordsAuthor_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				length="200" valid="required"  errmsg="词作者不能为空！" ></textarea>		
		</td>
		<td>
			<textarea name="duration_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				length="50" valid="required" errmsg="曲长不能为空！"></textarea>
			
		</td>
		<td>
			<textarea name="remark_" cols="25" rows="5" style="width:99%;overflow:hidden" 
			 length="50"></textarea>
			
		</td>
		<td><input type="button" style="width:40px" value="删除" onClick="delRow(this);" /></td>
	  </tr>
	 </tbody>
	 
	<c:choose>
	 <c:when test="${empty tracks}">
	  <tbody style="display:;">
	  <tr>
	  	<td>1</td>
		<td>
			<textarea name="title_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				length="200" valid="required"  errmsg="曲名不能为空！"></textarea>
		</td>
		<td>
			<textarea name="artist_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				length="200" valid="required"  errmsg="演唱（奏）者不能为空！" ></textarea>
		</td>
 
		<td>
			<textarea name="songWriter_" cols="25" rows="5" style="width:99%;overflow:hidden"
				 length="200" valid="required" errmsg="曲作者不能为空！"></textarea>
		</td>
		<td>
		<textarea name="wordsAuthor_" cols="25" rows="5" style="width:99%;overflow:hidden"
				 length="200" valid="required" errmsg="词作者不能为空！"></textarea>
		</td>
		<td>
			<textarea name="duration_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				length="50" valid="required" errmsg="曲长不能为空！" ></textarea>
		</td>
		<td>
			<textarea name="remark_" cols="25" rows="5" style="width:99%;overflow:hidden" 
			length="200" ></textarea>
		</td>
		<td></td>
	  </tr>
	 </tbody>
</c:when>
	 <c:otherwise>
	  <c:forEach items="${tracks}" var="tract" varStatus="trastat">
	 <tbody style="display:;">
	  <tr>
	  	<td>${trastat.index+1}</td>
		<td>
			<textarea name="title_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				length="200" valid="required"  errmsg="曲名不能为空！"><c:out value='${tract.title_}' /></textarea>
		</td>
		<td>
			<textarea name="artist_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				length="200" valid="required"  errmsg="演唱（奏）者不能为空！" ><c:out value='${tract.artist_}' /></textarea>
		</td>
 
		<td>
			<textarea name="songWriter_" cols="25" rows="5" style="width:99%;overflow:hidden"
				 length="200" valid="required" errmsg="曲作者不能为空！"><c:out value='${tract.songWriter_}' /></textarea>
		</td>
		<td>
			<textarea name="wordsAuthor_" cols="25" rows="5" style="width:99%;overflow:hidden"
				 length="200" valid="required" errmsg="词作者不能为空！"><c:out value='${tract.wordsAuthor_}' /></textarea>
		</td>
		<td>
			<textarea name="duration_" cols="25" rows="5" style="width:99%;overflow:hidden" 
				length="50" valid="required" errmsg="曲长不能为空！" ><c:out value='${tract.duration_}' /></textarea>
		</td>
		<td>
			<textarea name="remark_" cols="25" rows="5" style="width:99%;overflow:hidden" 
			length="200" ><c:out value='${tract.remark_}' /></textarea>
		</td>
		<td>
		<c:if test="${trastat.index!=0}">
		<input type="button" style="width:40px" value="删除" onClick="delRow(this);" />
		</c:if>
		</td>
	  </tr>
	 </tbody>
	 </c:forEach>
	
</c:otherwise>
	 </c:choose>
	 
	 
</table>
</div>
<table align="center" border="0">
	<tr height="5"><td colspan="2"></td></tr>
	<tr>
		<td width="50">
			<input style="color:blue;" type="button" align="middle" value="确定" id="subid"
			onClick="saveForm('${pageContext.request.contextPath}/application/addtracks/${record.id}/${flow_num}');" />
		</td>
		<td width="50">
			<input style="color:blue;" type="button" align="middle" value="取消" onClick="javascript:goBack();" />
		</td>
	</tr>
</table>
</form>
</body>
</html>
