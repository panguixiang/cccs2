<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<base href="http://${header['host']}${pageContext.request.contextPath}/" /> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我要上传-资源中心-中国动漫作品版权交易平台</title>
<link href="css/table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
</head>
<body>

	<div class="table_content">

		<div class="table_title">我要上传</div>

		<div class="app_table">

			<form:form modelAttribute="cartoon" action="cartoon/edit"
				enctype="multipart/form-data" method="post" id="form">

				<table width="100%" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#333">
					<form:hidden path="id" value="${cartoon.id}" />
					<form:hidden path="cp" value="${cartoon.cp}" />
					<form:hidden path="cover_path" value="${cartoon.cover_path}" />
					<form:hidden path="zuopin_path" value="${cartoon.zuopin_path}" />
					<form:hidden path="xiangqin_path" value="${cartoon.xiangqin_path}" />
					<form:hidden path="zhengshu_path" value="${cartoon.zhengshu_path}" />
					<form:hidden path="user_id" value="${cartoon.user_id}" />
					<form:hidden path="state" value="${cartoon.state}" />
					<tr>
						<td width="15%" class="text_r">作品名称</td>
						<td width="85%">
							<form:input path="title" style="width:250px;"/>
						</td>
					</tr>
					<tr>
						<td class="text_r" style="background:#e3f4ff;">作者或公司</td>
						<td>
							<form:input path="author" style="width:250px;"/>
						</td>
					</tr>

					<tr>
						<td class="text_r">题材</td>
						<td style=" width:500px;">
							<c:forEach items="${themes}" var="obj">
								<form:checkbox path="theme_list" value="${obj}"/>
								${obj}
							</c:forEach>
						</td>

					</tr>
					<tr>
						<td class="text_r">类型</td>
						<td>
							<form:select path="type">
								<c:forEach items="${types}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">片长</td>
						<td>
							<form:select path="length">
							<form:option value="">--请选择--</form:option>
								<c:forEach items="${lengths}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">地区</td>
						<td>
							<form:select path="area">
								<c:forEach items="${areas}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">年份</td>
						<td>
							<form:select path="year">
								<c:forEach items="${years}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">年龄层</td>
						<td>
							<form:select path="yearzone">
								<c:forEach items="${yearzones}" var="obj">
									<form:option value="${obj}">${obj}</form:option>
								</c:forEach>
							</form:select>
						</td>
					</tr>
					<tr>
						<td class="text_r">标签</td>
						<td>
							<form:input path="tag" style="width:250px;"/>
						</td>
					</tr>
					<tr>
						<td valign="top" class="text_r">封面上传</td>
						<td>
							<label>
								<input type="file" name="cover_file"id="cover_file" class="r_input" />
							</label>
						<span style="color:#999; font-size:12px;">图片尺寸：200像素*200像素</span>
                        </td>
					</tr>
					<c:if test="${cartoon.cover_path!=null && cartoon.cover_path!=''}">
						<tr>
							<td></td>
							<td>
								<a href="${cartoon.cover_path}" class="a_blue"
														target="_blank">点此查看封面</a>
							</td>
						</tr>
					</c:if>
					<tr>
						<td valign="top" class="text_r">作品欣赏</td>
						<td>
							<label>
								<input type="file" name="zuopin_file"id="zuopin_file" class="r_input" />
							</label>
                            <span style="color:#999; font-size:12px;">图片尺寸：400像素*300像素</span>
                            &nbsp;&nbsp;&nbsp;<a href = "product-introduce.doc">作品上传及作品介绍要求附件</a>
						</td>
					</tr>
					<c:if test="${cartoon.zuopin_path!=null && cartoon.zuopin_path!=''}">
						<tr>
							<td></td>
							<td>
								<a href="${cartoon.zuopin_path}" class="a_blue">右键下载作品</a>
							</td>
						</tr>
					</c:if>
					<tr>
						<td valign="top" class="text_r">作品简介</td>
						<td>
							<label>
								<div style="width: 600px;">
								<form:textarea path="jianjie" class="xheditor {width:'100%', height:'500', html5Upload : false,upLinkUrl : 'xheditor/upload',upImgUrl : 'xheditor/upload'}"/></div>
							</label>
						</td>
					</tr>
					<c:if test="${cartoon.cp=='2'}">
					<tr>
						<td valign="top" class="text_r">作品详细介绍</td>
						<td>
							<label>
								<input type="file" name="xiangqin_file" id="xiangqin_file" class="r_input" />
							</label>&nbsp;&nbsp;<font color="red">单个文件单独上传，多个文件压缩包上传</font>
						</td>
					</tr>
					<c:if test="${cartoon.xiangqin_path!=null && cartoon.xiangqin_path!=''}">
						<tr>
							<td></td>
							<td>
								<a href="${cartoon.xiangqin_path}" class="a_blue">右键下载作品详细介绍</a>
							</td>
						</tr>
					</c:if>
					</c:if>
					<tr>
						<td valign="top" class="text_r">版权登记证书及作品样本</td>
						<td>
							<label>
								<input type="file" name="zhengshu_file" id="zhengshu_file" class="r_input" />
							</label>&nbsp;&nbsp;<font color="red">单个文件单独上传，多个文件压缩包上传</font>
						</td>
					</tr>
					<c:if test="${cartoon.zhengshu_path!=null && cartoon.zhengshu_path!=''}">
						<tr>
							<td></td>
							<td>
								<a href="${cartoon.zhengshu_path}" class="a_blue">右键下载版权登记证书及作品样本</a>
							</td>
						</tr>
					</c:if>
					<tr>
						<td align="text_r"></td>
						<td align="center">
							<c:if test="${cartoon.state==1}">
							<input type="button" onclick="subForm(1);" value="保存"  class="m_button"/>
							<input type="button" onclick="subForm(2);" value="提交" class="m_button"/>
							</c:if>
							<input type="button" onclick="self.close();" value="取消" class="m_button"/>
						</td>
					</tr>
				</table>
			</form:form>
		</div>

	</div>

</div>

</body>
 <script language="javascript">
	function subForm(state_val) {
		//提交表单
		$("#state").attr('value',state_val);
		$("#subId").attr('disabled', true);
		/* var frm = document.getElementById("form");
		frm.submit(); 此种非jquery提交form editor编辑器无法提交内容context */ 
		$("#form").submit();
		if(state_val=='2') {
			window.close();
		}
	}
</script> 
</html>