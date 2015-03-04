<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改资料-个人中心-中国动漫版权服务平台</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<LINK href="css/jquery.Jcrop.css" type="text/css" rel="Stylesheet" media="screen" /> 
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script> 
<script type="text/javascript" src="js/Jcrop.min.js"></script> 
<script type="text/javascript" src="js/UtrialAvatarCutter.js"></script> 
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
							<div class="c_title">个人中心</div>
							<div class="c_right_bqinfo">
								<div class="bq_box">
									<div id="tabs1">
				<div class="menu_lable">
				<ul>
				<li><a href="mycenter/interaccount/account">登陆概况</a></li>
				<li><a href="mycenter/interaccount/registermsg">注册信息</a></li>
				<li><a href="mycenter/interaccount/updatepswd">修改密码</a></li>
				<li class="on">修改头像</li>
				<li><a href="mycenter/copyright/${sessionScope.accountSession.id}">版权服务</a></li>
				<li><a href="mycenter/pledge/${sessionScope.accountSession.id}">质权服务</a></li>
				<li><a href="mycenter/interaccount/resource_user">资源中心用户信息</a></li>
				</ul>
				</div>
			<div class="main1box">
			<div class="main" id="main1">
			<div class="bq_cont">
						<div class="reg_h">修改头像&nbsp;&nbsp;${resultmsg}</div>
						<div id="onediv" class="reg_photo0914">
                          <form action="mycenter/updateimage/${sessionScope.CCCS_USERID}" enctype="multipart/form-data" 
                                method="post" id="formId">
                                <input type="hidden" name="oldimage" value="${sessionScope.accountSession.portraitimg}"/>
                                <input type="file" name="enterprisefile" id="fileIds"/>
                          </form>
				</div>
				
				<div id="twodiv" style="display: none;">
        <form action="mycenter/clearimage/${sessionScope.CCCS_USERID}" id="twoformid" name="formname" method="post">
            <br><br>
                <div id="picture_original">
                <img id="jietuId" src="${imageurl}" width="600"/>
                </div>  
                <div id="picture_100" class="picture_small"></div> 
                <br>
                <input type="hidden" name="parentImgUrl" value="${imageurl}" />
                <input type="hidden" name="imageWidth" value="${imageWidth}" />
                <input type="hidden" id="x1id" name="x1" value="60" />
                <input type="hidden" id="y1id" name="y1" value="60" />
                <input type="hidden" id="w1id" name="width" value="60" />
                <input type="hidden" id="h1id" name="height" value="60" />
                <input type="button" value="确定" id="buttonclear" class="m_button0807"/>
        </form>
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
<!-- 弹出截图 -->
<%-- <div class="showImage" id="twodiv" style="visibility: hidden;">
        <form action="mycenter/clearimage/${sessionScope.CCCS_USERID}" id="twoformid" name="formname" method="post">
            <br><br>
                <div id="picture_original">
                <img id="jietuId" src="${imageurl}" />
                </div>  
                <div id="picture_100" class="picture_small"></div> 
                <br>
                <input type="hidden" name="parentImgUrl" value="${imageurl}" />
                <input type="hidden" id="x1id" name="x1" value="60" />
                <input type="hidden" id="y1id" name="y1" value="60" />
                <input type="hidden" id="w1id" name="width" value="60" />
                <input type="hidden" id="h1id" name="height" value="60" />
                <input type="button" value="确定" id="buttonclear" class="m_button0807"/>
        </form>
        <input name="" type="button" value=" 关闭 " onclick="closeDiv('${imageurl}');"/>
</div> --%>
</body>
<script language="javascript">
$(document).ready(function(){
	var parenturl = "${imageurl}";
	if(parenturl.length>0) {
	$("#twodiv").css("display","block");
		//var content = window.document.getElementById("twodiv");
		   //弹出(设置透明度为1并且visibility为visible)
		 //  content.style.opacity = "1";
		 //  content.style.visibility = "visible";
		var cutter = new jQuery.UtrialAvatarCutter( 
				{ 
				//主图片所在容器ID 
				content : "picture_original", 
				//缩略图配置,ID:所在容器ID;width,height:缩略图大小 
				purviews : [{id:"picture_100",width:60,height:60}], 
				//选择器默认大小 
				selector : {width:60,height:60} 
				});
				$(document).ready(function(){ 
			    	cutter.init(); 
				}); 
	}
});
$("#fileIds").change(function(){
	$("#formId").submit();
  });
  $("#buttonclear").click(function(){
	  getXy();//提交之前调用此方法，获得参数给hidden 
	  $("#twoformid").submit();
  });
//关闭弹出层
/* function closeDiv(oldimage) {
	location.href="${request.pageContext.contextPath}/mycenter/calloffupdateimg?parentImgUrl="+oldimage;
    var content2 = document.getElementById("twodiv");
        content2.style.visibility="hidden";
        $("#twodiv").css("display","none");
} */
</script>
</html>
