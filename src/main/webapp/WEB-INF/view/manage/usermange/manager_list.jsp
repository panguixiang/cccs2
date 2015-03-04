<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
<meta http-equiv="pragma" content="no-cache"/>
<meta http-equiv="cache-control" content="no-cache"/>
<meta http-equiv="expires" content="0"/>
	<title>信息公示-中国动漫版权服务平台</title>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<!--content-->
	<!--新闻列表-->
	<div class="m_right">
		<h2>您当前的位置：权限管理 &gt;&gt;管理员查询
		</h2>
		<div class="c_right_bqinfo m_right_c">
			<div class="bq_box">
				<div>
					<form action="" id="querFormId" method="get" name="querForm">
						<table cellspacing="0" cellpadding="0" width="100%"
						class="app_table">
							<tr>
								<td colspan="4">
									<div class="search_">查询条件</div>
								</td>
							</tr>
							<tr>
							<td width="18%">
								<div align="right">
								登录名称
								</div>
							</td>
							<td colspan="3">
								<input id="usernameid" name="username" value="<c:out value='${username}' />" class="r_input_search0712" />
							</td>
							</tr>
							<tr>
							<td>
							<div align="right">创建起始日期</div>
							</td>
								<td width="25%">
									<input type="text" class="Wdate"
								name="beginTime" onfocus="calShow(this);"
								value="<c:out value='${beginTime}' />" readonly />
								</td>
								<td width="15%">
									<div align="right">
									创建结束日期
									</div>
								</td>
								<td width="42%">
									<input type="text" class="Wdate"
								name="endTime" onfocus="calShow(this);"
								value="<c:out value='${endTime}' />" readonly />
								</td>
							</tr>
							<tr align=center>
								<td colspan="4">
									<input type="button" value="查询" class="m_button0910" id="subId"
								onclick="subForm('manage/info/managerlist/list');" />
									&nbsp;&nbsp;&nbsp;
									<input type="button" value="重置" class="m_button0910" id="resetId"
								onclick="restd('querFormId');"/>
								</td>
							</tr>
							<tr>
								<td colspan="2"></td>
								<td colspan="2"></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="s_list">
				 <div class="new_button" id="aft1011" style="display:none">
			        <a href="manage/info/addmanage/init">新增管理员</a>
		          </div>					
					<table width="100%" border="1" cellspacing="0" cellpadding="0"
						bordercolor="#e4e4e4" id="tableid"
						style="table-layout: fixed; word-wrap: break-word; margin-top: 10px;">
						<tr>
						<th width="8%">序号</th>
						<th width="15%">登录名称</th>
						<th width="15%">用户等级</th>
						<th width="15%">创建时间</th>
						<th width="20%" colspan="3">操作</th>
						</tr>
						<c:set var="index" value="${offset+1}"></c:set>
						<c:forEach items="${page.data}" var="mange" varStatus="idx">
							<tr id="tr${mange.id}">
								<td align="center">${index}</td>
								<c:set var="index" value="${index+1}"></c:set>
								<td align="left">${mange.username}</td>
								<td align="center">
								 <c:if test="${mange.level=='1'}">超级管理员</c:if>
								 <c:if test="${mange.level=='2'}">二级管理员</c:if>
								</td>
								<td align="center">
								<fmt:formatDate value="${mange.create_time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td align="center">
							<a id="aft1012" style="display:none" href="manage/info/addmanage/init?id=${mange.id}">修改</a>
							</td><td align="center">
							<a id="aft1013" style="display:none" href="javascript:resetpaswd('${mange.id}');">密码重置</a>
							</td><td align="center">
							<c:if test="${mange.level=='2'}">
							<a id="aft1014" style="display:none" href="javascript:deletemange('${mange.id}');">删除</a>
							</c:if>
							</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!--翻页-->
				<c:if test="${!empty page.data}">
					<pg:pager items="${page.totalCount}" url="manage/info/managerlist/list"
						export="currentPageNumber=pageNumber" maxIndexPages="8"
						maxPageItems="${page.pageSize}">
						<pg:param name="username" value="${username}" />
						<pg:param name="beginTime" value="${beginTime}" />
						<pg:param name="endTime" value="${endTime}" />
						<div class="page csBlue">
							<ul>
								<pg:first>
									<li>
										<a href="${pageUrl}">首页</a>
									</li>
								</pg:first>
								<pg:prev>
									<li>
										<a href="${pageUrl}">前一页</a>
									</li>
								</pg:prev>
								<pg:pages>
									<c:choose>
										<c:when test="${currentPageNumber eq pageNumber}">
											<li class="thisclass">${pageNumber}</li>
										</c:when>
										<c:otherwise>
											<li>
												<a href="${pageUrl}">${pageNumber}</a>
											</li>
										</c:otherwise>
									</c:choose>
								</pg:pages>
								<pg:next>
									<li>
										<a href="${pageUrl}">后一页</a>
									</li>
								</pg:next>
								<pg:last>
									<li>
										<a href="${pageUrl}">尾页</a>
									</li>
								</pg:last>

							</ul>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</pg:pager>
				</c:if>
				<!--翻页 end-->
			</div>
		</div>

	</div>
	<div class="clear"></div>
<!-- 弹出层 --> 
<div class="show_m_div" id="show_m_div_id" style="visibility: hidden;">
	<h2>密码重置</h2>
    <div class="show_div" id="formdiv" style="display:block; font-size:12px;">
		<input type="hidden" name="mangeid" id="maidid" value="" />
		&nbsp;&nbsp;新密码：<input type="password" name="newpaswd" id="newpaswdid" value="" maxlength="100" />
		<br>
		确认密码：<input type="password" name="repnewpwd" id="repnewpwdid" value=""  maxlength="100" style="margin-top:10px;"/>
		<br>
		<span style="margin-left:60px;" id="repasdivmsg"></span><br>
		<div style="margin-left:85px;" class=" show_input0921">
		<input type="button" value="确定" id="subpaswdId" />
		<input type="button" value="关闭" onclick="closeDiv();" />
		</div>
  	</div>
  	
  	<div id="msgDiv" style="display:none">
	 <span id="backmsgid" style="margin-left:100px;line-height:30px;"></span>
	 <div style="margin-left:120px;" class="msg_0925">
	  <input type="button" value="关闭" onclick="closeDiv();"/>
	  </div>
	 </div>
</div>
</body>
<script language="javascript">
function subForm(url) {
	//提交表单
	$("#subId").attr('disabled', true);
	var frm = document.getElementById("querFormId");
	frm.action = url;
	frm.submit();
}

function deletemange(ids) {
 if (confirm("删除后将永远无法恢复!")) {
	$.ajax({
			url:'manage/info/delete/manager',
			type:'post',
			data:{id:ids},
			dataType:'text',
			success:function(calback){
		         if(calback=='yes') {
		        	 $("#tr"+ids).remove();
		         }
			}
	   }); 
	}
}


function resetpaswd(mid) {
	$("#maidid").val(mid);
	var content = window.document.getElementById("show_m_div_id");
	   $(content).css("left",($("#tableid").offset().left)+ ($("#tableid").width() / 3)-15)
		.css("top",(($("#tableid").offset().top) + $("#tableid").height() / 3));
   content.style.opacity = "1";
   content.style.visibility = "visible";
   $("#formdiv").css("display","block");
  $("#msgDiv").css("display","none");
}

//关闭弹出层
function closeDiv() {
        $("#backmsgid").text("");
        $("#repasdivmsg").text("");
        $("#maidid").val("");
   	   $("#newpaswdid").val("");
   	 $("#repnewpwdid").val("");
      var content2 = document.getElementById("show_m_div_id");
        content2.style.visibility="hidden";
}

$(document).ready(function(){
  $("#subpaswdId").click(function(){
	var maid = $("#maidid").val();
	var newpaswd = $("#newpaswdid").val();
	var repnewpwd = $("#repnewpwdid").val();
	if(newpaswd.length==0 || newpaswd.length==0 || repnewpwd != newpaswd) {
		$("#repasdivmsg").css("color","red").text("请输入新密码和正确的确认密码!"); 
		return;
	}
	$.ajax({
		url : 'manage/info/resetpaswd',
		type : 'post',
		data : {
			mid : maid,
			npswd : newpaswd,
			rnpswd : repnewpwd
		},
		dataType: 'text',
		success : function(backdata) {
			if(backdata=="yes") {
				$("#backmsgid").css("color","green").text("密码重置成功!");
        	  } else {
        		  $("#backmsgid").css("color","red").text("密码重置失败!");    
        	  }
				$("#formdiv").css("display","none");
				$("#msgDiv").css("display","block");
	        }
	});
 });
  
var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
for(var s = 0;s<buttResources.length;s++) {
	$("[id="+buttResources[s]+"]").css("display","block");
 }
});
</script>
<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
</html>