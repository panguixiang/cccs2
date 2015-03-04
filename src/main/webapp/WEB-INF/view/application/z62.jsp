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
<script type="text/javascript">
function setDefaultChecked(obj)
{
	var len = document.all(obj).length;
	// 将radio按钮组的第一个radio设为选中状态
	document.all(obj)[0].checked=true;
	for(var i=1; i<len; i++)
	{
		if(document.all(obj)[i].checked)
		{
			document.all(obj)[i].checked=false;
		}
	}
}

	function changeRegType(value) {
		$("#A-0").css("display", "none");
		$("#more_opusId").val("");
		$("#opusEngNameId").val("");
		setDefaultChecked('apply_type1');
		setDefaultChecked('apply_type2');
		setDefaultChecked('apply_type3');
		setDefaultChecked('apply_type4');	
		setDefaultChecked('apply_type5');
	    setDefaultChecked('evidence'); 
		setDefaultChecked('right_type');
		setDefaultChecked('rev_type');
		$("#revevidence").css("display", "none");
		document.all('agent2').checked=false;
		document.all('agent4').checked=false;
		document.all('agent5').checked=false;
		if (value == 1) {
			$("#nametype").html("作品名称");
			$("#numname").html("原登记号");
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
	 function show_evidence(type){
		 if(type==1){
			 $("#revevidence").css("display","none");
		 }else{
			 $("#revevidence").css("display","block")
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
			撤销作品著作权和合同登记申请表<span><img id="myhelp"
				tips="撤销作品著作权和合同登记申请表总说明" onmousemove="show_tips(this,event,300)"
				onmouseout="hidden_tips()" src="${pageContext.request.contextPath}/images/icon_alert.gif" width="18">
			</span>
		</div>
		<div class="app_table">
			<form action=""
				method="post" name="generalForm" id="generalForm">
				<div id="SoftRegSLZYD">
					<table width="100%" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#CCCCCC">

						<tbody>
							<tr>
								<td class="td_blue" colspan="2"><b>原登记信息</b>
								</td>
							</tr>
							<tr>
					<td width="150">原登记类型</td>
					<td><input name="register_type" value="z11"
					 checked="checked" onclick="changeRegType(1);" type="radio">作品著作权登记&nbsp;&nbsp;
					<input name="register_type" value="z21"
						onclick="changeRegType(2);" type="radio">著作权合同备案&nbsp;&nbsp;
							<input name="register_type" value="z31"
								onclick="changeRegType(3);" type="radio">与著作权相关权利事项登记&nbsp;&nbsp;
								<br> <input name="register_type" value="z41"
								onclick="changeRegType(4);" type="radio">重印国外期刊合同登记&nbsp;&nbsp;
                         <input name="register_type" value="z51"
								onclick="changeRegType(5);" type="radio">著作权质权登记&nbsp;&nbsp;
												
								</td>
							</tr>
							<tr>
								<td><span id="nametype">作品名称</span>
								</td>
								<td>
									<div style="float: left;">
										<input class="focus" name="opus_name" size="40" tips="请填写作品名称"
											valid="required" errmsg="名称不能为空!" length="200"
											onmousemove="show_tips(this, event,350)"
											onmouseout="hidden_tips()" type="text">
									</div>
									<div id="z21_opus" style="display: none; float: left;">
										&nbsp;&nbsp;
									作品数量: <input name="more_opus" id="more_opusId" value="" size="10"
											type="text" tips="填写授权或转让合同中涉及的具体作品数量，请填写阿拉伯数字！"  errmsg="作品数量不能为空!">
									</div></td>
							</tr>
						</tbody>
						<tbody id="z31_type" style="display: none;">
							<tr>
								<td width="150">类别</td>
								<td><input name="right_type" value="录音制品" checked="checked"
									type="radio">录音制品 </input> <input name="right_type"
									value="录像制品" type="radio">录像制品 </input> <input
									name="right_type" value="表演" type="radio">表演</input> <input
									name="right_type" value="版式设计" type="radio">版式设计</input> <input
									name="right_type" value="广播、电视" type="radio">广播、电视 </input>
								</td>
							</tr>
						</tbody>

						<tbody id="z41_type" style="display: none;">
							<tr>
								<td>期刊英文名称</td>
								<td><input class="inputtext" name="opus_en_name" id="opusEngNameId" size="40"
									tips="请填写期刊英文名称" valid="required" errmsg="期刊英文名称不能为空!"
									length="200" onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()" type="text">
								</td>
							</tr>

						</tbody>
						<tbody>
							<tr>
								<td><span id="numname">原登记号</span>
								</td>
								<td><input class="inputtext" name="original_reg_num"
									valid="required" length="40" tips="请填写原登记号" errmsg="原登记号不能为空!"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()" type="text">
								</td>
							</tr>
							<tr>
								<td><span id="datename">原登记日期</span>
								</td>
								<td>
								<input type="text" name="register_date"
									tips="请填写原登记日期<br/>格式：YYYY-MM-DD"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()" onclick="fPopCalendar(this, this);"  readonly >
								</td>
							</tr>
							<tr>
              				<td colspan="2" class="td_blue"><B>撤销简况</B></td>
            				</tr>
							<tr>
						</tbody>
								<td>撤销类型</td>
								<td><input name="rev_type" value="申请人申请撤销" checked="checked"
									onclick="show_evidence(1)" type="radio">申请人申请撤销 <input
										name="rev_type" value="第三方申请撤销" onclick="show_evidence(2)"
										type="radio">第三方申请撤销 <input name="rev_type" value="其他"
											onclick="show_evidence(1)" type="radio">其他 
								</td>
							</tr>
							
						
						<tbody id="revevidence" style="display: none;">
							<tr>
								<td>撤销依据</td>
								<td><input name="evidence" value="生效判决" checked="checked"
									type="radio">生效判决 <input name="evidence" value="仲裁决定"
										type="radio">仲裁决定 <input name="evidence"
											value="著作权行政处罚决定" type="radio">著作权行政处罚决定 
								</td>
							</tr>
						</tbody>
							<tr>
								<td><span id="z62rn">撤销登记理由</span>
								</td>
								<td><textarea class="focus" name="reason" wrap="hard"
										rows="2" cols="200" style="width: 500px;" tips="请填写撤销理由"
										valid="required" errmsg="撤销理由不能为空!" length="200"
										onmousemove="show_tips(this, event,350)"
										onmouseout="hidden_tips()"></textarea></td>
							</tr>
							<tr>
								<td colspan="2" class="td_blue"><B>申请办理信息</B>
								</td>
							</tr>
						
						<tbody id="apply1" style="">
							<tr>
								<td>申请方式</td>
								<td><input name="apply_type1" value="由著作权人申请"
									checked="checked" onclick="agent_showOrHide(this)" type="radio">由著作权人申请
										<input name="apply_type1" value="代理人"
										onclick="agent_showOrHide(this)" type="radio">由代理人申请 
								</td>
							</tr>

						</tbody>

						<tbody id="apply2" style="display: none;">
							<tr>
								<td>申请方式</td>
								<td><input name="apply_type2" value="由转让方或许可方申请"
									checked="checked" type="radio">由转让方或许可方申请 <input
										name="apply_type2" value="由受让方或被许可方申请" type="radio">由受让方或被许可方申请
											<input name="agent2" value="ok" onclick="s_h_agent(this)"
											type="checkbox">由代理人申请 
								</td>
							</tr>

						</tbody>

						<tbody id="apply3" style="display: none;">
							<tr>
								<td>申请方式</td>
								<td><input name="apply_type3" value="由权利人申请"
									checked="checked" onclick="agent_showOrHide(this)" type="radio">由权利人申请
										<input name="apply_type3" value="代理人"
										onclick="agent_showOrHide(this)" type="radio">由代理人申请 
								</td>
							</tr>

						</tbody>

						<tbody id="apply4" style="display: none;">
							<tr>
								<td>申请方式</td>
								<td><input name="apply_type4" value="由转让方或许可方申请"
									checked="checked" type="radio">由转让方或许可方申请 <input
										name="apply_type4" value="由受让方或被许可方申请" type="radio">由受让方或被许可方申请
											<input name="agent4" value="ok" onclick="s_h_agent(this)"
											type="checkbox">由代理人申请 
								</td>
							</tr>

						</tbody>

                  <tbody id="apply5" style="display: none;">
					<tr>
						<td>申请方式</td>
						<td><input name="apply_type5" value="由出质人办理"
							checked="checked" type="radio">由出质人办理 <input
							name="apply_type5" value="由质权人办理" type="radio">由质权人办理
							<input name="agent5" value="ok" onclick="s_h_agent(this)"
									type="checkbox">由代理人申请
								</td>
							</tr>

						</tbody>
						<tbody>
							<tr>
								<td class="td_blue" colspan="2">
									<div style="float: left;">
										<b>申请人信息</b>
									</div>
									 <DIV style="FLOAT: right"><INPUT onmousemove="show_tips(this, event,150)" onmouseout="hidden_tips()" 
      onclick="setPeopleValue('sqr');" value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV>
								</td>
							</tr>
							<tr>
								<td>姓名或单位名称</td>
								<td><input id="sqrname" name="sqrname" size="35" value=""
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
									value="" tips="请填写详细地址" valid="required" errmsg="不能为空！"
									length="100" onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>邮政编码</td>
								<td><input id="sqrpostCode" name="sqrpostCode" size="35"
									value="" tips="请填写邮政编码" valid="required|isZip"
									errmsg="不能为空！|格式为6位数字" length="6" onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>联系人</td>

								<td><input id="sqrcontactPerson" name="sqrcontactPerson"
									size="35" value="" tips="请填写联系人" valid="required"
									errmsg="不能为空！" length="40"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>电话号码</td>
								<td><input id="sqrphone" name="sqrphone"
									title="格式如010-8888888" size="35" value=""
								tips="请填写联系电话号码" length="40" valid="required" errmsg="电话号码不能为空！"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>E-mail</td>

								<td><input id="sqremail" name="sqremail" size="35" value=""
									 tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
                                    errmsg="不能为空！|格式不对！" valid="required|isEmail"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>手机号码</td>
								<td><input id="sqrmobile" name="sqrmobile" size="35"
									value="" 
								  tips="可选项，但如果要填写请按照正确的格式" length="30" errmsg="手机号码不能为空！" valid="required"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>传真号码</td>

								<td><input id="sqrfax" name="sqrfax" size="35" value=""
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
								  <DIV style="FLOAT: right"><INPUT onmousemove="show_tips(this, event,150)" onmouseout=hidden_tips() 
      onclick="setPeopleValue('dlr');" value=我是代理人 type=button tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入">
      </DIV>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									&nbsp;&nbsp;&nbsp;&nbsp;申请人委托下述代理人办理登记事宜，具体委托事项如下：<br>
										&nbsp;&nbsp;&nbsp;&nbsp;<input class="inputtext"
										name="agent_desc" size="60" value=""
										tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" valid="required"
										errmsg="代理权限说明不能为空！" length="180"
										onmousemove="show_tips(this, event,350)"
										onmouseout="hidden_tips()" type="text">
								</td>
							</tr>
							<tr>

								<td>姓名或单位名称</td>
								<td><input id="dlrname" name="dlrname" size="35" value=""
									tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" valid="required"
									errmsg="不能为空！" length="100"
									onmousemove="show_tips(this, event,400)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>详细地址</td>
								<td><input id="dlraddress" name="dlraddress" size="35"
									value="" tips="请填写详细地址" valid="required" errmsg="不能为空！"
									length="100" onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>

							<tr>
								<td>邮政编码</td>
								<td><input id="dlrpostCode" name="dlrpostCode" size="35"
									value="" tips="请填写邮政编码" valid="required|isZip"
									errmsg="不能为空！|格式为6位数字" length="6"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>联系人</td>
								<td><input id="dlrcontactPerson" name="dlrcontactPerson"
									size="35" value="" tips="请填写联系人" valid="required"
									errmsg="不能为空！" length="40"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>

							<tr>
								<td>电话号码</td>
								<td><input id="dlrphone" name="dlrphone"
									title="格式如010-8888888" size="35" value=""
									tips="请填写联系电话号码" length="40" valid="required" errmsg="电话号码不能为空！"
									onmousemove="show_tips(this, event,350)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>E-mail</td>
								<td><input id="dlremail" name="dlremail" size="35" value=""
									 tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的补正信息我们会以EMAIL通知" length="50" 
                                    errmsg="不能为空！|格式不对！" valid="required|isEmail"
									onmousemove="show_tips(this, event,400)"
									onmouseout="hidden_tips()">
								</td>
							</tr>

							<tr>
								<td>手机号码</td>
								<td><input id="dlrmobile" name="dlrmobile" size="35"
									value=""
									  tips="可选项，但如果要填写请按照正确的格式" length="30" errmsg="手机号码不能为空！" valid="required"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
								</td>
							</tr>
							<tr>
								<td>传真号码</td>
								<td><input id="dlrfax" name="dlrfax" size="35" value=""
									tips="可选项，但如果要填写请按照正确的格式" length="30"
									onmousemove="show_tips(this, event,300)"
									onmouseout="hidden_tips()">
</td></tr></tbody>
					</table>
				</div>
<TABLE align=center style="background-color:#fff;">
  <TBODY>
  <TR height=5>
    <TD colSpan=3></TD></TR>
  <TR>
   <TD width=50>
   <input type="button" value="保存" id="saveId" 
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/z62/save');"/>
    </TD>
    <TD width=50>
    <input type="button" value="提交" id="subId" class="m_button" onClick="subForm('${pageContext.request.contextPath}/application/z62/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR></TBODY></TABLE></FORM></DIV></div>
</body>
</html>
