<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册-中国动漫版权服务平台</title>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.alerts.js"></script>
<link href="${pageContext.request.contextPath}/css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/province.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$.initProv("#province", "#city", "0", "0");
	});
</script>

</head>

<body>
	<div class="container_bg">
		<div class="contanier">
			<!--navend-->
			<%@ include file="header.jsp"%>
			<!--navend end-->
			<!--注册内容-->
			<div class="reg_content">
				<div class="reg_top">
					<img src="${pageContext.request.contextPath}/images/navbottom.gif" />
				</div>
				<div class="reg_cont">

					<div class="reg_c_box" style="display: ">
							<div class="reg_title">用户注册</div>
						<%@ include file="message.jsp"%>

						<div class="reg_info">
							<div class="reg_t">
								如果您已在此平台注册，请<a href="/">点击此处</a>登录

							</div>
							<form:form modelAttribute="account" action=""
								method="post">
								<div class="reg_h">账号信息</div>
								<form:hidden path="type" value="${account.type}" />
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="27%" class="r_left">用户名：<span>*</span>
										</td>
										<td width="28%"><form:input path="passport"
												class="r_input" maxlength="20"/></td>
										<td width="45%"><div class="r_ts">用户名可使用中文，字母，数字或符号的组合，长度为4-20字符</div>
										</td>
									</tr>
									<tr>
										<td class="r_left">密码：<span>*</span>
										</td>
										<td><form:password path="passwd" class="r_input" maxlength="20" onblur="chkpwd(this)"/>
										</td>
										<td><div class="r_ts">密码可使用字母加数字或符号的组合,长度为4-20个字符</div>
										<div id="chkResult"></div>
										</td>
									</tr>
									<tr>
										<td class="r_left">确认密码：<span>*</span>
										</td>
										<td><input type="password" id="re_passwd"
											name="re_passwd" class="r_input" maxlength="20"/>
										</td>
										<td><div class="r_ts">请再次输入您设置的密码</div>
										</td>
									</tr>

									<tr>
										<td class="r_left">电子邮箱：<span>*</span>
										</td>
										<td><form:input path="email" class="r_input" maxlength="100"/>
										</td>
										<td><div class="r_ts" style=" line-height:18px;">请填写真实有效邮箱，此邮箱将用于用户密码找回,长度为100个字符以内</div></td>
									</tr>
								</table>
									<div class="reg_h">个人信息</div>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								<td colspan="3"><div class="r_ts" style="line-height: 18px;">此栏信息可直接用于申请表中申请人信息填写</div></td>
								</tr>
									<tr>
										<td width="27%" class="r_left">姓名或单位名称：
										</td>
										<td width="28%"><form:input path="name" class="r_input" maxlength="50"/>
										</td>
										<td width="45%"><div class="r_ts" style="line-height: 18px;">长度为50个字符以内</div></td>
									</tr>
									<tr>
										<td class="r_left">详细地址：
										</td>
										<td><form:input path="address" class="r_input" maxlength="100"/>
										</td>
										<td><div class="r_ts" style="line-height: 18px;">长度为100个字符以内</div>
										</td>
									</tr>
									<tr>
										<td class="r_left">邮政编码：
										</td>
										<td><form:input path="postcode" class="r_input" maxlength="8"/>
										</td>
										<td><div class="r_ts" style="line-height: 18px;">长度为8个字符以内</div>
										</td>
									</tr>
									<tr>
										<td class="r_left">联系人：
										</td>
										<td><form:input path="p_name" class="r_input" maxlength="50"/>
										</td>
										<td><div class="r_ts" style="line-height: 18px;">长度为50个字符以内</div>
										</td>
									</tr>
									<tr>
										<td class="r_left">电话号码：
										</td>
										<td><form:input path="phone" class="r_input" maxlength="20"/>
										</td>
										<td><div class="r_ts" style="line-height: 18px;">长度为20个字符以内</div>
										</td>
									</tr>
									<tr>
										<td class="r_left">E-mail：
										</td>
										<td><form:input path="peremail" class="r_input" maxlength="100"/>
										</td>
										<td><div class="r_ts" style="line-height: 18px;">长度为100个字符以内</div>
										</td>
									</tr>
									<tr>
										<td class="r_left">手机号码：
										</td>
										<td><form:input path="mobile" class="r_input" maxlength="11"/>
										</td>
										<td><div class="r_ts" style="line-height: 18px;">长度为11个字符以内</div>
										</td>
									</tr>
									<tr>
										<td class="r_left">传真号码：
										</td>
										<td><form:input path="fax" class="r_input" maxlength="20"/>
										</td>
										<td><div class="r_ts" style="line-height: 18px;">长度为20个字符以内</div>
										</td>
									</tr>
								</table>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="32%" class="r_left">验证码：<span>*</span>
										</td>
										<td width="16%"><input type="text" name="captcha"
											id="captcha" class="r_input" />
										</td>
										<td width="42%"><div>
						<img src="${pageContext.request.contextPath}/account/captcha-image" width="80" height="24"
						   id="imagedid" onclick="getValidateServlets();" onmouseover="changCurso();" />
											</div>
										</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td colspan="2">
											<div>
												<input name="checkbox" type="checkbox" id="checkboxid"
													/> 同意“服务条款”和“隐私权保护和个人信息利用政策”
											</div>
											<div class="t_tk">
												<textarea name="" class="r_textarea">1. 接受条款
通过首页进入网站即表示您已经同意自己与中国动漫作品版权服务平台订立本协议，且您将受本协议的条款和条件 ("条款")之 约束。中国动漫作品版权服务平台可随时自行全权决定更改"条款"。如"条款"有任何变更，中国动漫作品版权服务平台将在其网站上刊载公告，通知予您。如您不同意相关变更，必须停止使用"服务"。经修订的"条款"一经在中国动漫作品版权服务平台网站上公布后，立即自动生效。您登录或继续使用"服务"将表示您接受经修订的"条款"。除另行明确声明外，任何使"服务"范围扩大或功能增强的新内容均受本协议约束。除非经中国动漫作品版权服务平台的授权高层管理人员签订书面协议，本协议不得另行作出修订。 

2. 使用中国动漫作品版权服务平台的主体
"服务"仅供能够根据相关法律订立具有法律约束力的合约的自然人或法人使用。因此，您的年龄必须在十六周岁或以上，或者具有企业法人营业执照或者营业执照才可使用本网站服务。如不符合本项条件，请勿使用"服务"。中国动漫作品版权服务平台可随时自行全权决定拒绝向任何人士提供"服务"。"服务"不会提供给被暂时或永久中止资格的中国动漫作品版权服务平台会员。

3. 收费
本网站保留在根据第1条通知您后，收取"服务"费用的权利。您因进行交易、向本网站获取有偿服务或接触本网站服务器而发生的所有应纳税赋，以及一切硬件、软件、服务及其他方面的费用均由您负责支付。本网站保留在无须发出通知的情况下，暂时或永久地更改或停止部份或全部"服务"的权利。

4. 注册会员的资料
"您的资料"包括您在注册、交易或列举物品过程中、在任何公开信息场合或通过任何电子邮件形式，向本网站或其他用户提供的任何资料，包括数据、文本、软件、音乐、声响、照片、图画、影像、词句或其他材料。您应对"您的资料"负全部责任，而本网站仅作为您在网上发布和刊登"您的资料"的被动渠道。但是，倘若本网站认为"您的资料"可能使本网站承担任何法律或道义上的责任，或可能使本网站 (全部或部份地) 失去本网站的互联网服务供应商或其他供应商的服务，或您未在中国动漫作品版权服务平台规定的期限内登录或再次登录网站，则本网站可自行全权决定对"您的资料"采取本网站认为必要或适当的任何行动，包括但不限于删除该类资料。您特此保证，您对提交给中国动漫作品版权服务平台的"您的资料"拥有全部权利，包括全部版权。您确认，中国动漫作品版权服务平台没有责任去认定或决定您提交给本网站的资料哪些是应当受到保护的，对享有"服务"的其他用户使用"您的资料"，本网站也不必负责。

5.1 注册义务
如您在中国动漫作品版权服务平台网站注册，您同意：
(a) 根据中国动漫作品版权服务平台所刊载的商务会员资料表格的要求，提供关于您或贵网站的真实、准确、完整和反映当前情况的资料；
(b) 维持并及时更新商务会员资料，使其保持真实、准确、完整和反映当前情况。倘若您提供任何不真实、不准确、不完整或不能反映当前情况的资料，或中国动漫作品版权服务平台有合理理由怀疑该等资料不真实、不准确、不完整或不能反映当前情况，中国动漫作品版权服务平台有权暂停或终止您的注册身份及资料，并拒绝您在目前或将来对"服务"(或其任何部份) 以任何形式使用。如您代表一家网站或其他法律主体在本网站登记，则您声明和保证，您有权使该网站或其他法律主体受本协议"条款"约束。

5.2 会员注册名、密码和保密
在登记过程中，您将选择商务会员注册名和密码。您须自行负责对您的商务会员注册名和密码保密，且须对您在商务会员注册名和密码下发生的所有活动承担责任。您同意：(a) 如发现任何人未经授权使用您的商务会员注册名或密码，或发生违反保密规定的任何其他情况，您会立即通知中国动漫作品版权服务平台；及 (b) 确保您在每个上网时段结束时，以正确步骤离开网站。中国动漫作品版权服务平台不能也不会对因您未能遵守本款规定而发生的任何损失或损毁负责。

5.3 会员作品代理规则
您同意，"您的资料"和您供在中国动漫作品版权服务平台网站上交易的任何"作品"符合以下要求：
a. 您交予中国动漫作品版权服务平台上进行代理的"作品"必须是真实、完整和有效的。
b. 不会有欺诈成份，与售卖伪造或盗窃无涉；
c. 不会侵犯任何第三者对该物品享有的物权，或版权、专利、商标、商业秘密或其他知识产权，或隐私权、名誉权；
d. 不会违反任何法律、法规、条例或规章 (包括但不限于关于规范出口管理、贸易配额、保护消费者、不正当竞争或虚假广告的法律、法规、条例或规章)；
e. 不会含有诽谤（包括商业诽谤）、非法恐吓或非法骚扰的内容；
f. 不会含有淫秽、或包含任何儿童色情内容；
g. 不会含有蓄意毁坏、恶意干扰、秘密地截取或侵占任何系统、数据或个人资料的任何病毒、伪装破坏程序、电脑蠕虫、定时程序炸弹或其他电脑程序；
h. 不会直接或间接与下述各项作品或服务连接，或包含对下述各项作品或服务的描述：(Ⅰ) 本协议项下禁止的作品或服务；或 (Ⅱ) 您无权连接或包含的作品或服务。此外，您同意不会：(Ⅲ) 在与任何连锁信件、大量胡乱邮寄的电子邮件、滥发电子邮件或任何复制或多余的信息有关的方面使用"服务"；(Ⅳ) 未经其他人士同意，利用"服务"收集其他人士的电子邮件地址及其他资料；或 (Ⅴ) 利用"服务"制作虚假的电子邮件地址，或以其他形式试图在发送人的身份或信息的来源方面误导其他人士。

5.4 违禁作品
您不得在本网站公布或通过本网站展示或代理：
(a) 可能使本网站违反任何相关法律、法规、条例或规章的任何动漫作品； 
(b) 或目前列入中国动漫作品版权服务平台被禁止物品清单的任何动漫作品。中国动漫作品版权服务平台被禁止作品清单经在此提及而被纳入本协议，并可随时加以更新。

6.隐私
尽管有第6条所规定的许可使用权，中国动漫作品版权服务平台将仅根据本网站的隐私声明使用"您的资料"。本网站隐私声明的全部条款属于本协议的一部份，因此，您必须仔细阅读。请注意，您一旦自愿地在中国动漫作品版权服务平台交易地点披露"您的资料"，该等资料即可能被其他人士获取和使用。

7. 终止或访问限制
您同意，中国动漫作品版权服务平台可自行全权决定以任何理由 (包括但不限于中国动漫作品版权服务平台认为您已违反本协议的字面意义和精神，或以不符合本协议的字面意义和精神的方式行事，或您在超过90天的时间内未以您的帐号及密码登录网站) 终止您的"服务"密码、帐户 (或其任何部份) 或您对"服务"的使用，并删除和丢弃您在使用"服务"中提交的的"您的资料"。中国动漫作品版权服务平台同时可自行全权决定，在发出通知或不发出通知的情况下，随时停止提供"服务"或其任何部份。您同意，根据本协议的任何规定终止您使用"服务"之措施可在不发出事先通知的情况下实施，并承认和同意，中国动漫作品版权服务平台可立即使您的帐户无效，或撤销您的帐户以及在您的帐户内的所有相关资料和档案，和/或禁止您进一步接入该等档案或"服务"。帐号终止后，中国动漫作品版权服务平台没有义务为您保留原帐号中或与之相关的任何信息，或转发任何未曾阅读或发送的信息给您或第三方。此外，您同意，中国动漫作品版权服务平台不会就终止您接入"服务"而对您或任何第三者承担任何责任。

8. 违反规则会有什么后果？
在不限制其他补救措施的前提下，发生下述任一情况，本网站可立即发出警告，暂时中止、永久中止或终止您的商务会员资格，删除您的任何现有产品信息，以及您在网站上展示的任何其他资料：(i) 您违反本协议；(ii) 本网站无法核实或鉴定您向本网站提供的任何资料；或 (iii) 本网站相信您的行为可能会使您、本网站用户或通过本网站或本网站网站提供服务的第三者服务供应商发生任何法律责任。在不限制任何其他补救措施的前提下，倘若发现您从事涉及本网站网站的诈骗活动，中国动漫作品版权服务平台可暂停或终止您的帐户。

9. 责任范围
您明确理解和同意，中国动漫作品版权服务平台不对因下述任一情况而发生的任何损害赔偿承担责任，包括但不限於利润、商誉、使用、数据等方面的损失或其他无形损失的损害赔偿 (无论中国动漫作品版权服务平台是否已被告知该等损害赔偿的可能性)：(i) 使用或未能使用"服务"；(ii) 因通过或从"服务"购买或获取任何货物、产品、数据、资料或服务，或通过或从"服务"接收任何信息或缔结任何交易所产生的获取替代货物和服务的费用；(iii) 未经批准接入或更改您的传输资料或数据；(iv) 任何第三者对"服务"的声明或关於"服务"的行为；或 (v) 因任何原因而引起的与"服务"有关的任何其他事宜，包括疏忽。

10. 遵守法律
您应遵守与您使用"服务"，以及与您竞买、购买和销售任何物品以及提供商贸信息有关的所有相关的法律、法规、条例和规章。

11. 代理关系
您与中国动漫作品版权服务平台为独立订约人关系。本协议无意结成或创设任何代理、合伙、合营、雇用与被雇用或特许权授予与被授予关系，以上各种权利授予与被授予关系，均应由您与本网站达成自愿平等的合作关系后，签订进一步的协议方可确定。

12. 广告和金融服务
您与在"服务"上或通过"服务"物色的刊登广告人士通讯或进行业务往来或参与其推广活动，包括就相关货物或服务付款和交付相关货物或服务，以及与该等业务往来相关的任何其他条款、条件、保证或声明，仅限于在您和该刊登广告人士之间发生。您同意，对于因任何该等业务往来或因在"服务"上出现该等刊登广告人士而发生的任何种类的任何损失或损毁，中国动漫作品版权服务平台无需负责或承担任何责任。您如打算通过"服务"创设或参与与任何网站、股票行情、投资或证券有关的任何服务，或通过"服务"收取或要求与任何网站、股票行情、投资或证券有关的任何新闻信息、警戒性信息或其他资料，敬请注意，中国动漫作品版权服务平台不会就通过"服务"传送的任何该等资料的准确性、有用性或可用性、可获利性负责或承担任何责任，且不会对根据该等资料而作出的任何交易或投资决策负责或承担任何责任。

13. 不可抗力
对于因本网站合理控制范围以外的原因，包括但不限於自然灾害、罢工或骚乱、物质短缺或定量配给、暴动、战争行为、政府行为、通讯或其他设施故障或严重伤亡事故等，致使本网站延迟或未能履约的，中国动漫作品版权服务平台不对您承担任何责任。

14. 转让
中国动漫作品版权服务平台若因商业发展规划或经营变动等原因，需要将其业务转让给其他权利主体，因此而发生的转让本协议无需经您同意。

15. 其他规定
本协议构成您和中国动漫作品版权服务平台之间的全部协议，规定了您对"服务"的使用，并取代您和中国动漫作品版权服务平台先前订立的任何书面或口头协议。本协议各方面应受中华人民共和国大陆地区法律的管辖。倘若本协议任何规定被裁定为无效或不可强制执行，该项规定应被撤销，而其余规定应予执行。条款标题仅为方便参阅而设，并不以任何方式界定、限制、解释或描述该条款的范围或限度。本网站未就您或其他人士的某项违约行为采取行动，并不表明本网站撤回就任何继后或类似的违约事件采取行动的权利。

16. 仲裁
因本协议或本网站服务所引起或与其有关的任何争议应提交中国北京市仲裁委员会并根据其适用的仲裁规则进行仲裁裁决。任何该等争议应单独地仲裁，不得与任何其他方的争议在任何仲裁中合并处理。仲裁应在中国北京市进行，而仲裁裁决可提交对其有管辖权的任何法院予以强制执行。您或中国动漫作品版权服务平台在仲裁进行期间，可向中国北京地区内具有管辖权的法院寻求为保护您或中国动漫作品版权服务平台的权利或财产所需的任何临时或初步补救措施，包括但不限于财产保全或证据保全措施。

17. 解释权
本协议条款的解释权及对本网站使用的解释权归结于“中国动漫作品版权服务平台”所有。
</textarea>
											</div></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><input value="" type="button" class="reg_button"
											title="立即注册" id="buttonId"></input></td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</form:form>
						</div>
					</div>

				</div>
				<div>
					<img src="${pageContext.request.contextPath}/images/cont_button.gif" />
				</div>
			</div>
			<!--注册内容 end-->
			<!--底部-->
			<%@ include file="footer.jsp"%>
			<!--底部 end-->
		</div>
	</div>
</body>
<script language="javascript">
function getValidateServlets()
{
    document.getElementById("imagedid").src="${pageContext.request.contextPath}/account/captcha-image?"+Math.random();
}
function changCurso()
{
   document.getElementById("imagedid").style.cursor = "pointer";
}

function chkpwd(obj){
    var t=obj.value;
    var id=getResult(t);
    $("#chkResult").empty();
    if(id==0) {
       $("#chkResult").
       html("弱:<img src='${pageContext.request.contextPath}/images/password_img01.gif'/>");
    }
    else if(id==1){
     $("#chkResult").
     html("中:<img src='${pageContext.request.contextPath}/images/password_img02.gif'/>");
    }
    else if(id==2){
     $("#chkResult").
     html("中:<img src='${pageContext.request.contextPath}/images/password_img02.gif'/>");
    }
    else if(id==3){
     $("#chkResult").
     html("强:<img src='${pageContext.request.contextPath}/images/password_img03.gif'/>");
    }
   }
   
   //定义检测函数,返回0/1/2/3分别代表无效/差/一般/强
   function getResult(s){
    if(s.length < 6){
     return 0;
    }
    var ls = 0;
    if (s.match(/[a-z]/ig)){
     ls++;
    }
    if (s.match(/[0-9]/ig)){
     ls++;
    }
     if (s.match(/(.[^a-z0-9])/ig)){
     ls++;
    }
    if (s.length < 6 && ls > 0){
     ls--;
    }
    return ls
   }
   
$("#buttonId").click(function(){
	var isNumber = /^[-\+]?\d+(\.\d+)?$/;
	var isEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)/;
	var isPhone = /(0[0-9]{2,3}-)?([2-9][0-9]{6,7})+(-[0-9]{1,4})?$/;
	var isMobile =  /^1[3|4|5|8][0-9]\d{4,8}$/;
     if($("#passport").val().length<4){
    	 alert("请输入大于4个字符的用户名!");
    	 $("#passport").focus();
    	 return;
     }
     if($("#passwd").val().length<4) {
    	 alert("请输入大于4个字符的密码!");
    	 $("#passwd").focus();
    	 return;
     }
     if($("#re_passwd").val().length<4 || $("#re_passwd").val()!=$("#passwd").val()) {
    	 alert("请保持新密码与确认密码相同!");
    	 $("#re_passwd").focus();
    	 return;
     }
     if($("#email").val().length==0 || !isEmail.test($("#email").val())) {
    	 alert("请输入通用格式的电子邮箱!"); 
    	 $("#email").focus();
    	 return;
     }
     if($("#postcode").val().length>0 && !isNumber.test($("#postcode").val())) {
    	 alert("请输入正确格式的邮政编码!");
    	 $("#postcode").focus();
    	 return;
     }
     if($("#phone").val().length>0 && !isPhone.test($("#phone").val())) {
    	 alert("请输入正确格式的电话号码!");
    	 $("#phone").focus();
    	 return;
     }
     if($("#peremail").val().length>0 && !isEmail.test($("#peremail").val())) {
    	 alert("请输入通用格式的E-mail!");
    	 $("#peremail").focus();
    	 return;
     }
     if($("#mobile").val().length>0 && !isMobile.test($("#mobile").val())) {
    	 alert("请输入正确格式的手机号码!");
    	 $("#mobile").focus();
    	 return;
     }
     if($("#fax").val().length>0 && !isPhone.test($("#fax").val())) {
    	 alert("请输入正确格式的传真号码!");
    	 $("#fax").focus();
    	 return;
     }
     if($("#captcha").val().length==0) {
    	 alert("请输入正确的验证码!");
    	 $("#captcha").focus();
    	 return;
     }
     if(!$('#checkboxid').is(':checked')){
    	 alert("请勾选服务条款!");
    	 $("#checkboxid").focus();
    	 return; 
     }
	document.forms[0].action="${pageContext.request.contextPath}/account/signup";
	document.forms[0].submit();
});
</script>
</html>
