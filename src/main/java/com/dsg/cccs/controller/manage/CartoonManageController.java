package com.dsg.cccs.controller.manage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dsg.cccs.model.Cartoon;
import com.dsg.cccs.service.CartoonService;
import com.dsg.cccs.utils.Page;
import com.dsg.cccs.utils.SystemUtils;

@Controller
@RequestMapping(value = "/manage/cartoon")
public class CartoonManageController {

	@Autowired
	private CartoonService ctService;

	/**
	 * 后台资源中心-资源汇总
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "list/{cp}", method = RequestMethod.GET)
	public String list(@PathVariable("cp") String cp,
			HttpServletRequest request, Model model) {


			StringBuffer condition = new StringBuffer();
			condition.append(" where delete_flag = " + 1).append(" and cp = " + Integer.parseInt(cp));
			String title = request.getParameter("title");
			if (title != null && !title.trim().equals("")) {
				condition.append(" and title like '%"
						+ SystemUtils.changeStr(title) + "%'");
				model.addAttribute("title", title);
			}
			String state = request.getParameter("state");
			if (state != null && !state.trim().equals("")) {
				condition.append(" and state = " + Integer.parseInt(state));
				model.addAttribute("state", Integer.parseInt(state));
			}
			String beginTime = request.getParameter("beginTime");
			if (beginTime != null && !beginTime.equals("")) {
				condition.append(" and create_time >= '" + beginTime + " 01:01:00'");
				model.addAttribute("beginTime", beginTime);
			}
			String endTime = request.getParameter("endTime");
			if (null != endTime && !endTime.equals("")) {
				model.addAttribute("endTime", endTime);
				condition.append(" and create_time <= '" + endTime
						+ " 23:59:59'");
			}
			String offset = request.getParameter("pager.offset");
			if (null == offset || "".equalsIgnoreCase(offset)) {
				offset = "0";
			}
			Page page = ctService.getCartoonPage(condition.toString(),
					Integer.parseInt(offset), Page.SIZE_PER_PAGE);
			model.addAttribute(page);
			model.addAttribute("cp", Integer.parseInt(cp));
			return "manage/cartoon/list";
	}
	
	/**
	 * 后台资源中心-资源汇总
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "recycle/{cp}", method = RequestMethod.GET)
	public String recycleCartoon(@PathVariable("cp") String cp,
			HttpServletRequest request, Model model) {
		
			StringBuffer condition = new StringBuffer();
			condition.append(" where delete_flag = " + 2).append("  and cp = "+Integer.parseInt(cp));
			String title = request.getParameter("title");
			if (title != null && !title.trim().equals("")) {
				condition.append(" and title = '"
						+ SystemUtils.changeStr(title) + "'");
				model.addAttribute("title", title);
			}
			String beginTime = request.getParameter("beginTime");
			if (beginTime != null && !beginTime.equals("")) {
				condition.append(" and create_time >= '" + beginTime + " 01:01:00'");
				model.addAttribute("beginTime", beginTime);
			}
			String endTime = request.getParameter("endTime");
			if (null != endTime && !endTime.equals("")) {
				model.addAttribute("endTime", endTime);
				condition.append(" and create_time <= '" + endTime
						+ " 23:59:59'");
			}
			String offset = request.getParameter("pager.offset");
			if (null == offset || "".equalsIgnoreCase(offset)) {
				offset = "0";
			}
			Page page = ctService.getCartoonPage(condition.toString(),
					Integer.parseInt(offset), Page.SIZE_PER_PAGE);
			model.addAttribute(page);
			model.addAttribute("cp", Integer.parseInt(cp));
			return "manage/cartoon/recycle";
	}

	@RequestMapping(value = "{id}/delete", method = RequestMethod.GET)
	public String delete(@PathVariable("id") Long id) {
		ctService.delete(id);
		return "redirect:/manage/cartoon/list";
	}

	/**
	 * 
	 * @method: detail
	 * @author: Matty.Cong(Modoucc<AT>gmail.com)
	 * @description: 通过ID查看资源的详细页面,不区分成片或者脚本
	 * @date: 2012-9-17
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") Long id, Model model) {
		Cartoon cartoon = ctService.getOne(id);
		model.addAttribute(cartoon);
		return "cartoon/detail";
	}
	
	/**
	 * 后台审核资源中心资源
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "checkcartoon/{id}/{state}", method = RequestMethod.POST)
	public void checkCartoon(@PathVariable("id") Long id, @PathVariable("state") int state, HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			response.setContentType("text/xml; charset=UTF-8");
			// 以下两句为取消在本地的缓存
			response.setHeader("Cache-Control", "no-cache");
			response.setHeader("Pragma", "no-cache");
			String common = request.getParameter("common");
			out = response.getWriter();
			ctService.updateCartoonByCondition(" state = "+state+",common = '"+common+"' where id= "+id);
			if(state==1) {
				out.print("未完成");
			}
			else if(state==2) {
				out.print("已提交");
			}
			else if(state==3) {
				out.print("审核中");
			}
			else if(state==4) {
				out.print("已展示");
			}
			else if(state==5) {
				out.print("已下架");
			}
			else if(state==6) {
				out.print("审核通过");
			}
			else if(state==7) {
				out.print("审核未通过");
			}
		} catch (Exception e) {
			out.print("no");
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}
	
	/**
	 * 后台删除或恢复或彻底删除 资源
	 * method = 1删除进入回收站，method=2恢复,method=3彻底删除
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "delete/{id}/{method}", method = RequestMethod.POST)
	public void deleteOrCalback(@PathVariable("id") Long id, @PathVariable("method") int method, HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			response.setContentType("text/xml; charset=UTF-8");
			// 以下两句为取消在本地的缓存
			response.setHeader("Cache-Control", "no-cache");
			response.setHeader("Pragma", "no-cache");
			out = response.getWriter();
			if(method==3) {//彻底删除
				ctService.delete(id);
			} else if(method==2) {//恢复
				ctService.updateCartoonByCondition(" delete_flag = 1 where id= "+id);
			} else{//删除进入回收站
				ctService.updateCartoonByCondition(" delete_flag = 2 where id= "+id);
			}
			out.print("yes");
		} catch (Exception e) {
			out.print("no");
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}
}
