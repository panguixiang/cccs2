<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改资料-个人中心-中国动漫版权服务平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/province.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script language="javascript">
$(document).ready(function(){  
    //获得商户注册时的默认省市值  
    var province = "${account.province}";
    if(province=='其它') {
      $.initProv("#provinceId", "#cityId", '-1111', '0');  
    } else if(province.length==1){
    	 $.initProv("#provinceId", "#cityId", '0', '0');  
    } else {
    	 $.initProv("#provinceId", "#cityId", '${account.province}', '${account.city}');  
    }
    var center_type = "${account.center_type}";
    if(center_type == '企业') {
     nameTd.innerText ="企业名称：";
	 $("#p_nameTr").css("display","block");
	 $("#enterpriseFileTr").css("display","block");
	 businessfileSpan.innerText="上传法人证件的扫描件：";
    } else {
    	 nameTd.innerText ="真实姓名";
		 $("#p_nameTr").css("display","none");
		 $("#enterpriseFileTr").css("display","none");
		 businessfileSpan.innerText="上传证件的扫描件：";	
    }
});  

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
							<h3>
								<img src="images/i_left01.gif" />
							</h3>
							<!--登录-->
							<%@ include file="../left.jsp"%>
							<!--登录 end-->
						</div>

						<div class="c_right">
							<div class="c_title">个人中心</div>
							<div class="c_right_bqinfo">
								<div class="bq_box">
									<div id="tabs1">
				<div class="menu_lable">
				<ul>
				<li ><a href="mycenter/interaccount/account">登陆概况</a></li>
				<li><a href="mycenter/interaccount/registermsg">注册信息</a></li>
				<li><a href="mycenter/interaccount/updatepswd">修改密码</a></li>
				<li><a href="mycenter/interaccount/updateimage">修改头像</a></li>
				<li><a href="mycenter/copyright/${sessionScope.accountSession.id}">版权服务</a></li>
				<li><a href="mycenter/pledge/${sessionScope.accountSession.id}">质权服务</a></li>
				<li class="on02">资源中心用户信息</li>
				</ul>
				</div>
			<div class="main1box">
			<div class="main" id="main1">
			<div class="bq_cont bg_content0907">
				<div class="reg_h">资源中心用户信息&nbsp;&nbsp;&nbsp;${resultmsg}</div>
					<c:choose>
					<c:when test="${account.level=='1'}">
					<input type="button" name="" value="升级为资源中心用户" id="centerButton"/>
					<div id="centTrId" style="display: none;">
					</c:when>
					<c:otherwise>
					<div id="centTrId">
					</c:otherwise>
					</c:choose>
				<table width="100%" border="0" cellspacing="0"
					cellpadding="0"  class="pes_table">
					<form action="mycenter/updatecenter" enctype="multipart/form-data" method="post">
					 <input type="hidden" name="id" value="${account.id}"/>
						<tr>
						<td class="r_left">注册类型：</td>
						<td>
						<c:choose>
						<c:when test="${account.center_type==null}">
						<input name="center_type" value="个人" checked="checked" 
						 onclick="agent_showOrHide(this)" type="radio" 
						/>&nbsp;个人
						<input name="center_type" value="企业"
						onclick="agent_showOrHide(this)" type="radio"
						/>&nbsp;企业
						</c:when>
						<c:otherwise>
						<input name="center_type" value="个人"
						 onclick="agent_showOrHide(this)" type="radio" 
						 <c:if test="${account.center_type=='个人'}">checked="checked"</c:if>/>&nbsp;个人
						<input name="center_type" value="企业"
						onclick="agent_showOrHide(this)" type="radio"
						<c:if test="${account.center_type=='企业'}">checked="checked"</c:if> />&nbsp;企业
						</c:otherwise>
						</c:choose>
						</td>
						</tr>
						<tr>
						<td class="r_left" id="nameTd">真实姓名：</td>
						<td><input type="text" name="name" value="${account.name}" maxlength="100" class="r_input" /></td>
						</tr>
						<tr>
						<td class="r_left">性别：</td>
						<td>
						<select name="sex" style=" width:65px;">
						  <option value="男" <c:if test="${account.sex=='男'}">selected="selected"</c:if>>男</option>
						  <option value="女" <c:if test="${account.sex=='女'}">selected="selected"</c:if>>女</option>
						</select>
						</td>
						</tr>
						<tr>
						<td class="r_left">省份：</td>
						<td>
						<select name="province" id="provinceId" class="drop_list" onchange="selectPro();" style="float:left; margin-right:10px;"></select> 
						<c:choose>
						<c:when test="${account.city=='其它'}">
						<div id="tcityId" style="display: none;">
		                <select name="city" id="cityId" class="drop_list"></select>
		                </div>
		                <div id="otherCityId" >
		                <input type="text" name="otherCity" value="${account.city}" maxlength="100"/>
		               </div>
						</c:when>
						<c:otherwise>
						<div id="tcityId">
		                <select name="city" id="cityId" class="drop_list"></select>
		                </div>
		                <div id="otherCityId" style="display: none;">
		                <input type="text" name="otherCity" value="${account.city}" maxlength="100"/>
		               </div>
						</c:otherwise>
						</c:choose>
		                </td>
						</tr>
						<tr id="p_nameTr" style="display: none;">
						<td class="r_left">法人姓名：</td>
						<td>
						<input type="text" name="p_name" value="${account.p_name}" maxlength="100" class="r_input"/>
						</td>
						</tr>
						<tr>
						<td class="r_left">国籍：</td>
						<td>
						<input type="text" name="country" value="${account.country}" maxlength="100" class="r_input"/>
						</td>
						</tr>
						<tr>
						<td class="r_left">证件类型：</td>
						<td>
						<select name="card">
							<option value="居民身份证" <c:if test="${account.card=='居民身份证'}">SELECTED</c:if>>居民身份证</option>

							<option value="军官证" <c:if test="${account.card=='军官证'}">SELECTED</c:if>>军官证</option>

							<option value="护照" <c:if test="${account.card=='护照'}">SELECTED</c:if>>护照</option>

							<option value="企业法人营业执照" <c:if test="${account.card=='企业法人营业执照'}">SELECTED</c:if>>企业法人营业执照</option>

							<option value="组织机构代码证书" <c:if test="${account.card=='组织机构代码证书'}">SELECTED</c:if>>组织机构代码证书</option>

							<option value="事业单位法人证书" <c:if test="${account.card=='事业单位法人证书'}">SELECTED</c:if>>事业单位法人证书</option>

							<option value="社团法人证书" <c:if test="${account.card=='社团法人证书'}">SELECTED</c:if>>社团法人证书</option>

							<option value="营业执照" <c:if test="${account.card=='营业执照'}">SELECTED</c:if>>营业执照</option>

							<option value="其他有效证件" <c:if test="${account.card=='其他有效证件'}">SELECTED</c:if>>其他有效证件</option>
					 </select>
						</td>
						</tr>
						<tr>
						<td class="r_left">证件号码：</td>
						<td>
						<input type="text" name="card_number" value="${account.card_number}" maxlength="100" class="r_input"/>
		                </td>
						</tr>
						<tr>
						<td class="r_left" id="businessfileSpan">上传证件的扫描件：</td>
						<td>
						<input type="file" name="businessfile" />
						<input type="hidden" name="business_file" value="${account.business_file}" />
						<c:if test="${account.business_file != null && account.business_file != ''}">
						<%-- <img src="${account.business_file}"  width="30" height="30" /> --%>
						<a href="${account.business_file}">右键下载文件</a>
						</c:if>
						</td>
						</tr>
						<tr id="enterpriseFileTr" style="display: none;">
						<td class="r_left">上传企业证明文件：</td>
						<td>
						<input type="file" name="enterprisefile" />
						<input type="hidden" name="enterprise_file" value="${account.enterprise_file}"/>
						<c:if test="${account.enterprise_file != null && account.enterprise_file != ''}">
						 <a href="${account.enterprise_file}">右键下载文件</a>
						</c:if>
						</td>
						</tr>
						<tr>
						<td align="right"></td>
						<td style="padding-top: 15px;">
						<input type="submit" value="确定" class="m_button0807"  
						onmouseover="this.className='btn_mouseover'" 
						onmouseout="this.className='btn_mouseout'" /></td>
				     	</tr>
						</form>
				</table>
				</div>	
			</div>
			</div>
		</div>
	 </div>
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
<script language="javascript">
$("#centerButton").click(function(){
	 $("#centTrId").css("display","block");
	 $("#centerButton").css("display","none");
});
function agent_showOrHide(obj)
{
	 if(obj.value == "个人") 
	 {
		 nameTd.innerText ="真实姓名：";
		 $("#p_nameTr").css("display","none");
		 $("#enterpriseFileTr").css("display","none");
		businessfileSpan.innerText="上传证件的扫描件：";
	 }
	 else
	 {
		 nameTd.innerText ="企业名称：";
		 $("#p_nameTr").css("display","block");
		 $("#enterpriseFileTr").css("display","block");
		 businessfileSpan.innerText="上传法人证件的扫描件";
	 }
}
function selectPro(){
	if($("#provinceId").val()=='-1111') {
		$("#cityId").css("display","none");
		$("#otherCityId").css("display","block");
	} else {
		$("#cityId").css("display","block");
		$("#otherCityId").css("display","none");
	}
}
</script>
</html>
