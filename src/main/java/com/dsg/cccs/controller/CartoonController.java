package com.dsg.cccs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dsg.cccs.model.Cartoon;
import com.dsg.cccs.model.application.ApplyKnow;
import com.dsg.cccs.service.CartoonService;
import com.dsg.cccs.utils.CartoonConstants;
import com.dsg.cccs.utils.CommonUtil;
import com.dsg.cccs.utils.FileUtil;
import com.dsg.cccs.utils.Page;

/**
 * @ClassName: HomeController
 * @Description: 首页
 * @author proteus
 * @date 2011-7-14 上午11:14:32
 * 
 */
@Controller
@RequestMapping(value = "cartoon")
public class CartoonController {
	@Autowired
	private CartoonService ctService;

	/**
	 * 列表查询
	 * 
	 * @method: list
	 * @author: Matty.Cong(Modoucc<AT>gmail.com)
	 * @description: 资源中心的列表查询页面,成片和脚本公用一个action和页面
	 * @date: 2012-9-17
	 * @param cp
	 * @param model
	 * @param request
	 * @param session
	 * @param cartoon
	 * @return
	 */
	@RequestMapping(value = "{cp}", method = RequestMethod.GET)
	public String list(@PathVariable("cp") Integer cp, Model model,
			HttpServletRequest request, HttpSession session, Cartoon cartoon) {
		String offset = request.getParameter("pager.offset");
		if (null == offset || "".equalsIgnoreCase(offset) || "-15".equalsIgnoreCase(offset)) {
			offset = "0";
		}

		// 组装sqlStr
		String sqlStr = "where  delete_flag = 1 and state=4 and cp=" + cp;

		// 题材索引
		if (null != cartoon.getTheme()
				&& !cartoon.getTheme().equalsIgnoreCase("")) {
			sqlStr = sqlStr + " and theme like '%" + cartoon.getTheme() + "%'";
		}

		// 类型索引
		if (null != cartoon.getType()
				&& !cartoon.getType().equalsIgnoreCase("")) {
			sqlStr = sqlStr + " and type = '" + cartoon.getType() + "'";
		}

		// 片长索引
		if (null != cartoon.getLength()
				&& !cartoon.getLength().equalsIgnoreCase("")) {
			sqlStr = sqlStr + " and length = '" + cartoon.getLength() + "'";
		}

		// 地区索引
		if (null != cartoon.getArea()
				&& !cartoon.getArea().equalsIgnoreCase("")) {
			sqlStr = sqlStr + " and area = '" + cartoon.getArea() + "' ";
		}
		// 年份索引
		if (null != cartoon.getYear()
				&& !cartoon.getYear().equalsIgnoreCase("")) {
			sqlStr = sqlStr + " and year = '" + cartoon.getYear() + "' ";
		}
		// 年龄索引
		if (null != cartoon.getYearzone()
				&& !cartoon.getYearzone().equalsIgnoreCase("")) {
			sqlStr = sqlStr + " and yearzone = '" + cartoon.getYearzone()
					+ "' ";
		}
		// 查询条件
		String condition = request.getParameter("condition");
		if (null != condition && !condition.equalsIgnoreCase("")) {
			sqlStr = sqlStr + " and (title like '%" + condition
					+ "%' or tag like '%" + condition + "%') ";
		} else {
			condition = "";
		}

		Page page = ctService.getPageBySQL(sqlStr, Integer.parseInt(offset),
				Page.SIZE_PER_PAGE);

		model.addAttribute(page);
		model.addAttribute("themes", CartoonConstants.themes);
		model.addAttribute("types", CartoonConstants.types);
		model.addAttribute("lengths", CartoonConstants.lengths);
		model.addAttribute("areas", CartoonConstants.areas);
		model.addAttribute("years", CartoonConstants.years);
		model.addAttribute("yearzones", CartoonConstants.yearzones);
		model.addAttribute("condition", condition);
		model.addAttribute(cartoon);
		model.addAttribute("cp", cp);
		return "cartoon/list";

	}

	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String search(Model model, HttpServletRequest request,
			HttpSession session, Cartoon cartoon) {
		String offset = request.getParameter("pager.offset");
		if (null == offset || "".equalsIgnoreCase(offset) || "-15".equalsIgnoreCase(offset)) {
			offset = "0";
		}
		// 组装sqlStr
		StringBuffer sqlStr = new StringBuffer();
		sqlStr.append(" where delete_flag = 1 and user_id="
				+ session.getAttribute("CCCS_USERID"));

		// 类型
		String cp = request.getParameter("cp");
		if (null != cp && !cp.equals("")) {
			sqlStr.append(" and cp=" + cp);
		}

		// 名称
		String title = request.getParameter("title");
		if (null != title && !title.equals("")) {
			sqlStr.append(" and (title like '%" + title + "%')");
		}

		// 开始时间
		String beginTime = request.getParameter("beginTime");
		if (null != beginTime && !beginTime.equals("")) {
			sqlStr.append(" and create_time >= '" + beginTime + " 00:00:00'");
		}
		// 结束时间
		String endTime = request.getParameter("endTime");
		if (null != endTime && !endTime.equals("")) {
			sqlStr.append(" and create_time <= '" + endTime + " 23:59:59'");
		}

		Page page = ctService.getPageBySQL(sqlStr.toString(),
				Integer.parseInt(offset), Page.SIZE_PER_PAGE);

		model.addAttribute(page);
		model.addAttribute(cartoon);
		model.addAttribute("beginTime", beginTime);
		model.addAttribute("endTime", endTime);
		return "cartoon/search";

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
	 * 
	 * @method: index
	 * @author: Matty.Cong(Modoucc<AT>gmail.com)
	 * @description: 我要上传首页
	 * @date: 2012-9-15
	 * @return
	 */
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(Model model) {
		ApplyKnow applyknow = ctService
				.getApplyKnow(" where orders = 3 order by last_time DESC limit 1;");
		if(applyknow != null) {
			model.addAttribute("applyknow", applyknow);
		}
		return "cartoon/index";
	}

	/**
	 * 
	 * @method: add
	 * @author: Matty.Cong(Modoucc<AT>gmail.com)
	 * @description: 打开更新页面或者创建页面
	 * @date: 2012-9-15
	 * @param cp
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "edit/{cp}", method = RequestMethod.GET)
	public String edit(@PathVariable("cp") Integer cp,
			HttpServletRequest request, Model model,HttpSession session) {
		String cartoon_id = request.getParameter("cartoon_id");
		Cartoon cartoon = new Cartoon();
		if (null != cartoon_id && !"".endsWith(cartoon_id)) {
			cartoon = ctService.getOne(Long.parseLong(cartoon_id));
			cartoon.setTheme_list(CommonUtil.String2List(cartoon.getTheme()));
		}else{
			cartoon.setCp(cp);
			cartoon.setState(1);
			cartoon.setUser_id((Long) session.getAttribute("CCCS_USERID"));
		}
		
		model.addAttribute(cartoon);
		model.addAttribute("themes", CartoonConstants.themes);
		model.addAttribute("types", CartoonConstants.types);
		model.addAttribute("areas", CartoonConstants.areas);
		model.addAttribute("lengths", CartoonConstants.lengths);
		model.addAttribute("years", CartoonConstants.years);
		model.addAttribute("yearzones", CartoonConstants.yearzones);
		return "cartoon/edit";
	}

	/**
	 * @description: 编辑或者新建一个资源,提交action
	 * @method: update
	 * @author: Matty.Cong(Modoucc<AT>gmail.com)
	 * @date: 2012-9-16
	 * @param request
	 * @param cartoon
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(MultipartHttpServletRequest request, Cartoon cartoon,
			Model model, HttpSession session) {
		// 设置删除标记
		cartoon.setDelete_flag(1);
		// 设置题材
		cartoon.setTheme(CommonUtil.List2String(cartoon.getTheme_list()));
		// 设置封面
		MultipartFile cover_file = request.getFile("cover_file");
		if (null != cover_file && 0 != cover_file.getSize()) {
			cartoon.setCover_path(FileUtil.saveFile(session, "upload/cartoon/",
					cover_file));
		}
		// 设置作品
		MultipartFile zuopin_file = request.getFile("zuopin_file");
		if (null != zuopin_file && 0 != zuopin_file.getSize()) {
			cartoon.setZuopin_path(FileUtil.saveFile(session,
					"upload/cartoon/", zuopin_file));
		}
		// 设置作品详细介绍
		MultipartFile xiangqin_file = request.getFile("xiangqin_file");
		if (null != xiangqin_file && 0 != xiangqin_file.getSize()) {
			cartoon.setXiangqin_path(FileUtil.saveFile(session,
					"upload/cartoon/", xiangqin_file));
		}
		// 设置版权登记证书及作品样本
		MultipartFile zhengshu_file = request.getFile("zhengshu_file");
		if (null != zhengshu_file && 0 != zhengshu_file.getSize()) {
			cartoon.setZhengshu_path(FileUtil.saveFile(session,
					"upload/cartoon/", zhengshu_file));
		}
		Long lastInsertID = ctService.updateCartoon(cartoon);
		return "redirect:/cartoon/edit/" + cartoon.getCp() + "?cartoon_id="
				+ lastInsertID;
	}
}
