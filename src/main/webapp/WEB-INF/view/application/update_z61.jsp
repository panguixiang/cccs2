<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线填报-作品著作权和合同变更或补充登记申请表</title>
<link href="${pageContext.request.contextPath}/css/table.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/form/formStyle.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/form/createPeoples.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/form/checkform.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/pgCalPicker.js"></script>
<script language="JavaScript">
function changeRegType(value) {
		if (value == 1) {
			$("#nametype").html("作品名称");
			$("#numname").html("原登记号");
			$("#datacell").html("原受理号");
			$("#datename").html("原登记日期");
			$("#z21_opus").css("display", "none");
			$("#z31_type").css("display", "none");
			$("#z41_type").css("display", "none");
			$("#apply1").css("display", "block");
			$("#apply2").css("display", "none");
			$("#apply3").css("display", "none");
			$("#apply4").css("display", "none");
			$("#apply5").css("display", "none");
		} else if (value == 2) {
			$("#nametype").html("涉及作品名称");
			$("#numname").html("原备案号");
			$("#datacell").html("原受理号");
			$("#datename").html("原备案日期");
			$("#z21_opus").css("display", "block");
			$("#z31_type").css("display", "none");
			$("#z41_type").css("display", "none");
			$("#apply1").css("display", "none");
			$("#apply2").css("display", "block");
			$("#apply3").css("display", "none");
			$("#apply4").css("display", "none");
			$("#apply5").css("display", "none");
		} else if (value == 3) {
			$("#nametype").html("名称");
			$("#numname").html("原登记号 ");
			$("#datacell").html("原受理号 ");
			$("#datename").html("原登记日期");
			$("#z21_opus").css("display", "none");
			$("#z31_type").css("display", "block");
			$("#z41_type").css("display", "none");
			$("#apply1").css("display", "none");
			$("#apply2").css("display", "none");
			$("#apply3").css("display", "block");
			$("#apply4").css("display", "none");
			$("#apply5").css("display", "none");
		} else if (value == 4) {
			$("#nametype").html("期刊中文名称");
			$("#numname").html("原登记号");
			$("#datacell").html("原受理号");
			$("#datename").html("原登记日期");
			$("#z21_opus").css("display", "none");
			$("#z31_type").css("display", "none");
			$("#z41_type").css("display", "block");
			$("#apply1").css("display", "none");
			$("#apply2").css("display", "none");
			$("#apply3").css("display", "none");
			$("#apply4").css("display", "block");
			$("#apply5").css("display", "none");
		}
		else if (value == 5) {
			$("#nametype").html("涉及作品名称");
			$("#numname").html("原登记号");
			$("#datacell").html("原受理号");
			$("#datename").html("原登记日期");
			$("#z21_opus").css("display", "none");
			$("#z31_type").css("display", "none");
			$("#z41_type").css("display", "none");
			$("#apply1").css("display", "none");
			$("#apply2").css("display", "none");
			$("#apply3").css("display", "none");
			$("#apply4").css("display", "none");
			$("#apply5").css("display", "block");
		}
	}


	function showApplyingType(type) {
		if (type == 1) {
			$("#applying1").css("display", "block");
			$("#applying2").css("display", "none");
			$("#rname").html("变更理由说明");
		} else if (type == 2) {
			$("#applying1").css("display", "none");
			$("#applying2").css("display", "block");
			$("#rname").html("补充理由说明");
		}
	}

	function agent_showOrHide(obj)

	{
		if ($(obj).val() == "代理人") {
			$("#A-0").css("display", "block");
		} else {
			$("#A-0").css("display", "none");
		}
	}
	function s_h_agent(obj) {
		if (obj.checked) {
			$("#A-0").css("display", "block");
		} else {
			$("#A-0").css("display", "none");
		}
	}

	  function setPeopleValue(str)
	  {
			if(str == 'sqr')
			{
				document.all('sqrname').value = "${sessionScope.accountSession.name}";
				document.all('sqraddress').value = "${sessionScope.accountSession.address}";
				document.all('sqrpostCode').value = "${sessionScope.accountSession.postcode}";
				document.all('sqrcontactPerson').value = "${sessionScope.accountSession.p_name}";
				document.all('sqrphone').value = "${sessionScope.accountSession.phone}";
				document.all('sqremail').value = "${sessionScope.accountSession.peremail}";
				document.all('sqrmobile').value = "${sessionScope.accountSession.mobile}";
				document.all('sqrfax').value = "${sessionScope.accountSession.fax}";
			}
			else if(str == 'dlr')
			{
				document.all('dlrname').value = "${sessionScope.accountSession.name}";
				document.all('dlraddress').value = "${sessionScope.accountSession.address}";
				document.all('dlrpostCode').value = "${sessionScope.accountSession.postcode}";
				document.all('dlrcontactPerson').value = "${sessionScope.accountSession.p_name}";
				document.all('dlrphone').value = "${sessionScope.accountSession.phone}";
				document.all('dlremail').value = "${sessionScope.accountSession.peremail}";
				document.all('dlrmobile').value = "${sessionScope.accountSession.mobile}";
				document.all('dlrfax').value = "${sessionScope.accountSession.fax}";
			}
	  }
	  
		// 通用校验后，特殊校验，通过返回true，不通过返回false
		function afterValids(){
			var flag=true;
			// 判断涉及作品量是否是整数
			if(document.all('more_opus').value!=""){
				if(!isNumber(getVal('more_opus')))
				{
					showErrorMsg(document.all("more_opus"), "作品数量应为大于0的整数！");
					flag = false;
				}
			}
			return flag;
		}

</script>
</head>

<body>

	<div class="table_content">
		<div id="my_tips"
			style="font-size: 12px; color: black; padding: 6px; text-align: left; position: absolute; line-height: 18px; background-color: #FFFFE6; width: 600; height: 16; border: 1px solid orange; display: none; filter: progid:DXImageTransform.Microsoft.Shadow(color=#999999, direction=135, strength=3 ); left: 0; top: 5"></div>
		<div class="table_title">
			作品著作权和合同变更或补充登记申请表<span><img id="myhelp"
				tips="作品著作权变更或补充登记申请表总说明" onmousemove="show_tips(this,event,300)"
				onmouseout="hidden_tips()" src="${pageContext.request.contextPath}/images/icon_alert.gif" width="18">
			</span>
		</div>
		<div class="app_table">
		<form  action=""
				method="post" name="generalForm" id="generalFormId">
           <input type="hidden" name="flow_num" value="${z60.flow_num}" />
				<div id="SoftRegSLZYD">
					<table width="100%" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#CCCCCC">
						<tbody>
							<tr>
								<td class="td_blue" colspan="2"><b>原登记信息</b></td>
							</tr>
							<tr>
								<td width="150">原登记类型</td>
								<td><input name="register_type" value="z11"
									<c:if test="${z60.register_type=='z11'}">checked="checked"</c:if> onclick="changeRegType(1);" type="radio">
									作品著作权登记&nbsp;&nbsp;
								<input name="register_type" value="z21" <c:if test="${z60.register_type=='z21'}">checked="checked"</c:if>
									onclick="changeRegType(2);" type="radio">著作权合同备案&nbsp;&nbsp;
										<input name="register_type" value="z31" <c:if test="${z60.register_type=='z31'}">checked="checked"</c:if>
										onclick="changeRegType(3);" type="radio">与著作权相关权利事项登记&nbsp;&nbsp;
											<br> <input name="register_type" value="z41" <c:if test="${z60.register_type=='z41'}">checked="checked"</c:if>
												onclick="changeRegType(4);" type="radio">重印国外期刊合同登记&nbsp;&nbsp;
							<input name="register_type" value="z51" <c:if test="${z60.register_type=='z51'}">checked="checked"</c:if>
							onclick="changeRegType(5);" type="radio">著作权质权登记&nbsp;&nbsp;
											
								</td>
							</tr>
							<tr>
								<td>
								<span id="nametype">
								<c:if test="${z60.register_type=='z11'}">作品名称</c:if>
		<c:if test="${z60.register_type=='z21'}">涉及作品名称</c:if>
		<c:if test="${z60.register_type=='z31'}">名称</c:if>
		<c:if test="${z60.register_type=='z41'}">期刊中文名称</c:if>
			<c:if test="${z60.register_type=='z51'}">著作权质权登记</c:if></span>
								</td>
								<td>
									<div style="float: left;">
										<input class="focus" name="opus_name" size="50" tips="请填写作品名称"
											valid="required" errmsg="名称不能为空!" length="200"
											onmousemove="show_tips(this, event,350)"
											onmouseout="hidden_tips()" type="text" value="${z60.opus_name}">
									</div>
									<div id="z21_opus" style="display: none; float: left;">
									&nbsp;&nbsp;作品数量: <input name="more_opus" value="${z60.more_opus}" size="10"
									 type="text">
									</div>
								</td>
							</tr>
						</tbody>
						<tbody id="z31_type" style="display: none;">
							<tr>
								<td width="150">类别</td>
								<td><input name="right_type" value="录音制品" <c:if test="${z60.right_type=='录音制品'}">checked="checked"</c:if>
									 type="radio">录音制品 </input> <input name="right_type"
									value="录像制品" type="radio" <c:if test="${z60.right_type=='录像制品'}">checked="checked"</c:if>>录像制品 </input> <input name="right_type"
									value="表演" type="radio" <c:if test="${z60.right_type=='表演'}">checked="checked"</c:if>>表演</input> <input name="right_type"
									value="版式设计" type="radio" <c:if test="${z60.right_type=='版式设计'}">checked="checked"</c:if>>版式设计</input> <input name="right_type"
									value="广播电视" type="radio" <c:if test="${z60.right_type=='广播电视'}">checked="checked"</c:if>>广播、电视 </input></td>
							</tr>
						</tbody>
						<tbody id="z41_type" style="display: none;">
							<tr>
								<td>期刊英文名称</td>
								<td><input class="inputtext" name="opus_en_name" size="50"
									tips="请填写期刊英文名称" valid="required" errmsg="期刊英文名称不能为空!"
									length="200" onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()" type="text" value="<c:out value='${z60.opus_en_name}' />">
								</td>
							</tr>
						</tbody>
						
						<tbody>
							<tr>
								<td><span id="numname">原登记号</span></td>
								<td><input class="inputtext" name="original_reg_num"
									valid="required" length="40" tips="请填写原登记号" errmsg="原登记号不能为空!"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()" type="text" value="<c:out value='${z60.original_reg_num}' />">
								</td>
							</tr>
							<tr>
								<td><span class="datacell">原受理号</span></td>
								<td><input class="inputtext" name="orig_admissible_num"
									length="40" tips="请填写原受理号"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()" type="text" value="<c:out value='${z60.orig_admissible_num}' />">
								</td>

							</tr>
							<tr>
								<td><span id="datename">原登记日期</span></td>
								<td><input type="text" name="register_date"
									tips="请填写原登记日期<br/>格式：YYYY-MM-DD" onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()" onclick="fPopCalendar(this, this);"  value="${z60.register_date}" readonly>
								</td>
							</tr>
							<tr>

								<td class="td_blue" colspan="2">
									<div style="float: left;">
										<b>变更或补充信息</b>
									</div>
									<div style="float: right;">
										<input value="添加"
											onclick="addrow('#content_cru','#content_src');"
											tips="添加变更或补充信息" onmousemove="show_tips(this, event,100)"
											onmouseout="hidden_tips()" type="button">
									</div>
									<div style="float: right;" id="change_tip"></div>
								</td>
							</tr>

							<tr>
								<td colspan="2" class="contentbg" style="padding: 0px;">
									<table id="changeItems" width="100%" cellpadding="0"
										cellspacing="0" bordercolor="#ccccc">
										<tbody>
								<tr>
									<td
										style="border-bottom: 1px solid #ccc; border-right: 1px solid #ccc">申请类型</td>
									<td colspan="2" title="若涉及作品本身部分内容变化时，则为补充登记"
										style="border-bottom: 1px solid #ccc;"><input
										name="change_type" value="变更登记" <c:if test="${z60.change_type=='变更登记'}">checked="checked"</c:if>
										 onclick="showApplyingType(1);" type="radio">变更登记 <input
											name="change_type" value="补充登记"
											onclick="showApplyingType(2);" type="radio" <c:if test="${z60.change_type=='补充登记'}">checked="checked"</c:if>>补充登记 
									</td>

								</tr>
										</tbody>
										<tbody id="applying1" style="">
											<tr>
												<td style="width: 150px;">变更项</td>
												<td style="width: 150px;">变更前内容</td>
												<td>变更后内容</td>
											</tr>

										</tbody>
										<tbody id="applying2" style="display: none;">
											<tr>
												<td style="width: 150px;">补充项</td>
												<td style="width: 150px;">补充前内容</td>
												<td>补充后内容</td>
											</tr>
										</tbody>
										<tbody id="content_src" style="display: none;">
											<tr>
												<td style="width: 150px;"><textarea name="item"
														wrap="hard" rows="2" style="width: 130px"
														tips="请填写变更项或补充项" valid="required" errmsg="变更项或补充项不能为空！"
														length="100" onmousemove="show_tips(this, event,350)"
														onmouseout="hidden_tips()"></textarea>
												</td>
												<td><textarea name="before_content" wrap="hard"
														rows="2" tips="请填写变更前内容或补充前内容" valid="required"
														errmsg="变更前内容或补充前内容不能为空！" length="200"
														onmousemove="show_tips(this, event,350)"
														onmouseout="hidden_tips()"></textarea>
												</td>
												<td>
													<div style="float: left;">
														<textarea name="after_content" wrap="hard" rows="2"
															tips="请填写变更后内容或补充后内容" valid="required"
															errmsg="变更后内容或补充后内容不能为空！" length="200"
															onmousemove="show_tips(this, event,350)"
															onmouseout="hidden_tips()"></textarea>
													</div>
													<div style="float: right;">
														<input value="删除" onclick="deleterow(this);" type="button">
													</div>
												</td>
											</tr>
										</tbody>
											<c:forEach items="${infos}" var="info1" varStatus="statss">
										<tbody id="content_cru" style="">
											<tr>
												<td style="width: 150px;"><textarea class="focus"
														name="item" wrap="hard" rows="2" style="width: 130px"
														tips="请填写变更项或补充项" valid="required" errmsg="变更项或补充项不能为空！"
														length="100" onmousemove="show_tips(this, event,350)"
														onmouseout="hidden_tips()">${info1.item}</textarea>
												</td>
												<td><textarea class="focus" name="before_content"
														wrap="hard" rows="2" tips="请填写变更前内容或补充前内容"
														valid="required" errmsg="变更前内容或补充前内容不能为空！" length="200"
														onmousemove="show_tips(this, event,350)"
														onmouseout="hidden_tips()">${info1.before_content}</textarea>
												</td>

												<td><textarea class="focus" name="after_content"
														wrap="hard" rows="2" tips="请填写变更后内容或补充后内容说明"
														valid="required" errmsg="变更后内容或补充后内容不能为空！" length="200"
														onmousemove="show_tips(this, event,350)"
														onmouseout="hidden_tips()">${info1.after_content}</textarea>
												<c:if test="${statss.index!=0}">
												<div style="float: right;">
														<input value="删除" onclick="deleterow(this);" type="button">
													</div>
													</c:if>
												</td>
											</tr>
										</tbody>
										</c:forEach>
									</table>
								</td>
							</tr>
							<tr>
								<td><span id="rname">变更理由说明</span></td>
								<td><textarea class="focus" name="reason" wrap="hard"
										rows="2" cols="200" style="width: 450px;" tips="请填写变更理由说明"
										valid="required" errmsg="变更理由说明不能为空！" length="200"
										onmousemove="show_tips(this, event,350)"
										onmouseout="hidden_tips()">${z60.reason}</textarea>
								</td>
							</tr>
							<tr>
								<td class="td_blue" colspan="2"><b>申请办理信息</b>
								</td>

							</tr>
						</tbody>
						<tbody id="apply1" style="">
							<tr>
								<td>申请方式</td>
								<td><input name="apply_type1" value="由著作权人申请"
									<c:if test="${z60.apply_type=='由著作权人申请'}">checked="checked"</c:if> 
									onclick="agent_showOrHide(this)" type="radio">由著作权人申请
										<input name="apply_type1" value="代理人"
										 <c:if test="${z60.apply_type=='代理人'}">checked="checked"</c:if>
										onclick="agent_showOrHide(this)" type="radio">由代理人申请 
								</td>
							</tr>

						</tbody>

						<tbody id="apply2" style="display: none;">
							<tr>
								<td>申请方式</td>
								<td><input name="apply_type2" value="由转让方或许可方申请"
									<c:if test="${z60.apply_type=='由转让方或许可方申请'}">checked="checked"</c:if> type="radio">由转让方或许可方申请 
								<input name="apply_type2" value="由受让方或被许可方申请" <c:if test="${z60.apply_type=='由受让方或被许可方申请'}">checked="checked"</c:if> type="radio">由受让方或被许可方申请
											<input name="agent2" value="ok" onclick="s_h_agent(this)"
											type="checkbox" <c:if test="${z60.agent=='ok'}">checked="checked"</c:if>>由代理人申请 
								</td>
							</tr>

						</tbody>

						<tbody id="apply3" style="display: none;">
							<tr>
								<td>申请方式</td>
								<td><input name="apply_type3" value="由权利人申请"
								 <c:if test="${z60.apply_type=='由权利人申请'}">checked="checked"</c:if>
									checked="checked" onclick="agent_showOrHide(this)" type="radio">由权利人申请
							<input name="apply_type3" value="代理人"
							  <c:if test="${z60.apply_type=='代理人'}">checked="checked"</c:if>
							 onclick="agent_showOrHide(this)" type="radio">由代理人申请 
								</td>
							</tr>
						</tbody>

						<tbody id="apply4" style="display: none;">
							<tr>
								<td>申请方式</td>
								<td><input name="apply_type4" value="由转让方或许可方申请"
									checked="checked" type="radio" <c:if test="${z60.apply_type=='由转让方或许可方申请'}">checked="checked"</c:if>>由转让方或许可方申请 
									<input name="apply_type4" value="由受让方或被许可方申请" 
									 type="radio" <c:if test="${z60.apply_type=='由受让方或被许可方申请'}">checked="checked"</c:if>>由受让方或被许可方申请
											<input name="agent4" value="ok" onclick="s_h_agent(this)"
											type="checkbox"  <c:if test="${z60.agent=='ok'}">checked="checked"</c:if>>由代理人申请 
								</td>
							</tr>

						</tbody>
<TBODY style="DISPLAY: none" id="apply5">
  <TR>
    <TD>申请方式</TD>
    <TD><INPUT name="apply_type5" value="由出质人办理 " <c:if test="${z60.apply_type=='由出质人办理'}">checked="checked"</c:if> 
      type=radio>由出质人办理 <INPUT name="apply_type5" value="由质权人办理 " type="radio" <c:if test="${z60.apply_type=='由质权人办理'}">checked="checked"</c:if>>由质权人办理 
      <INPUT onclick=s_h_agent(this) name="agent5" value="无代理人"  <c:if test="${z60.agent=='ok'}">checked="checked"</c:if> 
      type=checkbox>由代理人申请 </TD></TR></TBODY>
      
						<tbody>
							<tr>
								<td class="td_blue" colspan="2">
									<div style="float: left;">
										<b>申请人信息</b>
									</div>
									<div style="float: right;">
										<input onclick="setPeopleValue('sqr');" value="我是申请人"
											tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"
											onmousemove="show_tips(this,event,150)"
											onmouseout="hidden_tips()" type="button">
									</div>
									</td>
							</tr>
							<tr>
								<td>姓名或单位名称</td>
								<td><input id="sqrname" name="sqrname" size="35" value="<c:out value='${sqr.name}' />"
									tips="请准确填写申请人的姓名或单位名称，并与其他材料保持一致，申请人应是全部权利人，如果是多个申请人，请点击‘增加申请人’按钮，进行添加，并且在申请人签章处，要求是申请人的全部签章"
									valid="required" errmsg="姓名或单位名称不能为空！" length="100"
									onmousemove="show_tips(this, event,400)"
									onmouseout="hidden_tips()">
								</td>

							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>详细地址</td>

								<td><input id="sqraddress" name="sqraddress" size="35"
									value="<c:out value='${sqr.address}' />" tips="请填写详细地址" valid="required" errmsg="不能为空！"
									length="100" onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>邮政编码</td>
								<td><input id="sqrpostCode" name="sqrpostCode" size="35"
									value="<c:out value='${sqr.post_code}' />" tips="请填写邮政编码" valid="required|isZip"
									errmsg="不能为空！|格式为6位数字" length="6"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>联系人</td>

								<td><input id="sqrcontactPerson" name="sqrcontactPerson"
									size="35" value="<c:out value='${sqr.contact_person}' />" tips="请填写联系人" valid="required"
									errmsg="不能为空！" length="40"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>电话号码</td>
								<td><input id="sqrphone" name="sqrphone"
									title="格式如010-8888888" size="35" value="<c:out value='${sqr.phone}' />" tips="请填写联系电话号码"
									length="40" valid="required" errmsg="电话号码不能为空！"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>E-mail</td>
								<td>
									<INPUT id="sqremail" onmousemove="show_tips(this, event,350)" onmouseout="hidden_tips()" value="<c:out value='${sqr.email}' />"
									name="sqremail" size=35  tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|格式不对！" valid="required|isEmail">
								</td>
							</tr>
							<tr>
								<td>手机号码</td>
								<td>
									<INPUT id=sqrmobile onmousemove="show_tips(this, event,300)" 
									onmouseout="hidden_tips()" value="<c:out value='${sqr.mobile}' />"
									name=sqrmobile size=35 tips="可选项，但如果要填写请按照正确的格式" 
                                   length="30" errmsg="手机号码不能为空！" valid="required">
								</td>
							</tr>
							<tr>
								<td>传真号码</td>

								<td><input id="sqrfax" name="sqrfax" size="35" value="<c:out value='${sqr.fax}' />"
									tips="可选项，但如果要填写请按照正确的格式" length="30"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>


						</tbody>
						<tbody id="A-0" style="display: none;">
							<tr>
								<td class="td_blue" colspan="2"><div style="float: left;">
										<b>代理人信息</b>
									</div>
									<div style="float: right;">
										<input onclick="setPeopleValue('dlr');" value="我是代理人"
											tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"
											onmousemove="show_tips(this,event,150)"
											onmouseout="hidden_tips()" type="button">
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									&nbsp;&nbsp;&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<br>
										&nbsp;&nbsp;&nbsp;&nbsp;<input class="inputtext"
										name="agent_desc" size="60" value="<c:out value='${z60.agent_desc}' />"
										tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" valid="required"
										errmsg="代理权限说明不能为空！" length="180"
										onmousemove="show_tips(this, event,350)"
										onmouseout="hidden_tips()" type="text">
								</td>
							</tr>
							<tr>

								<td>姓名或单位名称</td>
								<td><input id="dlrname" name="dlrname" size="35" value="<c:out value='${dlr.name}' />"
									tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" valid="required"
									errmsg="不能为空！" length="100"
									onmousemove="show_tips(this, event,400)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>详细地址</td>
								<td><input id="dlraddress" name="dlraddress" size="35"
									value="<c:out value='${dlr.address}' />" tips="请填写详细地址" valid="required" errmsg="不能为空！"
									length="100" onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>

							<tr>
								<td>邮政编码</td>
								<td><input id="dlrpostCode" name="dlrpostCode" size="35"
									value="<c:out value='${dlr.post_code}' />" tips="请填写邮政编码" valid="required|isZip"
									errmsg="不能为空！|格式为6位数字" length="6"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>联系人</td>
								<td><input id="dlrcontactPerson" name="dlrcontactPerson"
									size="35" value="<c:out value='${dlr.contact_person}' />" tips="请填写联系人" valid="required"
									errmsg="不能为空！" length="40"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>

							<tr>
								<td>电话号码</td>
								<td><input id="dlrphone" name="dlrphone"
									title="格式如010-8888888" size="35" value="<c:out value='${dlr.phone}' />"
									tips="可选项，但如果要填写请按照正确的格式"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							
                           <TR>
                          <TD class=contentbg>E-mail</TD>
                          <TD class=contentbg><INPUT id="dlremail" onmousemove="show_tips(this, event,400)" 
                          onmouseout="hidden_tips()"
                           name="dlremail"  size=35 value="<c:out value='${dlr.email}' />"
                        tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
      errmsg="不能为空！|格式不对！" valid="required|isEmail"></TD>
                      </TR>

                       <TR>
                          <TD class=contentbg>手机号码</TD>
                           <TD class=contentbg><INPUT id="dlrmobile" name="dlrmobile" 
                             onmousemove="show_tips(this, event,300)" onmouseout="hidden_tips()" 
                             size=35 tips="可选项，但如果要填写请按照正确的格式" value="<c:out value='${dlr.mobile}' />"
                          length="30" errmsg="手机号码不能为空！" valid="required"></TD>
                       </TR>
  		
							<tr>
								<td>传真号码</td>
								<td><input id="dlrfax" name="dlrfax" size="35" value="<c:out value='${dlr.fax}' />"
									tips="可选项，但如果要填写请按照正确的格式" length="30"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">

	</td></tr></tbody>
					</table>
				</div>
<TABLE align=center>
  <TBODY>
  <TR height=5>
    <TD colSpan=3></TD></TR>
    <c:choose>
     <c:when test="${person != null && person == 'manage'}">
     </c:when>
     <c:otherwise>
  <TR>
   <TD width=50>
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/z61/update/save');"/>
    </TD>
    <TD width=50>
    <input type="button" value="提交" id="subId" class="m_button" onClick="subForm('${pageContext.request.contextPath}/application/z61/update/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></c:otherwise></c:choose></TBODY></TABLE></FORM></DIV>
</body>
<script language="javascript">
$(document).ready(function(){
	var registerType = "${z60.register_type}";
	if(registerType == 'z21') {
		$("#z21_opus").css("display", "block");
		$("#numname").html("原备案号");
		$("#datacell").html("原受理号");
		$("#datename").html("原备案日期");
		$("#apply1").css("display", "none");
		$("#apply2").css("display", "block");
	}
	if(registerType == 'z31') {
		$("#z31_type").css("display", "block");
		$("#apply1").css("display", "none");
		$("#apply3").css("display", "block");
	}
	
	if(registerType == 'z41') {
		$("#nametype").html("期刊中文名称");
		$("#z41_type").css("display", "block");
		$("#apply1").css("display", "none");
		$("#apply4").css("display", "block");
	}
	if(registerType == 'z51') {
		$("#apply1").css("display", "none");
		$("#apply5").css("display", "block");
	}
	var agent = "${z60.agent}";
	if(agent=='ok') {
		$("#A-0").css("display", "block");
	}
	var apply_type = "${z60.apply_type}";
	if(apply_type == '代理人') {
		$("#A-0").css("display", "block");
	}
	var changeType="${z60.change_type}";
	if(changeType=='变更登记') {
		$("#applying1").css("display", "block");
		$("#applying2").css("display", "none");
		$("#rname").html("变更理由说明");
	} else {
		$("#applying1").css("display", "none");
		$("#applying2").css("display", "block");
		$("#rname").html("补充理由说明");
	}
});
	
</script>
</html>
