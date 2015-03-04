<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
<title>检索查询-中国动漫版权服务平台</title>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/common.js"></script>
<script language="javascript">
	function subForm(url) {
		//提交表单
		if($("#opusnumberid").val().length==0) {
			alert("请输入作品编号!")
			return;
		}
		$("#subId").attr('disabled', true);
		var frm = document.getElementById("querFormId");
		frm.action = url;
		frm.submit();
	}
</script>
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
							<!--left-->
							<%@ include file="../infoleft.jsp"%>
							<!--left end-->
						</div>
						
						<div class="c_right">
							<div class="info_title">
								您当前的位置：<a href="/">首页</a>
								 &gt;&gt;检索查询 &gt;&gt;查看详情
	                        </div>
			            <div class="c_title">检索查询</div>
<div class="c_right_bqinfo">
	<div class="bq_box">
		<div>
			<form action="" id="querFormId" method="get" name="querForm">
			<table cellspacing="0" cellpadding="0" width="100%"
				class="app_table">
				<tr>
					<td colspan="4"><div class="search_">查询条件</div></td>
				</tr>
     <tr>
					<td>
						<div align="right">
						作品编号
						</div>
					</td>
					<td colspan="3">
						<input id="opusnumberid" name="opusnumber" value="<c:out value='${opusnumber}' />" class="r_input_search0712" />
					</td>
					</tr>
					<tr align=center>
			<td colspan="4"><input type="button" value="查询"
				class="m_button0807" id="subId"
				onclick="subForm('${pageContext.request.contextPath}/info/list');"  onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" />
				&nbsp;&nbsp;&nbsp;<input type="button" value="重置"
				class="m_button0807" id="resetId"
				onclick="restd('querFormId');"  onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" /></td>
		</tr>
					<tr>
						<td colspan="2"></td>
						<td colspan="2"></td>
					</tr>
				</table>
			</form>
	</div>
	<div class="s_list">
			<c:forEach items="${page.data}" var="oneinfo" varStatus="idx">
		<table width="100%" border="1" cellspacing="0" cellpadding="0"
			bordercolor="#e4e4e4"
			style="table-layout: fixed; word-wrap: break-word; margin-top: 10px;">
				<c:if test="${oneinfo.app_type=='z11'}">
				<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
				<tr>
					<td width="15%">所属类型</td>
					<td width="40%">作品著作权登记信息</td>
				</tr>
				<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>	
				<tr>
					<td width="15%">登记号</td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">作品名称</td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">作品类别</td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				<tr>
					<td width="15%">著作权人</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				</c:if>
				<c:if test="${oneinfo.app_type=='z21'}">
				<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
				<tr>
					<td width="15%">所属类型</th>
					<td width="40%">著作权合同备案信息</td>
				</tr>
				<tr>
					<td width="15%">备案时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">备案号</td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">名称</td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">类别</td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				<tr>
					<td width="15%">转让(许可)方</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				<tr>
					<td width="15%">受让(被许可)方</td>
					<td width="40%">${oneinfo.transferee}</td>
				</tr>
	           </c:if>
	           
	           	<c:if test="${oneinfo.app_type=='z31' || oneinfo.app_type=='z72'}">	
	           	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
				<tr>
					<td width="15%">所属类型</th>
					<td width="40%">
             <c:if test="${oneinfo.app_type=='z31'}">	
                  与著作权有关权利事项登记信息
             </c:if>
             <c:if test="${oneinfo.app_type=='z72'}">
                 出版境外音像制品合同登记申请-影视作品	
             </c:if>    
				</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">登记号</td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
					<c:if test="${oneinfo.app_type=='z31'}">名称</c:if>
					<c:if test="${oneinfo.app_type=='z72'}">影视作品名称</c:if>
					</td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
					<c:if test="${oneinfo.app_type=='z31'}">类别</c:if>
					<c:if test="${oneinfo.app_type=='z72'}">作品类别</c:if>
					</td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				</c:if>
	            <c:if test="${oneinfo.app_type=='z41'}">
	           	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">
					重印国外期刊合同登记信息
					</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">登记号</td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
					期刊中文名称
					</td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
					期刊英文名称
					</td>
					<td width="40%">${oneinfo.englishname}</td>
				</tr>
				<tr>
					<td width="15%">
					转让（许可）方
					</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				<tr>
					<td width="15%">
					受让（被许可）方
					</td>
					<td width="40%">${oneinfo.transferee}</td>
				</tr>
				</c:if>
	           
	            <c:if test="${oneinfo.app_type=='z61' || oneinfo.app_type=='z62' || oneinfo.app_type=='z64'}">
	           	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">
				<c:if test="${oneinfo.app_type=='z61'}">作品著作权和合同变更或补发登记信息
				</c:if>
				<c:if test="${oneinfo.app_type=='z62'}">撤销作品著作权和合同登记信息
				</c:if>
				<c:if test="${oneinfo.app_type=='z64'}">补发或更换登记证书信息
				</c:if>
					</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                 <c:if test="${oneinfo.app_type=='z61' || oneinfo.app_type=='z64'}">登记号</c:if>
				<c:if test="${oneinfo.app_type=='z62'}">原登记号</c:if>
                </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                                    备案号
                     </td>
					<td width="40%">${oneinfo.record}</td>
				</tr>
				<tr>
					<td width="15%">
				作品名称
					</td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
					原登记类型
					</td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				</c:if>
	           <c:if test="${oneinfo.app_type=='z71'}">
	           	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">
					出版境外音像制品合同登记申请-录音制品
					</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                                               登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                                录音制品名称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
				首次出品地
					</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				<tr>
					<td width="15%">
					出版类型
					</td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				<tr>
					<td width="15%">
					出品时间
					</td>
					<td width="40%">${oneinfo.transferee}</td>
				</tr>
				
				</c:if>
				
				<c:if test="${oneinfo.app_type=='z73' || oneinfo.app_type=='z75'}">
	           	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">
						<c:if test="${oneinfo.app_type=='z73'}">撤销出版境外音像制品合同登记信息</c:if>
						<c:if test="${oneinfo.app_type=='z75'}">变更出版境外音像制品合同登记信息</c:if>
					</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                                         原登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
				中文名称
					</td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
					<tr>
					<td width="15%">
				英文名称
					</td>
					<td width="40%">${oneinfo.englishname}</td>
				</tr>
				<tr>
					<td width="15%">
					原登记类型
					</td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				<tr>
					<td width="15%">
					出版单位名称
					</td>
					<td width="40%">${oneinfo.publishUnitName}</td>
				</tr>
				</c:if>
				   <c:if test="${oneinfo.app_type=='r11'}">
	           	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">计算机软件著作权登记信息</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                                               登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                        软件全称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
			软件简称
					</td>
					<td width="40%">${oneinfo.publishUnitName}</td>
				</tr>
				<tr>
					<td width="15%">
				分类号
					</td>
					<td width="40%">${oneinfo.compcode}</td>
				</tr>
				<tr>
					<td width="15%">
				版本号
					</td>
					<td width="40%">${oneinfo.record}</td>
				</tr>
				<tr>
					<td width="15%">
					著作权人
					</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				
				</c:if>
				<c:if test="${oneinfo.app_type=='r21'}">
	            	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">计算机软件著作权转让或专有许可合同登记信息</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                                               登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                        软件全称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
			软件简称
					</td>
					<td width="40%">${oneinfo.publishUnitName}</td>
				</tr>
				<tr>
					<td width="15%">
				版本号
					</td>
					<td width="40%">${oneinfo.record}</td>
				</tr>
				<tr>
					<td width="15%">
					转让（许可）方
					</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				<tr>
					<td width="15%">
				受让（被许可）方
					</td>
					<td width="40%">${oneinfo.transferee}</td>
				</tr>
				</c:if>
				
				<c:if test="${oneinfo.app_type=='r41'}">
	            	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">软件登记事项变更或补充信息</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                                               登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                        软件名称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
				版本号
					</td>
					<td width="40%">${oneinfo.record}</td>
				</tr>
				<tr>
					<td width="15%">
				原登记类别
					</td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				</c:if>
				
				
			<c:if test="${oneinfo.app_type=='r42' || oneinfo.app_type=='r44'}">
	            	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">
					<c:if test="${oneinfo.app_type=='r42'}">撤销计算机软件登记信息
					</c:if>
					<c:if test="${oneinfo.app_type=='r44'}">撤销或放弃计算机软件登记信息
					</c:if>
					</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                                        原登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                        软件名称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
				版本号
					</td>
					<td width="40%">${oneinfo.record}</td>
				</tr>
				</c:if>
				<c:if test="${oneinfo.app_type=='r45'}">
	            	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th> 
					<td width="40%">补发或者换发软件登记证书信息</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                                        登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                    软件全称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
                                                 软件简称
                     </td>
					<td width="40%">${oneinfo.publishUnitName}</td>
				</tr>
				<tr>
					<td width="15%">
				版本号
					</td>
					<td width="40%">${oneinfo.record}</td>
				</tr>
				</c:if>
			<c:if test="${oneinfo.app_type=='z51' || oneinfo.app_type=='z53' }">
	            	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">
					<c:if test="${oneinfo.app_type=='z51'}">著作权质权登记信息
					</c:if>
					<c:if test="${oneinfo.app_type=='z53' }">著作权质权变更登记信息
					</c:if>
					</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                                        登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                   涉及作品名称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
                                             涉及作品种类
                     </td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				<tr>
					<td width="15%">
				出质人
					</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				<tr>
					<td width="15%">
				质权人
					</td>
					<td width="40%">${oneinfo.transferee}</td>
				</tr>
				</c:if>
				
			 <c:if test="${oneinfo.app_type=='z52' || oneinfo.app_type=='z54'}">
	            	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">
					<c:if test="${oneinfo.app_type=='z52'}">著作权质权撤销登记信息
					</c:if>
					<c:if test="${oneinfo.app_type=='z54'}">注销著作权质权登记信息
					</c:if>
					</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                            原质权登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                                 涉及作品名称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
				出质人
					</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				<tr>
					<td width="15%">
				质权人
					</td>
					<td width="40%">${oneinfo.transferee}</td>
				</tr>
				</c:if>
				
				<c:if test="${oneinfo.app_type=='z56'}">
	            	<tr>
					<td width="15%">作品编号</td>
					<td width="40%">${oneinfo.opusnumber}</td>
				</tr>
					<tr>
					<td width="15%">所属类型</th>
					<td width="40%">转让著作权质权登记事项信息</td>
				</tr>
	           	<tr>
					<td width="15%">登记时间</td>
					<td width="40%">${oneinfo.date}</td>
				</tr>
				<tr>
					<td width="15%">
                                           登记号
                     </td>
					<td width="40%">${oneinfo.num}</td>
				</tr>
				<tr>
					<td width="15%">
                                             涉及作品名称
                     </td>
					<td width="40%">${oneinfo.name}</td>
				</tr>
				<tr>
					<td width="15%">
                                             涉及作品种类
                     </td>
					<td width="40%">${oneinfo.type}</td>
				</tr>
				<tr>
					<td width="15%">
				出质人
					</td>
					<td width="40%">${oneinfo.owner}</td>
				</tr>
				<tr>
					<td width="15%">
				转让人
					</td>
					<td width="40%">${oneinfo.transferee}</td>
				</tr>
				<tr>
					<td width="15%">
				受让人
					</td>
					<td width="40%">${oneinfo.publishUnitName}</td>
				</tr>
				</c:if>	
		</table>
			</c:forEach>
	</div>
	
	<c:if test="${!empty page.data}">
		<pg:pager items="${page.totalCount}" url="info/list"
			export="currentPageNumber=pageNumber" maxIndexPages="8"
			maxPageItems="${page.pageSize}">
			<pg:param name="opusnumber" value="${opusnumber}" />
			<div class="page csBlue">
				<ul>
					<pg:first>
						<li><a href="${pageUrl}">首页</a></li>
					</pg:first>
					<pg:prev>
						<li><a href="${pageUrl}">前一页</a></li>
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
						<li><a href="${pageUrl}">后一页</a></li>
					</pg:next>
					<pg:last>
						<li><a href="${pageUrl}">尾页</a></li>
					</pg:last>

				</ul>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</pg:pager>
	</c:if>
	
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
</body>
<script language="JavaScript"
	src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css"
	rel="stylesheet" type="text/css" />
</html>
