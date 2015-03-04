<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线填报-作品著作权登记申请表</title>
<link href="${pageContext.request.contextPath}/css/table.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/form/formStyle.css"
 rel="stylesheet" type="text/css" />
<script language="JavaScript"
	src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script language="JavaScript"
	src="${pageContext.request.contextPath}/js/common.js"></script>
<script language="JavaScript"
	src="${pageContext.request.contextPath}/js/form/createPeoples.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/form/checkform.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/pgCalPicker.js"></script>
</head>
<body>
	<div class="table_content">
		<div id="my_tips"
			style="font-size: 12px; color: black; padding: 6px; text-align: left; position: absolute; line-height: 18px; background-color: #FFFFE6; width: 600; height: 16; border: 1px solid orange; display: none; filter: progid:DXImageTransform.Microsoft.Shadow(color=#999999, direction=135, strength=3 ); left: 0; top: 5"></div>
		<div class="table_title">
			作品著作权登记申请表<span><img id="myhelp"
				tips="本表适用于著作权人原始取得或继承遗产、接受遗赠取得著作权的作品的登记申请。通过转让、赠与或互易取得著作权的作品登记请填写著作权合同备案申请表。"
				onmousemove="show_tips(this,event,300)" onmouseout="hidden_tips()"
				src="${pageContext.request.contextPath}/images/icon_alert.gif" width="18"></span>
		</div>
		<div class="app_table">
			<form action="" method="post" name="generalForm" id="generalFormId">
			<input type="hidden" id="flowNumId" name="flow_num" value="${z11.flow_num}" ></input>
				<div id="SoftRegSLZYD">
					<table width="100%" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#CCCCCC">
						<tbody>
							<tr>
								<td class="td_blue" colspan="2"><b>作品信息</b></td>
							</tr>

							<tr>
								<td width="130">作品名称</td>
								<td><input id="opus_nameid" name="opus_name"
									value="<c:out value='${z11.opus_name}' />" size="60"
									style="width: 500px;"
									tips="填写申请著作权登记的作品名称。各种申请材料中的作品名称应填写一致。如有英文名称请在名称后面的括号内标注。例：作品名称（Opus&nbsp;Name）；作品名称允许使用英文填写。"
									valid="required" errmsg="作品名称不能为空！" length="200"
									onmousemove="show_tips(this,event,500)"
									onmouseout="hidden_tips()" type="text"></td>
							</tr>
							<tr>
								<td tips="申请者根据表格提供的作品选项选择填写。"
									onmousemove="show_tips(this,event,500)"
									onmouseout="hidden_tips()">作品类别</td>
								<td><c:choose>
										<c:when test="${z11.opus_type=='文字'}">
											<input name="opus_type" value="文字"
												onclick="showOpusType();" checked="checked"
												tips="文字作品是指小说、诗词、散文、论文等以文字形式表现的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="文字"
												onclick="showOpusType();"
												tips="文字作品是指小说、诗词、散文、论文等以文字形式表现的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>文字<c:choose>
										<c:when test="${z11.opus_type=='口述'}">
											<input name="opus_type" value="口述"
												onclick="showOpusType();" checked="checked"
												tips="口述作品是指即兴的演说、授课、法庭辩论等以口头语言形式表现的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="口述"
												onclick="showOpusType();"
												tips="口述作品是指即兴的演说、授课、法庭辩论等以口头语言形式表现的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>口述<c:choose>
										<c:when test="${z11.opus_type=='音乐'}">
											<input name="opus_type" value="音乐"
												onclick="showOpusType();" checked="checked"
												tips="音乐作品是指歌曲、交响乐等能够演唱或者演奏的带词或者不带词的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="音乐"
												onclick="showOpusType();"
												tips="音乐作品是指歌曲、交响乐等能够演唱或者演奏的带词或者不带词的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose> 音乐<c:choose>
										<c:when test="${z11.opus_type=='戏剧'}">
											<input name="opus_type" value="戏剧"
												onclick="showOpusType();" checked="checked"
												tips="戏剧作品是指话剧、歌剧、地方戏等供舞台演出的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="戏剧"
												onclick="showOpusType();"
												tips="戏剧作品是指话剧、歌剧、地方戏等供舞台演出的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>戏剧<c:choose>
										<c:when test="${z11.opus_type=='曲艺'}">
											<input name="opus_type" value="曲艺"
												onclick="showOpusType();" checked="checked"
												tips="曲艺作品是指相声、快书、大鼓、评书等以说唱为主要形式表演的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="曲艺"
												onclick="showOpusType();"
												tips="曲艺作品是指相声、快书、大鼓、评书等以说唱为主要形式表演的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose> 曲艺<c:choose>
										<c:when test="${z11.opus_type=='舞蹈'}">
											<input name="opus_type" value="舞蹈"
												onclick="showOpusType();" checked="checked"
												tips="舞蹈作品是指通过连续的动作、姿势、表情等表现思想情感的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="舞蹈"
												onclick="showOpusType();"
												tips="舞蹈作品是指通过连续的动作、姿势、表情等表现思想情感的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose> 舞蹈<c:choose>
										<c:when test="${z11.opus_type=='杂技艺术'}">
											<input name="opus_type" value="杂技艺术"
												onclick="showOpusType();" checked="checked"
												tips="杂技艺术作品是指杂技、魔术、马戏等通过形体动作和技巧表现的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="杂技艺术"
												onclick="showOpusType();"
												tips="杂技艺术作品是指杂技、魔术、马戏等通过形体动作和技巧表现的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose> 杂技艺术<c:choose>
										<c:when test="${z11.opus_type=='美术'}">
											<input name="opus_type" value="美术"
												onclick="showOpusType();" checked="checked"
												tips="美术作品是指绘画、书法、雕塑等以线条、色彩或者其他方式构成的有审美意义的平面或者立体的造型艺术作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="美术"
												onclick="showOpusType();"
												tips="美术作品是指绘画、书法、雕塑等以线条、色彩或者其他方式构成的有审美意义的平面或者立体的造型艺术作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>美术<br>
								<c:choose>
										<c:when test="${z11.opus_type=='建筑'}">
											<input name="opus_type" value="建筑" checked="checked"
												onclick="showOpusType();"
												tips="建筑作品是指以建筑物或者构筑物形式表现的有审美意义的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="建筑"
												onclick="showOpusType();"
												tips="建筑作品是指以建筑物或者构筑物形式表现的有审美意义的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>建筑<c:choose>
										<c:when test="${z11.opus_type=='摄影'}">
											<input name="opus_type" value="摄影" checked="checked"
												onclick="showOpusType();"
												tips="摄影作品是指借助器械在感光材料或者其他介质上记录客观物体形象的艺术作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="摄影"
												onclick="showOpusType();"
												tips="摄影作品是指借助器械在感光材料或者其他介质上记录客观物体形象的艺术作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>摄影 <c:choose>
										<c:when test="${z11.opus_type=='电影和类似摄制电影方法创作的作品'}">
											<input name="opus_type" value="电影和类似摄制电影方法创作的作品"
												checked="checked" onclick="showOpusType();"
												tips="电影作品和类似摄制电影的方法创作的作品是指摄制在一定介质上，由一系列有伴音或者无伴音的画面组成，并且借助适当装置放映或者以其他方式传播的作品；
            选择此项时，应在下面说明中写明具体类型，可选择类型包括：电影、电视剧、电视电影、纪录片、科教片、动画片等。应写长度，多集的请写明集数。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="电影和类似摄制电影方法创作的作品"
												onclick="showOpusType();"
												tips="电影作品和类似摄制电影的方法创作的作品是指摄制在一定介质上，由一系列有伴音或者无伴音的画面组成，并且借助适当装置放映或者以其他方式传播的作品；
            选择此项时，应在下面说明中写明具体类型，可选择类型包括：电影、电视剧、电视电影、纪录片、科教片、动画片等。应写长度，多集的请写明集数。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>电影和类似摄制电影方法创作的作品&nbsp; <c:choose>
										<c:when test="${z11.opus_type=='图形'}">
											<input name="opus_type" value="图形" checked="checked"
												onclick="showOpusType();"
												tips="图形作品是指为施工、生产绘制的工程设计图、产品设计图，以及反映地理现象、说明事物原理或者结构的地图、示意图等作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="图形"
												onclick="showOpusType();"
												tips="图形作品是指为施工、生产绘制的工程设计图、产品设计图，以及反映地理现象、说明事物原理或者结构的地图、示意图等作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>图形<c:choose>
										<c:when test="${z11.opus_type=='模型'}">
											<input name="opus_type" value="模型"
												onclick="showOpusType();" checked="checked"
												tips="模型作品是指为展示、试验或者观测等用途，根据物体的形状和结构，按照一定比例制成的立体作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="模型"
												onclick="showOpusType();"
												tips="模型作品是指为展示、试验或者观测等用途，根据物体的形状和结构，按照一定比例制成的立体作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>模型<c:choose>
										<c:when test="${z11.opus_type=='其他'}">
											<input name="opus_type" value="其他"
												onclick="showOpusType();" checked="checked"
												tips="其他作品是指根据法律法规规定的其他作品。选择“其他”类时，请说明具体情况"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_type" value="其他"
												onclick="showOpusType();"
												tips="其他作品是指根据法律法规规定的其他作品。选择“其他”类时，请说明具体情况"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>其他<br> 说明： <textarea id="opustypedescId"
											name="opus_type_desc" cols="25" rows="2"
											style="width: 500px;"
											tips="选择“其他”类时，在此说明具体情况&nbsp;&lt;br&gt;选择“电影作品和类似摄制电影的方法创作的作品”，在此说明具体类型，可选择类型包括：电影、电视剧、电视电影、纪录片、科教片、动画片等。应写长度，多集的请写明级数。"
											length="200" onmousemove="show_tips(this,event,400)"
											onmouseout="hidden_tips()">${z11.opus_type_desc}</textarea></td>
							</tr>
							<tr>
								<tr>
									<td class="td_blue" colspan="2"><div style="float: left;">
											<B>著作权人信息</B>
										</div>

										<div style="float: right;">
										<INPUT style="WIDTH: 90px" 
										onmousemove="show_tips(this,event,200)"
										onmouseout="hidden_tips()" onclick="setMyCustor('${sessionScope.CCCS_NAME}','name1')" value=我是著作权人
										 type=button tips="著作权人为当前注册用户，可以从用户注册信息中提取相关信息，无需再输入"> 
											<input name="button" style="width: 90px;"
												onclick="addRow('personData');" value="增加著作权人"
												tips="多个著作权人点这里添加" onmousemove="show_tips(this,event,150)"
												onmouseout="hidden_tips()" type="button">
										</div></td>
								</tr>
								<!-- 著作权人信息 -->

								<TD
									style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
									id=personData class=contentbg colSpan=2>
										<div style="display: none;">
											<table width="100%" border="1" cellpadding="0"
												cellspacing="0" bordercolor="#CCCCCC">
												<tbody>
													<tr>
														<td width="130">姓名/单位名称</td>
														<td width="50">类别</td>
														<td
														tips="在下拉菜单中选择：&nbsp;&lt;br&gt;公民：包括中国公民，权利人所属国或者经常居住地国同中国签订有协议或共同参加国际条约的外国人、无国籍人，或者录音、录像制品首先在中国境内制作完成；表演首先在中国境内发生；版式涉及首先在中国境内出版；广播电视首先在中国境内播放；&nbsp;&lt;br&gt;法人：包括：企业法人，指获得法人资格的企业；&nbsp;&lt;br&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机关法人，指获得法人资格的国家机关；&nbsp;&lt;br&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事业单位法人，指获得法人资格的事业单位；&nbsp;&lt;br&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;社会团体法人，指获得法人资格的社会团体。&nbsp;&lt;br&gt;其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。"
														onmousemove="show_tips(this,event,500)"
														onmouseout="hidden_tips()"><select name="peopleType1">
															<option value="自然人">自然人</option>
															<optgroup label="法人">

																<option value="企业法人">企业法人</option>

																<option value="机关法人">机关法人</option>

																<option value="事业单位法人">事业单位法人</option>

																<option value="社会团体法人">社会团体法人</option>

															</optgroup>

															<option value="其他组织">其他组织</option>

															<option value="其他">其他</option>

													</select></td>
													<td>国籍</td>
													<td><select name="country1" style="width: 115px;">
															<option selected="true" value="中国">中国</option>
															<option value="智利">智利</option>
															<option value="直布罗陀">直布罗陀</option>

															<option value="乍得">乍得</option>
															<option value="赞比亚">赞比亚</option>
															<option value="越南">越南</option>
															<option value="约旦">约旦</option>
															<option value="英属印度洋区">英属印度洋区</option>
															<option value="英属维尔京群岛">英属维尔京群岛</option>

															<option value="英国">英国</option>
															<option value="印度尼西亚">印度尼西亚</option>
															<option value="印度">印度</option>
															<option value="意大利">意大利</option>
															<option value="以色列">以色列</option>
															<option value="伊朗">伊朗</option>

															<option value="伊拉克">伊拉克</option>
															<option value="也门">也门</option>
															<option value="亚美尼亚">亚美尼亚</option>
															<option value="牙买加">牙买加</option>
															<option value="叙利亚">叙利亚</option>
															<option value="匈牙利">匈牙利</option>

															<option value="新西兰">新西兰</option>
															<option value="新喀里多尼亚">新喀里多尼亚</option>
															<option value="新加坡">新加坡</option>
															<option value="小奥特兰群岛">小奥特兰群岛</option>
															<option value="象牙海岸">象牙海岸</option>
															<option value="希腊">希腊</option>

															<option value="西班牙">西班牙</option>
															<option value="乌兹别克斯坦">乌兹别克斯坦</option>
															<option value="乌拉圭">乌拉圭</option>
															<option value="乌克兰">乌克兰</option>
															<option value="乌干达">乌干达</option>
															<option value="文莱达鲁萨兰">文莱达鲁萨兰</option>

															<option value="委内瑞拉">委内瑞拉</option>
															<option value="危地马拉">危地马拉</option>
															<option value="瓦努阿图">瓦努阿图</option>
															<option value="瓦利斯/富图纳岛">瓦利斯/富图纳岛</option>
															<option value="托客劳群岛">托客劳群岛</option>
															<option value="土库曼斯坦">土库曼斯坦</option>

															<option value="土耳其">土耳其</option>
															<option value="图瓦卢">图瓦卢</option>
															<option value="突尼斯">突尼斯</option>
															<option value="统一">统一</option>
															<option value="特立尼达/多巴哥">特立尼达/多巴哥</option>
															<option value="特克斯/凯科斯岛">特克斯/凯科斯岛</option>

															<option value="汤加">汤加</option>
															<option value="坦桑尼亚">坦桑尼亚</option>
															<option value="泰国">泰国</option>
															<option value="塔吉克斯坦">塔吉克斯坦</option>
															<option value="索马里">索马里</option>
															<option value="所罗门群岛">所罗门群岛</option>

															<option value="苏里南">苏里南</option>
															<option value="苏丹">苏丹</option>
															<option value="斯洛文尼亚">斯洛文尼亚</option>
															<option value="斯洛伐克">斯洛伐克</option>
															<option value="斯里兰卡">斯里兰卡</option>
															<option value="圣文森特">圣文森特</option>

															<option value="圣马力诺">圣马力诺</option>
															<option value="圣路西亚">圣路西亚</option>
															<option value="圣基茨和那维斯">圣基茨和那维斯</option>
															<option value="圣赫勒拿岛">圣赫勒拿岛</option>
															<option value="圣多马/普林西比">圣多马/普林西比</option>
															<option value="圣诞岛">圣诞岛</option>

															<option value="沙特阿拉伯">沙特阿拉伯</option>
															<option value="塞舌尔群岛">塞舌尔群岛</option>
															<option value="塞浦路斯">塞浦路斯</option>
															<option value="塞内加尔">塞内加尔</option>
															<option value="塞拉利昂">塞拉利昂</option>
															<option value="塞尔维亚及门的">塞尔维亚及门的</option>

															<option value="塞尔维亚/Monten">塞尔维亚/Monten</option>
															<option value="萨摩亚, 美国">萨摩亚, 美国</option>
															<option value="萨摩亚">萨摩亚</option>
															<option value="萨尔瓦多">萨尔瓦多</option>
															<option value="撒哈拉西部">撒哈拉西部</option>
															<option value="瑞士">瑞士</option>

															<option value="瑞典">瑞典</option>
															<option value="日本">日本</option>
															<option value="乔治亚">乔治亚</option>
															<option value="葡萄牙">葡萄牙</option>
															<option value="皮特肯岛">皮特肯岛</option>
															<option value="帕劳">帕劳</option>

															<option value="诺福克岛">诺福克岛</option>
															<option value="挪威">挪威</option>
															<option value="纽埃群岛">纽埃群岛</option>
															<option value="尼日利亚">尼日利亚</option>
															<option value="尼日尔">尼日尔</option>
															<option value="尼加拉瓜">尼加拉瓜</option>

															<option value="尼泊尔">尼泊尔</option>
															<option value="瑙鲁">瑙鲁</option>
															<option value="南三维治岛">南三维治岛</option>
															<option value="南极洲">南极洲</option>
															<option value="南非">南非</option>
															<option value="纳米比亚">纳米比亚</option>

															<option value="墨西哥">墨西哥</option>
															<option value="莫桑比克">莫桑比克</option>
															<option value="摩纳哥">摩纳哥</option>
															<option value="摩洛哥">摩洛哥</option>
															<option value="摩尔多瓦">摩尔多瓦</option>
															<option value="缅甸">缅甸</option>

															<option value="秘鲁">秘鲁</option>
															<option value="密克罗尼西亚">密克罗尼西亚</option>
															<option value="孟加拉国">孟加拉国</option>
															<option value="蒙塞拉特岛">蒙塞拉特岛</option>
															<option value="蒙古">蒙古</option>
															<option value="美属维尔京群岛">美属维尔京群岛</option>

															<option value="美国">美国</option>
															<option value="毛里塔尼亚">毛里塔尼亚</option>
															<option value="毛里求斯">毛里求斯</option>
															<option value="马约特岛">马约特岛</option>
															<option value="马提尼克">马提尼克</option>
															<option value="马绍尔群岛">马绍尔群岛</option>

															<option value="马其顿">马其顿</option>
															<option value="马里">马里</option>
															<option value="马来西亚">马来西亚</option>
															<option value="马拉维">马拉维</option>
															<option value="马耳他">马耳他</option>
															<option value="马尔代夫">马尔代夫</option>

															<option value="马达加斯加">马达加斯加</option>
															<option value="罗马尼亚">罗马尼亚</option>
															<option value="卢旺达">卢旺达</option>
															<option value="卢森堡">卢森堡</option>
															<option value="列支敦士登">列支敦士登</option>
															<option value="立陶宛">立陶宛</option>

															<option value="利比亚">利比亚</option>
															<option value="利比里亚">利比里亚</option>
															<option value="黎巴嫩">黎巴嫩</option>
															<option value="老挝">老挝</option>
															<option value="莱索托">莱索托</option>
															<option value="拉脱维亚">拉脱维亚</option>

															<option value="库科纳群岛">库科纳群岛</option>
															<option value="肯尼亚">肯尼亚</option>
															<option value="克罗地亚">克罗地亚</option>
															<option value="科威特">科威特</option>
															<option value="科摩罗群岛">科摩罗群岛</option>
															<option value="科克群岛">科克群岛</option>

															<option value="开曼群岛">开曼群岛</option>
															<option value="卡塔尔">卡塔尔</option>
															<option value="喀麦隆">喀麦隆</option>
															<option value="津巴布韦">津巴布韦</option>
															<option value="捷克共和国">捷克共和国</option>
															<option value="柬埔寨">柬埔寨</option>

															<option value="加蓬">加蓬</option>
															<option value="加纳">加纳</option>
															<option value="加拿大">加拿大</option>
															<option value="几内亚比绍">几内亚比绍</option>
															<option value="几内亚">几内亚</option>
															<option value="吉尔吉斯斯坦">吉尔吉斯斯坦</option>

															<option value="吉布提">吉布提</option>
															<option value="基里巴斯">基里巴斯</option>
															<option value="洪都拉斯">洪都拉斯</option>
															<option value="荷属安的列斯岛">荷属安的列斯岛</option>
															<option value="荷德/马克多纳岛">荷德/马克多纳岛</option>
															<option value="荷 兰">荷 兰</option>

															<option value="韩国">韩国</option>
															<option value="海地">海地</option>
															<option value="哈萨克斯坦">哈萨克斯坦</option>
															<option value="圭亚那">圭亚那</option>
															<option value="关岛">关岛</option>
															<option value="瓜达洛普">瓜达洛普</option>

															<option value="古巴">古巴</option>
															<option value="格陵兰岛">格陵兰岛</option>
															<option value="格林纳达">格林纳达</option>
															<option value="哥斯答黎加">哥斯答黎加</option>
															<option value="哥伦比亚">哥伦比亚</option>
															<option value="刚果民主共和国">刚果民主共和国</option>

															<option value="刚果">刚果</option>
															<option value="冈比亚">冈比亚</option>
															<option value="福克兰群岛">福克兰群岛</option>
															<option value="佛得角群岛">佛得角群岛</option>
															<option value="芬兰">芬兰</option>
															<option value="斐济">斐济</option>

															<option value="菲律宾">菲律宾</option>
															<option value="梵蒂冈城">梵蒂冈城</option>
															<option value="法属圣特里特">法属圣特里特</option>
															<option value="法属圭亚那">法属圭亚那</option>
															<option value="法属波利尼西亚">法属波利尼西亚</option>
															<option value="法罗群岛">法罗群岛</option>

															<option value="法国">法国</option>
															<option value="厄瓜多尔">厄瓜多尔</option>
															<option value="俄罗斯联邦">俄罗斯联邦</option>
															<option value="多米尼加共和国">多米尼加共和国</option>
															<option value="多米尼加">多米尼加</option>
															<option value="多哥">多哥</option>

															<option value="东帝汶岛">东帝汶岛</option>
															<option value="德国">德国</option>
															<option value="丹麦">丹麦</option>
															<option value="赤道几内亚">赤道几内亚</option>
															<option value="布维群岛">布维群岛</option>
															<option value="布隆迪">布隆迪</option>

															<option value="布基纳法索">布基纳法索</option>
															<option value="不丹">不丹</option>
															<option value="伯利兹">伯利兹</option>
															<option value="博茨瓦纳">博茨瓦纳</option>
															<option value="玻利维亚">玻利维亚</option>
															<option value="波兰">波兰</option>

															<option value="波黑">波黑</option>
															<option value="波多黎哥">波多黎哥</option>
															<option value="冰岛">冰岛</option>
															<option value="比利时">比利时</option>
															<option value="贝宁">贝宁</option>
															<option value="北马里亚纳">北马里亚纳</option>

															<option value="北朝鲜">北朝鲜</option>
															<option value="保加利亚">保加利亚</option>
															<option value="百慕大群岛">百慕大群岛</option>
															<option value="白俄罗斯">白俄罗斯</option>
															<option value="巴西">巴西</option>
															<option value="巴拿马">巴拿马</option>

															<option value="巴林">巴林</option>
															<option value="巴拉圭">巴拉圭</option>
															<option value="巴基斯坦">巴基斯坦</option>
															<option value="巴哈马(群岛)">巴哈马(群岛)</option>
															<option value="巴布亚新几内亚">巴布亚新几内亚</option>
															<option value="巴巴多斯">巴巴多斯</option>

															<option value="奥地利">奥地利</option>
															<option value="澳大利亚">澳大利亚</option>
															<option value="安提瓜和巴布达">安提瓜和巴布达</option>
															<option value="安圭拉岛">安圭拉岛</option>
															<option value="安哥拉">安哥拉</option>
															<option value="安道尔">安道尔</option>

															<option value="爱沙尼亚">爱沙尼亚</option>
															<option value="爱尔兰">爱尔兰</option>
															<option value="埃塞俄比亚">埃塞俄比亚</option>
															<option value="埃立特里亚">埃立特里亚</option>
															<option value="埃及">埃及</option>
															<option value="阿塞拜疆">阿塞拜疆</option>

															<option value="阿曼">阿曼</option>
															<option value="阿鲁巴">阿鲁巴</option>
															<option value="阿联酋">阿联酋</option>
															<option value="阿根廷">阿根廷</option>
															<option value="阿富汗">阿富汗</option>
															<option value="阿尔及利亚">阿尔及利亚</option>

															<option value="阿尔巴尼亚">阿尔巴尼亚</option>
															<option value="SZ">斯威士兰</option>
															<option value="St.Pier,Miquel.">St.Pier,Miquel.</option>
															<option value="CAR">CAR</option>

													</select></td>
												</tr>

												<tr>
													<td rowspan="3"><textarea name="name1" rows="3"
															style="width: 120px; height: 70px; overflow: hidden; text-align: left;"
															tips="著作权人是自然人的，应填写真实姓名。&nbsp;&lt;br&gt;著作权人是法人或其他组织的，应填写名称。&nbsp;&lt;br&gt;姓名或名称应与身份证明文件一致。"
															valid="required" errmsg="著作权人姓名或名称不能为空！" length="100"
															onmousemove="show_tips(this,event,350)"
															onmouseout="hidden_tips()"></textarea></td>
													<td>省份</td>
													<td><select name="province1" inputsn="10">
															<option value="">-请选择-</option>

															<option value="境外">境外</option>
															<option value="北京" selected="true">北京</option>
															<option value="上海">上海</option>
															<option value="天津">天津</option>
															<option value="内蒙古">内蒙古</option>
															<option value="山西">山西</option>
															<option value="河北">河北</option>
															<option value="辽宁">辽宁</option>

															<option value="吉林">吉林</option>
															<option value="黑龙江">黑龙江</option>
															<option value="江苏">江苏</option>
															<option value="安徽">安徽</option>
															<option value="山东">山东</option>
															<option value="浙江">浙江</option>
															<option value="江西">江西</option>
															<option value="福建">福建</option>
															<option value="湖南">湖南</option>

															<option value="湖北">湖北</option>
															<option value="河南">河南</option>
															<option value="广东">广东</option>
															<option value="海南">海南</option>
															<option value="广西">广西</option>
															<option value="贵州">贵州</option>
															<option value="四川">四川</option>
															<option value="云南">云南</option>
															<option value="陕西">陕西</option>

															<option value="甘肃">甘肃</option>
															<option value="宁夏">宁夏</option>
															<option value="青海">青海</option>
															<option value="新疆">新疆</option>
															<option value="西藏">西藏</option>
															<option value="重庆">重庆</option>
															<option value="香港">香港</option>
															<option value="澳门">澳门</option>
															<option value="台湾">台湾</option>
													</select></td>

													<td>城市</td>
													<td><input name="city1" size="15" value=""
														maxlength="100" tips="请填写城市" valid="required"
														errmsg="城市不能为空！" length="50"
														onmousemove="show_tips(this,event,150)"
														onmouseout="hidden_tips()"></td>
												</tr>
												<tr>
													<td>证件类型</td>
													<td><select name="idTypes1" style="width: 115px;">

															<option value="居民身份证">居民身份证</option>

															<option value="军官证">军官证</option>

															<option value="护照">护照</option>

															<option value="企业法人营业执照">企业法人营业执照</option>

															<option value="组织机构代码证书">组织机构代码证书</option>

															<option value="事业单位法人证书">事业单位法人证书</option>

															<option value="社团法人证书">社团法人证书</option>

															<option value="营业执照">营业执照</option>

															<option value="其他有效证件">其他有效证件</option>

													</select></td>
													<td>证件号码</td>

													<td><input name="idNumber1" size="15" value=""
														maxlength="40" tips="填写证件上的号码" valid="required"
														errmsg="证件号码不能为空！" length="60"
														onmousemove="show_tips(this,event,150)"
														onmouseout="hidden_tips()"></td>
												</tr>
												<tr>
													<td>署名情况</td>
													<td colspan="3"
														tips="在下拉菜单中选择，包括：&nbsp;&lt;br&gt;本名，即著作权人的真实姓名；&nbsp;&lt;br&gt;匿名，即不署名，选择即可；&nbsp;&lt;br&gt;别名，选择此项应填写与著作权人姓名不一致的署名。"
														onmousemove="show_tips(this,event,500)"
														onmouseout="hidden_tips()">
														<div style="float: left;">
															<select name="sign1" onchange="s_h_sign(this)">

																<option value="本名">本名</option>

																<option value="别名">别名</option>

																<option value="匿名">匿名</option>
															</select>
														</div>
														<div style="DISPLAY: none;float: left;">
															&nbsp;&nbsp;别名为：<input name="opusSign1" size="12"
																value="" tips="请填写别名" valid="required" errmsg="别名不能为空！"
																length="20" onmousemove="show_tips(this,event,500)"
																onmouseout="hidden_tips()">
														</div>
															<DIV style="FLOAT: right">
																<INPUT onclick=deleteRow(this); value=删除 type=button>
															</DIV>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
									
                               <c:forEach items="${cps}" var="cp" varStatus="statuss">
									<DIV>
										<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
											<TBODY>
												<TR>
													<td width="130">姓名/单位名称</td>
													<td width="50">类别</td>
													<td
															tips="在下拉菜单中选择：&nbsp;&lt;br&gt;公民：包括中国公民，权利人所属国或者经常居住地国同中国签订有协议或共同参加国际条约的外国人、无国籍人，或者录音、录像制品首先在中国境内制作完成；表演首先在中国境内发生；版式涉及首先在中国境内出版；广播电视首先在中国境内播放；&nbsp;&lt;br&gt;法人：包括：企业法人，指获得法人资格的企业；&nbsp;&lt;br&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机关法人，指获得法人资格的国家机关；&nbsp;&lt;br&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事业单位法人，指获得法人资格的事业单位；&nbsp;&lt;br&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;社会团体法人，指获得法人资格的社会团体。&nbsp;&lt;br&gt;其他组织：是指经登记并领取营业执照或社会团体登记证，但不具有法人资格的组织。"
															onmousemove="show_tips(this,event,500)"
															onmouseout="hidden_tips()"><select
															name="peopleType1">
																<option value="自然人"
																	<c:if test="${cp.people_type=='自然人'}">selected="true"</c:if>>自然人</option>
																<optgroup label="法人">

																	<option value="企业法人"
																		<c:if test="${cp.people_type=='企业法人'}">selected="true"</c:if>>企业法人</option>

																	<option value="机关法人"
																		<c:if test="${cp.people_type=='机关法人'}">selected="true"</c:if>>机关法人</option>

																	<option value="事业单位法人"
																		<c:if test="${cp.people_type=='事业单位法人'}">selected="true"</c:if>>事业单位法人</option>

																	<option value="社会团体法人"
																		<c:if test="${cp.people_type=='社会团体法人'}">selected="true"</c:if>>社会团体法人</option>

																</optgroup>

																<option value="其他组织"
																	<c:if test="${cp.people_type=='其他组织'}">selected="true"</c:if>>其他组织</option>

																<option value="其他"
																	<c:if test="${cp.people_type=='其他'}">selected="true"</c:if>>其他</option>

														</select></td>
														<td>国籍</td>
														<td><select name="country1" style="width: 115px;">
																<option value="中国"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>中国</option>

																<option value="智利"
																	<c:if test="${cp.country=='智利'}">selected="true"</c:if>>智利</option>
																<option value="直布罗陀"
																	<c:if test="${cp.country=='直布罗陀'}">selected="true"</c:if>>直布罗陀</option>
																<option value="乍得"
																	<c:if test="${cp.country=='乍得'}">selected="true"</c:if>>乍得</option>
																<option value="赞比亚"
																	<c:if test="${cp.country=='赞比亚'}">selected="true"</c:if>>赞比亚</option>
																<option value="越南"
																	<c:if test="${cp.country=='越南'}">selected="true"</c:if>>越南</option>
																<option value="约旦"
																	<c:if test="${cp.country=='约旦'}">selected="true"</c:if>>约旦</option>

																<option value="英属印度洋区"
																	<c:if test="${cp.country=='英属印度洋区'}">selected="true"</c:if>>英属印度洋区</option>
																<option value="英属维尔京群岛"
																	<c:if test="${cp.country=='英属维尔京群岛'}">selected="true"</c:if>>英属维尔京群岛</option>
																<option value="英国"
																	<c:if test="${cp.country=='英国'}">selected="true"</c:if>>英国</option>
																<option value="印度尼西亚"
																	<c:if test="${cp.country=='印度尼西亚'}">selected="true"</c:if>>印度尼西亚</option>
																<option value="印度"
																	<c:if test="${cp.country=='印度'}">selected="true"</c:if>>印度</option>
																<option value="意大利"
																	<c:if test="${cp.country=='意大利'}">selected="true"</c:if>>意大利</option>

																<option value="以色列"
																	<c:if test="${cp.country=='以色列'}">selected="true"</c:if>>以色列</option>
																<option value="伊朗"
																	<c:if test="${cp.country=='伊朗'}">selected="true"</c:if>>伊朗</option>
																<option value="伊拉克"
																	<c:if test="${cp.country=='伊拉克'}">selected="true"</c:if>>伊拉克</option>
																<option value="也门"
																	<c:if test="${cp.country=='也门'}">selected="true"</c:if>>也门</option>
																<option value="亚美尼亚"
																	<c:if test="${cp.country=='亚美尼亚'}">selected="true"</c:if>>亚美尼亚</option>
																<option value="牙买加"
																	<c:if test="${cp.country=='牙买加'}">selected="true"</c:if>>牙买加</option>

																<option value="叙利亚"
																	<c:if test="${cp.country=='叙利亚'}">selected="true"</c:if>>叙利亚</option>
																<option value="匈牙利"
																	<c:if test="${cp.country=='匈牙利'}">selected="true"</c:if>>匈牙利</option>
																<option value="新西兰"
																	<c:if test="${cp.country=='新西兰'}">selected="true"</c:if>>新西兰</option>
																<option value="新喀里多尼亚"
																	<c:if test="${cp.country=='新喀里多尼亚'}">selected="true"</c:if>>新喀里多尼亚</option>
																<option value="新加坡"
																	<c:if test="${cp.country=='新加坡'}">selected="true"</c:if>>新加坡</option>
																<option value="小奥特兰群岛"
																	<c:if test="${cp.country=='小奥特兰群岛'}">selected="true"</c:if>>小奥特兰群岛</option>

																<option value="象牙海岸"
																	<c:if test="${cp.country=='象牙海岸'}">selected="true"</c:if>>象牙海岸</option>
																<option value="希腊"
																	<c:if test="${cp.country=='希腊'}">selected="true"</c:if>>希腊</option>
																<option value="西班牙"
																	<c:if test="${cp.country=='西班牙'}">selected="true"</c:if>>西班牙</option>
																<option value="乌兹别克斯坦"
																	<c:if test="${cp.country=='乌兹别克斯坦'}">selected="true"</c:if>>乌兹别克斯坦</option>
																<option value="乌拉圭"
																	<c:if test="${cp.country=='乌拉圭'}">selected="true"</c:if>>乌拉圭</option>
																<option value="乌克兰"
																	<c:if test="${cp.country=='乌克兰'}">selected="true"</c:if>>乌克兰</option>

																<option value="乌干达"
																	<c:if test="${cp.country=='乌干达'}">selected="true"</c:if>>乌干达</option>
																<option value="文莱达鲁萨兰"
																	<c:if test="${cp.country=='文莱达鲁萨兰'}">selected="true"</c:if>>文莱达鲁萨兰</option>
																<option value="委内瑞拉"
																	<c:if test="${cp.country=='委内瑞拉'}">selected="true"</c:if>>委内瑞拉</option>
																<option value="危地马拉"
																	<c:if test="${cp.country=='危地马拉'}">selected="true"</c:if>>危地马拉</option>
																<option value="瓦努阿图"
																	<c:if test="${cp.country=='瓦努阿图'}">selected="true"</c:if>>瓦努阿图</option>
																<option value="瓦利斯/富图纳岛"
																	<c:if test="${cp.country=='瓦利斯/富图纳岛'}">selected="true"</c:if>>瓦利斯/富图纳岛</option>

																<option value="托客劳群岛"
																	<c:if test="${cp.country=='托客劳群岛'}">selected="true"</c:if>>托客劳群岛</option>
																<option value="土库曼斯坦"
																	<c:if test="${cp.country=='土库曼斯坦'}">selected="true"</c:if>>土库曼斯坦</option>
																<option value="土耳其"
																	<c:if test="${cp.country=='土耳其'}">selected="true"</c:if>>土耳其</option>
																<option value="图瓦卢"
																	<c:if test="${cp.country=='图瓦卢'}">selected="true"</c:if>>图瓦卢</option>
																<option value="突尼斯"
																	<c:if test="${cp.country=='突尼斯'}">selected="true"</c:if>>突尼斯</option>
																<option value="统一"
																	<c:if test="${cp.country=='统一'}">selected="true"</c:if>>统一</option>

																<option value="特立尼达/多巴哥"
																	<c:if test="${cp.country=='特立尼达/多巴哥'}">selected="true"</c:if>>特立尼达/多巴哥</option>
																<option value="特克斯/凯科斯岛"
																	<c:if test="${cp.country=='特克斯/凯科斯岛'}">selected="true"</c:if>>特克斯/凯科斯岛</option>
																<option value="汤加"
																	<c:if test="${cp.country=='汤加'}">selected="true"</c:if>>汤加</option>
																<option value="坦桑尼亚"
																	<c:if test="${cp.country=='坦桑尼亚'}">selected="true"</c:if>>坦桑尼亚</option>
																<option value="泰国"
																	<c:if test="${cp.country=='泰国'}">selected="true"</c:if>>泰国</option>
																<option value="塔吉克斯坦"
																	<c:if test="${cp.country=='塔吉克斯坦'}">selected="true"</c:if>>塔吉克斯坦</option>

																<option value="索马里"
																	<c:if test="${cp.country=='索马里'}">selected="true"</c:if>>索马里</option>
																<option value="所罗门群岛"
																	<c:if test="${cp.country=='所罗门群岛'}">selected="true"</c:if>>所罗门群岛</option>
																<option value="苏里南"
																	<c:if test="${cp.country=='苏里南'}">selected="true"</c:if>>苏里南</option>
																<option value="苏丹"
																	<c:if test="${cp.country=='苏丹'}">selected="true"</c:if>>苏丹</option>
																<option value="斯洛文尼亚"
																	<c:if test="${cp.country=='斯洛文尼亚'}">selected="true"</c:if>>斯洛文尼亚</option>
																<option value="斯洛伐克"
																	<c:if test="${cp.country=='斯洛伐克'}">selected="true"</c:if>>斯洛伐克</option>

																<option value="斯里兰卡"
																	<c:if test="${cp.country=='斯里兰卡'}">selected="true"</c:if>>斯里兰卡</option>
																<option value="圣文森特"
																	<c:if test="${cp.country=='圣文森特'}">selected="true"</c:if>>圣文森特</option>
																<option value="圣马力诺"
																	<c:if test="${cp.country=='圣马力诺'}">selected="true"</c:if>>圣马力诺</option>
																<option value="圣路西亚"
																	<c:if test="${cp.country=='圣路西亚'}">selected="true"</c:if>>圣路西亚</option>
																<option value="圣基茨和那维斯"
																	<c:if test="${cp.country=='圣基茨和那维斯'}">selected="true"</c:if>>圣基茨和那维斯</option>
																<option value="圣赫勒拿岛"
																	<c:if test="${cp.country=='圣赫勒拿岛'}">selected="true"</c:if>>圣赫勒拿岛</option>

																<option value="圣多马/普林西比"
																	<c:if test="${cp.country=='圣多马/普林西比'}">selected="true"</c:if>>圣多马/普林西比</option>
																<option value="圣诞岛"
																	<c:if test="${cp.country=='圣诞岛'}">selected="true"</c:if>>圣诞岛</option>
																<option value="沙特阿拉伯"
																	<c:if test="${cp.country=='沙特阿拉伯'}">selected="true"</c:if>>沙特阿拉伯</option>
																<option value="塞舌尔群岛"
																	<c:if test="${cp.country=='塞舌尔群岛'}">selected="true"</c:if>>塞舌尔群岛</option>
																<option value="塞浦路斯"
																	<c:if test="${cp.country=='塞浦路斯'}">selected="true"</c:if>>塞浦路斯</option>
																<option value="塞内加尔"
																	<c:if test="${cp.country=='塞内加尔'}">selected="true"</c:if>>塞内加尔</option>

																<option value="塞拉利昂"
																	<c:if test="${cp.country=='塞拉利昂'}">selected="true"</c:if>>塞拉利昂</option>
																<option value="塞尔维亚及门的"
																	<c:if test="${cp.country=='塞尔维亚及门的'}">selected="true"</c:if>>塞尔维亚及门的</option>
																<option value="塞尔维亚/Monten"
																	<c:if test="${cp.country=='塞尔维亚/Monten'}">selected="true"</c:if>>塞尔维亚/Monten</option>
																<option value="萨摩亚, 美国"
																	<c:if test="${cp.country=='萨摩亚, 美国'}">selected="true"</c:if>>萨摩亚,
																	美国</option>
																<option value="萨摩亚"
																	<c:if test="${cp.country=='萨摩亚'}">selected="true"</c:if>>萨摩亚</option>
																<option value="萨尔瓦多"
																	<c:if test="${cp.country=='萨尔瓦多'}">selected="true"</c:if>>萨尔瓦多</option>

																<option value="撒哈拉西部"
																	<c:if test="${cp.country=='撒哈拉西部'}">selected="true"</c:if>>撒哈拉西部</option>
																<option value="瑞士"
																	<c:if test="${cp.country=='瑞士'}">selected="true"</c:if>>瑞士</option>
																<option value="瑞典"
																	<c:if test="${cp.country=='瑞典'}">selected="true"</c:if>>瑞典</option>
																<option value="日本"
																	<c:if test="${cp.country=='日本'}">selected="true"</c:if>>日本</option>
																<option value="乔治亚"
																	<c:if test="${cp.country=='乔治亚'}">selected="true"</c:if>>乔治亚</option>
																<option value="葡萄牙"
																	<c:if test="${cp.country=='葡萄牙'}">selected="true"</c:if>>葡萄牙</option>

																<option value="皮特肯岛"
																	<c:if test="${cp.country=='皮特肯岛'}">selected="true"</c:if>>皮特肯岛</option>
																<option value="帕劳"
																	<c:if test="${cp.country=='帕劳'}">selected="true"</c:if>>帕劳</option>
																<option value="诺福克岛"
																	<c:if test="${cp.country=='诺福克岛'}">selected="true"</c:if>>诺福克岛</option>
																<option value="挪威"
																	<c:if test="${cp.country=='挪威'}">selected="true"</c:if>>挪威</option>
																<option value="纽埃群岛"
																	<c:if test="${cp.country=='纽埃群岛'}">selected="true"</c:if>>纽埃群岛</option>
																<option value="尼日利亚"
																	<c:if test="${cp.country=='尼日利亚'}">selected="true"</c:if>>尼日利亚</option>

																<option value="尼日尔"
																	<c:if test="${cp.country=='尼日尔'}">selected="true"</c:if>>尼日尔</option>
																<option value="尼加拉瓜"
																	<c:if test="${cp.country=='尼加拉瓜'}">selected="true"</c:if>>尼加拉瓜</option>
																<option value="尼泊尔"
																	<c:if test="${cp.country=='尼泊尔'}">selected="true"</c:if>>尼泊尔</option>
																<option value="瑙鲁"
																	<c:if test="${cp.country=='瑙鲁'}">selected="true"</c:if>>瑙鲁</option>
																<option value="南三维治岛"
																	<c:if test="${cp.country=='南三维治岛'}">selected="true"</c:if>>南三维治岛</option>
																<option value="南极洲"
																	<c:if test="${cp.country=='南极洲'}">selected="true"</c:if>>南极洲</option>

																<option value="南非"
																	<c:if test="${cp.country=='南非'}">selected="true"</c:if>>南非</option>
																<option value="纳米比亚"
																	<c:if test="${cp.country=='纳米比亚'}">selected="true"</c:if>>纳米比亚</option>
																<option value="墨西哥"
																	<c:if test="${cp.country=='墨西哥'}">selected="true"</c:if>>墨西哥</option>
																<option value="莫桑比克"
																	<c:if test="${cp.country=='莫桑比克'}">selected="true"</c:if>>莫桑比克</option>
																<option value="摩纳哥"
																	<c:if test="${cp.country=='摩纳哥'}">selected="true"</c:if>>摩纳哥</option>
																<option value="摩洛哥"
																	<c:if test="${cp.country=='摩洛哥'}">selected="true"</c:if>>摩洛哥</option>

																<option value="摩尔多瓦"
																	<c:if test="${cp.country=='摩尔多瓦'}">selected="true"</c:if>>摩尔多瓦</option>
																<option value="缅甸"
																	<c:if test="${cp.country=='缅甸'}">selected="true"</c:if>>缅甸</option>
																<option value="秘鲁"
																	<c:if test="${cp.country=='秘鲁'}">selected="true"</c:if>>秘鲁</option>
																<option value="密克罗尼西亚"
																	<c:if test="${cp.country=='密克罗尼西亚'}">selected="true"</c:if>>密克罗尼西亚</option>
																<option value="孟加拉国"
																	<c:if test="${cp.country=='孟加拉国'}">selected="true"</c:if>>孟加拉国</option>
																<option value="蒙塞拉特岛"
																	<c:if test="${cp.country=='蒙塞拉特岛'}">selected="true"</c:if>>蒙塞拉特岛</option>

																<option value="蒙古"
																	<c:if test="${cp.country=='蒙古'}">selected="true"</c:if>>蒙古</option>
																<option value="美属维尔京群岛"
																	<c:if test="${cp.country=='美属维尔京群岛'}">selected="true"</c:if>>美属维尔京群岛</option>
																<option value="美国"
																	<c:if test="${cp.country=='美国'}">selected="true"</c:if>>美国</option>
																<option value="毛里塔尼亚"
																	<c:if test="${cp.country=='毛里塔尼亚'}">selected="true"</c:if>>毛里塔尼亚</option>
																<option value="毛里求斯"
																	<c:if test="${cp.country=='毛里求斯'}">selected="true"</c:if>>毛里求斯</option>
																<option value="马约特岛"
																	<c:if test="${cp.country=='马约特岛'}">selected="true"</c:if>>马约特岛</option>

																<option value="马提尼克"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>马提尼克</option>
																<option value="马绍尔群岛"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>马绍尔群岛</option>
																<option value="马其顿"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>马其顿</option>
																<option value="马里"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>马里</option>
																<option value="马来西亚"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>马来西亚</option>
																<option value="马拉维"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>马拉维</option>

																<option value="马耳他"
																	<c:if test="${cp.country=='马耳他'}">selected="true"</c:if>>马耳他</option>
																<option value="马尔代夫"
																	<c:if test="${cp.country=='马尔代夫'}">selected="true"</c:if>>马尔代夫</option>
																<option value="马达加斯加"
																	<c:if test="${cp.country=='马达加斯加'}">selected="true"</c:if>>马达加斯加</option>
																<option value="罗马尼亚"
																	<c:if test="${cp.country=='罗马尼亚'}">selected="true"</c:if>>罗马尼亚</option>
																<option value="卢旺达"
																	<c:if test="${cp.country=='卢旺达'}">selected="true"</c:if>>卢旺达</option>
																<option value="卢森堡"
																	<c:if test="${cp.country=='卢森堡'}">selected="true"</c:if>>卢森堡</option>

																<option value="列支敦士登"
																	<c:if test="${cp.country=='列支敦士登'}">selected="true"</c:if>>列支敦士登</option>
																<option value="立陶宛"
																	<c:if test="${cp.country=='立陶宛'}">selected="true"</c:if>>立陶宛</option>
																<option value="利比亚"
																	<c:if test="${cp.country=='利比亚'}">selected="true"</c:if>>利比亚</option>
																<option value="利比里亚"
																	<c:if test="${cp.country=='利比里亚'}">selected="true"</c:if>>利比里亚</option>
																<option value="黎巴嫩"
																	<c:if test="${cp.country=='黎巴嫩'}">selected="true"</c:if>>黎巴嫩</option>
																<option value="老挝"
																	<c:if test="${cp.country=='老挝'}">selected="true"</c:if>>老挝</option>

																<option value="莱索托"
																	<c:if test="${cp.country=='莱索托'}">selected="true"</c:if>>莱索托</option>
																<option value="拉脱维亚"
																	<c:if test="${cp.country=='拉脱维亚'}">selected="true"</c:if>>拉脱维亚</option>
																<option value="库科纳群岛"
																	<c:if test="${cp.country=='库科纳群岛'}">selected="true"</c:if>>库科纳群岛</option>
																<option value="肯尼亚"
																	<c:if test="${cp.country=='肯尼亚'}">selected="true"</c:if>>肯尼亚</option>
																<option value="克罗地亚"
																	<c:if test="${cp.country=='克罗地亚'}">selected="true"</c:if>>克罗地亚</option>
																<option value="科威特"
																	<c:if test="${cp.country=='科威特'}">selected="true"</c:if>>科威特</option>

																<option value="科摩罗群岛"
																	<c:if test="${cp.country=='科摩罗群岛'}">selected="true"</c:if>>科摩罗群岛</option>
																<option value="科克群岛"
																	<c:if test="${cp.country=='科克群岛'}">selected="true"</c:if>>科克群岛</option>
																<option value="开曼群岛"
																	<c:if test="${cp.country=='开曼群岛'}">selected="true"</c:if>>开曼群岛</option>
																<option value="卡塔尔"
																	<c:if test="${cp.country=='卡塔尔'}">selected="true"</c:if>>卡塔尔</option>
																<option value="喀麦隆"
																	<c:if test="${cp.country=='喀麦隆'}">selected="true"</c:if>>喀麦隆</option>
																<option value="津巴布韦"
																	<c:if test="${cp.country=='津巴布韦'}">selected="true"</c:if>>津巴布韦</option>

																<option value="捷克共和国"
																	<c:if test="${cp.country=='捷克共和国'}">selected="true"</c:if>>捷克共和国</option>
																<option value="柬埔寨"
																	<c:if test="${cp.country=='柬埔寨'}">selected="true"</c:if>>柬埔寨</option>
																<option value="加蓬"
																	<c:if test="${cp.country=='加蓬'}">selected="true"</c:if>>加蓬</option>
																<option value="加纳"
																	<c:if test="${cp.country=='加纳'}">selected="true"</c:if>>加纳</option>
																<option value="加拿大"
																	<c:if test="${cp.country=='加拿大'}">selected="true"</c:if>>加拿大</option>
																<option value="几内亚比绍"
																	<c:if test="${cp.country=='几内亚比绍'}">selected="true"</c:if>>几内亚比绍</option>

																<option value="几内亚"
																	<c:if test="${cp.country=='几内亚'}">selected="true"</c:if>>几内亚</option>
																<option value="吉尔吉斯斯坦"
																	<c:if test="${cp.country=='吉尔吉斯斯坦'}">selected="true"</c:if>>吉尔吉斯斯坦</option>
																<option value="吉布提"
																	<c:if test="${cp.country=='吉布提'}">selected="true"</c:if>>吉布提</option>
																<option value="基里巴斯"
																	<c:if test="${cp.country=='基里巴斯'}">selected="true"</c:if>>基里巴斯</option>
																<option value="洪都拉斯"
																	<c:if test="${cp.country=='洪都拉斯'}">selected="true"</c:if>>洪都拉斯</option>
																<option value="荷属安的列斯岛"
																	<c:if test="${cp.country=='荷属安的列斯岛'}">selected="true"</c:if>>荷属安的列斯岛</option>

																<option value="荷德/马克多纳岛"
																	<c:if test="${cp.country=='荷德/马克多纳岛'}">selected="true"</c:if>>荷德/马克多纳岛</option>
																<option value="荷 兰"
																	<c:if test="${cp.country=='荷 兰'}">selected="true"</c:if>>荷
																	兰</option>
																<option value="韩国"
																	<c:if test="${cp.country=='韩国'}">selected="true"</c:if>>韩国</option>
																<option value="海地"
																	<c:if test="${cp.country=='海地'}">selected="true"</c:if>>海地</option>
																<option value="哈萨克斯坦"
																	<c:if test="${cp.country=='哈萨克斯坦'}">selected="true"</c:if>>哈萨克斯坦</option>
																<option value="圭亚那 "
																	<c:if test="${cp.country=='圭亚那'}">selected="true"</c:if>>圭亚那</option>

																<option value="关岛"
																	<c:if test="${cp.country=='关岛'}">selected="true"</c:if>>关岛</option>
																<option value="瓜达洛普"
																	<c:if test="${cp.country=='瓜达洛普'}">selected="true"</c:if>>瓜达洛普</option>
																<option value="古巴"
																	<c:if test="${cp.country=='古巴'}">selected="true"</c:if>>古巴</option>
																<option value="格陵兰岛"
																	<c:if test="${cp.country=='格陵兰岛'}">selected="true"</c:if>>格陵兰岛</option>
																<option value="格林纳达"
																	<c:if test="${cp.country=='格林纳达'}">selected="true"</c:if>>格林纳达</option>
																<option value="哥斯答黎加"
																	<c:if test="${cp.country=='哥斯答黎加'}">selected="true"</c:if>>哥斯答黎加</option>

																<option value="哥伦比亚"
																	<c:if test="${cp.country=='哥伦比亚'}">selected="true"</c:if>>哥伦比亚</option>
																<option value="刚果民主共和国"
																	<c:if test="${cp.country=='刚果民主共和国'}">selected="true"</c:if>>刚果民主共和国</option>
																<option value="刚果"
																	<c:if test="${cp.country=='刚果'}">selected="true"</c:if>>刚果</option>
																<option value="冈比亚"
																	<c:if test="${cp.country=='冈比亚'}">selected="true"</c:if>>冈比亚</option>
																<option value="福克兰群岛"
																	<c:if test="${cp.country=='福克兰群岛'}">selected="true"</c:if>>福克兰群岛</option>
																<option value="佛得角群岛"
																	<c:if test="${cp.country=='佛得角群岛'}">selected="true"</c:if>>佛得角群岛</option>

																<option value="芬兰"
																	<c:if test="${cp.country=='芬兰'}">selected="true"</c:if>>芬兰</option>
																<option value="斐济"
																	<c:if test="${cp.country=='斐济'}">selected="true"</c:if>>斐济</option>
																<option value="菲律宾"
																	<c:if test="${cp.country=='菲律宾'}">selected="true"</c:if>>菲律宾</option>
																<option value="梵蒂冈城"
																	<c:if test="${cp.country=='梵蒂冈城'}">selected="true"</c:if>>梵蒂冈城</option>
																<option value="法属圣特里特"
																	<c:if test="${cp.country=='法属圣特里特'}">selected="true"</c:if>>法属圣特里特</option>
																<option value="法属圭亚那"
																	<c:if test="${cp.country=='法属圭亚那'}">selected="true"</c:if>>法属圭亚那</option>

																<option value="法属波利尼西亚"
																	<c:if test="${cp.country=='法属波利尼西亚'}">selected="true"</c:if>>法属波利尼西亚</option>
																<option value="法罗群岛"
																	<c:if test="${cp.country=='法罗群岛'}">selected="true"</c:if>>法罗群岛</option>
																<option value="法国"
																	<c:if test="${cp.country=='法国'}">selected="true"</c:if>>法国</option>
																<option value="厄瓜多尔"
																	<c:if test="${cp.country=='厄瓜多尔'}">selected="true"</c:if>>厄瓜多尔</option>
																<option value="俄罗斯联邦"
																	<c:if test="${cp.country=='俄罗斯联邦'}">selected="true"</c:if>>俄罗斯联邦</option>
																<option value="多米尼加共和国"
																	<c:if test="${cp.country=='多米尼加共和国'}">selected="true"</c:if>>多米尼加共和国</option>

																<option value="多米尼加"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>多米尼加</option>
																<option value="多哥"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>多哥</option>
																<option value="东帝汶岛"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>东帝汶岛</option>
																<option value="德国"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>德国</option>
																<option value="丹麦"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>丹麦</option>
																<option value="赤道几内亚"
																	<c:if test="${cp.country=='中国'}">selected="true"</c:if>>赤道几内亚</option>

																<option value="布维群岛"
																	<c:if test="${cp.country=='布维群岛'}">selected="true"</c:if>>布维群岛</option>
																<option value="布隆迪"
																	<c:if test="${cp.country=='布隆迪'}">selected="true"</c:if>>布隆迪</option>
																<option value="布基纳法索"
																	<c:if test="${cp.country=='布基纳法索'}">selected="true"</c:if>>布基纳法索</option>
																<option value="不丹"
																	<c:if test="${cp.country=='不丹'}">selected="true"</c:if>>不丹</option>
																<option value="伯利兹"
																	<c:if test="${cp.country=='伯利兹'}">selected="true"</c:if>>伯利兹</option>
																<option value="博茨瓦纳"
																	<c:if test="${cp.country=='博茨瓦纳'}">selected="true"</c:if>>博茨瓦纳</option>

																<option value="玻利维亚"
																	<c:if test="${cp.country=='玻利维亚'}">selected="true"</c:if>>玻利维亚</option>
																<option value="波兰"
																	<c:if test="${cp.country=='波兰'}">selected="true"</c:if>>波兰</option>
																<option value="波黑"
																	<c:if test="${cp.country=='波黑'}">selected="true"</c:if>>波黑</option>
																<option value="波多黎哥"
																	<c:if test="${cp.country=='波多黎哥'}">selected="true"</c:if>>波多黎哥</option>
																<option value="冰岛"
																	<c:if test="${cp.country=='冰岛'}">selected="true"</c:if>>冰岛</option>
																<option value="比利时"
																	<c:if test="${cp.country=='比利时'}">selected="true"</c:if>>比利时</option>

																<option value="贝宁"
																	<c:if test="${cp.country=='贝宁'}">selected="true"</c:if>>贝宁</option>
																<option value="北马里亚纳"
																	<c:if test="${cp.country=='北马里亚纳'}">selected="true"</c:if>>北马里亚纳</option>
																<option value="北朝鲜"
																	<c:if test="${cp.country=='北朝鲜'}">selected="true"</c:if>>北朝鲜</option>
																<option value="保加利亚"
																	<c:if test="${cp.country=='保加利亚'}">selected="true"</c:if>>保加利亚</option>
																<option value="百慕大群岛"
																	<c:if test="${cp.country=='百慕大群岛'}">selected="true"</c:if>>百慕大群岛</option>
																<option value="白俄罗斯"
																	<c:if test="${cp.country=='白俄罗斯'}">selected="true"</c:if>>白俄罗斯</option>

																<option value="巴西"
																	<c:if test="${cp.country=='巴西'}">selected="true"</c:if>>巴西</option>
																<option value="巴拿马"
																	<c:if test="${cp.country=='巴拿马'}">selected="true"</c:if>>巴拿马</option>
																<option value="巴林"
																	<c:if test="${cp.country=='巴林'}">selected="true"</c:if>>巴林</option>
																<option value="巴拉圭"
																	<c:if test="${cp.country=='巴拉圭'}">selected="true"</c:if>>巴拉圭</option>
																<option value="巴基斯坦"
																	<c:if test="${cp.country=='巴基斯坦'}">selected="true"</c:if>>巴基斯坦</option>
																<option value="巴哈马(群岛)"
																	<c:if test="${cp.country=='巴哈马(群岛)'}">selected="true"</c:if>>巴哈马(群岛)</option>

																<option value="巴布亚新几内亚"
																	<c:if test="${cp.country=='巴布亚新几内亚'}">selected="true"</c:if>>巴布亚新几内亚</option>
																<option value="巴巴多斯"
																	<c:if test="${cp.country=='巴巴多斯'}">selected="true"</c:if>>巴巴多斯</option>
																<option value="奥地利"
																	<c:if test="${cp.country=='奥地利'}">selected="true"</c:if>>奥地利</option>
																<option value="澳大利亚"
																	<c:if test="${cp.country=='澳大利亚'}">selected="true"</c:if>>澳大利亚</option>
																<option value="安提瓜和巴布达"
																	<c:if test="${cp.country=='安提瓜和巴布达'}">selected="true"</c:if>>安提瓜和巴布达</option>
																<option value="安圭拉岛"
																	<c:if test="${cp.country=='安圭拉岛'}">selected="true"</c:if>>安圭拉岛</option>

																<option value="安哥拉"
																	<c:if test="${cp.country=='安哥拉'}">selected="true"</c:if>>安哥拉</option>
																<option value="安道尔"
																	<c:if test="${cp.country=='安道尔'}">selected="true"</c:if>>安道尔</option>
																<option value="爱沙尼亚"
																	<c:if test="${cp.country=='爱沙尼亚'}">selected="true"</c:if>>爱沙尼亚</option>
																<option value="爱尔兰"
																	<c:if test="${cp.country=='爱尔兰'}">selected="true"</c:if>>爱尔兰</option>
																<option value="埃塞俄比亚"
																	<c:if test="${cp.country=='埃塞俄比亚'}">selected="true"</c:if>>埃塞俄比亚</option>
																<option value="埃立特里亚"
																	<c:if test="${cp.country=='埃立特里亚'}">selected="true"</c:if>>埃立特里亚</option>

																<option value="埃及"
																	<c:if test="${cp.country=='埃及'}">selected="true"</c:if>>埃及</option>
																<option value="阿塞拜疆"
																	<c:if test="${cp.country=='阿塞拜疆'}">selected="true"</c:if>>阿塞拜疆</option>
																<option value="阿曼"
																	<c:if test="${cp.country=='阿曼'}">selected="true"</c:if>>阿曼</option>
																<option value="阿鲁巴"
																	<c:if test="${cp.country=='阿鲁巴'}">selected="true"</c:if>>阿鲁巴</option>
																<option value="阿联酋"
																	<c:if test="${cp.country=='阿联酋'}">selected="true"</c:if>>阿联酋</option>
																<option value="阿根廷"
																	<c:if test="${cp.country=='阿根廷'}">selected="true"</c:if>>阿根廷</option>

																<option value="阿富汗"
																	<c:if test="${cp.country=='阿富汗'}">selected="true"</c:if>>阿富汗</option>
																<option value="阿尔及利亚"
																	<c:if test="${cp.country=='阿尔及利亚'}">selected="true"</c:if>>阿尔及利亚</option>
																<option value="阿尔巴尼亚"
																	<c:if test="${cp.country=='阿尔巴尼亚'}">selected="true"</c:if>>阿尔巴尼亚</option>
																<option value="SZ"
																	<c:if test="${cp.country=='SZ'}">selected="true"</c:if>>斯威士兰</option>
																<option value="St.Pier,Miquel."
																	<c:if test="${cp.country=='St.Pier,Miquel.'}">selected="true"</c:if>>St.Pier,Miquel.</option>
																<option value="CAR"
																	<c:if test="${cp.country=='CAR'}">selected="true"="selected="true""</c:if>>CAR</option>

														</select></td>
													</tr>
													<tr>
														<td rowspan="3"><textarea name="name1" rows="3"
																style="width: 120px; height: 70px; overflow: hidden; text-align: left;"
																tips="著作权人是自然人的，应填写真实姓名。&nbsp;&lt;br&gt;著作权人是法人或其他组织的，应填写名称。&nbsp;&lt;br&gt;姓名或名称应与身份证明文件一致。"
																valid="required" errmsg="著作权人姓名或名称不能为空！" length="100"
																onmousemove="show_tips(this,event,350)"
																onmouseout="hidden_tips()">${cp.name}</textarea></td>
														<td>省份</td>
														<td><select name="province1" inputsn="10">
																<option value="">-请选择-</option>
																<option value="境外"
																	<c:if test="${cp.province=='境外'}">selected="true"</c:if>>境外</option>
																<option value="北京"
																	<c:if test="${cp.province=='北京'}">selected="true"</c:if>>北京</option>
																<option value="上海"
																	<c:if test="${cp.province=='上海'}">selected="true"</c:if>>上海</option>
																<option value="天津"
																	<c:if test="${cp.province=='天津'}">selected="true"</c:if>>天津</option>
																<option value="内蒙古"
																	<c:if test="${cp.province=='内蒙古'}">selected="true"</c:if>>内蒙古</option>
																<option value="山西"
																	<c:if test="${cp.province=='山西'}">selected="true"</c:if>>山西</option>
																<option value="河北"
																	<c:if test="${cp.province=='河北'}">selected="true"</c:if>>河北</option>
																<option value="辽宁"
																	<c:if test="${cp.province=='辽宁'}">selected="true"</c:if>>辽宁</option>
																<option value="吉林"
																	<c:if test="${cp.province=='吉林'}">selected="true"</c:if>>吉林</option>
																<option value="黑龙江"
																	<c:if test="${cp.province=='黑龙江'}">selected="true"</c:if>>黑龙江</option>
																<option value="江苏"
																	<c:if test="${cp.province=='江苏'}">selected="true"</c:if>>江苏</option>
																<option value="安徽"
																	<c:if test="${cp.province=='安徽'}">selected="true"</c:if>>安徽</option>
																<option value="山东"
																	<c:if test="${cp.province=='山东'}">selected="true"</c:if>>山东</option>
																<option value="浙江"
																	<c:if test="${cp.province=='浙江'}">selected="true"</c:if>>浙江</option>
																<option value="江西"
																	<c:if test="${cp.province=='江西'}">selected="true"</c:if>>江西</option>
																<option value="福建"
																	<c:if test="${cp.province=='福建'}">selected="true"</c:if>>福建</option>
																<option value="湖南"
																	<c:if test="${cp.province=='湖南'}">selected="true"</c:if>>湖南</option>
																<option value="湖北"
																	<c:if test="${cp.province=='湖北'}">selected="true"</c:if>>湖北</option>
																<option value="河南"
																	<c:if test="${cp.province=='河南'}">selected="true"</c:if>>河南</option>
																<option value="广东"
																	<c:if test="${cp.province=='广东'}">selected="true"</c:if>>广东</option>
																<option value="海南"
																	<c:if test="${cp.province=='海南'}">selected="true"</c:if>>海南</option>
																<option value="广西"
																	<c:if test="${cp.province=='广西'}">selected="true"</c:if>>广西</option>
																<option value="贵州"
																	<c:if test="${cp.province=='贵州'}">selected="true"</c:if>>贵州</option>
																<option value="四川"
																	<c:if test="${cp.province=='四川'}">selected="true"</c:if>>四川</option>
																<option value="云南"
																	<c:if test="${cp.province=='云南'}">selected="true"</c:if>>云南</option>
																<option value="陕西"
																	<c:if test="${cp.province=='陕西'}">selected="true"</c:if>>陕西</option>
																<option value="甘肃"
																	<c:if test="${cp.province=='甘肃'}">selected="true"</c:if>>甘肃</option>
																<option value="宁夏"
																	<c:if test="${cp.province=='宁夏'}">selected="true"</c:if>>宁夏</option>
																<option value="青海"
																	<c:if test="${cp.province=='青海'}">selected="true"</c:if>>青海</option>
																<option value="新疆"
																	<c:if test="${cp.province=='新疆'}">selected="true"</c:if>>新疆</option>
																<option value="西藏"
																	<c:if test="${cp.province=='西藏'}">selected="true"</c:if>>西藏</option>
																<option value="重庆"
																	<c:if test="${cp.province=='重庆'}">selected="true"</c:if>>重庆</option>
																<option value="香港"
																	<c:if test="${cp.province=='香港'}">selected="true"</c:if>>香港</option>
																<option value="澳门"
																	<c:if test="${cp.province=='澳门'}">selected="true"</c:if>>澳门</option>
																<option value="台湾"
																	<c:if test="${cp.province=='台湾'}">selected="true"</c:if>>台湾</option>
														</select></td>
														<td>城市</td>
														<td><input name="city1" size="15"
															value="<c:out value='${cp.city}' />" maxlength="100"
															tips="请填写城市" valid="required" errmsg="城市不能为空！"
															length="50" onmousemove="show_tips(this,event,150)"
															onmouseout="hidden_tips()"></td>
													</tr>
													<tr>
														<td>证件类型</td>

														<td><select name="idTypes1" style="width: 115px;">

																<option value="居民身份证"
																	<c:if test="${cp.id_type=='居民身份证'}">selected="true"</c:if>>居民身份证</option>

																<option value="军官证"
																	<c:if test="${cp.id_type=='军官证'}">selected="true"</c:if>>军官证</option>

																<option value="护照"
																	<c:if test="${cp.id_type=='护照'}">selected="true"</c:if>>护照</option>

																<option value="企业法人营业执照"
																	<c:if test="${cp.id_type=='企业法人营业执照'}">selected="true"</c:if>>企业法人营业执照</option>


																<option value="组织机构代码证书"
																	<c:if test="${cp.id_type=='组织机构代码证书'}">selected="true"</c:if>>组织机构代码证书</option>

																<option value="事业单位法人证书"
																	<c:if test="${cp.id_type=='事业单位法人证书'}">selected="true"</c:if>>事业单位法人证书</option>

																<option value="社团法人证书"
																	<c:if test="${cp.id_type=='社团法人证书'}">selected="true"</c:if>>社团法人证书</option>

																<option value="营业执照"
																	<c:if test="${cp.id_type=='营业执照'}">selected="true"</c:if>>营业执照</option>

																<option value="其他有效证件"
																	<c:if test="${cp.id_type=='其他有效证件'}">selected="true"</c:if>>其他有效证件</option>

														</select></td>
														<td>证件号码</td>
														<td><input name="idNumber1" size="15"
															value="<c:out value='${cp.id_number}' />" maxlength="40"
															tips="填写证件上的号码" valid="required" errmsg="证件号码不能为空！"
															length="60" onmousemove="show_tips(this,event,150)"
															onmouseout="hidden_tips()"></td>
													</tr>
													<tr>
														<td>署名情况</td>
														<td colspan="3"
															tips="在下拉菜单中选择，包括：&nbsp;&lt;br&gt;本名，即著作权人的真实姓名；&nbsp;&lt;br&gt;匿名，即不署名，选择即可；&nbsp;&lt;br&gt;别名，选择此项应填写与著作权人姓名不一致的署名。"
															onmousemove="show_tips(this,event,500)"
															onmouseout="hidden_tips()">
															<div style="float: left;">
																<select name="sign1" onchange="s_h_sign(this)">

																	<option value="本名"
																		<c:if test="${cp.sign=='本名'}">selected="true"</c:if>>本名</option>

																	<option value="别名"
																		<c:if test="${cp.sign=='别名'}">selected="true"</c:if>>别名</option>

																	<option value="匿名"
																		<c:if test="${cp.sign=='匿名'}">selected="true"</c:if>>匿名</option>
																</select>
															</div>
															<c:choose>
															<c:when test="${cp.sign=='别名'}">
															<div style="float: left;">
															</c:when>
															<c:otherwise>
															<div style="DISPLAY: none;float: left;">
															</c:otherwise>
															</c:choose>
																&nbsp;&nbsp;别名为：<input name="opusSign1" size="12"
																	value="<c:out value='${cp.opus_sign}' />" tips="请填写别名"
																	valid="required" errmsg="别名不能为空！" length="20"
																	onmousemove="show_tips(this,event,500)"
																	onmouseout="hidden_tips()">
															</div>
															<c:if test="${statuss.index!=0}">
													<DIV style="FLOAT: right">
																<INPUT onclick=deleteRow(this); style="padding:0 3px;" value=删除 type=button>
															</DIV></c:if>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									</c:forEach>
									</td>
							</tr>

							<TR>
								<TD class="td_blue" colSpan=2>
									<DIV style="FLOAT: left;font-weight:bold;" id=opus1>作者姓名或名称以及作品署名</DIV>
									<DIV style="FLOAT: right">
										<INPUT onClick="addRow('opusAuthor')" style="padding:0 3px;" name=button value=添加
											type=button>
									</DIV>
									<DIV style="FLOAT: right" id=s_a_t></DIV>
								</TD>
							</TR>
							<tr>
								<TD
									style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"
									id=opusAuthor class=contentbg colSpan=2>
										<div style="display: none;">
											<table width="100%" border="0" cellpadding="0"
												cellspacing="0">
												<tbody>
													<tr>
														<td id="opus2" width="18%">作者姓名或名称</td>
														<td width="35%"><input name="author_name" size="30"
															value=""
															tips="填写实际从事创作的人，包括著作权人或者不享有著作权的作者的姓名；&nbsp;&lt;br&gt;合作作品填写合作作者；&nbsp;&lt;br&gt;法人作品填写法人或其他组织名称；&nbsp;&lt;br&gt;委托作品填写受托人；&nbsp;&lt;br&gt;允许英文填写。"
															valid="required" errmsg="姓名或名称不能为空！" length="80"
															onmousemove="show_tips(this,event,500)"
															onmouseout="hidden_tips()"></td>
														<td width="10%" align="left">作品署名</td>
														<td width="30%">
															<div style="float: left;">
																<input name="author_sign" size="20"
																	value=""
																	tips="指的是作者署名情况，例如要署笔名、别名，或者是受委托创作者统一署委托者姓名或名称，应在此键入想要署名的姓名或名称。允许英文填写。如作品署名为笔名、别名，请用括号标注，请填写格式如XXX(笔名)。&nbsp;&lt;br&gt;&nbsp;&lt;br&gt;"
																	length="80" onmousemove="show_tips(this,event,150)"
																	onmouseout="hidden_tips()">
															</div>
															<DIV style="FLOAT: right">
																<INPUT onclick=deleteRow(this); style="padding:0 3px;" value=删除 type=button>
															</DIV>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									
									<c:forEach items="${authors}" var="author" varStatus="statusd">
							         	<div>
											<table width="100%" border="0" cellpadding="0"
												cellspacing="0">
												<tbody>
													<tr>
														<td id="opus2" width="18%">作者姓名或名称</td>
														<td width="35%"><input name="author_name" size="30"
															value="<c:out value='${author.name}' />"
															tips="填写实际从事创作的人，包括著作权人或者不享有著作权的作者的姓名；&nbsp;&lt;br&gt;合作作品填写合作作者；&nbsp;&lt;br&gt;法人作品填写法人或其他组织名称；&nbsp;&lt;br&gt;委托作品填写受托人；&nbsp;&lt;br&gt;允许英文填写。"
															valid="required" errmsg="姓名或名称不能为空！" length="80"
															onmousemove="show_tips(this,event,500)"
															onmouseout="hidden_tips()"></td>
														<td width="10%" align="left">作品署名</td>
														<td width="30%">
															<div style="float: left;">
																<input name="author_sign" size="20"
																	value="<c:out value='${author.sign}' />"
																	tips="指的是作者署名情况，例如要署笔名、别名，或者是受委托创作者统一署委托者姓名或名称，应在此键入想要署名的姓名或名称。允许英文填写。如作品署名为笔名、别名，请用括号标注，请填写格式如XXX(笔名)。&nbsp;&lt;br&gt;&nbsp;&lt;br&gt;"
																	length="80" onmousemove="show_tips(this,event,150)"
																	onmouseout="hidden_tips()">
															</div>
														<c:choose>
														<c:when test="${statusd.index!=0}">
														  <DIV style="FLOAT: right">
																<INPUT onclick=deleteRow(this); style="padding:0 3px;" value=删除 type=button />
															</DIV>
														</c:when>
														<c:otherwise>
														<DIV style="FLOAT: right">
															</DIV>
														</c:otherwise>
														</c:choose>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</c:forEach>
									</td>
							</tr>
							<tr>
								<td class="td_blue" colspan="2"><B>作品基本信息</B></td>
							</tr>
							<tr>

								<td>作品创作性质</td>
								<td style="vertical-align: middle;"><c:choose>
										<c:when test="${z11.opus_indite_kind=='原创'}">
											<input name="opus_indite_kind" value="原创" checked="checked"
												tips="原创：是指著作权人未使用其他已有作品创作的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_indite_kind" value="原创"
												tips="原创：是指著作权人未使用其他已有作品创作的作品"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>原创 <c:choose>
										<c:when test="${z11.opus_indite_kind=='改编'}">
											<input name="opus_indite_kind" value="改编" checked="checked"
												tips="改编是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_indite_kind" value="改编"
												tips="改编是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>改编 <c:choose>
										<c:when test="${z11.opus_indite_kind=='翻译'}">
											<input name="opus_indite_kind" value="翻译" checked="checked"
												tips="翻译是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_indite_kind" value="翻译"
												tips="翻译是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose> 翻译 <c:choose>
										<c:when test="${z11.opus_indite_kind=='汇编'}">
											<input name="opus_indite_kind" value="汇编" checked="checked"
												tips="汇编是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处 "
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_indite_kind" value="汇编"
												tips="汇编是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处 "
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose> 汇编 <c:choose>
										<c:when test="${z11.opus_indite_kind=='注释 '}">
											<input name="opus_indite_kind" value="注释" checked="checked"
												tips="注释是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_indite_kind" value="注释"
												tips="注释是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose> 注释 <c:choose>
										<c:when test="${z11.opus_indite_kind=='整理 '}">
											<input name="opus_indite_kind" value="整理" checked="checked"
												tips="整理是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处 "
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_indite_kind" value="整理"
												tips="整理是指著作权人使用已有作品衍生创作的作品。
            选择此项时，应在“说明”中说明情况，填写使用的原作品名称、著作权人和作品出处 "
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>整理 <c:choose>
										<c:when test="${z11.opus_indite_kind=='其他'}">
											<input name="opus_indite_kind" value="其他" tips="其他情况需要详细说明"
												checked="checked" onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="opus_indite_kind" value="其他" tips="其他情况需要详细说明"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>其他 <br> 说明：
											<textarea id="opusdesId"
											name="opus_desc" cols="25" rows="2"
											style="width: 500px;"
											tips="除选择原创外，都应在此填写创作说明"
											length="200" onmousemove="show_tips(this,event,400)"
											onmouseout="hidden_tips()"><c:out value='${z11.opus_desc}' /></textarea>
											</td>

							</tr>

							<tr>
								<td>创作完成日期</td>
								<td title=请选择年月日><SELECT style="WIDTH: 80px" id=cyear
									name=year></SELECT>年&nbsp; <SELECT style="WIDTH: 50px"
									id=cmonth name=month>
										<OPTION selected value=""></OPTION>
										<OPTION value=01>01</OPTION>
										<OPTION value=02>02</OPTION>
										<OPTION value=03>03</OPTION>
										<OPTION value=04>04</OPTION>
										<OPTION value=05>05</OPTION>
										<OPTION value=06>06</OPTION>
										<OPTION value=07>07</OPTION>
										<OPTION value=08>08</OPTION>
										<OPTION value=09>09</OPTION>
										<OPTION value=10>10</OPTION>
										<OPTION value=11>11</OPTION>
										<OPTION value=12>12</OPTION>
								</SELECT>月&nbsp; <SELECT style="WIDTH: 50px" id=cday name=day>
										<OPTION selected value=""></OPTION>
										<OPTION value=01>01</OPTION>
										<OPTION value=02>02</OPTION>
										<OPTION value=03>03</OPTION>
										<OPTION value=04>04</OPTION>
										<OPTION value=05>05</OPTION>
										<OPTION value=06>06</OPTION>
										<OPTION value=07>07</OPTION>
										<OPTION value=08>08</OPTION>
										<OPTION value=09>09</OPTION>
										<OPTION value=10>10</OPTION>
										<OPTION value=11>11</OPTION>
										<OPTION value=12>12</OPTION>
										<OPTION value=13>13</OPTION>
										<OPTION value=14>14</OPTION>
										<OPTION value=15>15</OPTION>
										<OPTION value=16>16</OPTION>
										<OPTION value=17>17</OPTION>
										<OPTION value=18>18</OPTION>
										<OPTION value=19>19</OPTION>
										<OPTION value=20>20</OPTION>
										<OPTION value=21>21</OPTION>
										<OPTION value=22>22</OPTION>
										<OPTION value=23>23</OPTION>
										<OPTION value=24>24</OPTION>
										<OPTION value=25>25</OPTION>
										<OPTION value=26>26</OPTION>
										<OPTION value=27>27</OPTION>
										<OPTION value=28>28</OPTION>
										<OPTION value=29>29</OPTION>
										<OPTION value=30>30</OPTION>
										<OPTION value=31>31</OPTION>
								</SELECT>日 <SCRIPT language="javascript">
									var curyear = new Date().getYear();
									var cyear = document
											.getElementById("cyear");
									var sdates = "${z11.create_date}";
									if (sdates.length > 0) {
										var nyear = sdates.substring(0, 4); // 取子字符串。
										var nmonth = sdates.substring(5, 7);
										var nday = sdates.substring(8, 11);
										$("#cmonth option[value="+ nmonth + "]").attr(
												"selected", true);
										$("#cday option[value=" + nday + "]")
												.attr("selected", true);
									}
									for ( var i = 1900; i < 2051; i++) {
										var op = document
												.createElement("option");
										op.text = i;
										op.value = i;
										if (op.value - 1 == nyear) {
											cyear.options[cyear.options.length - 1].selected = 'selected';
										}
										cyear.options.add(op);
									}
								</SCRIPT> &nbsp;&nbsp;&nbsp;<span id=date_tip></span>
								</td>
							</tr>
							<tr>
								<td>创作完成地点</td>

								<td>国家：<input id="create_countryId" name="create_country"
									size="12" value="<c:out value='${z11.create_country}' />"
									tips="填写创作完成作品的国家城市&nbsp;&lt;br&gt;电影和类似摄制电影方法创作的作品为“摄制完成地点”"
									valid="required" errmsg="国家不能为空！" length="40"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()"> 城市：<input
										id="create_cityId" name="create_city" size="12"
										value="<c:out value='${z11.create_city}' />"
										tips="填写创作完成作品的国家城市&nbsp;&lt;br&gt;电影和类似摄制电影方法创作的作品为“摄制完成地点”"
										length="40" onmousemove="show_tips(this,event,300)"
										onmouseout="hidden_tips()"></td>
							</tr>

							<tr>
								<td>发表状态</td>
								<td
									tips="在选项中选择，如选择“已发表”，填写首次发表（电影和类似摄制电影方法创作的作品为“首次公映”）的年、月、日及发表地点（电影和类似摄制电影方法创作的作品为“首次公映地点”）。"
									onmousemove="show_tips(this,event,500)"
									onmouseout="hidden_tips()"><c:choose>
										<c:when test="${z11.publish_status=='已发表'}">
											<input id="publish_status" name="publish_status" value="已发表"
												checked="checked" type="radio" onclick="showOrHide();"/>
										</c:when>
										<c:otherwise>
											<input id="publish_status" name="publish_status" value="已发表"
												type="radio" onclick="showOrHide();">
										</c:otherwise>
									</c:choose>已发表 <c:choose>
										<c:when test="${z11.publish_status=='未发表'}">
											<input id="publish_status" name="publish_status" value="未发表"
												checked="checked" type="radio" onclick="showOrHide();"/>
										</c:when>
										<c:otherwise>
											<input id="publish_status" name="publish_status" value="未发表"
												type="radio" onclick="showOrHide();">
										</c:otherwise>
									</c:choose> 未发表</td>
							</tr>
						</tbody>
						<tbody id="publish_state" style="DISPLAY:none;">
							<tr>
								<td><span id="showDate">首次发表日期</span></td>

								<td><input type="text" id="appear_dateId"
									name="appear_date" value="<c:out value='${z11.appear_date}' />"
									tips="请填写首次发表/公映日期" valid="required" errmsg="首次发表/公映日期不能为空！"
									onmousemove="show_tips(this,event,500)"
									onmouseout="hidden_tips()" onclick="fPopCalendar(this, this);" readonly />
								</td>
							</tr>
							<tr>
								<td><span id="showArea">首次发表地点</span></td>
								<td>国家：<input name="appear_country" id="appearcountryId"
									size="12" value="<c:out value='${z11.appear_country}' />"
									tips="请填写国家" valid="required" errmsg="国家不能为空！" length="40"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()">&nbsp;&nbsp;&nbsp;&nbsp; 城市：<input
										name="appear_city" id="appearcityId" size="12"
										value="<c:out value='${z11.appear_city}' />" tips="请填写城市"
										valid="required" errmsg="城市不能为空！" length="40"
										onmousemove="show_tips(this,event,300)"
										onmouseout="hidden_tips()"></td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td class="td_blue" colspan="2"><b>权利状况说明</b></td>
							</tr>
							<tr>
								<td>权利取得方式</td>

								<td><c:choose>
										<c:when test="${z11.obtain_mode=='原始'}">
											<input name="obtain_mode" value="原始" checked="checked"
												tips="原始取得：是指根据法律规定，最初取得著作权或不依赖于原所有人的意志而取得著作权"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio" onclick="desc_showOrHide(this,'m')" />
										</c:when>
										<c:otherwise>
											<input name="obtain_mode" value="原始"
												tips="原始取得：是指根据法律规定，最初取得著作权或不依赖于原所有人的意志而取得著作权"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio" onclick="desc_showOrHide(this,'m')" />
										</c:otherwise>
									</c:choose>原始 <c:choose>
										<c:when test="${z11.obtain_mode=='继承'}">
											<input name="obtain_mode" value="继承" checked="checked"
												tips="继承：包括继承遗产，是指继承人按照法律的直接规定或者合法有效遗嘱的指定，取得被继承人死亡时遗留的个人合法著作权的财产权；接受遗赠，是指自然人、集体组织或者国家作为受遗赠人，按照被继承人生前所立的合法有效遗赠的指定，取得遗赠的著作权的财产权。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio" onclick="desc_showOrHide(this,'m')" />
										</c:when>
										<c:otherwise>
											<input name="obtain_mode" value="继承"
												tips="继承：包括继承遗产，是指继承人按照法律的直接规定或者合法有效遗嘱的指定，取得被继承人死亡时遗留的个人合法著作权的财产权；接受遗赠，是指自然人、集体组织或者国家作为受遗赠人，按照被继承人生前所立的合法有效遗赠的指定，取得遗赠的著作权的财产权。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio" onclick="desc_showOrHide(this,'m')" />
										</c:otherwise>
									</c:choose>继承 <c:choose>
										<c:when test="${z11.obtain_mode=='承受'}">
											<input name="obtain_mode" value="承受" checked="checked"
												tips="承受：是指享有原著作权的企业被合并或分立，由合并或分立后其他企业享有著作权情况。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio" onclick="desc_showOrHide(this,'m')" />
										</c:when>
										<c:otherwise>
											<input name="obtain_mode" value="承受"
												tips="承受：是指享有原著作权的企业被合并或分立，由合并或分立后其他企业享有著作权情况。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio" onclick="desc_showOrHide(this,'m')" />
										</c:otherwise>
									</c:choose>承受 <c:choose>
										<c:when test="${z11.obtain_mode=='其他'}">
											<input name="obtain_mode" value="其他" checked="checked"
												tips="其他：因其他合法原因取得著作权的。在“说明”中描述具体情况"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio" onclick="desc_showOrHide(this,'m')" />
										</c:when>
										<c:otherwise>
											<input name="obtain_mode" value="其他"
												tips="其他：因其他合法原因取得著作权的。在“说明”中描述具体情况"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio" onclick="desc_showOrHide(this,'m')" />
										</c:otherwise>
									</c:choose>其他 <br>
										<div style="display:none" id="jcsm">
											说明：
											<textarea id="inherit_descId" name="inherit_desc" cols="25"
												rows="2" style="width: 500px;" tips="选择其他取得方式时说明具体情况"
												length="400" onmousemove="show_tips(this,event,500)"
												onmouseout="hidden_tips()">${z11.inherit_desc}</textarea>
										</div></td>

							</tr>

							<tr>
								<td>权利归属方式及其说明</td>
								<td><c:choose>
										<c:when test="${z11.right_own_mode=='个人作品'}">
											<input name="right_own_mode" value="个人作品" checked="checked"
												tips="个人作品是指自然人在没有他人的参与下，独立创作的作品。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="right_own_mode" value="个人作品"
												tips="个人作品是指自然人在没有他人的参与下，独立创作的作品。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>个人作品 <c:choose>
										<c:when test="${z11.right_own_mode=='合作作品'}">
											<input name="right_own_mode" value="合作作品"
												tips="合作作品是指两人以上合作创作作品。" checked="checked"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="right_own_mode" value="合作作品"
												tips="合作作品是指两人以上合作创作作品。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>合作作品 <c:choose>
										<c:when test="${z11.right_own_mode=='法人作品'}">
											<input name="right_own_mode" value="法人作品" checked="checked"
												tips="法人作品是指由法人或者其他组织主持，代表法人或者其他组织意志创作，并由法人或者其他组织承担责任的作品。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="right_own_mode" value="法人作品"
												tips="法人作品是指由法人或者其他组织主持，代表法人或者其他组织意志创作，并由法人或者其他组织承担责任的作品。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>法人作品 <c:choose>
										<c:when test="${z11.right_own_mode=='职务作品'}">
											<input name="right_own_mode" value="职务作品" checked="checked"
												tips="职务作品是指公民为完成法人或者其他组织工作任务所创作的作品。在以下两类中选择：公民享有著作权。公民享有署名权，单位享有其他著作权。如选此项，在“说明”中描述具体情况。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="right_own_mode" value="职务作品"
												tips="职务作品是指公民为完成法人或者其他组织工作任务所创作的作品。在以下两类中选择：公民享有著作权。公民享有署名权，单位享有其他著作权。如选此项，在“说明”中描述具体情况。"
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose>职务作品 <c:choose>
										<c:when test="${z11.right_own_mode=='委托作品'}">
											<input name="right_own_mode" value="委托作品"
												tips="委托作品是指委托人委托其他人创作的作品。在以下两类中选择：委托人享有著作权。受托人享有著作权。如选此项，在“说明”中描述具体情况。
            "
												checked="checked" onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:when>
										<c:otherwise>
											<input name="right_own_mode" value="委托作品"
												tips="委托作品是指委托人委托其他人创作的作品。在以下两类中选择：委托人享有著作权。受托人享有著作权。如选此项，在“说明”中描述具体情况。
            "
												onmousemove="show_tips(this,event,200)"
												onmouseout="hidden_tips()" type="radio">
										</c:otherwise>
									</c:choose> 委托作品 <br> 说明：<textarea name="right_own_desc"
												id="rightowndescId" cols="25" rows="2" style="width: 500px;"
												tips="请填写权利归属方式说明" length="400"
												onmousemove="show_tips(this,event,350)"
												onmouseout="hidden_tips()">${z11.right_own_desc}</textarea></td>
							</tr>

							<tr>
								<td>权利拥有状况及其说明</td>
								<td><INPUT onclick=allCheck() name=rightScope value=全部
									type=radio>全部<BR><INPUT onclick=chooseCheck()
											name=rightScope value=部分 type=radio CHECKED>部分<BR>
													&nbsp;&nbsp; <c:choose>
														<c:when test="${发表权=='发表权'}">
															<input name="right_scope" value="发表权"
																tips="发表权：即决定作品是否公之于众的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox" checked>
														</c:when>
														<c:otherwise>
															<input name="right_scope" value="发表权"
																tips="发表权：即决定作品是否公之于众的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox">
														</c:otherwise>
													</c:choose>发表权 <c:choose>
														<c:when test="${署名权=='署名权'}">
															<input name="right_scope" value="署名权"
																tips="署名权：即表明作者身份，在作品上署名的权利。职务作品、委托作品等有时申请人不享有署名权，请说明署名权的归属情况。"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox" checked>
														</c:when>
														<c:otherwise>
															<input name="right_scope" value="署名权"
																tips="署名权：即表明作者身份，在作品上署名的权利。职务作品、委托作品等有时申请人不享有署名权，请说明署名权的归属情况。"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox">
														</c:otherwise>
													</c:choose>署名权 <c:choose>
														<c:when test="${修改权=='修改权'}">
															<input name="right_scope" value="修改权"
																tips="修改权：即修改或者授权他人修改作品的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox" checked>
														</c:when>
														<c:otherwise>
															<input name="right_scope" value="修改权"
																tips="修改权：即修改或者授权他人修改作品的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox">
														</c:otherwise>
													</c:choose>修改权 <c:choose>
														<c:when test="${保护作品完整权=='保护作品完整权'}">
															<input name="right_scope" value="保护作品完整权"
																tips="保护作品完整权，即保护作品不受歪曲、篡改的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox" checked>
														</c:when>
														<c:otherwise>
															<input name="right_scope" value="保护作品完整权"
																tips="保护作品完整权，即保护作品不受歪曲、篡改的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox">
														</c:otherwise>
													</c:choose>保护作品完整权 <c:choose>
														<c:when test="${复制权=='复制权'}">
															<input name="right_scope" value="复制权"
																tips="复制权：即以印刷、复印、拓印、录音、录像、翻录、翻拍等方式将作品制作一份或者多份的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox" checked>
														</c:when>
														<c:otherwise>
															<input name="right_scope" value="复制权"
																tips="复制权：即以印刷、复印、拓印、录音、录像、翻录、翻拍等方式将作品制作一份或者多份的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox">
														</c:otherwise>
													</c:choose>复制权 <c:choose>
														<c:when test="${发行权=='发行权'}">
															<input name="right_scope" value="发行权"
																tips="发行权：即以出售或者赠与方式向公众提供作品的原件或者复制件的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox" checked>
														</c:when>
														<c:otherwise>
															<input name="right_scope" value="发行权"
																tips="发行权：即以出售或者赠与方式向公众提供作品的原件或者复制件的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox">
														</c:otherwise>
													</c:choose>发行权 <c:choose>
														<c:when test="${出租权=='出租权'}">
															<input name="right_scope" value="出租权"
																tips="出租权：即有偿许可他人临时使用电影作品和以类似摄制电影的方法创作的作品的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox" checked>
														</c:when>
														<c:otherwise>
															<input name="right_scope" value="出租权"
																tips="出租权：即有偿许可他人临时使用电影作品和以类似摄制电影的方法创作的作品的权利"
																onmousemove="show_tips(this,event,150)"
																onmouseout="hidden_tips()" type="checkbox">
														</c:otherwise>
													</c:choose>出租权<br>&nbsp;&nbsp; <c:choose>
											<c:when test="${展览权=='展览权'}">
												<input name="right_scope" value="展览权"
													tips="展览权：即公开陈列美术作品、摄影作品的原件或者复制件的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="展览权"
													tips="展览权：即公开陈列美术作品、摄影作品的原件或者复制件的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>展览权 <c:choose>
											<c:when test="${表演权=='表演权'}">
												<input name="right_scope" value="表演权"
													tips="表演权：即公开表演作品，以及用各种手段公开播送作品的表演的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="表演权"
													tips="表演权：即公开表演作品，以及用各种手段公开播送作品的表演的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>表演权 <c:choose>
											<c:when test="${放映权=='放映权'}">
												<input name="right_scope" value="放映权"
													tips="放映权：即通过放映权、幻灯机等技术设备公开再现美术、摄影、电影和以类似摄制电影的方法创作的作品等的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="放映权"
													tips="放映权：即通过放映权、幻灯机等技术设备公开再现美术、摄影、电影和以类似摄制电影的方法创作的作品等的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>放映权 
										 <c:choose>
											<c:when test="${信息网络传播权=='信息网络传播权'}">
												<input name="right_scope" value="信息网络传播权"
													tips="信息网络传播权，即以有线或无线方式向公众提供作品，使公众可以在某个选定的时间和地点获得作品的权利。"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="信息网络传播权"
													tips="信息网络传播权，即以有线或无线方式向公众提供作品，使公众可以在某个选定的时间和地点获得作品的权利。"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose> 信息网络传播权
										<c:choose>
											<c:when test="${广播权=='广播权'}">
												<input name="right_scope" value="广播权"
													tips="广播权：即以无线方式公开广播或者传播作品，以有线传播或者转播的方式向公众传播广播的作品，以及通过扩音器或者其他传送符号、声音、图像的类似工具向公众传播广播的作品的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="广播权"
													tips="广播权：即以无线方式公开广播或者传播作品，以有线传播或者转播的方式向公众传播广播的作品，以及通过扩音器或者其他传送符号、声音、图像的类似工具向公众传播广播的作品的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>广播权 <c:choose>
											<c:when test="${摄制权=='摄制权'}">
												<input name="right_scope" value="摄制权"
													tips="摄制权：即以摄制电影或者以类似摄制电影的方法将作品固定在载体上的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="摄制权"
													tips="摄制权：即以摄制电影或者以类似摄制电影的方法将作品固定在载体上的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>摄制权 <c:choose>
											<c:when test="${改编权=='改编权'}">
												<input name="right_scope" value="改编权"
													tips="改编权：即改变作品，创作出具有独创性的新的作品的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
													
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="改编权"
													tips="改编权：即改变作品，创作出具有独创性的新的作品的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>改编权 
								&nbsp;&nbsp; <c:choose>
											<c:when test="${翻译权=='翻译权'}">
												<input name="right_scope" value="翻译权"
													tips="翻译权：即将作品从一种语言文字转换成另一种语言文字的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="翻译权"
													tips="翻译权：即将作品从一种语言文字转换成另一种语言文字的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>翻译权 <c:choose>
											<c:when test="${汇编权=='汇编权'}">
												<input name="right_scope" value="汇编权"
													tips="汇编权：即将作品或者作品的片段通过选择或者编排，汇集成新作品的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="汇编权"
													tips="汇编权：即将作品或者作品的片段通过选择或者编排，汇集成新作品的权利"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>汇编权 <c:choose>
											<c:when test="${其他=='其他'}">
												<input name="right_scope" value="其他"
													tips="其他：应当由著作权人享有的其他权利。选择此项应进行说明"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox" checked>
											</c:when>
											<c:otherwise>
												<input name="right_scope" value="其他"
													tips="其他：应当由著作权人享有的其他权利。选择此项应进行说明"
													onmousemove="show_tips(this,event,150)"
													onmouseout="hidden_tips()" type="checkbox">
											</c:otherwise>
										</c:choose>其他 
								<br> 说明：<textarea name="own_part_desc"
												id="ownpartdescId" cols="25" rows="2" style="width: 500px;"
												tips="请填写权利拥有状况说明，选择其他时必填" length="400"
												onmousemove="show_tips(this,event,350)"
												onmouseout="hidden_tips()">${z11.own_part_desc}</textarea></td>
							</tr>
							<tr>
								<td class="td_blue" colspan="2"><b>留存作品样本</b></td>
							</tr>

							<tr>
								<td>电子介质</td>
								<td><input name="emedium" id="emediumId" size="50" value="<c:out value='${z11.emedium}' />"
									tips="软磁盘（FD）、只读光盘（CD-ROM）、交互式磁盘（CD-I）、照片光盘（Photo-CD）、高密度只读光盘（DVD-ROM）、集成电路卡（IC&nbsp;Card）、其他"
									length="40" onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()" type="text">&nbsp;共&nbsp; <input
										name="ecount" id="ecountId" size="10" value="<c:out value='${z11.ecount}' />" tips="写明电子介质件数"
										length="10" onmousemove="show_tips(this,event,200)"
										onmouseout="hidden_tips()" type="text">&nbsp;件<br></td>
							</tr>

							<tr>
								<td>纸&nbsp;介&nbsp;质</td>
								<td><input name="pmedium" id="pmediumId" size="50" value="<c:out value='${z11.pmedium}' />"
									tips="印刷品、打印件（A4纸）、复印件（A4纸）、照片（6-12英寸）、其他" length="40"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()" type="text" /> &nbsp;共&nbsp; <input
									name="pcount" id="pcountId" size="10" value="<c:out value='${z11.pcount}' />" tips="写明纸介质张数"
									length="10" onmousemove="show_tips(this,event,200)"
									onmouseout="hidden_tips()" type="text">&nbsp;张 </td>
							</tr>

							<tr>
								<td class="td_blue" colspan="2"><B>申请办理信息</B></td>
							</tr>
							<tr>
								<td>申请方式</td>
								<td>
								<c:choose>
								<c:when test="${z11.apply_type=='由著作权人申请'}">
								<input name="apply_type" value="由著作权人申请"
									checked="checked" onclick="agent_showOrHide(this)" type="radio">
								</c:when>
								<c:otherwise>
								<input name="apply_type" value="由著作权人申请"
									onclick="agent_showOrHide(this)" type="radio">
								</c:otherwise>
								</c:choose>由著作权人申请
                                <c:choose>
								<c:when test="${z11.apply_type=='由代理人申请'}">
								<input name="apply_type" value="由代理人申请" onclick="agent_showOrHide(this)"
										checked="checked"  type="radio">
										<script language="javascript">
										$(document).ready(function(){
											$("#A-0").css("display", "block");
										});
										</script>
								</c:when>
								<c:otherwise>
								<input name="apply_type" value="由代理人申请" onclick="agent_showOrHide(this)"
										type="radio">
								</c:otherwise>
								</c:choose>由代理人申请 </td>
							</tr>
							<SCRIPT>
function agent_showOrHide(obj)
{
	 if(obj.value == "由代理人申请") 
	 {
	 	document.all("A-0").style.display="block";
	 }
	 else
	 {
	 	document.all("A-0").style.display="none";
	 }
}
function sqr_show(){
  document.all("sqr-0").style.display="block";
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

</SCRIPT>
  <INPUT id=shenqr name=shenqr value=申请人 type=hidden> <INPUT id=dailr name=dailr 
  value=代理人 type=hidden> 
  <TR>
    <TD class="contentbg small_title" colSpan=2>
      <DIV style="FLOAT: left">提交者信息 </DIV>
      <DIV style="FLOAT: right"><INPUT onmousemove=show_tips(this,event,150) onmouseout=hidden_tips() 
      onclick="addRow('sqr');sqr_show();" value=增加申请人 type=button tips="当申请人为多个申请人时，点击该按钮进行增加，只添加该申请人的姓名或单位名称和电话"> 
<INPUT onmousemove=show_tips(this,event,150) onmouseout=hidden_tips() onclick="setPeopleValue('sqr');" value=我是申请人 type=button tips="申请人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
  <TBODY style="DISPLAY: none" id=sqr-0>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-BOTTOM-WIDTH: 0px; PADDING-TOP: 0px" 
    id=sqr class=contentbg colSpan=2>
      <DIV style="DISPLAY: none">
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" 
          class=contentbg width=130>姓名或名称&nbsp;</TD>
          <TD 
          style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" 
          class=contentbg><INPUT id=sqrnameid_ 
            onmousemove=show_tips(this,event,400) 
            onmouseout=hidden_tips() name=partname size=35 
            tips="请准确填写申请人的姓名或名称，并与其他材料保持一致，并且在申请人签章处，要求是申请人的全部签章" length="100" 
            errmsg="姓名或单位名称不能为空！" valid="required" maxlength="100"> </TD>
          <TD 
          style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" 
          class=contentbg align=left>电话号码</TD>
          <TD 
          style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: black 1px solid; BORDER-RIGHT: 0px" 
          class=contentbg>
            <DIV style="FLOAT: left"><INPUT id=sqrphoneid_ 
            onmousemove=show_tips(this,event,350) 
            title=格式如010-88888888 onmouseout=hidden_tips() name=partphone 
            size=13 tips="请填写联系电话号码" length="100" errmsg="不能为空！" 
            valid="required" maxlength="100"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY>
            
            
            
        <c:forEach items="${parts}" var="part">
         <TBODY>
  <TR>
    <TD 
    style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-BOTTOM-WIDTH: 0px; PADDING-TOP: 0px" 
     class=contentbg colSpan=2>
      <DIV >
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
          style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" 
          class=contentbg width=130>姓名或名称&nbsp;</TD>
          <TD 
          style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" 
          class=contentbg><INPUT id=sqrnameid_ 
            onmousemove=show_tips(this,event,400) 
            onmouseout=hidden_tips() name=partname size=35 
            tips="请准确填写申请人的姓名或名称，并与其他材料保持一致，并且在申请人签章处，要求是申请人的全部签章" length="100" 
            errmsg="姓名或单位名称不能为空！" valid="required" value="<c:out value='${part.name}' />" maxlength="100"> </TD>
          <TD 
          style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" 
          class=contentbg align=left>电话号码</TD>
          <TD 
          style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: black 1px solid; BORDER-RIGHT: 0px" 
          class=contentbg>
            <DIV style="FLOAT: left"><INPUT id=sqrphoneid_ 
            onmousemove=show_tips(this,event,350) 
            title=格式如010-88888888 onmouseout=hidden_tips() name=partphone 
            size=13 tips="请填写联系电话号码" length="100" errmsg="不能为空！" 
            valid="required" value="<c:out value='${part.phone}' />" maxlength="100"> </DIV>
            <DIV style="FLOAT: right"><INPUT onclick=deleteRow(this); value=删除 type=button>
            </DIV></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY>
            </c:forEach>    
							<tr>
								<td>姓名或名称</td>
								<td><input id="sqrnameId" name="sqrname" size="35" value="<c:out value='${sqr.name}' />"
									tips="请准确填写申请人的姓名或单位名称，并与其他材料保持一致，申请人应是全部权利人，如果是多个申请人，请点击‘增加申请人’按钮，进行添加，并且在申请人签章处，要求是申请人的全部签章"
									valid="required" errmsg="姓名或单位名称不能为空！" length="100"
									onmousemove="show_tips(this,event,400)"
									onmouseout="hidden_tips()"></td>

							</tr>
							<tr>
								<td>详细地址</td>

								<td><input id="sqraddressId" name="sqraddress" size="35"
									value="<c:out value='${sqr.address}' />" tips="请填写详细地址" valid="required" errmsg="不能为空！"
									length="100" onmousemove="show_tips(this,event,350)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>邮政编码</td>
								<td><input id="sqrpostCodeId" name="sqrpostCode" size="35"
									value="<c:out value='${sqr.post_code}' />" tips="请填写邮政编码" valid="required" errmsg="不能为空!"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>联系人</td>

								<td><input id="sqrcontactPersonId" name="sqrcontactPerson"
									size="35" value="<c:out value='${sqr.contact_person}' />" tips="请填写联系人" valid="required"
									errmsg="不能为空！" length="40"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>电话号码</td>
								<td><input id="sqrphoneId" name="sqrphone"
									title="格式如010-8888888" size="35" value="<c:out value='${sqr.phone}' />" tips="请填写联系电话号码"
									length="40" valid="required" errmsg="电话号码不能为空！"
									onmousemove="show_tips(this,event,350)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>E-mail</td>

								<td><input id="sqremailId" name="sqremail" size="35"
									value="<c:out value='${sqr.email}' />" tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的部分信息我们会以EMAIL通知"
									length="50" onmousemove="show_tips(this,event,350)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>手机号码</td>
								<td><input id="sqrmobileId" name="sqrmobile" size="35"
									value="<c:out value='${sqr.mobile}' />" tips="可选项，但如果要填写请按照正确的格式" length="30"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>传真号码</td>

								<td><input id="sqrfaxId" name="sqrfax" size="35" value="<c:out value='${sqr.fax}' />"
									tips="可选项，但如果要填写请按照正确的格式" length="30"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()"></td>
							<input type="hidden" name="sqlIds" id="sqlId" value="${sqr.id}" />
							</tr>


	 <TBODY style="DISPLAY: none" id=A-0>
      <TR>
    <TD class="td_blue" colSpan=2>
      <DIV style="FLOAT: left; font-weight:bold;">代理人信息</DIV>
      <DIV style="FLOAT: right">
      <INPUT onmousemove=show_tips(this,event,150) onmouseout=hidden_tips() 
      onclick="setPeopleValue('dlr');" value=我是代理人 type=button 
      tips="代理人为当前注册用户，可以从用户注册信息中提取相关信息，无需再次输入"> 
      </DIV></TD></TR>
							<tr>
								<td colspan="2" style="padding-left:140px;">
									申请人委托下述代理人办理登记事宜，具体委托事项如下：<br>
										<input name="agent_desc"
										id="agentdescId" size="60" value="<c:out value='${z11.agent_desc}' />"
										tips="申请人委托代理的，在此栏填写委托代理权限和范围，以及代理授权期限。" valid="required"
										errmsg="代理权限说明不能为空！" length="180"
										onmousemove="show_tips(this,event,350)"
										onmouseout="hidden_tips()" type="text">
								</td>
							</tr>
							<tr>

								<td>姓名或单位名称</td>
								<td><input id="dlrnameId" name="dlrname" size="35" value="<c:out value='${dlr.name}' />"
									tips="请准确填写代理人的姓名或单位名称，并与其他材料保持一致" valid="required"
									errmsg="不能为空！" length="100"
									onmousemove="show_tips(this,event,400)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>详细地址</td>
								<td><input id="dlraddressId" name="dlraddress" size="35"
									value="<c:out value='${dlr.address}' />" tips="请填写详细地址" valid="required" errmsg="不能为空！"
									length="100" onmousemove="show_tips(this,event,350)"
									onmouseout="hidden_tips()"></td>
							</tr>

							<tr>
								<td>邮政编码</td>
								<td><input id="dlrpostCodeId" name="dlrpostCode" size="35"
									value="<c:out value='${dlr.post_code}' />" tips="请填写邮政编码" valid="required|isZip"
									errmsg="不能为空！|格式为6位数字" length="6"
									onmousemove="show_tips(this,event,350)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>联系人</td>
								<td><input id="dlrcontactPersonId" name="dlrcontactPerson"
									size="35" value="<c:out value='${dlr.contact_person}' />" tips="请填写联系人" valid="required"
									errmsg="不能为空！" length="40"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()"></td>
							</tr>

							<tr>
								<td>电话号码</td>
								<td><input id="dlrphoneId" name="dlrphone"
									title="格式如010-8888888" size="35" value="<c:out value='${dlr.phone}' />"
									tips="可选项，但如果要填写请按照正确的格式"
									onmousemove="show_tips(this,event,350)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>E-mail</td>
								<td><input id="dlremailId" name="dlremail" size="35"
									value="<c:out value='${dlr.email}' />" tips="为了及时联系，请准确填写你的电子邮件地址，登记办理过程中的部分信息我们会以EMAIL通知"
									length="50" onmousemove="show_tips(this,event,400)"
									onmouseout="hidden_tips()"></td>
							</tr>

							<tr>
								<td>手机号码</td>
								<td><input id="dlrmobileId" name="dlrmobile" size="35"
									value="<c:out value='${dlr.mobile}' />" tips="可选项，但如果要填写请按照正确的格式" length="30"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()"></td>
							</tr>
							<tr>
								<td>传真号码</td>
								<td><input id="dlrfaxId" name="dlrfax" size="35" value="<c:out value='${dlr.fax}' />"
									tips="可选项，但如果要填写请按照正确的格式" length="30"
									onmousemove="show_tips(this,event,300)"
									onmouseout="hidden_tips()">
									<input type="hidden" name="dlrIds" id="dlrId" value="${dlr.id}" />
</TD></TR></TBODY></TABLE></DIV>
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
			 class="m_button" onClick="saveForm('${pageContext.request.contextPath}/application/z11/update/save');"/>
    </TD>
    <TD width=50>
    <input type="button" value="提交" id="subId" class="m_button" onClick="subForm('${pageContext.request.contextPath}/application/z11/update/submit');"/>
    </TD>
   <td>
    <input type="button" value="取消" class="m_button" onclick=javascript:goBack(); />
   </td>
    </TR>
     </c:otherwise>
    </c:choose>
    </TBODY></TABLE></FORM></DIV></div>
</body>
<script language="javascript">
//通用校验后，特殊校验，通过返回true，不通过返回false
$(document).ready(function(){
	var publish_status = "${z11.publish_status}";
	if(publish_status=='已发表') {
		document.all("publish_state").style.display="block";
	} 
});
function afterValids(){
	
	 var flag = true;
	if(isEmptyOrNull("emedium") && isEmptyOrNull("pmedium"))
	{
		showErrorMsg(document.all("pmedium"), "留存样本不能都为空!");
		flag=false;
	}
	
	if(!isEmptyOrNull("emedium"))
	{
		if(isEmptyOrNull("ecount"))
		{
			showErrorMsg(document.all("ecount"), "电子介质件数不能为空!");
			flag=false;
		}
	}
	
	if(!isEmptyOrNull("pmedium"))
	{
		if(isEmptyOrNull("pcount"))
		{
			showErrorMsg(document.all("pcount"), "纸介质件数不能为空!");
			flag=false;
		}
	}
	
	// 判断创作完成日期中,是否选择日,若日不为空,判断月是否为空
	if(document.all('cday').value !=""){ 
	 	if(document.all('cmonth').value ==""){
	 		showErrorMsg(document.all("date_tip"), "&nbsp;&nbsp;&nbsp;&nbsp;月不能为空");
			flag = false;
	 	}
	}
	//3.创作完成日期与首次发表日期比较
	if(document.all("publish_status")[0].checked) //已发表
	{		
		if(document.all("appear_date").value != "")// 首次发表日期不为空
		{
			var appd = document.all("appear_date").value;
			var cmpd = getCompletedDate();
			if(compareDate(cmpd,appd) > 0)
			{
				showErrorMsg(document.all("appear_date"), "首次发表日期应晚于创作完成日期！");
				flag=false;
			}
		}
	} /**/
	return flag;
}
function showOpusType()
{
	
	if(getCheckedValue("opus_type") == "电影和类似摄制电影方法创作的作品"){
		opus1.innerText ="制片者姓名或名称以及作品署名";
	    var hideTab = document.all('opus2');
	    for(var i=0; i < hideTab.length; i++){
	    	document.all('opus2')[i].innerText ="制片者姓名或名称";
	    }
		
		//opus3.innerText ="制片者姓名或名称以及作品署名";
		showDate.innerText ="首次公映日期";
		showArea.innerText ="首次公映地点";
	}else{
		opus1.innerText ="作者姓名或名称以及作品署名";
		var hideTab = document.all('opus2');
	    for(var i=0; i < hideTab.length; i++){
	    	document.all('opus2')[i].innerText ="作者姓名或名称";
	    }
		
		showDate.innerText ="首次发表日期";
		showArea.innerText ="首次发表地点";
	}	 
}
function showOrHide()
{
	 if(document.all("publish_status")[0].checked == true) 
	 {
	 	document.all("publish_state").style.display="block";
	 }
	 else
	 {
	 	document.all("publish_state").style.display="none";
	 }
}
function desc_showOrHide(obj, str)
{
	if(str == "m")
	{
		if(obj.value== "原始")
		{
			document.all("jcsm").style.display = "none";
		}
		else
		{
			document.all("jcsm").style.display = "block";
		}
	}
}
function s_h_sign(obj)
{
	var _obj = getParent(obj, "TD");
	if(obj.value =='别名')
	{
		_obj.childNodes(1).style.display="block";
	}
	else
	{
		_obj.childNodes(1).style.display="none";
	}
}
function getCompletedDate()
{
	// 设置completedDate的值
		var tdate="";
		var tyear = document.getElementById('cyear').value;
		var tmonth = document.getElementById('cmonth').value;
		var tday = document.getElementById('cday').value;
		if(!isEmptyOrNull('cyear')){
			tdate = tyear;
		}
		
		if(!isEmptyOrNull('cmonth')){
			tdate += "-" + tmonth;
		} 
		if(!isEmptyOrNull('cday')){
			tdate += "-" + tday;
		}
		return tdate;
}
</script>
</html>
