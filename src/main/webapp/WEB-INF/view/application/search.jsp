<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
<base href="http://${header['host']}${pageContext.request.contextPath}/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我要查询-中国动漫版权服务平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<div class="container_bg">
		<div class="contanier">
			<!--top-->
			<%@ include file="../header.jsp"%>
			<!--topend-->

			<!--信息内容-->
			<div class="info_content">
				<div class="info_top">
					<img src="images/navbottom.gif" />
				</div>
				<div class="info_cont">
					<div class="info_box">

						<div class="i_left">
							<h3>
								<img src="images/i_left01.gif" />
							</h3>
							<!--登录-->
							<%@ include file="../left.jsp"%>
							<!--登录 end-->

						</div>

						<div class="c_right">
							<div class="info_title">
								您当前的位置：<a href="/">首页</a> &gt;&gt; 
								<c:choose>
								<c:when test="${apptype<3}">
								版权服务
								</c:when>
								<c:otherwise>
								质权服务
								</c:otherwise>
								</c:choose>
								&gt;&gt; 我要查询
							</div>
							<div class="c_title">我要查询</div>
							<div class="c_right_bqinfo">
								<div class="bq_box">
									<div>
										<form action="" id="querFormId" method="post" name="querForm">
										<input type="hidden" name="apptype" value="${apptype}" />
											<table cellspacing="0" cellpadding="0" width="100%"
												class="app_table">
												<tr>
													<td colspan="4"><div class="search_">查询条件</div>
													</td>
												</tr>
												<tr>
													<td><div align="right">流水号</div>
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
													<td><div align="right">申请表类型</div>
													</td>
													<td colspan="3">
													<select name="app_type" class="search_input0808">
													 <c:choose>
														<c:when test="${apptype>=3}">
														 <option value="">--请选择--</option>
													  <option value="z51" <c:if test="${application.app_type=='z51'}">selected="true"</c:if>>著作权质权登记申请</option>
													  <option value="z52" <c:if test="${application.app_type=='z52'}">selected="true"</c:if>>著作权质权撤销登记申请</option>
													  <option value="z53" <c:if test="${application.app_type=='z53'}">selected="true"</c:if>>著作权质权变更登记申请</option>
													  <option value="z54" <c:if test="${application.app_type=='z54'}">selected="true"</c:if>>注销著作权质权登记申请</option>
													  <option value="z55" <c:if test="${application.app_type=='z55'}">selected="true"</c:if>>撤回著作权质权登记申请</option>
													  <option value="z56" <c:if test="${application.app_type=='z56'}">selected="true"</c:if>>转让著作权质权登记事项申请</option>
													  <option value="r51" <c:if test="${application.app_type=='r51'}">selected="true"</c:if>>计算机软件著作权质权登记</option>
													  <option value="r52" <c:if test="${application.app_type=='r52'}">selected="true"</c:if>>计算机软件著作权质权转让登记</option>
													  <option value="r53" <c:if test="${application.app_type=='r53'}">selected="true"</c:if>>计算机软件著作权质权变更登记</option>
													  <option value="r54" <c:if test="${application.app_type=='r54'}">selected="true"</c:if>>撤销计算机软件著作权质权登记</option>
													  <option value="r56" <c:if test="${application.app_type=='r56'}">selected="true"</c:if>>注销计算机软件著作权质权登记</option>
													  <option value="r57" <c:if test="${application.app_type=='r57'}">selected="true"</c:if>>撤回计算机软件著作权质权登记</option>   
														</c:when>
														<c:otherwise>
												      <option value="">--请选择--</option>
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
		                                              <option value="r11" <c:if test="${application.app_type=='r11'}">selected="true"</c:if>>计算机软件著作权登记申请 </option>
		                                              <option value="r21" <c:if test="${application.app_type=='r21'}">selected="true"</c:if>>计算机软件著作权转让或专有许可合同登记申请 </option>
		                                              <option value="r41" <c:if test="${application.app_type=='r41'}">selected="true"</c:if>>软件登记事项变更或补充申请 </option>
	                                              	  <option value="r42" <c:if test="${application.app_type=='r42'}">selected="true"</c:if>>撤销计算机软件登记请求</option>
		                                              <option value="r43" <c:if test="${application.app_type=='r43'}">selected="true"</c:if>>撤回计算机软件登记申请 </option>
		                                              <option value="r44" <c:if test="${application.app_type=='r44'}">selected="true"</c:if>>撤销或放弃计算机软件登记申请 </option>
		                                              <option value="r45" <c:if test="${application.app_type=='r45'}">selected="true"</c:if>>补发或者换发软件登记证书申请 </option>
													</c:otherwise>
													 </c:choose>
													</select>
													</td>
												</tr>
												<tr>
													<td><div align="right">状态</div>
													</td >
													<td colspan="3"><select name="state" class="search_input0808">
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
												<tr>
													<td><div align="right">填报开始时间</div>
													</td>
													<td>
													<input type="text" class="Wdate" name="beginTime" onfocus="calShow(this);" value="<c:out value='${beginTime}' />" readonly />
													</td>
													<td><div align="right">填报结束时间</div>
													</td>
													<td>
													<input type="text" class="Wdate" name="endTime" onfocus="calShow(this);" value="<c:out value='${endTime}' />" readonly />
													</td>
												</tr>
												
												<tr align=center>
													<td colspan="4"><input type="button" value="查询" class="m_button0807" id="subId" onclick="subForm('${pageContext.request.contextPath}/application/search');" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" />
													&nbsp;&nbsp;&nbsp;<input type="button" value="重置" class="m_button0807" id="resetId" onclick="restd('querFormId');" onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" /></td>
												</tr>
												<tr>
													<td colspan="2"></td>
													<td colspan="2"></td>
												</tr>
											</table>
										</form>
									</div>
									<div class="s_list">
										<table width="100%" id="tableid" border="1" cellspacing="0" cellpadding="0"
											bordercolor="#e4e4e4" style="table-layout: fixed;word-wrap:break-word;margin-top: 10px;">
											<tr>
											    <th width="11%">填报时间</th>
												<th width="13%">流水号</th>
												<th width="14%">作品名称</th>
												<th width="15%">申请表类型</th>
												<th width="10%">状态</th>
												<th width="10%">处理意见</th>
												<th width="11%">地区</th>
												<th width="16%">操作</th>
											</tr>

											<c:forEach items="${page.data}" var="applications"
												varStatus="idx">
												<tr>
													<td>
													<fmt:formatDate value="${applications.create_time}" pattern="yyyy-MM-dd" />
													
													</td><td>${applications.flow_num}</td>
													<td>${applications.app_name}</td>
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
													<td align="center">
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
													<td>
													<c:if test="${applications.answer != null && applications.answer == 'ok'}">
										<a href="javascript:lookAnswer('${applications.flow_num}');" >
										点击进入</a></c:if>
													</td>
													<td>
													<c:if test="${applications.area=='0'}">无分中心覆盖区域</c:if>
													<c:if test="${applications.area=='1'}">烟台分中心</c:if>
													</td>
													<td align="center"><p class="blue_text">
															<a href="application/view/${applications.flow_num}"
																target="_blank">查看</a>
																<c:choose>
																<c:when test="${applications.isupdate=='yes'}">
																<a href="javascript:updateapp('${pageContext.request.contextPath}/application/initupdate/${applications.app_type}/${applications.flow_num}','${applications.flow_num}');">
													修改</a>
																</c:when>
																<c:otherwise>
																修改
																</c:otherwise>
																</c:choose>
															<c:choose>
																<c:when test="${applications.state==1}">
																<a href="javascript:deleteApp('${applications.flow_num}');">删除</a>
																</c:when>
																<c:otherwise>
																删除
																</c:otherwise>
																</c:choose>
															
														</p></td>
												</tr>
											</c:forEach>
										</table>
									</div>
									<!--翻页-->
									<c:if test="${!empty page.data}">
									<pg:pager items="${page.totalCount}" url="/application/search"
										export="currentPageNumber=pageNumber" maxIndexPages="8"
										maxPageItems="${page.pageSize}">
										<pg:param name="app_name" value="${application.app_name}" />
										<pg:param name="flow_num" value="${application.flow_num}" />
										<pg:param name="state" value="${application.state}" />
										<pg:param name="app_type" value="${application.app_type}" />
										<pg:param name="apptype" value="${apptype}" />
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
								</div>
							</div>

						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div>
					<img src="images/cont_button.gif" />
				</div>
			</div>
			<!--信息内容 end-->
			<!--底部-->
			<%@ include file="../footer.jsp"%>
			<!--底部 end-->
		</div>
	</div>
	<!-- 弹出层 --> 
	<div class="show_m_div" id="show_m_div_id" style="visibility: hidden;">
	<h2>处理通知单</h2>
    <div class="show_div">
        	<div class="show_time" id="showId"></div>
          		<ul>
                    <li id="liId1"></li>
                    <li id="liId2"></li>
    			</ul>
                <div class="show_btn"><input name="" type="button" value=" 关闭 " onclick="closeDiv();"/></div>
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

function deleteApp(flow_num) {
	if (confirm("删除后将永远无法恢复!")) {
	$.ajax({
		url : '${pageContext.request.contextPath}/application/delete',
		type : 'post',
		data : {
			flowNum : flow_num
		},
		dataType: 'text',
		success : function(backdata) {
	
	        	if(backdata=="yes") {
	        		subForm('${pageContext.request.contextPath}/application/search');
	        	}
	        }
	});
	}
}
function lookAnswer(flownum) {
	$.ajax({
		url: '${pageContext.request.contextPath}/application/ajaxanswer',
		type: 'post',
		data: {flow_num:flownum},
		dataType: 'text',
		success: function(calback) {
		     var str = calback.split("|");
         $("#showId").css("color", "black").text(
		        "时间："+str[0]);
         $("#liId2").css("color", "black").text(
		        "处理意见："+str[2]);
         $("#liId1").css("color", "black").text(
		        "处理结果："+str[1]);
         
		}
	});
	var content = window.document.getElementById("show_m_div_id");
   //弹出(设置透明度为1并且visibility为visible)
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

function updateapp(url,flownum) {
	$.ajax({
		url: '${pageContext.request.contextPath}/application/ajaxapptype',
		type: 'post',
		data: {flow_num:flownum},
		dataType: 'text',
		success: function(calback) {
			if(calback=='yes') {
				window.open(url,"_blank") 
				//location.href=url;
			} else {
				alert("此表单暂不能修改!");
			}
		}
	});
}
</script>
</html>
