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
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<title>信息公示-中国动漫版权服务平台</title>
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<!--content-->
	<!--新闻列表-->
	<div class="m_right">
		<h2>您当前的位置：信息公示 &gt;&gt;
		<c:if test="${parent_type=='1'}">作品著作权相关信息</c:if>
		<c:if test="${parent_type=='2'}">计算机软件著作权相关信息</c:if>
		<c:if test="${parent_type=='3'}">作品著作权质权相关信息</c:if>
		<c:if test="${parent_type=='4'}">计算机著作权质权相关信息</c:if>
		&gt;&gt;
		<c:if test="${app_type=='z11'}">作品著作权登记信息</c:if>
		<c:if test="${app_type=='z21'}">著作权合同备案信息</c:if>
		<c:if test="${app_type=='z31'}">与著作权有关权利事项登记信息</c:if>
		<c:if test="${app_type=='z41'}">重印国外期刊合同登记信息</c:if>
		<c:if test="${app_type=='z61'}">作品著作权和合同变更或补发登记信息</c:if>
		<c:if test="${app_type=='z62'}">撤销作品著作权和合同登记信息</c:if>
		<c:if test="${app_type=='z64'}">补发或更换登记证书信息</c:if>
		<c:if test="${app_type=='z71'}">出版境外音像制品合同登记申请-录音制品</c:if>
		<c:if test="${app_type=='z72'}">出版境外音像制品合同登记申请-影视作品</c:if>
		<c:if test="${app_type=='z73'}">撤销出版境外音像制品合同登记信息</c:if>
		<c:if test="${app_type=='z75'}">变更出版境外音像制品合同登记信息</c:if>
		<c:if test="${app_type=='r11'}">计算机软件著作权登记信息</c:if>
		<c:if test="${app_type=='r21'}">计算机软件著作权转让或专有许可合同登记信息</c:if>
		<c:if test="${app_type=='r41'}">软件登记事项变更或补充信息</c:if>
		<c:if test="${app_type=='r42'}">撤销计算机软件登记信息</c:if>
		<c:if test="${app_type=='r44'}">撤销或放弃计算机软件登记信息</c:if>
		<c:if test="${app_type=='r45'}">补发或者换发软件登记证书信息</c:if>
		</h2>
		<div class="c_right_bqinfo m_right_c">
			<div class="bq_box">
				<div>
					<form action="" id="querFormId" method="post" name="querForm">
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
								<c:if test="${app_type=='z11' || app_type=='z31' || app_type=='z41' || app_type=='z61'
								 || app_type=='z64' || app_type=='z71' || app_type=='z72' || app_type=='r11' || app_type=='r21'
								  || app_type=='r41'|| app_type=='r45'}">
								登记号
								</c:if>
								<c:if test="${app_type=='z21'}">
								备案号
								</c:if>
								<c:if test="${app_type=='z62' || app_type=='z73' || app_type=='z75' || app_type=='r42' || app_type=='r44'}">
								原登记号
								</c:if>
								</div>
							</td>
							<td colspan="3">
								<input id="numId" name="num" value="<c:out value='${info.num}' />" class="r_input_search0712" />
							</td>
							</tr>
							<tr>
							<td width="18%">
								<div align="right">
							作品编号
								</div>
							</td>
							<td colspan="3">
								<input id="opusnumberId" name="opusnumber" value="<c:out value='${info.opusnumber}' />" class="r_input_search0712" />
							</td>
							</tr>
                            <c:if test="${app_type=='z61' || app_type=='z62' || app_type=='z64' || app_type=='r11'
                             || app_type=='r21' || app_type=='r41' || app_type=='r42' || app_type=='r44' || app_type=='r45'}">
                            <tr>
							  <td width="18%"><div align="right">
							   <c:if test="${app_type=='z61' || app_type=='z62' || app_type=='z64'}">备案号</c:if>
							  <c:if test="${app_type=='r11' || app_type=='r21' || app_type=='r41'
							   || app_type=='r42' || app_type=='r44' || app_type=='r45'}">版本号</c:if>
							  </div>
							  </td>
							<td colspan="3">
								<input id="recordId" name="record"
								value="<c:out value='${info.record}' />"
								class="r_input_search0712" />
								</td>
							</tr>
                            </c:if>	
							<tr>
							<td>
							<div align="right">
							<c:if test="${app_type=='z11' || app_type=='z61' || app_type=='z62' || app_type=='z64'}">
							作品名称
							</c:if>
							<c:if test="${app_type=='z21' || app_type=='z31'}">
							名称
							</c:if>
							<c:if test="${app_type=='z41'}">
							期刊中文名称
							</c:if>
							<c:if test="${app_type=='z71'}">
							录音制品名称
							</c:if>
							<c:if test="${app_type=='z72'}">
							影视作品名称
							</c:if>
							<c:if test="${app_type=='z73' || app_type=='z75'}">
							中文名称
							</c:if>
							<c:if test="${app_type=='r11' || app_type=='r21'}">
							软件全称
							</c:if>
							<c:if test="${app_type=='r41' || app_type=='r42' || app_type=='r44' || app_type=='r45'}">
							软件名称
							</c:if>
							</div>
							</td>
							<td colspan="3">
								<input id="nameId" name="name" value="<c:out value='${info.name}' />" class="r_input_search0712" />
							</td>
							</tr>
							<c:if test="${app_type=='z41' || app_type=='z73' || app_type=='z75'}">
							<tr>
							 <td ><div align="right">
							 <c:if test="${app_type=='z41'}">期刊英文名称</c:if>
							 <c:if test="${app_type=='z73' || app_type=='z75'}">英文名称</c:if>
							 </div>
							 </td>
							 <td colspan="3"><input id="englishnameid" name="englishname"
								value="<c:out value='${info.englishname}' />" class="r_input_search0712" />
							 </td>
							</tr>
						  </c:if>
						  <c:if test="${app_type == 'z73' || app_type == 'z75' || app_type == 'r11' ||app_type=='r21' || app_type=='r45'}">	
						  	<tr>
								<td ><div align="right">
								<c:if test="${app_type == 'z73' || app_type == 'z75'}">
								出版单位名称
								</c:if>
								<c:if test="${app_type=='r11' || app_type=='r21' || app_type=='r45'}">
								软件简称
								</c:if>
								</div>
								</td>
								<td colspan="3"><input id="publishUnitNameid" name="publishUnitName"
									value="<c:out value='${info.publishUnitName}' />" class="r_input_search0712" />
								</td>
							</tr>
							</c:if>
						 <c:if test="${app_type == 'r11'}">	
							<tr>
								<td >
									<div align="right">分类号</div>
								</td>
								<td colspan="3">
									<input id="softNumberid" name="compcode" 
									value="<c:out value='${info.compcode}'/>" class="r_input_search0712"
									 onclick="windowOpen_SoftNumber();" readOnly />
								</td>
							</tr>
					</c:if>		
							<c:if test="${app_type != 'z41' && app_type != 'r11' && app_type != 'r21' && app_type != 'r42'
							 && app_type != 'r44' && app_type != 'r45'}">
							<tr>
								<td>
									<div align="right">
									<c:if test="${app_type=='z11' || app_type=='z72'}">
									作品类别
									</c:if>
									<c:if test="${app_type=='z21' || app_type=='z31'}">
									类别
									</c:if>
									<c:if test="${app_type=='z61' || app_type=='z62' || app_type=='z64' || app_type=='z73'
									 || app_type=='z75'}">
									原登记类型
									</c:if>
									<c:if test="${app_type=='z71'}">
									出版类型
									</c:if>
									<c:if test="${app_type=='r41'}">
									原登记类别
									</c:if>
									</div>
								</td>
								<td colspan="3">
									<select name="type">
										<option value="">--请选择--</option>
										 <c:if test="${app_type=='z31'}">
										  <option value="录音制品" <c:if test="${info.type=='录音制品'}">selected="true"</c:if>>录音制品</option>
								          <option value="录像制品" <c:if test="${info.type=='录像制品'}">selected="true"</c:if>>录像制品</option>
										  <option value="表演" <c:if test="${info.type=='表演'}">selected="true"</c:if>>表演</option>
										  <option value="版式设计" <c:if test="${info.type=='版式设计'}">selected="true"</c:if>>版式设计</option>
										  <option value="广播电视" <c:if test="${info.type=='广播电视'}">selected="true"</c:if>>广播、电视</option>
										 <option value="其他" <c:if test="${info.type=='其他'}">selected</c:if>>其他</option>
										 </c:if>
										 <c:if test="${app_type=='z11' || app_type=='z21'}">
										 <option value="美术"
										<c:if test="${info.type=='美术'}">selected</c:if>>美术</option>
									<option value="文字"
										<c:if test="${info.type=='文字'}">selected</c:if>>文字</option>
									<option value="口述"
										<c:if test="${info.type=='口述'}">selected</c:if>>口述</option>
									<option value="戏剧"
										<c:if test="${info.type=='戏剧'}">selected</c:if>>戏剧</option>
									<option value="曲艺"
										<c:if test="${info.type=='曲艺'}">selected</c:if>>曲艺</option>
									<option value="舞蹈"
										<c:if test="${info.type=='舞蹈'}">selected</c:if>>舞蹈</option>
									<option value="杂技艺术"
										<c:if test="${info.type=='杂技艺术'}">selected</c:if>>杂技艺术</option>
									<option value="建筑"
										<c:if test="${info.type=='建筑'}">selected</c:if>>建筑</option>
									<option value="摄影"
										<c:if test="${info.type=='摄影'}">selected</c:if>>摄影</option>
									<option value="图形 "
										<c:if test="${info.type=='图形'}">selected</c:if>>图形</option>
									<option value="模型"
										<c:if test="${info.type=='模型'}">selected</c:if>>模型</option>
									<option value="电影和类似摄制电影方法创作的作品"
										<c:if test="${info.type=='电影和类似摄制电影方法创作的作品'}">selected</c:if>>
										电影和类似摄制电影方法创作的作品</option>
									<option value="音乐" <c:if test="${info.type=='音乐'}">selected</c:if>>音乐</option>
								 <c:if test="${app_type=='z21'}">
									    <option value="录音制品"
										<c:if test="${info.type=='录音制品'}">selected</c:if>>录音制品</option>
										 <option value="录像制品"
										<c:if test="${info.type=='录像制品'}">selected</c:if>>录像制品</option>
										 <option value="版式设计"
										<c:if test="${info.type=='版式设计'}">selected</c:if>>版式设计</option>
										 <option value="广播节目"
										<c:if test="${info.type=='广播节目'}">selected</c:if>>广播节目</option>
										 <option value="电视节目"
										<c:if test="${info.type=='电视节目'}">selected</c:if>>电视节目</option>
										 <option value="表演"
										<c:if test="${info.type=='表演'}">selected</c:if>>表演</option>
									</c:if>
									<option value="其他" <c:if test="${info.type=='其他'}">selected</c:if>>其他</option>
									</c:if>
									 <c:if test="${app_type=='z61' || app_type=='z62' || app_type=='z64'}">	 
									<option value="作品著作权登记"
										<c:if test="${info.type=='作品著作权登记'}">selected</c:if>>作品著作权登记</option>
									<option value="著作权合同备案"
										<c:if test="${info.type=='著作权合同备案'}">selected</c:if>>著作权合同备案</option>
									<option value="与著作权相关权利事项登记"
										<c:if test="${info.type=='与著作权相关权利事项登记'}">selected</c:if>>与著作权相关权利事项登记</option>
									<option value="重印国外期刊合同登记"
										<c:if test="${info.type=='重印国外期刊合同登记'}">selected</c:if>>重印国外期刊合同登记</option>
									<option value="著作权质权登记"
										<c:if test="${info.type=='著作权质权登记'}">selected</c:if>>著作权质权登记</option>	 
									</c:if>	
									<c:if test="${app_type=='z71'}">
									 <option value="录音带" <c:if test="${info.type=='录音带'}">selected</c:if>>录音带</option>
									 <option value="唱片" <c:if test="${info.type=='唱片'}">selected</c:if>>唱片</option>
									 <optgroup label="激光唱盘">
											<option value="CD" <c:if test="${info.type=='CD'}">selected</c:if>>CD</option>
											<option value="VCD" <c:if test="${info.type=='VCD'}">selected</c:if>>VCD</option>
											<option value="DVD" <c:if test="${info.type=='DVD'}">selected</c:if>>DVD</option>
											</optgroup>
											<option value="其他" <c:if test="${info.type=='其他'}">selected</c:if>>其他</option>
									</c:if>
								<c:if test="${app_type=='z72'}">
								  <optgroup label="电影">
									<option value="故事片" <c:if test="${info.type=='故事片'}">selected</c:if>>故事片</option>
									<option value="纪录片" <c:if test="${info.type=='纪录片'}">selected</c:if>>纪录片</option>
									<option value="科教片" <c:if test="${info.type=='科教片'}">selected</c:if>>科教片</option>
									<option value="美术片" <c:if test="${info.type=='美术片'}">selected</c:if>>美术片</option>
									<option value="专题片" <c:if test="${info.type=='专题片'}">selected</c:if>>专题片</option>
									</optgroup>
									<optgroup label="电视剧">
									<option value="一般电视剧" <c:if test="${info.type=='一般电视剧'}">selected</c:if>>一般电视剧</option>
									<option value="电视剧动画片" <c:if test="${info.type=='电视剧动画片'}">selected</c:if>>电视剧动画片</option>
									</optgroup>
									 <option value="其他  " <c:if test="${info.type=='其他'}">selected</c:if>>其他</option>
								</c:if>	
								<c:if test="${app_type=='z73' || app_type=='z75'}">
								<option value="录音制品" <c:if test="${info.type=='录音制品'}">selected</c:if>>录音制品</option>
								<option value="影视作品" <c:if test="${info.type=='影视作品'}">selected</c:if>>影视作品</option>
								</c:if>
								<c:if test="${app_type=='r41'}">
								<option value="软件著作权登记" <c:if test="${info.type=='软件著作权登记'}">selected</c:if>>软件著作权登记
								</option>
								<option value="软件著作权转让合同登记" <c:if test="${info.type=='软件著作权转让合同登记'}">selected</c:if>>软件著作权转让合同登记
								</option>
								<option value="软件著作权专有许可合同登记" <c:if test="${info.type=='软件著作权专有许可合同登记'}">selected</c:if>>软件著作权专有许可合同登记
								</option>
								</c:if>
									</select>
								</td>
							</tr>
							</c:if>
							<c:if test="${app_type == 'z11' || app_type == 'z21' || app_type == 'z41' || app_type == 'z71'
							 || app_type == 'r11' || app_type == 'r21'}">
							<tr>
								<td>
									<div align="right">
									<c:if test="${app_type=='z11' || app_type=='r11'}">
									著作权人
									</c:if>
									<c:if test="${app_type=='z21' || app_type=='z41' || app_type=='r21'}">
									转让（许可）方
									</c:if>
									<c:if test="${app_type=='z71'}">
									首次出品地
									</c:if>
									</div>
								</td>
								<td colspan="3">
									<input id="ownerId" name="owner" value="<c:out value='${info.owner}' />" class="r_input_search0712" />
								</td>
							</tr>
							<c:if test="${app_type=='z21' || app_type=='z41'|| app_type=='r21'}">
							<tr>
								<td >
									<div align="right">受让（被许可）方</div>
								</td>
								<td colspan="3">
									<input id="transfereeId" name="transferee" 
									value="<c:out value='${info.transferee}' />" class="r_input_search0712" />
								</td>
							</tr>
							</c:if>
							<c:if test="${app_type=='z71'}">
							<tr>
								<td ><div align="right">出品时间</div>
								</td>
								<td colspan="3">
								<input type="text" class="Wdate"  id="transfereeId" name="transferee" onfocus="calShow(this);"
								value="<c:out value='${info.transferee}' />" readonly />
								</td>
							</tr>
							</c:if>
							</c:if>
							<tr>
								<td>
									<div align="right">
									<c:if test="${app_type != 'z21'}">
									登记开始时间
									</c:if>
									<c:if test="${app_type == 'z21'}">
									备案开始时间
									</c:if>
									</div>
								</td>
								<td width="25%">
									<input type="text" class="Wdate"
								name="beginTime" onfocus="calShow(this);"
								value="<c:out value='${beginTime}' />" readonly />
								</td>
								<td width="15%">
									<div align="right">
							<c:if test="${app_type != 'z21'}">
									登记结束时间
									</c:if>
									<c:if test="${app_type == 'z21'}">
									备案结束时间
									</c:if>
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
								onclick="subForm('manage/info/infolist/${app_type}/${parent_type}');" />
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
				<c:if test="${app_type=='z11'}">
				<div class="new_button" id="aft8101" style="display:none">
				</c:if>
				<c:if test="${app_type=='z21'}">
				<div class="new_button" id="aft8111" style="display:none">
				</c:if>
				<c:if test="${app_type=='z31'}">
				<div class="new_button" id="aft8121" style="display:none">
				</c:if>
				<c:if test="${app_type=='z41'}">
				<div class="new_button" id="aft8131" style="display:none">
				</c:if>
				<c:if test="${app_type=='z61'}">
				<div class="new_button" id="aft8141" style="display:none">
				</c:if>
				<c:if test="${app_type=='z62'}">
				<div class="new_button" id="aft8151" style="display:none">
				</c:if>
				<c:if test="${app_type=='z64'}">
				<div class="new_button" id="aft8161" style="display:none">
				</c:if>
				<c:if test="${app_type=='z71'}">
				<div class="new_button" id="aft8171" style="display:none">
				</c:if>
				<c:if test="${app_type=='z72'}">
				<div class="new_button" id="aft8181" style="display:none">
				</c:if>
				<c:if test="${app_type=='z73'}">
				<div class="new_button" id="aft8191" style="display:none">
				</c:if>
				<c:if test="${app_type=='z75'}">
				<div class="new_button" id="aft81101" style="display:none">
				</c:if>
				<c:if test="${app_type=='r11'}">
				<div class="new_button" id="aft8211" style="display:none">
				</c:if>
				<c:if test="${app_type=='r21'}">
				<div class="new_button" id="aft8221" style="display:none">
				</c:if>
				<c:if test="${app_type=='r41'}">
				<div class="new_button" id="aft8231" style="display:none">
				</c:if>
				<c:if test="${app_type=='r42'}">
				<div class="new_button" id="aft8241" style="display:none">
				</c:if>
				<c:if test="${app_type=='r44'}">
				<div class="new_button" id="aft8251" style="display:none">
				</c:if>
				<c:if test="${app_type=='r45'}">
				<div class="new_button" id="aft8261" style="display:none">
				</c:if>
				<a href="manage/info/initinfoadd/${parent_type}/${app_type}">发布新信息公示</a>
				</div>
					<table width="100%" border="1" cellspacing="0" cellpadding="0"
							bordercolor="#e4e4e4"
							style="table-layout: fixed; word-wrap: break-word; margin-top: 10px;">
						<tr>
						<c:if test="${app_type == 'r21' || app_type == 'z41'}">
						<th width="6%">序号</th>
						</c:if>
						<c:if test="${app_type != 'r21' && app_type != 'z41'}">
						<th width="8%">序号</th>
						</c:if>
							<c:if test="${app_type=='z11'}">
							<th width="12%">登记时间</th>
							<th width="10%">登记号</th>
							<th width="12%">作品编号</th>
							<th width="12%">作品名称</th>
							<th width="12%">作品类别</th>
							<th width="12%">著作权人</th>
							<th width="10%" colspan="2">操作</th>
							</c:if>
							<c:if test="${app_type=='z21'}">
							<th width="12%">备案时间</th>
							<th width="10%">备案号</th>
							<th width="12%">作品编号</th>
							<th width="9%">名称</th>
							<th width="9%">类别</th>
							<th width="14%">转让(许可)方</th>
							<th width="16%">受让(被许可)方</th>
							<th width="10%" colspan="2">操作</th>
							</c:if>
						<c:if test="${app_type=='z31' || app_type=='z72'}">	
							<th width="12%">登记时间</th>
							<th width="10%">登记号</th>
							<th width="12%">作品编号</th>
							<th width="15%">
								<c:if test="${app_type=='z31'}">名称</c:if>
								<c:if test="${app_type=='z72'}">影视作品名称</c:if>
							</th>
							<th width="12%">
							<c:if test="${app_type=='z31'}">类别</c:if>
							<c:if test="${app_type=='z72'}">作品类别</c:if>
							</th>
							<th width="10%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='z41'}">
							<th width="10%">登记时间</th>
							<th width="10%">登记号</th>
							<th width="10%">作品编号</th>
							<th width="12%">期刊中文名称</th>
							<th width="12%">期刊英文名称</th>
							<th width="13%">转让（许可）方</th>
							<th width="14%">受让（被许可）方</th>
							<th width="12%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='z61' || app_type=='z62' || app_type=='z64'}">
						<th width="12%">登记时间</th>
						<th width="12%">
						<c:if test="${app_type=='z61' || app_type=='z64'}">登记号</c:if>
						<c:if test="${app_type=='z62'}">原登记号</c:if>
						</th>
						<th width="11%">备案号</th>
						<th width="12%">作品编号</th>
						<th width="12%">作品名称</th>
						<th width="15%">原登记类型</th>
						<th width="10%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='z71'}">
						<th width="10%">登记时间</th>
						<th width="10%">登记号</th>
						<th width="11%">作品编号</th>
						<th width="14%">录音制品名称</th>
						<th width="10%">出版类型</th>
						<th width="13%">首次出品地</th>
						<th width="11%">出品时间</th>
						<th width="16%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='z73' || app_type=='z75'}">
						<th width="10%">登记时间</th>
						<th width="10%">原登记号</th>
						<th width="10%">作品编号</th>
						<th width="11%">中文名称</th>
						<th width="11%">英文名称</th>
						<th width="13%">原登记类型</th>
						<th width="14%">出版单位名称</th>
						<th width="16%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='r11'}">
						<th width="10%">登记时间</th>
						<th width="9%">登记号</th>
						<th width="10%">作品编号</th>
						<th width="10%">软件全称</th>
						<th width="10%">软件简称</th>
						<th width="9%">分类号</th>
						<th width="9%">版本号</th>
						<th width="10%">著作权人</th>
						<th width="12%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='r21'}">
						<th width="9%">登记时间</th>
						<th width="9%">登记号</th>
						<th width="10%">作品编号</th>
						<th width="9%">软件全称</th>
						<th width="9%">软件简称</th>
						<th width="9%">版本号</th>
						<th width="13%">转让（许可）方</th>
						<th width="14%">受让（被许可）方</th>
						<th width="14%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='r41'}">
						<th width="13%">登记时间</th>
						<th width="13%">登记号</th>
						<th width="13%">作品编号</th>
						<th width="13%">软件名称</th>
						<th width="12%">版本号</th>
						<th width="15%">原登记类别</th>
						<th width="13%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='r42' || app_type=='r44'}">
						<th width="13%">登记时间</th>
						<th width="15%">原登记号</th>
						<th width="12%">作品编号</th>
						<th width="16%">软件名称</th>
						<th width="15%">版本号</th>
						<th width="13%" colspan="2">操作</th>
						</c:if>
						<c:if test="${app_type=='r45'}">
						<th width="13%">登记时间</th>
						<th width="13%">登记号</th>
						<th width="12%">作品编号</th>
						<th width="14%">软件全称</th>
						<th width="14%">软件简称</th>
						<th width="13%">版本号</th>
						<th width="13%" colspan="2">操作</th>
						</c:if> 
						</tr>
						<c:set var="index" value="${offset+1}"></c:set>
						<c:forEach items="${page.data}" var="infos" varStatus="idx">
							<tr id="tr${infos.id}">
								<td align="center">${index}</td>
								<c:set var="index" value="${index+1}"></c:set>
							   <c:if test="${app_type=='z11'}">
								<td align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td  align="center">${infos.type}</td>
								<td>${infos.owner}</td>
								</c:if>
								<c:if test="${app_type=='z21'}">
								<td align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td  align="center">${infos.type}</td>
								<td>${infos.owner}</td>
								<td>${infos.transferee}</td>
								</c:if>
								<c:if test="${app_type=='z31' || app_type=='z72'}">
								<td  align="center">${infos.date}</td>
							   <td>${infos.num}</td>
							   <td>${infos.opusnumber}</td>
							   <td>${infos.name}</td>
							   <td align="center">${infos.type}</td>
								</c:if>
								<c:if test="${app_type=='z41'}">
								<td  align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td>${infos.englishname}</td>
								<td>${infos.owner}</td>
								<td>${infos.transferee}</td>
								</c:if>		
								<c:if test="${app_type=='z61' || app_type=='z62' || app_type=='z64'}">
								<td align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.record}</td>
								<td>${infos.name}</td>
								<td align="center">${infos.type}</td>
								</c:if>
								<c:if test="${app_type=='z71'}">
								<td  align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td  align="center"> 
								${infos.type}
								</td>
								<td>${infos.owner}</td>
								<td>${infos.transferee}</td>
								</c:if>
							    <c:if test="${app_type=='z73' || app_type=='z75'}">
							    <td align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td>${infos.englishname}</td>
								<td  align="center"> 
								${infos.type}
								</td>
								<td>${infos.publishUnitName}</td>
							    </c:if>
						    	<c:if test="${app_type=='r11'}">
						    	<td align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td>${infos.publishUnitName}</td>
								<td align="center">${infos.compcode}</td>
								<td>${infos.record}</td>
								<td>${infos.owner}</td>
						    	</c:if>
						    	<c:if test="${app_type=='r21'}">
						    	<td align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td>${infos.publishUnitName}</td>
								<td>${infos.record}</td>
								<td>${infos.owner}</td>
								<td>${infos.transferee}</td>
								</c:if>
								<c:if test="${app_type=='r41'}">
								<td align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td>${infos.record}</td>
								<td align="center">${infos.type}</td>
								</c:if>
								<c:if test="${app_type=='r42' || app_type=='r44'}">
								<td  align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td>${infos.record}</td>
								</c:if>
								<c:if test="${app_type=='r45'}">
								<td align="center">${infos.date}</td>
								<td>${infos.num}</td>
								<td>${infos.opusnumber}</td>
								<td>${infos.name}</td>
								<td>${infos.publishUnitName}</td>
								<td>${infos.record}</td>
								</c:if>
				<c:if test="${app_type=='z11'}">
				<td align="center">
				<a id="aft8102" style="display:none" href="manage/info/initinfoadd/${parent_type}/z11?id=${infos.id}">
				修改</a>
				</td>
				<td align="center">
				<a id="aft8103" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z21'}">
				<td align="center">
				<a id="aft8112" style="display:none" href="manage/info/initinfoadd/${parent_type}/z21?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8113" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z31'}">
				<td align="center">
				<a id="aft8122" style="display:none" href="manage/info/initinfoadd/${parent_type}/z31?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8123" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z41'}">
				<td align="center">
				<a id="aft8132" style="display:none" href="manage/info/initinfoadd/${parent_type}/z41?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8133" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z61'}">
				<td align="center">
				<a id="aft8142" style="display:none" href="manage/info/initinfoadd/${parent_type}/z61?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8143" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z62'}">
				<td align="center">
				<a id="aft8152" style="display:none" href="manage/info/initinfoadd/${parent_type}/z62?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8153" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z64'}">
				<td align="center">
				<a id="aft8162" style="display:none" href="manage/info/initinfoadd/${parent_type}/z64?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8163" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z71'}">
				<td align="center">
				<a id="aft8172" style="display:none" href="manage/info/initinfoadd/${parent_type}/z71?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8173" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z72'}">
				<td align="center">
				<a id="aft8182" style="display:none" href="manage/info/initinfoadd/${parent_type}/z72?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8183" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z73'}">
				<td align="center">
				<a id="aft8192" style="display:none" href="manage/info/initinfoadd/${parent_type}/z73?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8193" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='z75'}">
				<td align="center">
				<a id="aft81102" style="display:none" href="manage/info/initinfoadd/${parent_type}/z75?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft81103" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='r11'}">
				<td align="center">
				<a id="aft8212" style="display:none" href="manage/info/initinfoadd/${parent_type}/r11?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8213" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='r21'}">
				<td align="center">
				<a id="aft8222" style="display:none" href="manage/info/initinfoadd/${parent_type}/r21?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8223" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='r41'}">
				<td align="center">
				<a id="aft8232" style="display:none" href="manage/info/initinfoadd/${parent_type}/r41?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8233" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='r42'}">
				<td align="center">
				<a id="aft8242" style="display:none" href="manage/info/initinfoadd/${parent_type}/r42?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8243" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='r44'}">
				<td align="center">
				<a id="aft8252" style="display:none" href="manage/info/initinfoadd/${parent_type}/r44?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8253" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				<c:if test="${app_type=='r45'}">
				<td align="center">
				<a id="aft8262" style="display:none" href="manage/info/initinfoadd/${parent_type}/r45?id=${infos.id}">
				修改</a></td>
				<td align="center">
				<a id="aft8263" style="display:none" 
				href="javascript:deleteInfo('${infos.id}');">删除</a>
				</td>
				</c:if>
				</td>
				</tr>
			</c:forEach>
			</table>
			</div>
				<!--翻页-->
				<c:if test="${!empty page.data}">
					<pg:pager items="${page.totalCount}" url="manage/info/infolist/${app_type}/${parent_type}"
						export="currentPageNumber=pageNumber" maxIndexPages="8"
						maxPageItems="${page.pageSize}">
						<pg:param name="name" value="${info.name}" />
						<pg:param name="num" value="${info.num}" />
						<pg:param name="compcode" value="${info.compcode}" />
						<pg:param name="transferee" value="${info.transferee}" />
						<pg:param name="publishUnitName" value="${info.publishUnitName}" />
						<pg:param name="record" value="${info.record}" />
						<pg:param name="owner" value="${info.owner}" />
						<pg:param name="type" value="${info.type}" />
						<pg:param name="opusnumber" value="${info.opusnumber}" />
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
</body>
<script language="javascript">
function subForm(url) {
	//提交表单
	$("#subId").attr('disabled', true);
	var frm = document.getElementById("querFormId");
	frm.action = url;
	frm.submit();
}

function deleteInfo(ids) {
if (confirm("删除后将永远无法恢复!")) {
	$.ajax({
		url: "manage/info/deleteinfo/"+ids,
		type: "post",
		dataType: "text",
		success: function(calback){
			if(calback=="yes") {
				$("#tr"+ids).remove();
			}
		}
	});
	}
}
function windowOpen_SoftNumber(){
	 window.open ('/SoftClassNumber.html','请选择软件分类号','height=1200,width=800,top=20,left=70,toolbar=no,menubar=no,scrollbars=yes,resizable=no,status=no')
}

$(document).ready(function(){
	 var buttResources = ("${sessionScope.CCCS_BUTTRESOURCE}").split(",");  
	 for(var s = 0;s<buttResources.length;s++) {
	  $("[id="+buttResources[s]+"]").css("display","block");
	  } 
});
</script>
<script language="JavaScript" src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css" rel="stylesheet" type="text/css" />
</html>