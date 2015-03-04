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
<!-- <link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" /> -->
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
<!--content-->
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
	  <c:if test="${area=='all'}">表单汇总</c:if>
	  <c:if test="${area=='0'}">无分中心覆盖区域</c:if>
	  <c:if test="${area=='1'}">烟台分中心</c:if>
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
										<td width="18%"><div align="right">流水号</div>
										</td>
										<td colspan="3"><input id="sql_flow_num" name="flow_num"
											value="<c:out value='${application.flow_num}' />" class="r_input_search0712" />
										</td>
									</tr>
									<tr>
										<td ><div align="right">作品名称</div>
										</td>
										<td colspan="3"><input id="sql_app_name" name="app_name"
											value="<c:out value='${application.app_name}' />" class="r_input_search0712" />
										</td>
									</tr>
									<tr>
										<td><div align="right">状态</div>
										</td>
										<td colspan="3">
										<select name="state">
										 <option value="">--请选择--</option>
										 <option value="1" <c:if test="${application.state==1}">selected="true"</c:if>>申请表未完成</option>
										 <option value="2" <c:if test="${application.state==2}">selected="true"</c:if>>申请表已提交</option>
										 <option value="3" <c:if test="${application.state==3}">selected="true"</c:if>>申请表未通过</option>
										 <option value="4" <c:if test="${application.state==4}">selected="true"</c:if>>递交材料中</option>
										 <option value="5" <c:if test="${application.state==5}">selected="true"</c:if>>初审中</option>
										 <option value="6" <c:if test="${application.state==6}">selected="true"</c:if>>初审未通过</option>
										 <option value="7" <c:if test="${application.state==7}">selected="true"</c:if>>缴费中</option>
										 <option value="8" <c:if test="${application.state==8}">selected="true"</c:if>>复审中</option>
										 <option value="9" <c:if test="${application.state==9}">selected="true"</c:if>>复审未通过</option>
										 <option value="10" <c:if test="${application.state==10}">selected="true"</c:if>>终审中</option>
										 <option value="11" <c:if test="${application.state==11}">selected="true"</c:if>>终审未通过</option>
										 <option value="12" <c:if test="${application.state==12}">selected="true"</c:if>>证书已发放</option>
										  </select>
										</td>
									</tr>
									
								<c:if test="${area=='all'}">
									<tr>
										<td><div align="right">地区</div>
										</td>
										<td colspan="3">
										<select name="area">
										 <option value="">--请选择--</option>
										 <option value="0" <c:if test="${application.area=='0'}">selected="true"</c:if>>无分中心覆盖区域</option>
										 <option value="1" <c:if test="${application.area=='1'}">selected="true"</c:if>>烟台分中心</option>
										  </select>
										</td>
									</tr>
								
								</c:if>	
									
									
									<tr>
										<td><div align="right">表单类型</div>
										</td>
										<td colspan="3">
										<select name="app_type">
										 <option value="">--请选择--</option>
										 <c:if test="${type=='1'}">
						  <option value="z11" <c:if test="${application.app_type=='z11'}">selected="true"</c:if>>作品著作权登记申请</option>
						  <option value="z21" <c:if test="${application.app_type=='z21'}">selected="true"</c:if>>著作权合同备案申请</option>
						  <option value="z31" <c:if test="${application.app_type=='z31'}">selected="true"</c:if>>与著作权有关权利事项登记申请</option>
						  <option value="z41" <c:if test="${application.app_type=='z41'}">selected="true"</c:if>>重印国外期刊合同登记申请</option>
						  <option value="z61" <c:if test="${application.app_type=='z61'}">selected="true"</c:if>>作品著作权和合同变更或补发登记申请</option>
						  <option value="z62" <c:if test="${application.app_type=='z62'}">selected="true"</c:if>>撤销作品著作权和合同登记申请</option>
						  <option value="z63" <c:if test="${application.app_type=='z63'}">selected="true"</c:if>>撤回作品著作权和合同登记申请</option>
						  <option value="z64" <c:if test="${application.app_type=='z64'}">selected="true"</c:if>>补发或更换登记证书申请</option>
						  <option value="z71" <c:if test="${application.app_type=='z71'}">selected="true"</c:if>>出版境外音像制品合同登记申请-录音制品</option>
						  <option value="z72" <c:if test="${application.app_type=='z72'}">selected="true"</c:if>>出版境外音像制品合同登记申请-影视制品</option>
						  <option value="z73" <c:if test="${application.app_type=='z73'}">selected="true"</c:if>>撤销出版境外音像制品合同登记申请</option>
						  <option value="z74" <c:if test="${application.app_type=='z74'}">selected="true"</c:if>>撤回出版境外音像制品合同登记申请</option>   
						  <option value="z75" <c:if test="${application.app_type=='z75'}">selected="true"</c:if>>变更出版境外音像制品合同登记申请</option>   
						 </c:if>
						 <c:if test="${type=='2'}">	
						  <option value="r11" <c:if test="${application.app_type=='r11'}">selected="true"</c:if>>计算机软件著作权登记申请 </option>
                          <option value="r21" <c:if test="${application.app_type=='r21'}">selected="true"</c:if>>计算机软件著作权转让或专有许可合同登记申请 </option>
                          <option value="r41" <c:if test="${application.app_type=='r41'}">selected="true"</c:if>>软件登记事项变更或补充申请 </option>
                          <option value="r42" <c:if test="${application.app_type=='r42'}">selected="true"</c:if>>撤销计算机软件登记请求</option>
                          <option value="r43" <c:if test="${application.app_type=='r43'}">selected="true"</c:if>>撤回计算机软件登记申请 </option>
                          <option value="r44" <c:if test="${application.app_type=='r44'}">selected="true"</c:if>>撤销或放弃计算机软件登记申请 </option>
                          <option value="r45" <c:if test="${application.app_type=='r45'}">selected="true"</c:if>>补发或者换发软件登记证书申请 </option>				 
						 </c:if>
						 <c:if test="${type=='3'}">
						 	  <option value="z51" <c:if test="${application.app_type=='z51'}">selected="true"</c:if>>著作权质权登记申请</option>
						  <option value="z52" <c:if test="${application.app_type=='z52'}">selected="true"</c:if>>著作权质权撤销登记申请</option>
						  <option value="z53" <c:if test="${application.app_type=='z53'}">selected="true"</c:if>>著作权质权变更登记申请</option>
						  <option value="z54" <c:if test="${application.app_type=='z54'}">selected="true"</c:if>>注销著作权质权登记申请</option>
						  <option value="z55" <c:if test="${application.app_type=='z55'}">selected="true"</c:if>>撤回著作权质权登记申请</option>
						  <option value="z56" <c:if test="${application.app_type=='z56'}">selected="true"</c:if>>转让著作权质权登记事项申请</option>
						 </c:if>
						 <c:if test="${type=='4'}">
						  <option value="r51" <c:if test="${application.app_type=='r51'}">selected="true"</c:if>>计算机软件著作权质权登记</option>
						  <option value="r52" <c:if test="${application.app_type=='r52'}">selected="true"</c:if>>计算机软件著作权质权转让登记</option>
						  <option value="r53" <c:if test="${application.app_type=='r53'}">selected="true"</c:if>>计算机软件著作权质权变更登记</option>
						  <option value="r54" <c:if test="${application.app_type=='r54'}">selected="true"</c:if>>撤销计算机软件著作权质权登记</option>
						  <option value="r56" <c:if test="${application.app_type=='r56'}">selected="true"</c:if>>注销计算机软件著作权质权登记</option>
						  <option value="r57" <c:if test="${application.app_type=='r57'}">selected="true"</c:if>>撤回计算机软件著作权质权登记</option>   
						 </c:if>
						  </select>
						</td>
					</tr>
									
									
									
									
									<tr>
										<td><div align="right">填报开始时间</div>
										</td>
										<td width="25%">
										<input type="text"  name="beginTime" onfocus="calShow(this);" value="<c:out value='${beginTime}' />" readonly />
										</td>
										<td width="17%"><div align="right">填报结束时间</div>
										</td>
										<td width="39%">
										<input type="text" name="endTime" onfocus="calShow(this);" value="<c:out value='${endTime}' />" readonly />
										</td>
									</tr>
									
									<tr align=center>
										<td colspan="4"><input type="button" value="查询" class="m_button0910" id="subId" 
										 onclick="subForm('manage/application/list/${area}');"/>
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
				    <th width="10%" style="text-align: center">填报时间</th>
					<th width="10%" style="text-align: center">流水号</th>
					<th width="11%" style="text-align: center">表单类型</th>
					<th width="11%" style="text-align: center">作品名称</th>
					<th width="10%" style="text-align: center">地区</th>
					<th width="11%" style="text-align: center">状态</th>
					<th width="8%" style="text-align: center">处理意见</th>
					<th width="22%" style="text-align: center" colspan="4">操作</th>
				</tr>
                   <c:set var="index" value="${offset+1}"></c:set>
				<c:forEach items="${page.data}" var="applications" varStatus="idx">
					<tr id="tr${applications.flow_num}">
						<td style="text-align: center">${index}</td>
						<c:set var="index" value="${index+1}" />
						<td>
						<fmt:formatDate value="${applications.create_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
						<td>${applications.flow_num}
						</td>
						<td>
						 <c:if test="${applications.app_type=='z11'}">作品著作权登记申请</c:if>
						 <c:if test="${applications.app_type=='z21'}">著作权合同备案申请</c:if>
						 <c:if test="${applications.app_type=='z31'}">与著作权有关权利事项登记申请</c:if>
						 <c:if test="${applications.app_type=='z41'}">重印国外期刊合同登记申请</c:if>
						 <c:if test="${applications.app_type=='z51'}">著作权质权登记申请</c:if>
						 <c:if test="${applications.app_type=='z52'}">著作权质权撤销登记申请</c:if>
						 <c:if test="${applications.app_type=='z53'}">著作权质权变更登记申请</c:if>
						 <c:if test="${applications.app_type=='z54'}">注销著作权质权登记申请</c:if>
						 <c:if test="${applications.app_type=='z55'}">撤回著作权质权登记申请</c:if>
						 <c:if test="${applications.app_type=='z56'}">转让著作权质权登记事项申请</c:if>
						 <c:if test="${applications.app_type=='z61'}">作品著作权和合同变更或补发登记申请</c:if>
						 <c:if test="${applications.app_type=='z62'}">撤销作品著作权和合同登记申请</c:if>
						 <c:if test="${applications.app_type=='z63'}">撤回作品著作权和合同登记申请</c:if>
						 <c:if test="${applications.app_type=='z64'}">补发或更换登记证书申请</c:if>
						 <c:if test="${applications.app_type=='z71'}">出版境外音像制品合同登记申请-录音制品</c:if>
						 <c:if test="${applications.app_type=='z72'}">出版境外音像制品合同登记申请-影视制品</c:if>
						 <c:if test="${applications.app_type=='z73'}">撤销出版境外音像制品合同登记申请</c:if>
						 <c:if test="${applications.app_type=='z74'}">撤回出版境外音像制品合同登记申请</c:if>  
						 <c:if test="${applications.app_type=='z75'}">变更出版境外音像制品合同登记申请</c:if>
						 <c:if test="${applications.app_type=='r11'}">计算机软件著作权登记申请 </c:if>
						 <c:if test="${applications.app_type=='r21'}">计算机软件著作权转让或专有许可合同登记申请 </c:if>
						 <c:if test="${applications.app_type=='r41'}">软件登记事项变更或补充申请 </c:if>
						 <c:if test="${applications.app_type=='r42'}">撤销计算机软件登记请求</c:if>
						 <c:if test="${applications.app_type=='r43'}">撤回计算机软件登记申请 </c:if>
						 <c:if test="${applications.app_type=='r44'}">撤销或放弃计算机软件登记申请</c:if>
						 <c:if test="${applications.app_type=='r45'}">补发或者换发软件登记证书申请</c:if>
						 <c:if test="${applications.app_type=='r51'}">计算机软件著作权质权登记</c:if>
						 <c:if test="${applications.app_type=='r52'}">计算机软件著作权质权转让登记</c:if> 
						 <c:if test="${applications.app_type=='r53'}">计算机软件著作权质权变更登记 </c:if> 
						 <c:if test="${applications.app_type=='r54'}">撤销计算机软件著作权质权登记</c:if> 
						 <c:if test="${applications.app_type=='r56'}">注销计算机软件著作权质权登记</c:if> 
						 <c:if test="${applications.app_type=='r57'}">撤回计算机软件著作权质权登记</c:if>     
						</td>
						<td>${applications.app_name}
						</td>
						<td>
						 <c:if test="${applications.area=='0'}">无分中心覆盖区域</c:if>
						 <c:if test="${applications.area=='1'}">烟台分中心</c:if>
						</td>
						<td style="text-align: center">
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
						<td style="text-align: center">
						<c:if test="${applications.answer != null && applications.answer == 'ok'}">
							<a href="javascript:lookAnswer('${applications.flow_num}');" >
							点击进入</a></c:if>
						</td>
						
				 <c:choose>
				  <c:when test="${area=='all'}">
				       <td width="3%" style="text-align: center">
						<a href="manage/application/view/${applications.flow_num}" target="_blank">查看黑表</a>
						</td>
						<td width="3%" style="text-align: center">
						<a href="application/initupdate/${applications.app_type}/${applications.flow_num}?person=manage" target="_blank">查看蓝表</a>
						</td>
				  </c:when>
				   <c:otherwise>
				   <!-- 注：对分中心id设置的解释：前缀（aftarea）+ 功能(1=审核,2=开放或关闭修改权限,3=删除)+ 表单所属大类(1,2,3,4)+ 表单所属区域代号(0=无分中心,1=烟台分中心)-->
					<%-- 	<a href="manage/application/view/${applications.flow_num}" target="_blank">查看</a> --%>
					
					 <td width="3%" style="text-align: center">
						<a href="manage/application/view/${applications.flow_num}" target="_blank">黑表</a>
						<br>
						<a href="application/initupdate/${applications.app_type}/${applications.flow_num}?person=manage" target="_blank">蓝表</a>
					</td>
						
						<td width="3%" style="text-align: center">
						<a id="aftarea1${type}${area}" style="display:none" href="manage/application/check/${applications.flow_num}" 
							target="_blank">审核</a>
						</td>	
						<c:if test="${applications.isupdate=='yes'}">
						<td style="text-align: center">
						<a id="aftarea2${type}${area}" style="display:none" href="javascript:updateResource('${applications.flow_num}','no');">
						<span id="cstd${applications.flow_num}">关闭修改权限</span></a>
						</td>
						</c:if>
						<c:if test="${applications.isupdate=='no'}">
						<td style="text-align: center">
						<a id="aftarea2${type}${area}" style="display:none" href="javascript:updateResource('${applications.flow_num}','yes');">
						<span id="cstd${applications.flow_num}">开放修改权限</span></a>
						</td>
						</c:if>
						<td width="3%" style="text-align: center">
						<a id="aftarea3${type}${area}" style="display:none" href="javascript:deleteApp('${applications.flow_num}');">删除</a>
						</td>
				    </c:otherwise>
				  </c:choose>
					</tr>
				</c:forEach>
							</table>
						</div>
						<c:if test="${!empty page.data}">
						<pg:pager items="${page.totalCount}" url="manage/application/list/${area}"
							export="currentPageNumber=pageNumber" maxIndexPages="8"
							maxPageItems="${page.pageSize}">
						   <pg:param name="type" value="${type}" />
						   <pg:param name="flow_num" value="${application.flow_num}" />
						   <pg:param name="app_name" value="${application.app_name}" />
						   <pg:param name="state" value="${application.state}" />
						   <pg:param name="area" value="${application.area}" />
						   <pg:param name="app_type" value="${application.app_type}" />
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

<!-- 弹出层 --> 
<div class="show_m_div" id="show_m_div_id" style="visibility: hidden;">
	<h2>处理通知单</h2>
    <div class="show_div">
        	<div class="show_time" id="showId"></div>
          		<ul>
                    <li id="liId1"></li>
                    <li id="liId2"></li>
    			</ul>
                <div class="show_btn"><input name="" type="button" value="关闭 " onclick="closeDiv();"/></div>
  	</div>
</div>
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

function lookAnswer(flownum) {
	$.ajax({
		url: '${request.pageContext.contextPath}/manage/application/ajaxanswer',
		type: 'post',
		data: {flow_num:flownum},
		dataType: 'text',
		success: function(calback) {
		  var stime;
          var scomment;
          var scheck;
		     var str = calback.split("|");
			   stime=str[0];
			   scomment=str[1];
			   scheck=str[2];
         $("#showId").css("color", "black").text(
		        "时间："+stime);
         $("#liId2").css("color", "black").text(
		        "处理意见："+scheck);
         $("#liId1").css("color", "black").text(
		        "处理结果："+scomment);
        
		}
	});
	var content = window.document.getElementById("show_m_div_id");
   $(content).css("left",($("#tableid").offset().left)+ ($("#tableid").width() / 3)-15)
	.css("top",(($("#tableid").offset().top) + $("#tableid").height() / 3));
   content.style.opacity = "1";
   content.style.visibility = "visible";
}
//关闭弹出层
function closeDiv() {
    var content2 = document.getElementById("show_m_div_id");
        content2.style.visibility="hidden";
        $("#liId1").val("");
        $("#showTimeId").val("");
   	 $("#liId2").val("");
}

function deleteApp(flow_num) {
	if (confirm("删除后将自动进入回收站!")) {
	$.ajax({
		url : '${request.pageContext.contextPath}/manage/application/delete', 
		type : 'post',
		data : {flowNum : flow_num},
		dataType: 'text',
		success : function(backdata) {
	        	if(backdata=="yes") {
	        		$("#tr"+flow_num).remove();
	        	}
	        }
	});
	}
}

function updateResource(flow_num,way) {
	$.ajax({ 
		url : 'manage/application/updateresource',
		type : 'post',
		data : {flowNum : flow_num,
			    waylay : way},
		dataType: 'text',
		success : function(bdata) {
	        	if(bdata=="yes") {
	        		subForm('manage/application/list/${area}');
	        	}
	        }
	});
}

$(document).ready(function(){
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	  $("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
</html>
