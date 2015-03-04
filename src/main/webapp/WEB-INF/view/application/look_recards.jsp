<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
<title>在线填报-出版境外音像制品(录音制品)合同登记申请表</title>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<LINK rel=stylesheet type=text/css href="css/form/formStyle2.css">
<script language="JavaScript" src="js/jquery-1.4.2.min.js"></script>
<script language=JavaScript>
/* var authNum = 1;
var nameNum=0;
nameNum=1; */
function openList(id,flow_num)
{
	var url="/application/looktracks/"+id+"/"+flow_num;
	window.open(url,"","width=760,scrollbars=no,resizable=no");
	
}

function subForm(){
	var result="";
	$('input[name="recordids"]').each(function(){    
	    result=result+","+$(this).val();    
	});  
	
		$.ajax({
			url: '${pageContext.request.contextPath}/application/checktrack',
			type: 'post',
			data: {record_ids:result},
			dataType: 'text',
			success: function(calback) {
				if(calback=='yes') {
					if(confirm("表格提交后将自动进入初审状态,\r无法在操作下进行修改和删除!")){
					location.href="${pageContext.request.contextPath}/application/z71/subform/${flow_num}"; 
					  }
				} else {
					alert("曲目信息不能为空！");
				}
			}
		});
}

function modifyInfo()
{
	var targeturl = "${pageContext.request.contextPath}/application/initupdate/z71/${flow_num}";
	window.location.href=targeturl;
}

</script>
</head>
<body>
<div id="mytips"></div>
<div style="width:900px; text-align:center; padding:10px 0px 5px 0px; margin:0 auto">
<table width="80%" align="center" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" style="margin-top:20px; border-collapse:collapse">
  <tr><td align="center" style="font-size:14px;"><b>在线填报-出版境外音像制品(录音制品)合同登记申请表</b></td></tr>
</table>
<div id="SoftRegSLZYD" style="margin-top:10px">
  <table width="80%" border="0" cellspacing="0" cellpadding="0" 
  style="border:1px solid #333333;margin-top:10px" align="center">
    <tr>
      <td class="contentbg small_title" colspan="2"  style="font-size:14px; font-weight:bold; text-align:left">添加录音制品的曲目信息</td>
    </tr>
    <tr>
      <td><div>
	      	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:0px;">
				<c:forEach items="${records}" var="record" varStatus="restat">
				    <input type="hidden" name="recordids" value="${record.id}" />
		      		<tr>
		      			<td style="border-width:0 0 0 0;width:5%;" valign="middle" nowrap rowspan="2"  class="contentbg" align="center">${restat.index+1}</td>
		      			<td style="border-width:0 0 0 0;width:8%;" valign="middle" nowrap  class="contentbg" >中文名</td>
		      			<td style="border-width:0 0 0 0;width:77%; text-align:left" valign="middle" class="contentbg" >
		      			  <c:out value='${record.ch_name}' />
		      			</td>
		      			<td style="border-width:0 0 0 0;width:10%;" rowspan="2" class="contentbg">
		      			<input name="button" type="button" style="width:70px" 
		      			onClick="openList('${record.id}','${record.flow_num}');" value="曲目信息"></td>
		      		</tr>
		      		<tr>
					   <td style="border-width:0 0 0 0;" valign="middle" nowrap class="contentbg">英文名</td>
					   <td style="border-width:0 0 0 0; text-align:left" valign="middle" class="contentbg" >
					    <c:out value='${record.en_name}' />
					   </td>
					</tr> 
		      	</c:forEach>
	      	</table>
      	</div></td>
    </tr>
</table>
</div>
<table align="center">
		<tr height="5"><td colspan="2"></td></tr>
		<tr>
			<td width="50">
			  <input style="color:blue;" type="button" align="middle" 
			  value="上一步" title="返回录音制品合同登记申请表" onClick="modifyInfo();" />
			</td>
			<td width="50">
			&nbsp;<input style="color:blue;" type="button" align="middle" value="提交" 
			onClick="subForm();" />
			</td>
			<td width="50">
			&nbsp;<input style="color:blue;" type="button" align="middle" value="取消" 
			onClick="javascript:window.close();" />
			</td>
			
		</tr>
</table>
</div>
</body>
</html>