<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国动漫版权服务平台管理后台</title>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/xheditor-1.1.8-zh-cn.min.js"></script>
</head>
<body>
			<!--  新闻编辑 -->
	<div class="m_right">
		<h2>
			您当前的位置：信息公示&gt;&gt;
			<c:choose>
				<c:when test="${!empty info}">修改信息公示</c:when>
				<c:otherwise>新建新信息公示</c:otherwise>
			</c:choose>
		&gt;&gt;
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
		<div class="m_right_c">
			<div class="bq_box">
			<form action=""  name="querForm" id="formId" method="post">
			<input type="hidden" name="id" value="${info.id}" />
				<div class="m_right_edit">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="edit_table">
						<tr>
							<td width="18%" class="text_r">
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
							</td>
							<td width="82%">
								<input id="numId" name="num" value="<c:out value='${info.num}' />" class="r_input_search0712" />
							</td>
							</tr>
							<tr>
							<td width="18%" class="text_r">
								作品编号
							</td>
							<td width="82%">
								<input id="opusnumberId" name="opusnumber" value="<c:out value='${info.opusnumber}' />" class="r_input_search0712" />
							</td>
							</tr>
                            <c:if test="${app_type=='z61' || app_type=='z62' || app_type=='z64' || app_type=='r11'
                             || app_type=='r21' || app_type=='r41' || app_type=='r42' || app_type=='r44' || app_type=='r45'}">
                            <tr>
							  <td width="18%" class="text_r">
							   <c:if test="${app_type=='z61' || app_type=='z62' || app_type=='z64'}">备案号</c:if>
							  <c:if test="${app_type=='r11' || app_type=='r21' || app_type=='r41'
							   || app_type=='r42' || app_type=='r44' || app_type=='r45'}">版本号</c:if>
							  </td>
							<td width="82%">
								<input id="recordId" name="record"
								value="<c:out value='${info.record}' />"
								class="r_input_search0712" />
								</td>
							</tr>
                            </c:if>	
							<tr>
							<td  width="18%" class="text_r">
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
							</td>
							<td width="82%">
							 <input id="nameId" name="name" value="<c:out value='${info.name}' />" class="r_input_search0712" />
							</td>
							</tr>
							<c:if test="${parent_type=='1'}">
							<tr>
							<td class="text_r">作品数量</td>
							<td><input type="text" name="amount" id="amountId" value="${info.amount}" class="r_input_search0712" />						  
							</td>
						   </tr>
						   <tr>
						  <td></td>
						  <td><span id="spanamont"></span></td>
				      	</tr>
						   </c:if>
							<c:if test="${app_type=='z41' || app_type=='z73' || app_type=='z75'}">
							<tr>
							 <td width="18%" class="text_r">
							 <c:if test="${app_type=='z41'}">期刊英文名称</c:if>
							 <c:if test="${app_type=='z73' || app_type=='z75'}">英文名称</c:if>
							 </td>
							 <td width="82%"><input id="englishnameid" name="englishname"
								value="<c:out value='${info.englishname}' />" class="r_input_search0712" />
							 </td>
							</tr>
						  </c:if>
						  <c:if test="${app_type == 'z73' || app_type == 'z75' || app_type == 'r11' ||app_type=='r21' || app_type=='r45'}">	
						  	<tr>
								<td width="18%" class="text_r">
								<c:if test="${app_type == 'z73' || app_type == 'z75'}">
								出版单位名称
								</c:if>
								<c:if test="${app_type=='r11' || app_type=='r21' || app_type=='r45'}">
								软件简称
								</c:if>
								</td>
								<td width="82%"><input id="publishUnitNameid" name="publishUnitName"
									value="<c:out value='${info.publishUnitName}' />" class="r_input_search0712" />
								</td>
							</tr>
							</c:if>
						 <c:if test="${app_type == 'r11'}">	
							<tr>
								<td width="18%" class="text_r">
									分类号
								</td>
								<td width="82%">
									<input id="softNumberid" name="compcode" 
									value="<c:out value='${info.compcode}'/>" class="r_input_search0712"
									 onclick="windowOpen_SoftNumber();" readOnly />
								</td>
							</tr>
					</c:if>		
							<c:if test="${app_type != 'z41' && app_type != 'r11' && app_type != 'r21' && app_type != 'r42' 
							 && app_type != 'r44' && app_type != 'r45'}">
							<tr>
								<td width="18%" class="text_r">
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
								</td>
								<td width="82%">
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
								<td width="18%" class="text_r">
									<c:if test="${app_type=='z11' || app_type=='r11'}">
									著作权人
									</c:if>
									<c:if test="${app_type=='z21' || app_type=='z41' || app_type=='r21'}">
									转让（许可）方
									</c:if>
									<c:if test="${app_type=='z71'}">
									首次出品地
									</c:if>
								</td>
								<td width="82%">
									<input id="ownerId" name="owner" value="<c:out value='${info.owner}' />" class="r_input_search0712" />
								</td>
							</tr>
							<c:if test="${app_type=='z21' || app_type=='z41'|| app_type=='r21'}">
							<tr>
								<td width="18%" class="text_r">
									受让（被许可）方
								</td>
								<td width="82%">
									<input id="transfereeId" name="transferee" 
									value="<c:out value='${info.transferee}' />" class="r_input_search0712" />
								</td>
							</tr>
							</c:if>
							<c:if test="${app_type=='z71'}">
							<tr>
								<td width="18%" class="text_r">出品时间
								</td>
								<td width="82%">
								<input type="text" class="Wdate"  id="transfereeId" name="transferee" onfocus="calShow(this);"
								value="<c:out value='${info.transferee}' />" readonly />
								</td>
							</tr>
							</c:if>
							</c:if>
						<tr>
						<td width="18%" class="text_r">
						<c:if test="${app_type=='z21'}">备案时间</c:if>
						<c:if test="${app_type!='z21'}">登记时间</c:if>
						</td>
							<td><input type="text" class="Wdate" name="date"
								onfocus="calShow(this);"
								value="<c:out value='${info.date}' />" readonly /></td>
						</tr>
					</table>

		    </div>
				<div class="m_r_button">
					<input type="button" value="确定" id="butId" class="m_button0910" 
					onclick="subFor('manage/info/addinfo/${parent_type}/${app_type}');"/>
				</div>
			</form>
		</div>
	</div>
	<!--  新闻编辑  end -->

	<div class="clear"></div>		
</body>
<script language="JavaScript"
	src="js/TimeWidget.js"></script>
<link href="css/TimeWidgetStyle.css"
	rel="stylesheet" type="text/css" />
<script language="javascript">
function subFor(url) {
	var parentType = "${parent_type}";
	if(parentType == '1') {
	 var amount = $("#amountId").val();
	 var regs = /^-?[1-9]\d*$/;
	 if(amount.length == 0 || !regs.test(amount)) {
		 $("#spanamont").css("color","red").text("请输入作品数量(只能输入数字)!");
		 return;
	 }
	 $("#butId").attr('disabled', true);
		var frm = document.getElementById("formId");
		frm.action = url;
		frm.submit();
	} else {
	 $("#butId").attr('disabled', true);
		var frm = document.getElementById("formId");
		frm.action = url;
		frm.submit();
	}
}

function windowOpen_SoftNumber(){
	 window.open ('/SoftClassNumber.html','请选择软件分类号','height=1200,width=800,top=20,left=70,toolbar=no,menubar=no,scrollbars=yes,resizable=no,status=no')
}

</script>
</html>
