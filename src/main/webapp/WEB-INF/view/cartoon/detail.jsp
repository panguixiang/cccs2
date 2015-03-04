<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>资源作品欣赏-中国动漫作品版权交易平台</title>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jwplayer/jwplayer.js"></script>	
<script type="text/javascript" src="js/jquery.alerts.js"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<div class="container_bg">
		<div class="contanier">
			<!--top-->
			<%@ include file="../header.jsp"%>
			<!--navend-->

			<!--信息内容-->
			<div class="info_content">
				<div class="info_top">
					<img src="images/navbottom.gif" />
				</div>
				<div class="info_cont0917">
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
							<div class="info_title">
								您当前的位置：资源中心 &gt;&gt; 作品欣赏 &gt;&gt; ${cartoon.title}
							</div>
							<div class="c_title">
								<c:if test="${cartoon.cp==1}">展示中心</c:if>
								<c:if test="${cartoon.cp==2}">脚本中心</c:if>
							</div>
							<div class="bq_box">
								<div class="info_box0917">
									<dl>
										<dt>
											<img src="${cartoon.cover_path}" width="200" height="200" />
										</dt>
										<dd>
											<span>作品名称：</span>${cartoon.title}
										</dd>
										<dd>
											<span>作者：</span>${cartoon.author}
										</dd>
										<dd>
											<span>类型：</span>${cartoon.type}
										</dd>
										<dd>
											<span>片长：</span>${cartoon.length}
										</dd>
										<dd>
											<span>地区：</span>${cartoon.area}
										</dd>
										<dd>
											<span>年份：</span>${cartoon.year}年
										</dd>
										<dd>
											<span>年龄层：</span>${cartoon.yearzone}
										</dd>
										<dd>
											<span>更新日期：</span>
											<fmt:formatDate value="${cartoon.update_time}"
												pattern="yyyy年MM月dd日 " />
										</dd>
										<dd class="long">
											<span>题材：</span>${cartoon.theme}
										</dd>
										<dd class="long">
											<span>标签：</span>${cartoon.tag}
										</dd>
									</dl>
									<div class="text_box">
									
										<table width="100%" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td colspan="2" class="text_box0917">作品欣赏</td>
										</tr>
										<tr>
											<td colspan="2" align="center" style="padding:15px 0;">
													<div id='mediaspace'>暂时还未上传作品</div>
													<script type='text/javascript'>
													  jwplayer('mediaspace').setup({
													    'flashplayer': 'jwplayer/player.swf',
													    'file': '${pageContext.request.contextPath}/${cartoon.zuopin_path}',
													    'controlbar': 'bottom',
													    'width': '400',
													    'height': '300',									    
													  });
													</script>
											</td>
										</tr>
										<tr>
											<td colspan="2" class="text_box0917">作品简介</td>
										</tr>
										<tr>
											<td colspan="2">
												<div class="text_box">${cartoon.jianjie}</div>
											</td>
										</tr>
						<c:if test="${cartoon.cp=='2'}">
						<tr>
							<td class="text_box0917_2">作品详细介绍</td>
							<td>
							<c:if test="${cartoon.xiangqin_path != null && cartoon.xiangqin_path != ''}">
								<a href="${cartoon.xiangqin_path}" class="a_blue">右键下载作品详细介绍</a>
							</c:if>
							</td>
						</tr>
						</c:if>
						<tr>
							<td class="text_box0917_2">版权登记证书及作品样本</td>
							<td>
							<c:if test="${cartoon.zhengshu_path != null && cartoon.zhengshu_path != ''}">
								<a href="${cartoon.zhengshu_path}" class="a_blue">右键下载版权登记证书及作品样本</a>
							</c:if>
							</td>
						</tr>
						</table>
					</div>								
								</div>
								<div class="clear"></div>
						</div>

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
</html>
