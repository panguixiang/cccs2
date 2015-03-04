<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>密码修改-个人中心-中国动漫版权服务平台</title>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.alerts.js"></script>
<link href="${pageContext.request.contextPath}/css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
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
					<img src="${pageContext.request.contextPath}/images/navbottom.gif" />
				</div>
				<div class="info_cont">
					<div class="info_box">

						<div class="i_left">
							<h3>
								<img src="${pageContext.request.contextPath}/images/i_left01.gif" />
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
												<li><a href="${pageContext.request.contextPath}/mycenter/account">修改资料</a></li>
												<li class="on"><a href="${pageContext.request.contextPath}/mycenter/passwd">修改密码</a></li>
											</ul>
										</div>
										<div class="main1box">

											<%@ include file="../message.jsp"%>
											<c:if test="${result}">
												<div class="pes_ok">
													<img src="${pageContext.request.contextPath}/images/r_right.gif" />修改成功
												</div>
											</c:if>
											<div class="main" id="main1">
												<div class="bq_cont">

													<form action="${pageContext.request.contextPath}/mycenter/passwd" method="post">
														<table cellspacing="0" cellpadding="0" width="100%"
															class="pes_table">
															<tr>
																<td width="34%" class="r_left">新密码：</td>
																<td width="66%"><input type="password"
																	name="passwd" id="passwd" class="r_input" />
																</td>
															</tr>
															<tr>
																<td class="r_left">确认新密码：</td>
																<td><input type="password" name="re_passwd"
																	id="re_passwd" class="r_input" /></td>
															</tr>
															<tr>
																<td align="right"></td>
																<td style="padding-top: 15px;"><input type="submit"
																	value="确定" class="m_button0807"  onmouseover="this.className='btn_mouseover'" onmouseout="this.className='btn_mouseout'" /></td>
															</tr>
														</table>
													</form>
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
					<img src="${pageContext.request.contextPath}/images/cont_button.gif" />
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
