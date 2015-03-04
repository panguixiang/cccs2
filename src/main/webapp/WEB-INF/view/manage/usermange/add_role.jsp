<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<head>
	<title>信息公示-中国动漫版权服务平台</title>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<!--新闻列表-->
	<div class="m_right">
		<h2>您当前的位置：权限管理 &gt;&gt;角色查询 &gt;&gt;
		<c:choose>
		<c:when test="${empty role}">
		新增角色
		</c:when>
		<c:otherwise>
		修改角色
		</c:otherwise>
		</c:choose>
		</h2>
		<div class="c_right_bqinfo m_right_c">
		<c:choose>
		<c:when test="${empty role}">
		<form action="manage/info/addrole/add" id="querFormId" method="post" name="querForm">
		</c:when>
		<c:otherwise>
		<form action="manage/info/addrole/update" id="querFormId" method="post" name="querForm">
		</c:otherwise>
		</c:choose>
			<div class="bq_box">
				<div>
					<input type="hidden" name="id" value="${role.id}" />
						<table cellspacing="0" cellpadding="0" width="100%"
						class="app_table">
						<tr>
								<td colspan="4"><div class="search_">
									<c:choose>
								<c:when test="${empty role}">
								新增角色
								</c:when>
								<c:otherwise>
								修改角色
								</c:otherwise>
								</c:choose>
								</div>
								</td>
						</tr>
							<tr>
							<td width="18%" align="right">
								角色名称
							</td>
							<td colspan="3">
								<input id="rolenameid" name="name" value="<c:out value='${role.name}' />" class="r_input_search0712" />
							<span id="rolenamespan"></span>
							</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="3"></td>
							</tr>
						</table>
				</div>
				<div class="s_list0920">
				<div>
					<table width="100%" border="0" cellspacing="0">
                      <tr>
                        <td width="40%" class="menu_0920 s_list_bottom s_list_right" style=" background:#e9f2f6; 
                        font-size:14px;" align="center">菜单</td>
                        <td width="60%" class="menu_0920 s_list_bottom" style=" background:#e9f2f6; font-size:14px;" 
                        align="center">操作</td>
                      </tr>
                      <tr id="oneobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu1" class="menuclass"
						<c:if test="${!empty aftmeu1}">CHECKED</c:if> />后台管理系统菜单
						</td>
                      </tr>
                    
                      <tr>
                        <td id="oneobj1" class="menu002 s_list_bottom s_list_right" width="40%">
                        <input name="resourceid" type="checkbox" value="aftmeu11" 
						<c:if test="${!empty aftmeu11}">CHECKED</c:if> onclick="getThis1(this,'oneobj');"/>首页新闻轮播
                    </td>
                        <td class="s_list_bottom" width="60%">
                        <input name="resourceid" type="checkbox" value="aft111" 
                        <c:if test="${!empty aft111}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj1');"/>发布新文章&nbsp;&nbsp;
                        <input name="resourceid" type="checkbox" value="aft112" 
                        <c:if test="${!empty aft112}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj1');"/>编辑&nbsp;&nbsp;
                        <input name="resourceid" type="checkbox" value="aft113" 
                        <c:if test="${!empty aft113}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj1');"/>删除
                    </td>
                      </tr>
                      <tr>
                        <td id="oneobj2" class="menu002 s_list_bottom s_list_right">
                       <input name="resourceid" type="checkbox"  value="aftmeu12" 
					<c:if test="${!empty aftmeu12}">CHECKED</c:if>  onclick="getThis1(this,'oneobj');"/>站内信</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft121" 
					<c:if test="${!empty aft121}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj2');"/>发布站内信&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft1211" 
					<c:if test="${!empty aft1211}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj2');"/>添加多个收件人&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft122" 
					<c:if test="${!empty aft122}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj2');"/>删除</td>
                      </tr>
                      <tr>
                        <td id="oneobj3" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox" value="aftmeu13" 
					<c:if test="${!empty aftmeu13}">CHECKED</c:if> onclick="getThis1(this,'oneobj');"/>友情链接</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft131" 
					<c:if test="${!empty aft131}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj3');"/>新增友情链接&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft133" 
					<c:if test="${!empty aft133}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj3');"/>修改&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft132" 
					<c:if test="${!empty aft132}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj3');"/>删除</td>
                      </tr>
                      
                      
                        <tr>
                        <td id="oneobj4" class="menu002 s_list_bottom s_list_right">
                        <input name="resourceid" type="checkbox"  value="aftmeu36" 
					<c:if test="${!empty aftmeu36}">CHECKED</c:if> onclick="getThis1(this,'oneobj');"/>申请须知</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft361" 
					<c:if test="${!empty aft361}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj4');"/>发布新文章&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft362" 
					<c:if test="${!empty aft362}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj4');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft363" 
					<c:if test="${!empty aft363}">CHECKED</c:if> onclick="getThis2(this,'oneobj','oneobj4');"/>删除</td>
                      </tr>
                      </table>
                     </div>
                     
                     <div>
                    <table width="100%" border="0" cellspacing="0"> 
                      <tr id="twoobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu2" 
					<c:if test="${!empty aftmeu2}">CHECKED</c:if> class="menuclass"/>新闻动态管理</td>
                      </tr>
                      <tr>
                        <td id="twoobj1" class="menu002 s_list_bottom s_list_right" width="40%"><input name="resourceid" type="checkbox"  value="aftmeu21" 
					<c:if test="${!empty aftmeu21}">CHECKED</c:if> onclick="getThis1(this,'twoobj');"/>中心动态</td>
                        <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aft211" 
					<c:if test="${!empty aft211}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj1');"/>发布新文章&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft212" 
					<c:if test="${!empty aft212}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj1');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft213" 
					<c:if test="${!empty aft213}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj1');"/>删除</td>
                      </tr>
                      <tr>
                        <td id="twoobj2"class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu22" 
					<c:if test="${!empty aftmeu22}">CHECKED</c:if> onclick="getThis1(this,'twoobj');"/>版权要闻</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft221" 
					<c:if test="${!empty aft221}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj2');"/>发布新文章&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft222" 
					<c:if test="${!empty aft222}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj2');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft223" 
					<c:if test="${!empty aft223}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj2');"/>删除</td>
                      </tr>
                      <tr>
                        <td id="twoobj3" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu23" 
					<c:if test="${!empty aftmeu23}">CHECKED</c:if> onclick="getThis1(this,'twoobj');"/>业界资讯</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft231" 
					<c:if test="${!empty aft231}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj3');"/>发布新文章&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft232" 
					<c:if test="${!empty aft232}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj3');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft233" 
					<c:if test="${!empty aft233}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj3');"/>删除</td>
                      </tr>
                      <tr>
                        <td id="twoobj4" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu24" 
					<c:if test="${!empty aftmeu24}">CHECKED</c:if> onclick="getThis1(this,'twoobj');"/>热点关注</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft241" 
					<c:if test="${!empty aft241}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj4');"/>发布新文章&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft242" 
					<c:if test="${!empty aft242}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj4');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft243" 
					<c:if test="${!empty aft243}">CHECKED</c:if> onclick="getThis2(this,'twoobj','twoobj4');"/>删除</td>
                      </tr></table>
                      </div>
                      
                      <div>
                      <table width="100%" border="0" cellspacing="0">
                      <tr id="threeobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu3" 
					<c:if test="${!empty aftmeu3}">CHECKED</c:if> class="menuclass"/>版权服务</td>
                      </tr>
                      <tr>
                        <td id="threeobj1" class="menu002 s_list_bottom s_list_right" width="40%"><input name="resourceid" type="checkbox" value="aftmeu31" 
					<c:if test="${!empty aftmeu31}">CHECKED</c:if> onclick="getThis1(this,'threeobj');"/>作品著作权相关登记</td>
                        <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aft311" 
					<c:if test="${!empty aft311}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj1');"/>发布新文章&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft312" 
					<c:if test="${!empty aft312}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj1');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft313" 
					<c:if test="${!empty aft313}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj1');"/>删除</td>
                      </tr>
                      <tr>
                        <td id="threeobj2" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu32" 
					<c:if test="${!empty aftmeu32}">CHECKED</c:if> onclick="getThis1(this,'threeobj');"/>计算机软件相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft321" 
					<c:if test="${!empty aft321}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj2');"/>发布新文章&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft322" 
					<c:if test="${!empty aft322}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj2');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft323" 
					<c:if test="${!empty aft323}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj2');"/>删除</td>
                      </tr>
                      <tr>
                        <td id="threeobj3" class="menu002 s_list_bottom s_list_right">
                     <input name="resourceid" type="checkbox" value="aftmeu33" 
					<c:if test="${!empty aftmeu33}">CHECKED</c:if> onclick="getThis1(this,'threeobj');"/>作品著作权质权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft331" 
					<c:if test="${!empty aft331}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj3');"/>发布新文章&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft332" 
					<c:if test="${!empty aft332}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj3');"/>编辑&nbsp;
					<input name="resourceid" type="checkbox" value="aft333" 
					<c:if test="${!empty aft333}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj3');"/>删除</td>
                      </tr>
                      <tr>
                        <td id="threeobj4" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu34" 
					<c:if test="${!empty aftmeu34}">CHECKED</c:if> onclick="getThis1(this,'threeobj');"/>计算机软件著作权质权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft341" 
					<c:if test="${!empty aft341}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj4');"/>发布新文章&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft342" 
					<c:if test="${!empty aft342}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj4');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft343" 
					<c:if test="${!empty aft343}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj4');"/>删除</td>
                      </tr>
                      <tr>
                        <td id="threeobj5" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu35" 
					<c:if test="${!empty aftmeu35}">CHECKED</c:if> onclick="getThis1(this,'threeobj');"/>版权法律服务</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft351" 
					<c:if test="${!empty aft351}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj5');"/>发布新文章&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft352" 
					<c:if test="${!empty aft352}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj5');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft353" 
					<c:if test="${!empty aft353}">CHECKED</c:if> onclick="getThis2(this,'threeobj','threeobj5');"/>删除</td>
                      </tr>
                    
                      </table>
                      </div>
                      
                      
                      <div>
                       <table width="100%" border="0" cellspacing="0"> 
                      <tr id="fourobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu4" 
					<c:if test="${!empty aftmeu4}">CHECKED</c:if> class="menuclass"/>地方分中心</td>
                      </tr>
                      <tr>
                        <td id="fourobj1" class="menu002 s_list_bottom s_list_right" width="40%"><input name="resourceid" type="checkbox"  value="aftmeu41" 
					<c:if test="${!empty aftmeu41}">CHECKED</c:if> onclick="getThis1(this,'fourobj');"/>分中心新闻</td>
                        <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aft411" 
					<c:if test="${!empty aft411}">CHECKED</c:if> onclick="getThis2(this,'fourobj','fourobj1');"/>发布新文章&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft412" 
					<c:if test="${!empty aft412}">CHECKED</c:if> onclick="getThis2(this,'fourobj','fourobj1');"/>编辑&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft413" 
					<c:if test="${!empty aft413}">CHECKED</c:if> onclick="getThis2(this,'fourobj','fourobj1');"/>删除</td>
                      </tr>
                      </table>
                      </div>
                       <div>
                       <table width="100%" border="0" cellspacing="0"> 
                      <tr id="fiveobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu5" 
					<c:if test="${!empty aftmeu5}">CHECKED</c:if> class="menuclass"/>资源中心</td>
                      </tr>
                       <tr id="fiveobj1">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu51" 
					<c:if test="${!empty aftmeu51}">CHECKED</c:if>  onclick="getThisOther(this,'fiveobj','aft51class');"/>资源汇总</td>
                      </tr>
                      <tr class="aft51class">
                      <td id="fiveobj11" class="menu002 s_list_bottom s_list_right" width="40%"><input name="resourceid" type="checkbox"  value="aftmeu511" 
					<c:if test="${!empty aftmeu511}">CHECKED</c:if> onclick="getThisOther2(this,'fiveobj','fiveobj1');"/>展示中心</td>
                    <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aft5111" 
					<c:if test="${!empty aft5111}">CHECKED</c:if> onclick="getThisOther3(this,'fiveobj','fiveobj1','fiveobj11');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft5112" 
					<c:if test="${!empty aft5112}">CHECKED</c:if> onclick="getThisOther3(this,'fiveobj','fiveobj1','fiveobj11');"/>删除</td>
                      </tr>
                      <tr class="aft51class">
                        <td id="fiveobj12" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu512" 
					<c:if test="${!empty aftmeu512}">CHECKED</c:if> onclick="getThisOther2(this,'fiveobj','fiveobj1');"/>脚本中心</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft5121" 
					<c:if test="${!empty aft5121}">CHECKED</c:if> onclick="getThisOther3(this,'fiveobj','fiveobj1','fiveobj12');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft5122" 
					<c:if test="${!empty aft5122}">CHECKED</c:if> onclick="getThisOther3(this,'fiveobj','fiveobj1','fiveobj12');"/>删除</td>
                      </tr>
                      
                      
                      <tr id="fiveobj2">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu52" 
					<c:if test="${!empty aftmeu52}">CHECKED</c:if> onclick="getThisOther(this,'fiveobj','aft52class');"/>回收站</td>
                      </tr>
                      <tr class="aft52class">
                        <td id="fiveobj21" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu521" 
					<c:if test="${!empty aftmeu521}">CHECKED</c:if> onclick="getThisOther2(this,'fiveobj','fiveobj2');"/>展示中心</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft5211" 
					<c:if test="${!empty aft5211}">CHECKED</c:if> onclick="getThisOther3(this,'fiveobj','fiveobj2','fiveobj21');"/>恢复&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft5212" 
					<c:if test="${!empty aft5212}">CHECKED</c:if> onclick="getThisOther3(this,'fiveobj','fiveobj2','fiveobj21');"/>彻底删除</td>
                      </tr>
                       <tr class="aft52class">
                        <td id="fiveobj22" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu522" 
					<c:if test="${!empty aftmeu522}">CHECKED</c:if> onclick="getThisOther2(this,'fiveobj','fiveobj2');"/>脚本中心</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft5221" 
					<c:if test="${!empty aft5221}">CHECKED</c:if> onclick="getThisOther3(this,'fiveobj','fiveobj2','fiveobj22');"/>恢复&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft5222" 
					<c:if test="${!empty aft5222}">CHECKED</c:if> onclick="getThisOther3(this,'fiveobj','fiveobj2','fiveobj22');"/>彻底删除</td>
                      </tr>    
                      </table>
                      </div>
                      <!-- 注：对分中心id设置的解释：前缀（aftarea）+ 功能(1=审核,2=开放或关闭修改权限,3=删除)+ 表单所属大类(1,2,3,4)+ 表单所属区域代号(0=无分中心,1=烟台分中心)-->
                      <div>
                       <table width="100%" border="0" cellspacing="0"> 
                      <tr id="sixobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu6" 
					<c:if test="${!empty aftmeu6}">CHECKED</c:if> class="menuclass"/>版权服务表单处理</td>
                      </tr>
                       <tr id="sixobj3">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu63" 
					<c:if test="${!empty aftmeu63}">CHECKED</c:if>  onclick="getThisOther(this,'sixobj','aft63class');"/>表单汇总</td>
                      </tr>
                      <tr class="aft63class">
                      <td class="menu002 s_list_bottom s_list_right" colspan="2">
                      <input name="resourceid" type="checkbox"  value="aftmeu631" 
					<c:if test="${!empty aftmeu631}">CHECKED</c:if> onclick="getThisOther2(this,'sixobj','sixobj3');"/>作品著作权相关登记</td>
                      </tr>
                      <tr class="aft63class">
                        <td class="menu002 s_list_bottom s_list_right" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu632" 
					<c:if test="${!empty aftmeu632}">CHECKED</c:if> onclick="getThisOther2(this,'sixobj','sixobj3');"/>计算机软件著作权相关登记</td>
                      </tr>
                       <tr id="sixobj1">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu61" 
					<c:if test="${!empty aftmeu61}">CHECKED</c:if>  onclick="getThisOther(this,'sixobj','aft61class');"/>无分中心覆盖区域</td>
                      </tr>
                      <tr class="aft61class">
                      <td id="sixobj11" class="menu002 s_list_bottom s_list_right" width="40%"><input name="resourceid" type="checkbox"  value="aftmeu611" 
					<c:if test="${!empty aftmeu611}">CHECKED</c:if> onclick="getThisOther2(this,'sixobj','sixobj1');"/>作品著作权相关登记</td>
                    <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aftarea110" 
					<c:if test="${!empty aftarea110}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj1','sixobj11');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea210" 
					<c:if test="${!empty aftarea210}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj1','sixobj11');"/>开放/关闭修改权限&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea310" 
					<c:if test="${!empty aftarea310}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj1','sixobj11');"/>删除</td>
                      </tr>
                      <tr class="aft61class">
                        <td id="sixobj12" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu612" 
					<c:if test="${!empty aftmeu612}">CHECKED</c:if> onclick="getThisOther2(this,'sixobj','sixobj1');"/>计算机软件著作权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aftarea120" 
					<c:if test="${!empty aftarea120}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj1','sixobj12');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea220" 
					<c:if test="${!empty aftarea220}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj1','sixobj12');"/>开放/关闭修改权限&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea320" 
					<c:if test="${!empty aftarea320}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj1','sixobj12');"/>删除</td>
                      </tr>
                      
                       </tr>
                       <tr id="sixobj4">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu64" 
					<c:if test="${!empty aftmeu64}">CHECKED</c:if>  onclick="getThisOther(this,'sixobj','aft64class');"/>
					烟台分中心</td>
                      </tr>
                      <tr class="aft64class">
                      <td id="sixobj41" class="menu002 s_list_bottom s_list_right" width="40%">
                      <input name="resourceid" type="checkbox" value="aftmeu641" <c:if test="${!empty aftmeu641}">CHECKED</c:if>
					 onclick="getThisOther2(this,'sixobj','sixobj4');"/>作品著作权相关登记</td>
                    <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aftarea111" 
					<c:if test="${!empty aftarea111}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj4','sixobj41');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea211" 
					<c:if test="${!empty aftarea211}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj4','sixobj41');"/>开放/关闭修改权限&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea311" 
					<c:if test="${!empty aftarea311}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj4','sixobj41');"/>删除</td>
                      </tr>
                      <tr class="aft64class">
                        <td id="sixobj42" class="menu002 s_list_bottom s_list_right">
                        <input name="resourceid" type="checkbox" value="aftmeu642" <c:if test="${!empty aftmeu642}">CHECKED</c:if>
					 onclick="getThisOther2(this,'sixobj','sixobj4');"/>计算机软件著作权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aftarea121" 
					<c:if test="${!empty aftarea121}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj4','sixobj42');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea221" 
					<c:if test="${!empty aftarea221}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj4','sixobj42');"/>开放/关闭修改权限&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea321" 
					<c:if test="${!empty aftarea321}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj4','sixobj42');"/>删除</td>
                      </tr>
                      
                      
                      
                      
                      
                      
                      <tr id="sixobj2">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu62" 
					<c:if test="${!empty aftmeu62}">CHECKED</c:if> onclick="getThisOther(this,'sixobj','aft62class');"/>回收站</td>
                      </tr>
                      <tr class="aft62class">
                        <td id="sixobj21" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu621" 
					<c:if test="${!empty aftmeu621}">CHECKED</c:if> onclick="getThisOther2(this,'sixobj','sixobj2');"/>作品著作权质权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft6211" 
					<c:if test="${!empty aft6211}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj2','sixobj21');"/>恢复&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft6212" 
					<c:if test="${!empty aft6212}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj2','sixobj21');"/>彻底删除</td>
                      </tr>
                       <tr class="aft62class">
                        <td id="sixobj22" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu622" 
					<c:if test="${!empty aftmeu622}">CHECKED</c:if> onclick="getThisOther2(this,'sixobj','sixobj2');"/>计算机软件著作权质权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft6221" 
					<c:if test="${!empty aft6221}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj2','sixobj22');"/>恢复&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft6222" 
					<c:if test="${!empty aft6222}">CHECKED</c:if> onclick="getThisOther3(this,'sixobj','sixobj2','sixobj22');"/>彻底删除</td>
                      </tr>    
                      </table>
                      </div>
                      
                      <div>
                       <table width="100%" border="0" cellspacing="0">                                                               
                      <tr id="sevenobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu7" 
					<c:if test="${!empty aftmeu7}">CHECKED</c:if> class="menuclass"/>质权服务表单处理</td>
                      </tr>
                       <tr id="sevenobj3">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox" value="aftmeu73" 
					<c:if test="${!empty aftmeu73}">CHECKED</c:if>  onclick="getThisOther(this,'sevenobj','aft73class');"/>表单汇总</td>
                      </tr>
                      <tr class="aft73class">
                        <td class="menu002 s_list_bottom s_list_right" colspan="2">
                        <input name="resourceid" type="checkbox" value="aftmeu731" 
					<c:if test="${!empty aftmeu731}">CHECKED</c:if> onclick="getThisOther2(this,'sevenobj','sevenobj3');"/>作品著作权质权相关登记</td>
                      </tr>
                      <tr class="aft73class">
                        <td class="menu002 s_list_bottom s_list_right" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu732" 
					<c:if test="${!empty aftmeu732}">CHECKED</c:if> onclick="getThisOther2(this,'sevenobj','sevenobj3');"/>计算机软件著作权质权相关登记</td>
                      </tr>
                       <tr id="sevenobj1">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu71" 
					<c:if test="${!empty aftmeu71}">CHECKED</c:if>  onclick="getThisOther(this,'sevenobj','aft71class');"/>无分中心覆盖区域</td>
                      </tr>
                      <tr class="aft71class">
                        <td id="sevenobj11" class="menu002 s_list_bottom s_list_right" width="40%"><input name="resourceid" type="checkbox"  value="aftmeu711" 
					<c:if test="${!empty aftmeu711}">CHECKED</c:if> onclick="getThisOther2(this,'sevenobj','sevenobj1');"/>作品著作权质权相关登记</td>
                        <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aftarea130" 
					<c:if test="${!empty aftarea130}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj1','sevenobj11');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea230" 
					<c:if test="${!empty aftarea230}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj1','sevenobj11');"/>开放/关闭修改权限&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea330" 
					<c:if test="${!empty aftarea330}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj1','sevenobj11');"/>删除</td>
                      </tr>
                      <tr class="aft71class">
                        <td id="sevenobj12" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu712" 
					<c:if test="${!empty aftmeu712}">CHECKED</c:if> onclick="getThisOther2(this,'sevenobj','sevenobj1');"/>计算机软件著作权质权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aftarea140" 
					<c:if test="${!empty aftarea140}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj1','sevenobj12');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea240" 
					<c:if test="${!empty aftarea240}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj1','sevenobj12');"/>开放/关闭修改权限&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea340" 
					<c:if test="${!empty aftarea340}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj1','sevenobj12');"/>删除</td>
                      </tr>
                      
                      
                      
                      
                      
                       <tr id="sevenobj4">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu74" 
					<c:if test="${!empty aftmeu74}">CHECKED</c:if>  onclick="getThisOther(this,'sevenobj','aft74class');"/>烟台分中心</td>
                      </tr>
                      <tr class="aft74class">
                        <td id="sevenobj41" class="menu002 s_list_bottom s_list_right" width="40%">
                        <input name="resourceid" type="checkbox" value="aftmeu741" <c:if test="${!empty aftmeu741}">CHECKED</c:if> 
					 onclick="getThisOther2(this,'sevenobj','sevenobj4');"/>作品著作权质权相关登记</td>
                        <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aftarea131" 
					<c:if test="${!empty aftarea131}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj4','sevenobj41');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea231" 
					<c:if test="${!empty aftarea231}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj4','sevenobj41');"/>开放/关闭修改权限&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea331" 
					<c:if test="${!empty aftarea331}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj4','sevenobj41');"/>删除</td>
                      </tr>
                      <tr class="aft74class">
                        <td id="sevenobj42" class="menu002 s_list_bottom s_list_right">
                        <input name="resourceid" type="checkbox" value="aftmeu741" <c:if test="${!empty aftmeu741}">CHECKED</c:if> 
					 onclick="getThisOther2(this,'sevenobj','sevenobj4');"/>计算机软件著作权质权相关登记</td>
                      <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aftarea141" 
					<c:if test="${!empty aftarea141}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj4','sevenobj42');"/>审核&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea241" 
					<c:if test="${!empty aftarea241}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj4','sevenobj42');"/>开放/关闭修改权限&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aftarea341" 
					<c:if test="${!empty aftarea341}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj4','sevenobj42');"/>删除</td>
                      </tr>
                   
                      <tr id="sevenobj2">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu72" 
					<c:if test="${!empty aftmeu72}">CHECKED</c:if> onclick="getThisOther(this,'sevenobj','aft72class');"/>回收站</td>
                      </tr>
                      <tr class="aft72class">
                        <td id="sevenobj21" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu721" 
					<c:if test="${!empty aftmeu721}">CHECKED</c:if> onclick="getThisOther2(this,'sevenobj','sevenobj2');"/>作品著作权质权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft7211" 
					<c:if test="${!empty aft7211}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj2','sevenobj21');"/>恢复&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft7212" 
					<c:if test="${!empty aft7212}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj2','sevenobj21');"/>彻底删除</td>
                      </tr>
                       <tr class="aft72class">
                        <td id="sevenobj22" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu722" 
					<c:if test="${!empty aftmeu722}">CHECKED</c:if> onclick="getThisOther2(this,'sevenobj','sevenobj2');"/>计算机软件著作权质权相关登记</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft7221" 
					<c:if test="${!empty aft7221}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj2','sevenobj22');"/>恢复&nbsp;&nbsp;&nbsp;
					 <input name="resourceid" type="checkbox" value="aft7222" 
					<c:if test="${!empty aft7222}">CHECKED</c:if> onclick="getThisOther3(this,'sevenobj','sevenobj2','sevenobj22');"/>彻底删除</td>
                      </tr>
                      </table>
                      </div>
                      
                      <div>
                       <table width="100%" border="0" cellspacing="0"> 
                      <tr id="eightobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu8" 
					<c:if test="${!empty aftmeu8}">CHECKED</c:if> class="menuclass"/>信息公示</td>
                      </tr>
                       <tr id="eightobj1">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu81" 
					<c:if test="${!empty aftmeu81}">CHECKED</c:if> onclick="getThisOther(this,'eightobj','aft81class');"/>作品著作权相关信息</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj11" class="menu002 s_list_bottom s_list_right" width="40%"><input name="resourceid" type="checkbox"  value="aftmeu810" 
					<c:if test="${!empty aftmeu810}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>作品著作权登记信息</td>
                        <td class="s_list_bottom" width="60%"><input name="resourceid" type="checkbox" value="aft8101" 
					<c:if test="${!empty aft8101}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj11');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8102" 
					<c:if test="${!empty aft8102}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj11');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8103" 
					<c:if test="${!empty aft8103}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj11');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj12" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu811" 
					<c:if test="${!empty aftmeu811}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>著作权合同备案信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8111" 
					<c:if test="${!empty aft8111}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj12');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8112" 
					<c:if test="${!empty aft8112}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj12');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8113" 
					<c:if test="${!empty aft8113}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj12');"/>删除</td>
                      </tr>   
                      <tr class="aft81class">
                        <td id="eightobj13" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu812" 
					<c:if test="${!empty aftmeu812}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>与著作权有关权利事项登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8121" 
					<c:if test="${!empty aft8121}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj13');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8122" 
					<c:if test="${!empty aft8122}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj13');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8123" 
					<c:if test="${!empty aft8123}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj13');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj14" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu813" 
					<c:if test="${!empty aftmeu813}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>重印国外期刊合同登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8131" 
					<c:if test="${!empty aft8131}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj14');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8132" 
					<c:if test="${!empty aft8132}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj14');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8133" 
					<c:if test="${!empty aft8133}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj14');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj15" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu814" 
					<c:if test="${!empty aftmeu814}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>作品著作权和合同变更或补发登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8141" 
					<c:if test="${!empty aft8141}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj15');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8142" 
					<c:if test="${!empty aft8142}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj15');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8143" 
					<c:if test="${!empty aft8143}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj15');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj16" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu815" 
					<c:if test="${!empty aftmeu815}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>撤销作品著作权和合同登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8151" 
					<c:if test="${!empty aft8151}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj16');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8152" 
					<c:if test="${!empty aft8152}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj16');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8153" 
					<c:if test="${!empty aft8153}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj16');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj17" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu816" 
					<c:if test="${!empty aftmeu816}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>补发或更换登记证书信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8161" 
					<c:if test="${!empty aft8161}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj17');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8162" 
					<c:if test="${!empty aft8162}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj17');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8163" 
					<c:if test="${!empty aft8163}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj17');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj18" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu817" 
					<c:if test="${!empty aftmeu817}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>出版境外音像制品合同登记申请-录音制品</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8171" 
					<c:if test="${!empty aft8171}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj18');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8172" 
					<c:if test="${!empty aft8172}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj18');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8173" 
					<c:if test="${!empty aft8173}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj18');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj19" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu818" 
					<c:if test="${!empty aftmeu818}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>出版境外音像制品合同登记申请-影视作品</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8181" 
					<c:if test="${!empty aft8181}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj19');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8182" 
					<c:if test="${!empty aft8182}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj19');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8183" 
					<c:if test="${!empty aft8183}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj19');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj110" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu819" 
					<c:if test="${!empty aftmeu819}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>撤销出版境外音像制品合同登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8191" 
					<c:if test="${!empty aft8191}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj110');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8192" 
					<c:if test="${!empty aft8192}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj110');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8193" 
					<c:if test="${!empty aft8193}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj110');"/>删除</td>
                      </tr>
                      <tr class="aft81class">
                        <td id="eightobj111" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu8110" 
					<c:if test="${!empty aftmeu8110}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj1');"/>变更出版境外音像制品合同登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft81101" 
					<c:if test="${!empty aft81101}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj111');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft81102" 
					<c:if test="${!empty aft81102}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj111');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft81103" 
					<c:if test="${!empty aft81103}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj1','eightobj111');"/>删除</td>
                      </tr>
                      
                      
                      
                      
                      <tr id="eightobj2">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu82" 
					<c:if test="${!empty aftmeu82}">CHECKED</c:if> onclick="getThisOther(this,'eightobj','aft82class');"/>计算机软件著作权相关信息</td>
                      </tr>
                      
                      <tr class="aft82class">
                        <td id="eightobj21" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu821" 
					<c:if test="${!empty aftmeu821}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj2');"/>计算机软件著作权登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8211" 
					<c:if test="${!empty aft8211}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj21');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8212" 
					<c:if test="${!empty aft8212}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj21');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8213" 
					<c:if test="${!empty aft8213}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj21');"/>删除</td>
                      </tr>
                      <tr class="aft82class">
                        <td id="eightobj22" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu822" 
					<c:if test="${!empty aftmeu822}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj2');"/>计算机软件著作权转让或专有许可合同登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8221" 
					<c:if test="${!empty aft8221}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj22');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8222" 
					<c:if test="${!empty aft8222}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj22');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8223" 
					<c:if test="${!empty aft8223}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj22');"/>删除</td>
                      </tr>
                       <tr class="aft82class">
                        <td id="eightobj23" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu823" 
					<c:if test="${!empty aftmeu823}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj2');"/>软件登记事项变更或补充信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8211" 
					<c:if test="${!empty aft8211}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj23');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8212" 
					<c:if test="${!empty aft8212}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj23');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8213" 
					<c:if test="${!empty aft8213}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj23');"/>删除</td>
                      </tr>
                      <tr class="aft82class">
                        <td id="eightobj24" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu824" 
					<c:if test="${!empty aftmeu824}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj2');"/>撤销计算机软件登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8241" 
					<c:if test="${!empty aft8241}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj24');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8242" 
					<c:if test="${!empty aft8242}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj24');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8243" 
					<c:if test="${!empty aft8243}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj24');"/>删除</td>
                      </tr>
                      <tr class="aft82class">
                        <td id="eightobj25" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu825" 
					<c:if test="${!empty aftmeu825}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj2');"/>撤销或放弃计算机软件登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8251" 
					<c:if test="${!empty aft8251}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj25');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8252" 
					<c:if test="${!empty aft8252}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj25');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8253" 
					<c:if test="${!empty aft8253}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj25');"/>删除</td>
                      </tr>
                      <tr class="aft82class">
                        <td id="eightobj26" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu826" 
					<c:if test="${!empty aftmeu826}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj2');"/>补发或者换发软件登记证书信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8261" 
					<c:if test="${!empty aft8261}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj26');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8262" 
					<c:if test="${!empty aft8262}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj26');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8263" 
					<c:if test="${!empty aft8263}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj2','eightobj26');"/>删除</td>
                      </tr>
                      
                      
                      
                       <tr id="eightobj3">
                        <td class="menu003 s_list_bottom s_list_right" style=" background:#f9f9f9; " colspan="2">
                        <input name="resourceid" type="checkbox"  value="aftmeu83" 
					<c:if test="${!empty aftmeu83}">CHECKED</c:if> onclick="getThisOther(this,'eightobj','aft83class');"/>作品著作权质权相关信息</td>
                      </tr>
                      <tr class="aft83class">
                        <td id="eightobj31" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu831" 
					<c:if test="${!empty aftmeu831}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj3');"/>著作权质权登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8311" 
					<c:if test="${!empty aft8311}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj31');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8312" 
					<c:if test="${!empty aft8312}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj31');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8313" 
					<c:if test="${!empty aft8313}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj31');"/>删除</td>
                      </tr>
                      <tr class="aft83class">
                        <td id="eightobj32" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu832" 
					<c:if test="${!empty aftmeu832}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj3');"/>著作权质权撤销登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8321" 
					<c:if test="${!empty aft8321}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj32');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8322" 
					<c:if test="${!empty aft8322}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj32');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8323" 
					<c:if test="${!empty aft8323}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj32');"/>删除</td>
                      </tr>
                       <tr class="aft83class">
                        <td id="eightobj33" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu833" 
					<c:if test="${!empty aftmeu833}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj3');"/>著作权质权变更登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8331" 
					<c:if test="${!empty aft8331}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj33');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8332" 
					<c:if test="${!empty aft8332}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj33');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8333" 
					<c:if test="${!empty aft8333}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj33');"/>删除</td>
                      </tr>
                      <tr class="aft83class">
                        <td id="eightobj34" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu834" 
					<c:if test="${!empty aftmeu834}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj3');"/>注销著作权质权登记信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8341" 
					<c:if test="${!empty aft8341}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj34');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8342" 
					<c:if test="${!empty aft8342}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj34');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8343" 
					<c:if test="${!empty aft8343}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj34');"/>删除</td>
                      </tr>
                      <tr class="aft83class">
                        <td id="eightobj35" class="menu002 s_list_bottom s_list_right"><input name="resourceid" type="checkbox"  value="aftmeu835" 
					<c:if test="${!empty aftmeu835}">CHECKED</c:if> onclick="getThisOther2(this,'eightobj','eightobj3');"/>转让著作权质权登记事项信息</td>
                        <td class="s_list_bottom"><input name="resourceid" type="checkbox" value="aft8351" 
					<c:if test="${!empty aft8351}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj35');"/>发布新信息公示&nbsp;&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft8352" 
					<c:if test="${!empty aft8352}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj35');"/>修改&nbsp;&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft8353" 
					<c:if test="${!empty aft8353}">CHECKED</c:if> onclick="getThisOther3(this,'eightobj','eightobj3','eightobj35');"/>删除</td>
                      </tr>                     
                      </table>
                      </div>
                      
                      <div>
                       <table width="100%" border="0" cellspacing="0"> 
                      <tr id="nineobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox" value="aftmeu9" 
					<c:if test="${!empty aftmeu9}">CHECKED</c:if> class="menuclass"/>个人中心
						</td>
                      </tr>
                      <tr>
                        <td id="nineobj1" class="menu002 s_list_bottom s_list_right" width="40%">
                        <input name="resourceid" type="checkbox"  value="aftmeu91" 
					<c:if test="${!empty aftmeu91}">CHECKED</c:if>  onclick="getThis1(this,'nineobj');"/>用户查询
                    </td>
                        <td class="s_list_bottom" width="60%">
                        <input name="resourceid" type="checkbox" value="aft911" 
					<c:if test="${!empty aft911}">CHECKED</c:if>  onclick="getThis2(this,'nineobj','nineobj1');"/>删除
                    </td>
                      </tr>
                      </table>
                      </div>
                      
                      
                      <div>
                       <table width="100%" border="0" cellspacing="0"> 
                      <tr id="tenobj">
                        <td class="menu001" style="background:#f4f7f9;" colspan="2">
                        <input name="resourceid" type="checkbox" value="aftmeu10" 
					<c:if test="${!empty aftmeu10}">CHECKED</c:if> class="menuclass"/>权限管理
						</td>
                      </tr>
                      <tr>
                        <td id="tenobj1" class="menu002 s_list_bottom s_list_right" width="40%">
                        <input name="resourceid" type="checkbox"  value="aftmeu101" 
					<c:if test="${!empty aftmeu101}">CHECKED</c:if> onclick="getThis1(this,'tenobj');"/>管理员查询
                    </td>
                        <td class="s_list_bottom" width="60%">
                        <input name="resourceid" type="checkbox" value="aft1011" 
					<c:if test="${!empty aft1011}">CHECKED</c:if> onclick="getThis2(this,'tenobj','tenobj1');"/>新建用户&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft1012" 
					<c:if test="${!empty aft1012}">CHECKED</c:if> onclick="getThis2(this,'tenobj','tenobj1');"/>修改&nbsp;&nbsp;
					<input name="resourceid" type="checkbox" value="aft1013" 
					<c:if test="${!empty aft1013}">CHECKED</c:if> onclick="getThis2(this,'tenobj','tenobj1');"/>密码重置
					<input name="resourceid" type="checkbox" value="aft1014" 
					<c:if test="${!empty aft1014}">CHECKED</c:if> onclick="getThis2(this,'tenobj','tenobj1');"/>删除
                    </td>
                      </tr>
                      <tr>
                        <td id="tenobj2" class="menu002 s_list_bottom s_list_right" width="40%">
                        <input name="resourceid" type="checkbox"  value="aftmeu102" 
					<c:if test="${!empty aftmeu102}">CHECKED</c:if> onclick="getThis1(this,'tenobj');"/>角色查询
                    </td>
                        <td class="s_list_bottom" width="60%">
                     <input name="resourceid" type="checkbox" value="aft1021" 
					<c:if test="${!empty aft1021}">CHECKED</c:if> onclick="getThis2(this,'tenobj','tenobj2');"/>新建角色&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft1022" 
					<c:if test="${!empty aft1022}">CHECKED</c:if> onclick="getThis2(this,'tenobj','tenobj2');"/>修改&nbsp;&nbsp;
			     	<input name="resourceid" type="checkbox" value="aft1023" 
					<c:if test="${!empty aft1023}">CHECKED</c:if> onclick="getThis2(this,'tenobj','tenobj2');"/>删除
                    </td>
                      </tr>
                    <tr>
                    	<td colspan="2" align="center">
                    	<input type="button" value="确定" class="m_button0910" id="subId"/></td>
                    </tr>
                    </table>
                    </div>
 </div>
 </div>
</form>
 </div>
</div>
	<div class="clear"></div>
</body>
<script language="javascript">

//左侧一级菜单栏
$(document).ready(function(){
   $(".menuclass").click(function(){
		 if($(this).attr('checked')) {
		   $(this).parent().parent().parent().parent().find("input:checkbox").each(function(){		  
			      $(this).attr('checked','checked'); 
			  });  
		  
		 } else {

		  $(this).parent().parent().parent().find("input:checkbox").each(function(){
		             $(this).removeAttr("checked");
		  });
		  
		 }		    
    });
  
   $("#subId").click(function(){
	  if($("#rolenameid").val().length==0) {
		  $("#rolenameid").focus();
		  $("#rolenamespan").css("color","red").text("请输入角色名称!");
		  return;
	  } else {
		  $(this).attr("disabled",true);
		  $("#querFormId").submit();
	  } 
   });
 });
//左侧二级菜单栏
function getThis1(obj,objid) {
  if($(obj).attr('checked')){
		   $(obj).parent().next("td").find("input:checkbox").each(function(){		  
			      $(this).attr('checked','checked'); 
			  });  //勾选所有此对象下面的checkbox
			    $(obj).parent().parent().prevAll("#"+objid).find("input:checkbox").each(function(){		  
			      $(this).attr('checked','checked'); //勾选此对象上面的checkbox
			  });  
		 } else {
            $(obj).parent().next("td").find("input:checkbox").each(function(){
		             $(this).removeAttr("checked");//取消此对象下面的checkbox
		  }); 
		 }
}
//左侧三级菜单
function getThisOther(obj,oneobj,objclass) {
	if($(obj).attr('checked')){
			    $(obj).parent().parent().prevAll("#"+oneobj).find("input:checkbox").each(function(){		  
			      $(this).attr('checked','checked'); //勾选此对象上面的checkbox
			  });  
			    
			 $(obj).parent().parent().nextAll("."+objclass).find("input:checkbox").each(function(){		  
				      $(this).attr('checked','checked'); 
				  });  //勾选所有此对象下面的checkbox		  
		 } else {
			 $(obj).parent().parent().nextAll("."+objclass).find("input:checkbox").each(function(){		  
				 $(this).removeAttr("checked");//取消此对象下面的checkbox
			  });

		 }
}
function getThisOther2(obj,objid1,objid2) {
	if($(obj).attr('checked')){
	    $(obj).parent().parent().prevAll("#"+objid1).find("input:checkbox").attr('checked','checked'); //勾选此对象上面的checkbox
	    $(obj).parent().parent().prevAll("#"+objid2).find("input:checkbox").attr('checked','checked'); 
	    $(obj).parent().next("td").find("input:checkbox").each(function(){		  
		      $(this).attr('checked','checked'); 
		  });
 } else {
	   $(obj).parent().next("td").find("input:checkbox").each(function(){
           $(this).removeAttr("checked");//取消此对象下面的checkbox
     }); 
 }
}


//二级菜单右侧按钮 
function getThis2(obj,obj1id,obj2id) {
   if($(obj).attr('checked')){
            $(obj).parent().parent().prevAll("#"+obj1id).find("input:checkbox").each(function(){		  
			      $(this).attr('checked','checked'); //勾选此对象上面的左侧一级菜单栏
			  });

             $(obj).parent().prevAll("#"+obj2id).find("input:checkbox").each(function(){		  
			      $(this).attr('checked','checked'); //勾选此对象上面的左侧二级菜单栏
			  });              
		 } 
 }
//三级菜单右侧按钮  
function getThisOther3(obj,objid1,objid2,objid3) {
	if($(obj).attr('checked')){
	    $(obj).parent().parent().prevAll("#"+objid1).find("input:checkbox").attr('checked','checked'); //勾选此对象上面的checkbox
	    $(obj).parent().parent().prevAll("#"+objid2).find("input:checkbox").attr('checked','checked'); 
	    $(obj).parent().prevAll("#"+objid3).find("input:checkbox").each(function(){		  
		      $(this).attr('checked','checked'); //勾选此对象上面的左侧二级菜单栏
		  });              
   }
}
</script>
</html>