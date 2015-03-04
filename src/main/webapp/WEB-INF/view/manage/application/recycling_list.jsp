<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国动漫版权服务平台管理后台</title>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
<div class="m_right">
	<h2>您当前的位置：
	<c:choose>
	<c:when test="${type>2}">
	质权服务表单处理
	</c:when>
	<c:otherwise>
	版权服务表单处理
	</c:otherwise>
	</c:choose>
	&gt;&gt;
	  回收站
	&gt;&gt;
	<c:if test="${type=='1'}">作品著作权相关登记</c:if>
	<c:if test="${type=='2'}">计算机软件著作权相关登记</c:if>
	<c:if test="${type=='3'}">作品著作权质权相关登记</c:if>
	<c:if test="${type=='4'}">计算机软件著作权质权相关登记</c:if>
	</h2>

		<div class="c_right_bqinfo  m_right_c">
			<div class="bq_box">
				<div>
				<form action="" id="querFormId" method="post" name="querForm">
				<input type="hidden" name="type" value="${type}" />
					<table cellspacing="0" cellpadding="0" width="100%"
						class="app_table">
						<tr>
							<td colspan="4"><div class="search_">查询条件</div>
							</td>
						</tr>
		  <tr>
				<td ><div align="right">作品名称</div>
				</td>
				<td colspan="3"><input id="sql_app_name" name="app_name"
					value="<c:out value='${app_name}' />" class="r_input_search0712" />
				</td>
			</tr>
		  <tr>
				<td width="18%"><div align="right">流水号</div>
				</td>
				<td colspan="3"><input id="sql_flow_num" name="flow_num"
					value="<c:out value='${flow_num}' />" class="r_input_search0712" />
				</td>
			</tr>
			<tr>
				<td><div align="right">删除开始时间</div>
				</td>
				<td width="25%">
				<input type="text" class="Wdate" name="beginTime" 
				 onfocus="calShow(this);" value="<c:out value='${beginTime}' />" readonly />
				</td>
				<td width="17%"><div align="right">删除结束时间</div>
				</td>
				<td width="39%">
				<input type="text" class="Wdate" name="endTime" onfocus="calShow(this);"
				 value="<c:out value='${endTime}' />" readonly />
				</td>
			</tr>
				<tr align=center>
			<td colspan="4"><input type="button" value="查询" class="m_button0910" id="subId" 
			 onclick="subForm('manage/application/recycllist');"/>
			&nbsp;&nbsp;&nbsp;<input type="button" value="重置" class="m_button0910" 
			id="resetId" onclick="restd('querFormId');"/></td>
		</tr>
		<tr>
			<td colspan="2"></td>
			<td colspan="2">&nbsp;</td>
		</tr>						
		</table>
		</form>
		</div>
		<div class="s_list">
				<table width="100%" id="tableid" border="1" cellspacing="0" cellpadding="0"
						bordercolor="#e4e4e4" style="table-layout: fixed;word-wrap:break-word;margin-top: 10px;">
				<tr>
				 <th width="7%" style="text-align: center">编号</th>
			     <th width="14%" style="text-align: center">删除时间</th>
				 <th width="12%" style="text-align: center">流水号</th>
				 <th width="10%" style="text-align: center">作品名称</th>
				 <th width="11%" style="text-align: center">状态</th>
				 <th width="11%" style="text-align: center">地区</th>
				 <th width="12%" style="text-align: center" colspan="2">操作</th>
				</tr>
                   <c:set var="index" value="${offset+1}"></c:set>
				<c:forEach items="${page.data}" var="applications" varStatus="idx">
					<tr id="tr${applications.flow_num}">
						<td width="8%" style="text-align: center">${index}</td>
						<c:set var="index" value="${index+1}" />
						<td width="14%">
						<fmt:formatDate value="${applications.delete_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td width="12%">${applications.flow_num}
						</td>
						<td width="10%">${applications.app_name}
						</td>
						<td width="12%" style="text-align: center">
						             <c:if test="${applications.state==1}">申请表未完成</c:if>
											<c:if test="${applications.state==2}">申请表已提交</c:if>
											<c:if test="${applications.state==3}">申请表未通过</c:if>
											<c:if test="${applications.state==4}">递交材料中</c:if>
											<c:if test="${applications.state==5}">初审中</c:if>
											<c:if test="${applications.state==6}">初审未通过</c:if>
											<c:if test="${applications.state==7}">缴费中</c:if>
											<c:if test="${applications.state==8}">复审中</c:if>
											<c:if test="${applications.state==9}">复审未通过</c:if>
											<c:if test="${applications.state==10}">终审中</c:if>
											<c:if test="${applications.state==11}">终审未通过</c:if>
											<c:if test="${applications.state==12}">证书已发放</c:if>
						</td>
						<td width="11%" style="text-align: center">
						 <c:if test="${applications.area=='0'}">无分中心覆盖区域</c:if>
						 <c:if test="${applications.area=='1'}">烟台分中心</c:if>
						</td>
						
						<c:if test="${type=='1'}">
						<td width="4%" style="text-align: center">
						<a id="aft6211" style="display:none" href="javascript:deleteap('${applications.flow_num}','back');">恢复</a>
						</td>
						<td width="8%" style="text-align: center">
						<a id="aft6212" style="display:none" href="javascript:deleteap('${applications.flow_num}','hard');">彻底删除</a>
						</td>
						</c:if>
						
						<c:if test="${type=='2'}">
						<td width="4%" style="text-align: center">
						<a id="aft6221" style="display:none" href="javascript:deleteap('${applications.flow_num}','back');">恢复</a>
						</td>
						<td width="8%" style="text-align: center">
						<a id="aft6222" style="display:none" href="javascript:deleteap('${applications.flow_num}','hard');">彻底删除</a>
						</td>
						</c:if>
						
						<c:if test="${type=='3'}">
						<td width="4%" style="text-align: center">
						<a id="aft7211" style="display:none" href="javascript:deleteap('${applications.flow_num}','back');">恢复</a>
						</td>
						<td width="8%" style="text-align: center">
						<a id="aft7212" style="display:none" href="javascript:deleteap('${applications.flow_num}','hard');">彻底删除</a>
						</td>
						</c:if>
						
						<c:if test="${type=='4'}">
						<td width="4%" style="text-align: center">
						<a id="aft7221" style="display:none" href="javascript:deleteap('${applications.flow_num}','back');">恢复</a>
						</td>
						<td width="8%" style="text-align: center">
						<a id="aft7222" style="display:none" href="javascript:deleteap('${applications.flow_num}','hard');">彻底删除</a>
						</td>
						</c:if>
						
					</tr>
				</c:forEach>
					</table>
						</div>
						<c:if test="${!empty page.data}">
						<pg:pager items="${page.totalCount}" url="manage/application/recycllist"
							export="currentPageNumber=pageNumber" maxIndexPages="8"
							maxPageItems="${page.pageSize}">
						   <pg:param name="type" value="${type}" />
						   <pg:param name="app_name" value="${app_name}" />
						   <pg:param name="flow_num" value="${flow_num}" />
						   <pg:param name="beginTime" value="${beginTime}" />
						   <pg:param name="endTime" value="${endTime}" />
							<div class="page csBlue">
								<ul>
									<pg:first>
										<li><a href="${pageUrl}">首页</a>
										</li>
									</pg:first>
									<pg:prev>
										<li><a href="${pageUrl}">前一页</a>
										</li>
									</pg:prev>
									<pg:pages>
										<c:choose>
											<c:when test="${currentPageNumber eq pageNumber}">
												<li class="thisclass">${pageNumber}</li>
											</c:when>
											<c:otherwise>
												<li><a href="${pageUrl}">${pageNumber}</a></li>
											</c:otherwise>
										</c:choose>
									</pg:pages>
									<pg:next>
										<li><a href="${pageUrl}">后一页</a>
										</li>
									</pg:next>
									<pg:last>
										<li><a href="${pageUrl}">尾页</a>
										</li>
									</pg:last>

								</ul>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
						</pg:pager>
						</c:if>
						<!--翻页 end-->
</div></div></div>
<!--新闻列表 end-->
<div class="clear"></div>
</body>

<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function subForm(url) {
	 //提交表单
	 $("#subId").attr('disabled', true);
		var frm = document.getElementById("querFormId");
		frm.action = url;
		frm.submit();
}

function deleteap(flowNum,way) {
	if(way=='hard') {
		if (confirm("删除后将永远无法恢复!")) {
	    $.ajax({
		url: '${pageContext.request.contextPath}/manage/application/backdelete',
		type: 'post',
		data: {flow_num:flowNum,waylay:way},
		dataType: 'text',
		success: function(calback) {
			if(calback=="yes") {
				$("#tr"+flowNum).remove();
       		 //subForm('manage/application/recycllist');
       	  }
		    }
	      });
		}
	} else {
		 $.ajax({
				url: '${pageContext.request.contextPath}/manage/application/backdelete',
				type: 'post',
				data: {flow_num:flowNum,waylay:way},
				dataType: 'text',
				success: function(calback) {
					if(calback=="yes") {
						$("#tr"+flowNum).remove();
		        		//subForm('manage/application/recycllist');
		        	  }
				    }
		    });
	}
}

$(document).ready(function(){
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	 	$("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
</html>								
												
				