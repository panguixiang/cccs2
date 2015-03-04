<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国动漫版权服务平台管理后台</title>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/manage.css" rel="stylesheet" type="text/css" />
</head>
	<div class="m_left">

		<div class="m_left_t" id="aftmeu1">
			<h3 class="menu">后台管理系统菜单</h3>
			<ul class="menu_ul">
				<li>
					<a href="#" onclick="return false;" val="manage/body">后台首页</a>
				</li>
				<li id="aftmeu11" style="display:none">
					<a href="#" onclick="return false;" val="manage/article/indexnewslist?pager.offset=0">首页新闻轮播</a>
				</li>
				<li id="aftmeu12" style="display:none">
					<a href="#" onclick="return false;" 
					val="manage/info/stationmaillist">站内信</a>
				</li>
				<li id="aftmeu13" style="display:none">
					<a href="#" onclick="return false;" 
					val="manage/info/friendslist">友情链接</a>
				</li>
					<li id="aftmeu36" style="display:none">
					<a href="#" onclick="return false;" val="manage/application/applyknow?pager.offset=0">申请须知</a>
				</li>
				<li>
					<a href="manage/signout" target="_parent">退出系统</a>
				</li>
			</ul>
		</div>

		<div class="m_left_t" id="aftmeu2" style="display:none">
			<h3 class="menu">新闻动态管理</h3>
			<ul class="menu_ul">
				<li id="aftmeu21" style="display:none">
					<a href="#" onclick="return false;" val="manage/article/list?pager.offset=0&subject=dt">中心动态</a>
				</li>
				<li id="aftmeu22" style="display:none">
					<a href="#" onclick="return false;" val="manage/article/list?pager.offset=0&subject=yw">版权要闻</a>
				</li>
				<li id="aftmeu23" style="display:none">
					<a href="#" onclick="return false;" val="manage/article/list?pager.offset=0&subject=zx">业界资讯</a>
				</li>
				<li id="aftmeu24" style="display:none">
					<a href="#" onclick="return false;" val="manage/article/list?pager.offset=0&subject=gz">热点关注</a>
				</li>
			</ul>
		</div>

		<div class="m_left_t" id="aftmeu3" style="display:none">
			<h3 class="menu">版权服务</h3>
			<ul class="menu_ul">
				<li id="aftmeu31" style="display:none">
					<a href="#" onclick="return false;" val="manage/app_article/list/1">作品著作权相关登记</a>
				</li>
				<li id="aftmeu32" style="display:none">
					<a href="#" onclick="return false;" val="manage/app_article/list/2">计算机软件相关登记</a>
				</li>
				<li id="aftmeu33" style="display:none">
					<a href="#" onclick="return false;" val="manage/app_article/list/3">作品著作权质权相关登记</a>
				</li>
				<li id="aftmeu34" style="display:none">
					<a href="#" onclick="return false;" val="manage/app_article/list/4">计算机软件著作权质权相关登记</a>
				</li>
				<li id="aftmeu35" style="display:none">
					<a href="#" onclick="return false;" val="manage/article/list?pager.offset=0&subject=flfw">版权法律服务</a>
				</li>
			<!-- 	<li id="aftmeu36" style="display:none">
					<a href="#" onclick="return false;" val="manage/application/applyknow?pager.offset=0">申请须知</a>
				</li> -->
			</ul>
		</div>

		<div class="m_left_t" id="aftmeu4" style="display:none">
			<h3 class="menu">地方分中心</h3>
			<ul class="menu_ul">
				<li id="aftmeu41" style="display:none">
					<a href="#" onclick="return false;" val="manage/article/list?pager.offset=0&subject=fzxxw">分中心新闻</a>
				</li>
			</ul>
		</div>

		<div class="m_left_t" id="aftmeu5" style="display:none">
			<h3 class="menu">资源中心</h3>
				<div id="aftmeu51" style="display:none">
					<h4 class="menu">资源汇总</h4>
					<ul class="menu_ul">
						<li id="aftmeu511" style="display:none">
							<a href="#" onclick="return false;" val="manage/cartoon/list/1">展示中心</a>
						</li>
						<li id="aftmeu512" style="display:none">
							<a href="#" onclick="return false;" val="manage/cartoon/list/2">脚本中心</a>
						</li>
					</ul>
				</div>
				
				<div id="aftmeu52" style="display:none">
					<h4 class="menu">回收站</h4>
					<ul class="menu_ul">
						<li id="aftmeu521" style="display:none">
							<a href="#" onclick="return false;" val="manage/cartoon/recycle/1">展示中心</a>
						</li>
						<li id="aftmeu522" style="display:none">
							<a href="#" onclick="return false;" val="manage/cartoon/recycle/2">脚本中心</a>
						</li>
					</ul>
				</div>
		</div>

		<div class="m_left_t" id="aftmeu6" style="display:none">
			<h3 class="menu">版权服务表单处理</h3>
			<div id="aftmeu63" style="display:none">
					<h4 class="menu">表单汇总</h4>
					<ul class="menu_ul">
						<li id="aftmeu631" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/all?type=1">作品著作权相关登记</a>
						</li>
						<li id="aftmeu632" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/all?type=2">计算机软件著作权相关登记</a>
						</li>
					</ul>
				</div>
				
				<div id="aftmeu61" style="display:none">
					<h4 class="menu">无分中心覆盖区域</h4>
					<ul class="menu_ul">
						<li id="aftmeu611" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/0?type=1">作品著作权相关登记</a>
						</li>
						<li id="aftmeu612" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/0?type=2">计算机软件著作权相关登记</a>
						</li>
					</ul>
				</div>
				
				<div id="aftmeu64" style="display:none">
					<h4 class="menu">烟台分中心</h4>
					<ul class="menu_ul">
						<li id="aftmeu641" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/1?type=1">作品著作权相关登记</a>
						</li>
						<li id="aftmeu642" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/1?type=2">计算机软件著作权相关登记</a>
						</li>
					</ul>
				</div>
				
				<div id="aftmeu62" style="display:none">
					<h4 class="menu">回收站</h4>
					<ul class="menu_ul">
						<li id="aftmeu621" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/recycllist?type=1">作品著作权相关登记</a>
						</li>
						<li id="aftmeu622" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/recycllist?type=2">计算机软件著作权相关登记</a>
						</li>
					</ul>
				</div>
			
		</div>
		
		<div class="m_left_t" id="aftmeu7" style="display:none">
			<h3 class="menu">质权服务表单处理</h3>
			
			<div id="aftmeu73" style="display:none">
					<h4 class="menu">表单汇总</h4>
					<ul class="menu_ul">
						<li id="aftmeu731" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/all?type=3">作品著作权质权相关登记</a>
						</li>
						<li id="aftmeu732" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/all?type=4">计算机软件著作权质权相关登记</a>
						</li>
					</ul>
				</div>
				
				
				<div id="aftmeu71" style="display:none">
					<h4 class="menu">无分中心覆盖区域</h4>
					<ul class="menu_ul">
						<li id="aftmeu711" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/0?type=3">作品著作权质权相关登记</a>
						</li>
						<li id="aftmeu712" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/0?type=4">计算机软件著作权质权相关登记</a>
						</li>
					</ul>
				</div>
				
				
				<div id="aftmeu74" style="display:none">
					<h4 class="menu">烟台分中心</h4>
					<ul class="menu_ul">
						<li id="aftmeu741" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/1?type=3">作品著作权质权相关登记</a>
						</li>
						<li id="aftmeu742" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/list/1?type=4">计算机软件著作权质权相关登记</a>
						</li>
					</ul>
				</div>
				
				<div id="aftmeu72" style="display:none">
					<h4 class="menu">回收站</h4>
					<ul class="menu_ul">
						<li id="aftmeu721" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/recycllist?type=3">作品著作权质权相关登记</a>
						</li>
						<li  id="aftmeu722" style="display:none">
							<a href="#" onclick="return false;" val="manage/application/recycllist?type=4">计算机软件著作权质权相关登记</a>
						</li>
					</ul>
				</div>
			
		</div>
		

		<div class="m_left_t" id="aftmeu8" style="display:none">
			<h3 class="menu">信息公示</h3>
				<div id="aftmeu81" style="display:none">
					<h4 class="menu">作品著作权相关信息</h4>
					<ul class="menu_ul">
						<li id="aftmeu810" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z11/1">Z11.作品著作权登记信息</a>
						</li>
						<li id="aftmeu811" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z21/1">Z21.著作权合同备案信息</a>
						</li>
						<li id="aftmeu812" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z31/1">Z31.与著作权有关权利事项登记信息</a>
						</li>
						<li id="aftmeu813" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z41/1">Z41.重印国外期刊合同登记信息</a>
						</li>
						<li id="aftmeu814" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z61/1">Z61.作品著作权和合同变更或补发登记信息</a>
						</li>
						<li id="aftmeu815" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z62/1">Z62.撤销作品著作权和合同登记信息</a>
						</li>
						<li id="aftmeu816" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z64/1">Z64.补发或更换登记证书信息</a>
						</li>
						<li id="aftmeu817" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z71/1">Z71.出版境外音像制品合同登记申请-录音制品</a>
						</li>
						<li id="aftmeu818" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z72/1">Z72.出版境外音像制品合同登记申请-影视作品</a>
						</li>
						<li id="aftmeu819" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z73/1">Z73.撤销出版境外音像制品合同登记信息</a>
						</li>
						<li id="aftmeu8110" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z75/1">Z75.变更出版境外音像制品合同登记信息</a>
						</li>
					</ul>
				</div>

				<div id="aftmeu82" style="display:none">
					<h4 class="menu">计算机软件著作权相关信息</h4>
					<ul class="menu_ul">
						<li id="aftmeu821" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/r11/2">R11.计算机软件著作权登记信息</a>
						</li>
						<li id="aftmeu822" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/r21/2">R21.计算机软件著作权转让或专有许可合同登记信息</a>
						</li>
						<li id="aftmeu823" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/r41/2">R41.软件登记事项变更或补充信息</a>
						</li>
						<li id="aftmeu824" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/r42/2">R42.撤销计算机软件登记信息</a>
						</li>
						<li id="aftmeu825" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/r44/2">R44.撤销或放弃计算机软件登记信息</a>
						</li>
						<li id="aftmeu826" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/r45/2">R45.补发或者换发软件登记证书信息</a>
						</li>
					</ul>
				</div>
				<div id="aftmeu83" style="display:none">
					<h4 class="menu">作品著作权质权相关信息</h4>
					<ul class="menu_ul">
						<li id="aftmeu831" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z51/3">Z51.著作权质权登记信息</a>
						</li>
						<li id="aftmeu832" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z52/3">Z52.著作权质权撤销登记信息</a>
						</li>
						<li id="aftmeu833" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z53/3">Z53.著作权质权变更登记信息</a>
						</li>
						<li id="aftmeu834" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z54/3">Z54.注销著作权质权登记信息</a>
						</li>
						<li id="aftmeu835" style="display:none">
							<a href="#" onclick="return false;" val="manage/info/infolist/z56/3">Z56.转让著作权质权登记事项信息</a>
						</li>
					</ul>
				</div>
		</div>
		 <div class="m_left_t" id="aftmeu9" style="display:none">
			<h3 class="menu">个人中心</h3>
			<ul class="menu_ul">
				<li id="aftmeu91" style="display:none">
					<a href="#" onclick="return false;" val="manage/info/userlist/list">用户查询</a>
				</li>
			</ul>
		</div>
         <div class="m_left_t" id="aftmeu10" style="display:none">
			<h3 class="menu">权限管理</h3>
			<ul class="menu_ul">
				<li id="aftmeu101" style="display:none">
					<a href="#" onclick="return false;" val="manage/info/managerlist/list">管理员查询</a>
				</li>
				<li id="aftmeu102" style="display:none">
					<a href="#" onclick="return false;" val="manage/info/rolelist/list">角色查询</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="clear"></div>
<script type="text/javascript">
$(document).ready(function(){
	//将二三级菜单设置为不可见 
	$(".menu").next("ul").css("display", "none"); 
	// $(".m_left_ts").children("ul").css("display", "none");		
	
	//单击菜单触发的事件 
	$(".menu").click(function () { 
		$(".menu").next("ul").css("display", "none");
		$(".menu ul li").removeAttr("class");//移除所有的菜单高亮
		$(this).next("ul").css("display", "block");//当前一级菜单的二级菜单设置为可见 
	})
	
	$(".menu_ul li").click(function () {
        $(".menu_ul li").removeAttr("class");//移除所有的菜单高亮  
        $(this).addClass("m_active"); //将当前菜单高亮显示
        var url =$(this).children("a").attr("val");
        window.parent.document.getElementById('center').src = url;
    });
}); 
	
$(document).ready(function(){
	 var resoucessmeu= "${sessionScope.CCCS_MENURESOURCE}"; 
	 if(resoucessmeu.length>0) {
		 var menuResources = resoucessmeu.split(",");
	     for(var s = 0;s<menuResources.length;s++) {
		  $("#"+menuResources[s]).css("display","block");
	     }
	 }
});
</script>