package com.dsg.cccs.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

import com.dsg.cccs.model.application.Application;
import com.dsg.cccs.model.application.ApplyKnow;
import com.dsg.cccs.model.application.Author;
import com.dsg.cccs.model.application.CheckComment;
import com.dsg.cccs.model.application.ContentInfo;
import com.dsg.cccs.model.application.CopyrightPerson;
import com.dsg.cccs.model.application.MovieInfos;
import com.dsg.cccs.model.application.PartByAdd;
import com.dsg.cccs.model.application.Person;
import com.dsg.cccs.model.application.R11;
import com.dsg.cccs.model.application.R21;
import com.dsg.cccs.model.application.R41;
import com.dsg.cccs.model.application.R42;
import com.dsg.cccs.model.application.R43_4;
import com.dsg.cccs.model.application.RecordProduct;
import com.dsg.cccs.model.application.TracksInfos;
import com.dsg.cccs.model.application.Z11;
import com.dsg.cccs.model.application.Z21;
import com.dsg.cccs.model.application.Z51;
import com.dsg.cccs.model.application.Z60;
import com.dsg.cccs.model.application.Z71;
import com.dsg.cccs.model.application.Z73_5;
import com.dsg.cccs.service.ApplicationService;
import com.dsg.cccs.utils.ApplicationUtils;
import com.dsg.cccs.utils.CommonUtil;
import com.dsg.cccs.utils.Page;
import com.dsg.cccs.utils.SystemUtils;

/**
 * @ClassName: HomeController
 * @Description: 版权登记
 * @author proteus
 * @date 2011-7-14 上午11:14:32
 * 
 */
@Controller
@RequestMapping("/application")
public class ApplicationController {

	@Autowired
	private ApplicationService appService;

	/**
	 * 我要登记
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(HttpServletRequest request, Model model) {
		String apptype = request.getParameter("apptype");// apptype是用来区分是版权模块还是质权模块。即application中（
															// 登記表总类型(1作品著作权相关登记,2计算机软件著作权相关登记,3=作品著作权质权相关登记,4=计算机著作权质权相关登记)）
		ApplyKnow applyknow = null;
		if (apptype != null && Integer.parseInt(apptype) >= 3) {
			applyknow = appService
					.getApplyKnow(" where orders = 2 order by last_time DESC limit 1;");
		} else {
			applyknow = appService
					.getApplyKnow(" where orders = 1 order by last_time DESC limit 1;");
		}

		if (applyknow != null) {
			model.addAttribute("applyknow", applyknow);
		}
		model.addAttribute("apptype", Integer.parseInt(apptype));
		return "application/index";

	}

	/**
	 * 查看处理意见
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "ajaxanswer", method = RequestMethod.POST)
	public void ajaxGetAnswer(HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/xml; charset=UTF-8");
			// 以下两句为取消在本地的缓存
			out = response.getWriter();
			String flow_num = request.getParameter("flow_num");
			CheckComment checkcomment = appService
					.getCheckComment(" where flow_num = '" + flow_num
							+ "' ORDER BY id DESC LIMIT 1;");
			if (checkcomment != null) {
				String stateStr = "";

				SimpleDateFormat dateformat2 = new SimpleDateFormat(
						"yyyy-MM-dd HH:mm:ss");
				String updateTime = dateformat2.format(checkcomment
						.getUpdate_time());
				if (checkcomment.getState() == 1) {
					stateStr = "申请表未完成";
				} else if (checkcomment.getState() == 2) {
					stateStr = "申请表已提交";
				} else if (checkcomment.getState() == 3) {
					stateStr = "申请表未通过";
				} else if (checkcomment.getState() == 4) {
					stateStr = "递交材料中";
				} else if (checkcomment.getState() == 5) {
					stateStr = "初审中";
				} else if (checkcomment.getState() == 6) {
					stateStr = "初审未通过";
				} else if (checkcomment.getState() == 7) {
					stateStr = "缴费中";
				} else if (checkcomment.getState() == 8) {
					stateStr = "复审中";
				} else if (checkcomment.getState() == 9) {
					stateStr = "复审未通过";
				} else if (checkcomment.getState() == 10) {
					stateStr = "终审中";
				}

				else if (checkcomment.getState() == 11) {
					stateStr = "终审未通过";
				} else if (checkcomment.getState() == 12) {
					stateStr = "证书已发放";
				}
				if (checkcomment.getComment() != null) {
					out.print(updateTime + "|" + stateStr + "|"
							+ checkcomment.getComment());
				} else {
					out.print(updateTime + "|" + checkcomment.getStateStr()
							+ "| ");
				}
			} else {
				out.print("0");
			}
		} catch (Exception e) {
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}

	@RequestMapping(value = "{appType}", method = RequestMethod.GET)
	public String appTypeTo(@PathVariable("appType") String appType) {
		return "application/" + appType;
	}

	@RequestMapping(value = "ajaxapptype", method = RequestMethod.POST)
	public void ajaxLookAnswer(HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/xml; charset=UTF-8");
			out = response.getWriter();
			String flow_num = request.getParameter("flow_num");
			Application app = appService.getApplication(flow_num);
			if (app.getIsupdate().equals("yes")) {
				out.print("yes");
			} else {
				out.print("no");
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
	 * 我要查询
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "search")
	public String search(Application application, WebRequest request,
			HttpSession session, Model model) {
		String apptype = request.getParameter("apptype");
		StringBuffer condition = new StringBuffer();
		Long id = (Long) session.getAttribute("CCCS_USERID");
		if (apptype != null && apptype.equals("3")) {// 质权查询
			model.addAttribute("apptype", 3);
			condition
					.append(" where delete_flag = 1 and type >2 and publish_id="
							+ id);
		} else {// 版权查询
			model.addAttribute("apptype", 1);
			condition
					.append(" where delete_flag = 1 and type <3 and publish_id="
							+ id);
		}
		if (null != application.getFlow_num()
				&& !application.getFlow_num().equals("")) {
			condition.append(" and flow_num = '"
					+ SystemUtils.changeStr(application.getFlow_num()) + "'");
		}
		if (null != application.getApp_name()
				&& !application.getApp_name().equals("")) {
			condition.append(" and app_name = '"
					+ SystemUtils.changeStr(application.getApp_name()) + "'");
		}
		if (null != application.getApp_type()
				&& !application.getApp_type().equals("")) {
			condition.append(" and app_type = '"
					+ SystemUtils.changeStr(application.getApp_type()) + "'");
		}
		if (null != application.getState()) {
			condition.append(" and state = " + application.getState());
		}
		String beginTime = request.getParameter("beginTime");
		if (null != beginTime && !beginTime.equals("")) {
			condition
					.append(" and create_time >= '" + beginTime + " 01:01:00'");
		}
		String endTime = request.getParameter("endTime");
		if (null != endTime && !endTime.equals("")) {
			condition.append(" and create_time <= '" + endTime + " 23:59:59'");
		}

		String offset = request.getParameter("pager.offset");
		if (null == offset || "".equalsIgnoreCase(offset)) {
			offset = "0";
		}
		Page page = appService.getApplications(condition.toString(),
				Integer.parseInt(offset), Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		model.addAttribute("application", application);
		model.addAttribute("beginTime", beginTime);
		model.addAttribute("endTime", endTime);
		// 判断是不是进入质权服务

		return "application/search";
	}

	@RequestMapping(value = "z11/{subType}", method = RequestMethod.POST)
	public String z11(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session, Z11 z11) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		/**
		 * 构建创作完成日期
		 */
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		if (null != year && null != month && !month.equals("") && day != null
				&& !day.equals("")) {
			z11.setCreate_date(year + "-" + month + "-" + day);
		}
		String flow_num = ApplicationUtils.getFlowNum("z11", id);
		// 构建著作权人
		List<CopyrightPerson> cps = ApplicationUtils.createCps(request,
				flow_num);
		// 构建申请人
		Person sp = ApplicationUtils.createSqrPerson(request, flow_num);
		Person dp = null;
		if (z11.getApply_type().equals("由代理人申请")) {
			dp = ApplicationUtils.createDlrPerson(request, flow_num);// sfdasdfas
		} else {
			z11.setAgent_desc("");
		}
		if (!z11.getObtain_mode().equals("继承")) {
			z11.setInherit_desc("");
		}
		// 构建代理人
		// 新增申请办理信息--提交者信息 --姓名或名称 /电话号码
		List<PartByAdd> partAdds = null;
		String[] nameArr = request.getParameterValues("partname");
		String[] phoneArr = request.getParameterValues("partphone");
		if (nameArr.length > 0 && phoneArr.length > 0) {
			partAdds = ApplicationUtils.createPartByAdd(nameArr, phoneArr,
					flow_num);
		}
		z11.setAuthor_name(CommonUtil.ToString(request
				.getParameterValues("author_name")));
		z11.setAuthor_sign(CommonUtil.ToString(request
				.getParameterValues("author_sign")));
		z11.setFlow_num(flow_num);

		/**
		 * 权利拥有状况及其说明
		 */
		String rightScope = request.getParameter("rightScope");

		if (rightScope != null && rightScope.equals("全部")) {
			z11.setScope("全部");
			z11.setRight_scope("发表权,署名权,修改权,保护作品完整权,复制权,发行权,出租权,展览权,表演权,放映权,广播权,信息网络传播权,摄制权,改编权,翻译权,汇编权,其他");
		} else {
			z11.setScope("部分");
			if (z11.getRight_scope() == null) {
				z11.setRight_scope("");
			}
		}

		Application app = new Application();
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");// 标示保存
		} else {
			app.setState(2);// 表示提交
			app.setIsupdate("no");
		}

		app.setFlow_num(flow_num);
		app.setApp_name(z11.getOpus_name());
		app.setApp_type("z11");
		app.setPublish_id(id);
		app.setType(1);
		// 设置权利人
		String names = "";
		for (CopyrightPerson cp : cps) {
			names = names + cp.getName() + ",";
		}
		names = names.substring(0, names.length() - 1);
		app.setName(names);

		appService.addZ11(z11, cps, sp, dp, app, partAdds);
		// 这里是从post方式redirect到get所以这里要用到绝对路进把z11/{subType}中的这个去掉
		return "redirect:/application/view/" + flow_num;

	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "initupdate/z11/{flow_num}", method = RequestMethod.GET)
	public String z11_update(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ11(flow_num);
		model.addAttribute("z11", map.get("z11"));
		model.addAttribute("cps", map.get("cps"));
		model.addAttribute("sqr", map.get("sqr"));
		if (map.get("dlr") != null) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		if (map.get("parts") != null
				&& ((List<PartByAdd>) map.get("parts")).size() > 0) {
			model.addAttribute("parts", map.get("parts"));
		}
		Z11 z11 = (Z11) map.get("z11");
		// 设置权利范围值
		if (null != z11.getRight_scope() && !z11.getRight_scope().equals("")) {
			String[] right_scope = z11.getRight_scope().split(",", -1);
			for (String str : right_scope) {
				model.addAttribute(str, str);
			}
		}

		// 重新读取作者信息
		String[] author_name_temp = z11.getAuthor_name().split(",", -1);
		String[] author_sign_temp = z11.getAuthor_sign().split(",", -1);
		List<Author> authors = new ArrayList<Author>();
		for (int i = 0; i < author_name_temp.length; i++) {
			Author author = new Author();
			author.setName(author_name_temp[i]);
			try {
				author.setSign(author_sign_temp[i]);
			} catch (ArrayIndexOutOfBoundsException aioe) {
				author.setSign("");
			}

			authors.add(author);
		}
		model.addAttribute("authors", authors);
		return "application/update_z11";
	}

	@RequestMapping(value = "z21/{subType}", method = RequestMethod.POST)
	public String z21(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session, Z21 z21) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		String flow_num = ApplicationUtils.getFlowNum("z21", id);

		List<CopyrightPerson> cps1 = ApplicationUtils.createCps1(request,
				flow_num);// 转让（许可）方信息
		List<CopyrightPerson> cps2 = ApplicationUtils.createCps2(request,
				flow_num);// 受让（被许可）方信息
		Person sp = ApplicationUtils.createSqrPerson(request, flow_num);
		Person dp = null;
		if (null != z21.getAgent() && z21.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, flow_num);
		} else {
			z21.setAgent_desc("");
		}
		List<PartByAdd> partAdds = null;
		String[] nameArr = request.getParameterValues("partname");
		String[] phoneArr = request.getParameterValues("partphone");
		if (nameArr.length > 0 && phoneArr.length > 0) {
			partAdds = ApplicationUtils.createPartByAdd(nameArr, phoneArr,
					flow_num);
		}
		z21.setFlow_num(flow_num);

		if (z21.getRight_scope() == null) {
			z21.setRight_scope("");
		}

		if (z21.getOpus_type() == null) {
			z21.setOpus_type("");
		}

		Application app = new Application();
		app.setApp_type("z21");
		app.setApp_name(z21.getOpus_name());
		app.setFlow_num(flow_num);
		app.setPublish_id(id);
		app.setType(1);
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		// 设置权利人
		String names = "";
		for (CopyrightPerson cp : cps1) {
			names = names + cp.getName() + ",";
		}
		names = names.substring(0, names.length() - 1);
		app.setName(names);

		appService.addZ21(z21, cps1, cps2, sp, dp, app, partAdds);
		return "redirect:/application/view/" + flow_num;

	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "initupdate/z21/{flow_num}", method = RequestMethod.GET)
	public String z21_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ21(flow_num);
		model.addAttribute("z21", map.get("z21"));
		model.addAttribute("cps1", map.get("cps1"));
		model.addAttribute("cps2", map.get("cps2"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		if (map.get("parts") != null
				&& ((List<PartByAdd>) map.get("parts")).size() > 0) {
			model.addAttribute("parts", map.get("parts"));
		}
		Z21 z21 = (Z21) map.get("z21");
		// 设置权利范围值
		String right_scope = z21.getRight_scope();
		String[] right_scopes = right_scope.split(",", -1);
		for (String str : right_scopes) {
			model.addAttribute(str, str);
		}

		// 设置作品类别
		String opus_type = z21.getOpus_type();
		String[] opus_types = opus_type.split(",", -1);
		for (String str : opus_types) {
			model.addAttribute(str, str);
		}

		return "application/update_z21";
	}

	@RequestMapping(value = "initupdate/z31/{flow_num}", method = RequestMethod.GET)
	public String z31_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ31(flow_num);
		model.addAttribute("z31", map.get("z31"));
		model.addAttribute("cps", map.get("cps"));
		model.addAttribute("authors", map.get("authors"));
		model.addAttribute("sqr", map.get("sqr"));
		if (map.get("dlr") != null) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		return "application/update_z31";
	}

	@RequestMapping(value = "z31/{subType}", method = RequestMethod.POST)
	public String addZ31(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z11 z31) {
		/**
		 * 执行修改
		 */
		List<Author> authors = null;
		List<CopyrightPerson> cps = null;
		Person sp = null;
		Person dp = null;
		Long id = (Long) session.getAttribute("CCCS_USERID");
		if (z31.getFlow_num() != null && !z31.getFlow_num().equals("")) {
			// 构建著作权人
			cps = ApplicationUtils.createCpsZ31(request, z31.getFlow_num());
			sp = ApplicationUtils.createSqrPerson(request, z31.getFlow_num());

			if (null != z31.getApply_type()
					&& z31.getApply_type().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request,
						z31.getFlow_num());
			} else {
				z31.setAgent_desc("");
			}
			authors = ApplicationUtils
					.createAuthors(request, z31.getFlow_num());

			Application app = new Application();
			app.setApp_type("z31");
			app.setApp_name(z31.getOpus_name());
			app.setFlow_num(z31.getFlow_num());
			app.setPublish_id(id);
			app.setType(1);// 代表为作品著作权类
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			// 设置权利人
			String names = "";
			for (CopyrightPerson cp : cps) {
				names = names + cp.getName() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setName(names);

			appService.updateZ31(z31, cps, authors, sp, dp, app);
			return "redirect:/application/view/" + z31.getFlow_num();
		} else {// 执行新增
			String flow_num = ApplicationUtils.getFlowNum("z31", id);
			z31.setFlow_num(flow_num);
			cps = ApplicationUtils.createCpsZ31(request, z31.getFlow_num());
			sp = ApplicationUtils.createSqrPerson(request, z31.getFlow_num());

			if (null != z31.getApply_type()
					&& z31.getApply_type().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request,
						z31.getFlow_num());
			} else {
				z31.setAgent_desc("");
			}
			authors = ApplicationUtils
					.createAuthors(request, z31.getFlow_num());
			Application app = new Application();
			app.setApp_type("z31");
			app.setApp_name(z31.getOpus_name());
			app.setFlow_num(flow_num);
			app.setPublish_id(id);
			app.setType(1);
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			// 设置权利人
			String names = "";
			for (CopyrightPerson cp : cps) {
				names = names + cp.getName() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setName(names);

			appService.addZ31(z31, cps, authors, sp, dp, app);
			return "redirect:/application/view/" + flow_num;
		}
	}

	@RequestMapping(value = "z51/{subTypes}", method = RequestMethod.POST)
	public String z51(@PathVariable("subTypes") String subTypes, Model model,
			HttpServletRequest request, HttpSession session, Z51 z51) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		int methoType = 0;
		if (z51.getFlow_num() != null && !z51.getFlow_num().equals("")) {
			methoType = 1;
		} else {
			z51.setFlow_num(ApplicationUtils.getFlowNum("z51", id));
		}
		// 构建person sqr
		Person sp = ApplicationUtils
				.createSqrPerson(request, z51.getFlow_num());
		// 构建person dlr
		Person dp = null;
		if (null != z51.getIsAgent() && z51.getIsAgent().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, z51.getFlow_num());
		} else {
			z51.setAgentDesc("");
		}
		// 出质人信息
		List<CopyrightPerson> cps1 = ApplicationUtils.createCps1Z51(request,
				z51.getFlow_num());
		// 质权人信息
		List<CopyrightPerson> cps2 = ApplicationUtils.createCps2Z51(request,
				z51.getFlow_num());
		Application app = new Application();
		app.setApp_type("z51");
		app.setApp_name(z51.getOpusName());
		app.setFlow_num(z51.getFlow_num());
		app.setPublish_id(id);
		app.setType(3);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		// 设置权利人
		String names = "";
		for (CopyrightPerson cp : cps1) {
			names = names + cp.getName() + ",";
		}
		names = names.substring(0, names.length() - 1);
		app.setName(names);
		if (methoType == 1) {
			appService.updateZ51(z51, sp, dp, app, cps1, cps2);
		} else {
			appService.addZ51(z51, sp, dp, app, cps1, cps2);
		}
		return "redirect:/application/view/" + z51.getFlow_num();
	}

	@RequestMapping(value = "z52/{subTypes}", method = RequestMethod.POST)
	public String z51(@PathVariable("subTypes") String subTypes, Model model,
			HttpServletRequest request, HttpSession session, R43_4 z52) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		int methoType = 0;
		String flowNum = null;
		if (z52.getFlow_num() != null && !z52.getFlow_num().equals("")) {
			methoType = 1;
			flowNum = z52.getFlow_num();
		} else {
			flowNum = ApplicationUtils.getFlowNum("z52", id);
			z52.setFlow_num(flowNum);
		}
		// 构建person sqr
		Person sp = ApplicationUtils.createSqrPerson(request, flowNum);
		// 构建person dlr
		Person dp = null;
		if (null != z52.getIsAgent() && z52.getIsAgent().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flowNum);
		} else {
			z52.setAgent_desc("");
		}
		// 出质人信息
		List<PartByAdd> parts1 = ApplicationUtils.createZ52PartByAdd(request,
				flowNum, "czr");
		// 质权人信息
		List<PartByAdd> parts2 = ApplicationUtils.createZ52PartByAdd(request,
				flowNum, "zqr");
		Application app = new Application();
		app.setApp_type("z52");
		app.setApp_name(z52.getSoftName());
		app.setFlow_num(flowNum);
		app.setPublish_id(id);
		app.setType(3);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		// 设置权利人
		String names = "";
		for (PartByAdd part : parts1) {
			names = names + part.getName() + ",";
		}
		names = names.substring(0, names.length() - 1);
		app.setName(names);
		if (methoType == 1) {
			appService.updateZ52(z52, sp, dp, app, parts1, parts2);
		} else {
			appService.addZ52(z52, sp, dp, app, parts1, parts2);
		}
		return "redirect:/application/view/" + flowNum;
	}

	@RequestMapping(value = "initupdate/z51/{flow_num}", method = RequestMethod.GET)
	public String z51_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ51(flow_num);
		model.addAttribute("z51", map.get("z51"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		model.addAttribute("cps1", map.get("cps1"));
		model.addAttribute("cps2", map.get("cps2"));

		Z51 z51 = (Z51) map.get("z51");
		// 设置权利范围值
		String OpusTypes = z51.getOpusType_();
		String[] OpusType = OpusTypes.split(",", -1);
		for (String str : OpusType) {
			model.addAttribute(str, str);
		}
		return "application/z51";
	}

	@RequestMapping(value = "initupdate/z52/{flow_num}", method = RequestMethod.GET)
	public String z52_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ52(flow_num);
		model.addAttribute("z52", map.get("z52"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		model.addAttribute("parts1", map.get("parts1"));
		model.addAttribute("parts2", map.get("parts2"));
		return "application/z52";
	}

	@RequestMapping(value = "initupdate/z53/{flow_num}", method = RequestMethod.GET)
	public String z53_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ536(flow_num);
		R41 z53 = (R41) map.get("z536");//
		model.addAttribute("z53", z53);
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		model.addAttribute("cps1", map.get("cps1")); // 出质人信息
		model.addAttribute("cps2", map.get("cps2")); // 质权人信息
		model.addAttribute("infos", map.get("infos"));
		// 设置权利范围值
		if (null != z53.getSoftFullName() && !z53.getSoftFullName().equals("")) {
			String[] softFullNames = z53.getSoftFullName().split(",", -1);
			for (String str : softFullNames) {
				model.addAttribute(str, str);
			}
		}
		return "application/z53";
	}

	@RequestMapping(value = "initupdate/z54/{flow_num}", method = RequestMethod.GET)
	public String z54_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ536(flow_num);
		model.addAttribute("z54", map.get("z536"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		model.addAttribute("cps1", map.get("cps1")); // 出质人信息
		model.addAttribute("cps2", map.get("cps2")); // 质权人信息
		return "application/z54";
	}

	@RequestMapping(value = "initupdate/z55/{flow_num}", method = RequestMethod.GET)
	public String z55_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ536(flow_num);
		model.addAttribute("z55", map.get("z536"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		model.addAttribute("cps1", map.get("cps1")); // 出质人信息
		model.addAttribute("cps2", map.get("cps2")); // 质权人信息
		return "application/z55";
	}

	@RequestMapping(value = "initupdate/z56/{flow_num}", method = RequestMethod.GET)
	public String z56_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ536(flow_num);
		R41 z56 = (R41) map.get("z536");//
		model.addAttribute("z56", z56);
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		model.addAttribute("cps1", map.get("cps1")); // 出质人信息
		model.addAttribute("cps2", map.get("cps2")); // 质权人信息
		model.addAttribute("cps3", map.get("cps3")); // 受让人信息
		model.addAttribute("infos", map.get("infos"));// 转让合同主要内容
		// 设置权利范围值
		if (null != z56.getSoftFullName() && !z56.getSoftFullName().equals("")) {
			String[] softFullNames = z56.getSoftFullName().split(",", -1);
			for (String str : softFullNames) {
				model.addAttribute(str, str);
			}
		}
		return "application/z56";
	}

	@RequestMapping(value = "z53and6/{subTypes}/{apptype}", method = RequestMethod.POST)
	public String addZ536(@PathVariable("subTypes") String subTypes,
			@PathVariable("apptype") String apptype, Model model,
			HttpServletRequest request, HttpSession session, R41 z536) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		int methoType = 0;
		String flowNum = null;
		if (z536.getFlow_num() != null && !z536.getFlow_num().equals("")) {
			methoType = 1;
			flowNum = z536.getFlow_num();
		} else {
			flowNum = ApplicationUtils.getFlowNum(apptype, id);
			z536.setFlow_num(flowNum);
		}
		// 构建person sqr
		Person sp = ApplicationUtils.createSqrPerson(request, flowNum);
		// 构建person dlr
		Person dp = null;
		if (null != z536.getIsAgent() && z536.getIsAgent().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flowNum);
		} else {
			z536.setAgent_desc("");
		}
		// 出质人信息
		List<CopyrightPerson> cps1 = ApplicationUtils.createCps1Z51(request,
				flowNum);
		// 质权人信息
		List<CopyrightPerson> cps2 = ApplicationUtils.createCps2Z51(request,
				flowNum);
		List<ContentInfo> infos = null;
		// 受让人信息
		List<CopyrightPerson> cps3 = null;
		if (apptype.equals("z56")) {
			cps3 = ApplicationUtils.createCps3Z51(request, flowNum);
			ContentInfo info = new ContentInfo();
			info.setItem(request.getParameter("bailDateInfo"));
			info.setBefore_content(request.getParameter("copyrightType"));
			info.setAfter_content(request.getParameter("copyrightScope"));
			info.setFlow_num(flowNum);
			infos = new ArrayList<ContentInfo>();
			infos.add(info);
		}
		if (apptype.equals("z53")) {
			infos = ApplicationUtils.createContentInfo(request, flowNum);
		}
		Application app = new Application();
		app.setApp_type(apptype);
		app.setApp_name(z536.getReason());
		app.setFlow_num(flowNum);
		app.setPublish_id(id);
		app.setType(3);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		// 设置权利人
		String names = "";
		for (CopyrightPerson cp1 : cps1) {
			names = names + cp1.getName() + ",";
		}
		names = names.substring(0, names.length() - 1);
		app.setName(names);
		if (methoType == 1) {
			appService.updateZ536(z536, sp, dp, app, cps1, cps2, cps3, infos);
		} else {
			appService.addZ536(z536, sp, dp, app, cps1, cps2, cps3, infos);
		}
		return "redirect:/application/view/" + flowNum;
	}

	@RequestMapping(value = "z61/{subTypes}", method = RequestMethod.POST)
	public String z61(@PathVariable("subTypes") String subTypes, Model model,
			HttpServletRequest request, HttpSession session, Z60 z61) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		String flow_num = ApplicationUtils.getFlowNum("z61", id);
		List<ContentInfo> infos = ApplicationUtils.createContentInfo(request,
				flow_num);
		Person sp = ApplicationUtils.createSqrPerson(request, flow_num);

		z61 = ApplicationUtils.modifyAgentInfo(request, z61);
		z61.setFlow_num(flow_num);
		Person dp = null;
		if (null != z61.getAgent() && z61.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, flow_num);
		} else if (null != z61.getApply_type()
				&& z61.getApply_type().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flow_num);
		} else {
			z61.setAgent_desc("");
		}
		Application app = new Application();
		app.setApp_type("z61");
		app.setApp_name(z61.getOpus_name());
		app.setFlow_num(flow_num);
		app.setPublish_id(id);
		app.setType(1);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else if (subTypes.equals("submit")) {
			app.setState(2);
			app.setIsupdate("no");
		}
		appService.addZ61(z61, infos, sp, dp, app);
		return "redirect:/application/view/" + flow_num;
		// return "redirect:view/" + flow_num;

	}

	@RequestMapping(value = "initupdate/z61/{flow_num}", method = RequestMethod.GET)
	public String z61_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ61(flow_num);
		model.addAttribute("z60", map.get("z60"));
		model.addAttribute("infos", map.get("infos"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		return "application/update_z61";
	}

	@RequestMapping(value = "z61/update/{subTypes}", method = RequestMethod.POST)
	public String z61Update(@PathVariable("subTypes") String subTypes,
			Model model, HttpServletRequest request, HttpSession session,
			Z60 z61) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		List<ContentInfo> infos = ApplicationUtils.createContentInfo(request,
				z61.getFlow_num());
		Person sp = ApplicationUtils
				.createSqrPerson(request, z61.getFlow_num());
		Person dp = null;
		z61 = ApplicationUtils.modifyAgentInfo(request, z61);
		z61.setFlow_num(z61.getFlow_num());
		if (null != z61.getAgent() && z61.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, z61.getFlow_num());
		} else if (null != z61.getApply_type()
				&& z61.getApply_type().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, z61.getFlow_num());
		} else {
			z61.setAgent_desc("");
		}
		Application app = new Application();
		app.setApp_type("z61");
		app.setApp_name(z61.getOpus_name());
		app.setFlow_num(z61.getFlow_num());
		app.setPublish_id(id);
		app.setType(1);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else if (subTypes.equals("submit")) {
			app.setState(2);
			app.setIsupdate("no");
		}
		appService.updateZ61(z61, infos, sp, dp, app);
		return "redirect:/application/view/" + z61.getFlow_num();

	}

	@RequestMapping(value = "z62/{subType}", method = RequestMethod.POST)
	public String z62(@PathVariable("subType") String subType,
			HttpServletRequest request, HttpSession session, Model model,
			Z60 z62) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		String flow_num = ApplicationUtils.getFlowNum("z62", id);
		Person sp = ApplicationUtils.createSqrPerson(request, flow_num);
		Person dp = null;
		z62 = ApplicationUtils.modifyAgentInfo(request, z62);
		z62.setFlow_num(flow_num);
		if (null != z62.getAgent() && z62.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, flow_num);
		} else if (null != z62.getApply_type()
				&& z62.getApply_type().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flow_num);
		} else {
			z62.setAgent_desc("");
		}
		Application app = new Application();
		app.setApp_type("z62");
		app.setApp_name(z62.getOpus_name());
		app.setFlow_num(flow_num);
		app.setPublish_id(id);
		app.setType(1);
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		appService.addZ60(z62, sp, dp, app);
		return "redirect:/application/view/" + z62.getFlow_num();

	}

	@RequestMapping(value = "initupdate/z62/{flow_num}", method = RequestMethod.GET)
	public String z62_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ60(flow_num);
		model.addAttribute("z62", map.get("z60"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		return "application/update_z62";
	}

	@RequestMapping(value = "z62/update/{subTypes}", method = RequestMethod.POST)
	public String z62Update(@PathVariable("subTypes") String subTypes,
			Model model, HttpServletRequest request, HttpSession session,
			Z60 z62) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		Person sp = ApplicationUtils
				.createSqrPerson(request, z62.getFlow_num());
		Person dp = null;
		z62 = ApplicationUtils.modifyAgentInfo(request, z62);
		if (null != z62.getAgent() && z62.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, z62.getFlow_num());
		} else if (null != z62.getApply_type()
				&& z62.getApply_type().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, z62.getFlow_num());
		} else {
			z62.setAgent_desc("");
		}
		Application app = new Application();
		app.setApp_type("z62");
		app.setApp_name(z62.getOpus_name());
		app.setFlow_num(z62.getFlow_num());
		app.setPublish_id(id);
		app.setType(1);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		appService.updateZ60(z62, sp, dp, app);
		return "redirect:/application/view/" + z62.getFlow_num();

	}

	@RequestMapping(value = "z63/{subType}", method = RequestMethod.POST)
	public String z63(@PathVariable("subType") String subType,
			HttpServletRequest request, HttpSession session, Model model,
			Z60 z63) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		String flow_num = ApplicationUtils.getFlowNum("z63", id);
		Person sp = ApplicationUtils.createSqrPerson(request, flow_num);
		Person dp = null;
		z63 = ApplicationUtils.modifyAgentInfo(request, z63);
		z63.setFlow_num(flow_num);
		if (null != z63.getAgent() && z63.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, z63.getFlow_num());
		} else if (null != z63.getApply_type()
				&& z63.getApply_type().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, z63.getFlow_num());
		} else {
			z63.setAgent_desc("");
		}
		Application app = new Application();
		app.setApp_type("z63");
		app.setApp_name(z63.getOpus_name());
		app.setFlow_num(flow_num);
		app.setPublish_id(id);
		app.setType(1);
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		appService.addZ60(z63, sp, dp, app);
		return "redirect:/application/view/" + z63.getFlow_num();

	}

	@RequestMapping(value = "initupdate/z63/{flow_num}", method = RequestMethod.GET)
	public String z63_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ60(flow_num);
		model.addAttribute("z63", map.get("z60"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		return "application/update_z63";
	}

	@RequestMapping(value = "z63/update/{subTypes}", method = RequestMethod.POST)
	public String z63Update(@PathVariable("subTypes") String subTypes,
			Model model, HttpServletRequest request, HttpSession session,
			Z60 z63) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		Person sp = ApplicationUtils
				.createSqrPerson(request, z63.getFlow_num());
		Person dp = null;
		z63 = ApplicationUtils.modifyAgentInfo(request, z63);
		if (null != z63.getAgent() && z63.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, z63.getFlow_num());
		} else if (null != z63.getApply_type()
				&& z63.getApply_type().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, z63.getFlow_num());
		} else {
			z63.setAgent_desc("");
		}
		Application app = new Application();
		app.setApp_type("z63");
		app.setApp_name(z63.getOpus_name());
		app.setFlow_num(z63.getFlow_num());
		app.setPublish_id(id);
		app.setType(1);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		appService.updateZ60(z63, sp, dp, app);
		return "redirect:/application/view/" + z63.getFlow_num();

	}

	@RequestMapping(value = "z64/{subTypes}", method = RequestMethod.POST)
	public String z64(@PathVariable("subTypes") String subTypes,
			HttpServletRequest request, HttpSession session, Model model,
			Z60 z64) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		String flow_num = ApplicationUtils.getFlowNum("z64", id);
		Person sp = ApplicationUtils.createSqrPerson(request, flow_num);
		Person dp = null;
		z64 = ApplicationUtils.modifyAgentInfo(request, z64);
		if (z64.getRegister_type().equalsIgnoreCase("z51")) {
			z64.setChange_type(request.getParameter("change_type2"));
		} else {
			z64.setChange_type(request.getParameter("change_type1"));
		}
		z64.setFlow_num(flow_num);
		if (null != z64.getAgent() && z64.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, flow_num);
		} else if (null != z64.getApply_type()
				&& z64.getApply_type().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flow_num);
		} else {
			z64.setAgent_desc("");
		}
		List<PartByAdd> partAdds = null;
		String[] nameArr = request.getParameterValues("partname");
		String[] phoneArr = request.getParameterValues("partphone");
		if (nameArr.length > 0 && phoneArr.length > 0) {
			partAdds = ApplicationUtils.createPartByAdd(nameArr, phoneArr,
					flow_num);
		}
		Application app = new Application();
		app.setApp_type("z64");
		app.setApp_name(z64.getOpus_name());
		app.setFlow_num(flow_num);
		app.setPublish_id(id);
		app.setType(1);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		appService.addZ64(z64, sp, dp, app, partAdds);
		return "redirect:/application/view/" + z64.getFlow_num();
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "initupdate/z64/{flow_num}", method = RequestMethod.GET)
	public String z64_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ64(flow_num);
		model.addAttribute("z64", map.get("z64"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		if (map.get("parts") != null
				&& ((List<PartByAdd>) map.get("parts")).size() > 0) {
			model.addAttribute("parts", map.get("parts"));
		}
		return "application/update_z64";
	}

	@RequestMapping(value = "z64/update/{subTypes}", method = RequestMethod.POST)
	public String z64Update(@PathVariable("subTypes") String subTypes,
			Model model, HttpServletRequest request, HttpSession session,
			Z60 z64) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		Person sp = ApplicationUtils
				.createSqrPerson(request, z64.getFlow_num());
		Person dp = null;

		z64 = ApplicationUtils.modifyAgentInfo(request, z64);
		if (z64.getRegister_type().equalsIgnoreCase("z51")) {
			z64.setChange_type(request.getParameter("change_type2"));
		} else {
			z64.setChange_type(request.getParameter("change_type1"));
		}
		if (null != z64.getAgent() && z64.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, z64.getFlow_num());
		} else if (null != z64.getApply_type()
				&& z64.getApply_type().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, z64.getFlow_num());
		} else {
			z64.setAgent_desc("");
		}
		List<PartByAdd> partAdds = null;
		String[] nameArr = request.getParameterValues("partname");
		String[] phoneArr = request.getParameterValues("partphone");
		if (nameArr.length > 0 && phoneArr.length > 0) {
			partAdds = ApplicationUtils.createPartByAdd(nameArr, phoneArr,
					z64.getFlow_num());
		}
		Application app = new Application();
		app.setApp_type("z64");
		app.setApp_name(z64.getOpus_name());
		app.setFlow_num(z64.getFlow_num());
		app.setPublish_id(id);
		app.setType(1);
		if (subTypes.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		appService.updateZ64(z64, sp, dp, app, partAdds);
		return "redirect:/application/view/" + z64.getFlow_num();

	}

	/**
	 * 通过流水号查看提交的表单
	 * 
	 * @param flow_num
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "view/{flow_num}", method = RequestMethod.GET)
	public String view(@PathVariable("flow_num") String flow_num, Model model) {
		Application app = appService.getApplication(flow_num);

		if (app.getApp_type().equalsIgnoreCase("z11")) {
			Map<String, Object> map = appService.getZ11(flow_num);
			model.addAttribute("z11", map.get("z11"));
			model.addAttribute("cps", map.get("cps"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			if (map.get("parts") != null
					&& ((List<PartByAdd>) map.get("parts")).size() > 0) {
				model.addAttribute("parts", map.get("parts"));
			}
			Z11 z11 = (Z11) map.get("z11");
			// 设置权利范围值
			if (null != z11.getRight_scope()
					&& !z11.getRight_scope().equals("")) {
				String[] right_scope = z11.getRight_scope().split(",", -1);
				for (String str : right_scope) {
					model.addAttribute(str, str);
				}
			}
			// 重新读取作者信息
			String[] author_name_temp = z11.getAuthor_name().split(",", -1);
			String[] author_sign_temp = z11.getAuthor_sign().split(",", -1);
			List<Author> authors = new ArrayList<Author>();
			for (int i = 0; i < author_name_temp.length; i++) {
				Author author = new Author();
				author.setName(author_name_temp[i]);
				try {
					author.setSign(author_sign_temp[i]);
				} catch (ArrayIndexOutOfBoundsException aioe) {
					author.setSign("");
				}

				authors.add(author);
			}
			model.addAttribute("authors", authors);

			return "application/view_z11";
		}

		else if (app.getApp_type().equalsIgnoreCase("z21")) {
			Map<String, Object> map = appService.getZ21(flow_num);
			model.addAttribute("z21", map.get("z21"));
			model.addAttribute("cps1", map.get("cps1"));
			model.addAttribute("cps2", map.get("cps2"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			if (map.get("parts") != null
					&& ((List<PartByAdd>) map.get("parts")).size() > 0) {
				model.addAttribute("parts", map.get("parts"));
			}
			Z21 z21 = (Z21) map.get("z21");
			// 设置权利范围值
			String right_scope = z21.getRight_scope();
			String[] right_scopes = right_scope.split(",", -1);
			for (String str : right_scopes) {
				model.addAttribute(str, str);
			}

			// 设置作品类别
			String opus_type = z21.getOpus_type();
			String[] opus_types = opus_type.split(",", -1);
			for (String str : opus_types) {
				model.addAttribute(str, str);
			}

			return "application/view_z21";
		}

		else if (app.getApp_type().equalsIgnoreCase("z31")) {
			Map<String, Object> map = appService.getZ31(flow_num);
			model.addAttribute("z31", map.get("z31"));
			model.addAttribute("cps", map.get("cps"));
			model.addAttribute("authors", map.get("authors"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_z31";
		}

		else if (app.getApp_type().equalsIgnoreCase("z41")) {
			Map<String, Object> map = appService.getZ21(flow_num);
			model.addAttribute("z41", map.get("z21"));
			model.addAttribute("cps1", map.get("cps1"));
			model.addAttribute("cps2", map.get("cps2"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_z41";
		} else if (app.getApp_type().equalsIgnoreCase("z51")) {
			Map<String, Object> map = appService.getZ51(flow_num);
			model.addAttribute("z51", map.get("z51"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			model.addAttribute("cps1", map.get("cps1"));
			model.addAttribute("cps2", map.get("cps2"));

			Z51 z51 = (Z51) map.get("z51");
			// 设置权利范围值
			String OpusTypes = z51.getOpusType_();
			String[] OpusType = OpusTypes.split(",", -1);
			for (String str : OpusType) {
				model.addAttribute(str, str);
			}
			return "application/view_z51";
		} else if (app.getApp_type().equalsIgnoreCase("z52")) {
			Map<String, Object> map = appService.getZ52(flow_num);
			model.addAttribute("z52", map.get("z52"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			model.addAttribute("parts1", map.get("parts1"));
			model.addAttribute("parts2", map.get("parts2"));
			return "application/view_z52";
		} else if (app.getApp_type().equalsIgnoreCase("z53")
				|| app.getApp_type().equalsIgnoreCase("z54")
				|| app.getApp_type().equalsIgnoreCase("z55")
				|| app.getApp_type().equalsIgnoreCase("z56")) {
			Map<String, Object> map = appService.getZ536(flow_num);
			R41 z536 = (R41) map.get("z536");//
			model.addAttribute(app.getApp_type(), z536);
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			model.addAttribute("cps1", map.get("cps1")); // 出质人信息
			model.addAttribute("cps2", map.get("cps2")); // 质权人信息
			if (null != map.get("cps3")
					&& ((List<CopyrightPerson>) map.get("cps3")).size() > 0) {
				model.addAttribute("cps3", map.get("cps3")); // 受让人信息
			}
			if (null != map.get("infos")
					&& ((List<ContentInfo>) map.get("infos")).size() > 0) {
				model.addAttribute("infos", map.get("infos"));
			}
			// 设置权利范围值
			if (app.getApp_type().equalsIgnoreCase("z53")
					|| app.getApp_type().equalsIgnoreCase("z56")) {
				if (null != z536.getSoftFullName()
						&& !z536.getSoftFullName().equals("")) {
					String[] softFullNames = z536.getSoftFullName().split(",",
							-1);
					for (String str : softFullNames) {
						model.addAttribute(str, str);
					}
				}
			}
			return "application/view_" + app.getApp_type();
		} else if (app.getApp_type().equalsIgnoreCase("z61")) {
			Map<String, Object> map = appService.getZ61(flow_num);
			model.addAttribute("z60", map.get("z60"));
			model.addAttribute("infos", map.get("infos"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_z61";
		} else if (app.getApp_type().equalsIgnoreCase("z62")) {
			Map<String, Object> map = appService.getZ60(flow_num);
			model.addAttribute("z60", map.get("z60"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_z62";
		} else if (app.getApp_type().equalsIgnoreCase("z63")) {
			Map<String, Object> map = appService.getZ60(flow_num);
			model.addAttribute("z60", map.get("z60"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_z63";
		} else if (app.getApp_type().equalsIgnoreCase("z64")) {
			Map<String, Object> map = appService.getZ64(flow_num);
			model.addAttribute("z60", map.get("z64"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			if (map.get("parts") != null
					&& ((List<PartByAdd>) map.get("parts")).size() > 0) {
				model.addAttribute("parts", map.get("parts"));
			}
			return "application/view_z64";
		} else if (app.getApp_type().equalsIgnoreCase("z71")) {
			Map<String, Object> map = appService.getZ71(flow_num);
			model.addAttribute("z71", map.get("z71"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			Z71 z71 = (Z71) map.get("z71");
			if (z71.getIsPublic().equals("否")) {
				model.addAttribute("cps", map.get("cps"));
			}
			model.addAttribute("records", map.get("records"));

			if (null != z71.getRecordType_()
					&& !z71.getRecordType_().equals("")) {
				String[] recordType_ = z71.getRecordType_().split(",", -1);
				for (String str : recordType_) {
					model.addAttribute(str, str);
				}
			}
			if (null != z71.getRecordTypeSon_()
					&& !z71.getRecordTypeSon_().equals("")) {
				String[] recordTypeSon_ = z71.getRecordTypeSon_()
						.split(",", -1);
				for (String strson : recordTypeSon_) {
					model.addAttribute(strson, strson);
				}
			}
			return "application/view_z71";
		} else if (app.getApp_type().equalsIgnoreCase("z72")) {
			Map<String, Object> map = appService.getZ72(flow_num);
			model.addAttribute("z72", map.get("z72"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			if (map.get("cps") != null) {
				model.addAttribute("cps", map.get("cps"));
			}
			Z71 z72 = (Z71) map.get("z72");
			if (null != z72.getRecordType_()
					&& !z72.getRecordType_().equals("")) {
				String[] recordType_ = z72.getRecordType_().split(",", -1);
				for (String str : recordType_) {
					model.addAttribute(str, str);
				}
			}
			if (null != z72.getRecordTypeSon_()
					&& !z72.getRecordTypeSon_().equals("")) {
				String[] recordTypeSon_ = z72.getRecordTypeSon_()
						.split(",", -1);
				for (String strson : recordTypeSon_) {
					model.addAttribute(strson, strson);
				}
			}
			model.addAttribute("record", map.get("record"));
			return "application/view_z72";
		} else if (app.getApp_type().equalsIgnoreCase("z73")) {
			Map<String, Object> map = appService.getZ73(flow_num);
			model.addAttribute("z73", map.get("z73"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_z73";
		} else if (app.getApp_type().equalsIgnoreCase("z74")) {
			Map<String, Object> map = appService.getZ73(flow_num);
			model.addAttribute("z74", map.get("z73"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_z74";
		}

		else if (app.getApp_type().equalsIgnoreCase("z75")) {
			Map<String, Object> map = appService.getZ75(flow_num);
			model.addAttribute("z75", map.get("z75"));
			model.addAttribute("sqr", map.get("sqr"));
			if (null != map.get("dlr")) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			model.addAttribute("infos", map.get("infos"));
			return "application/view_z75";
		} else if (app.getApp_type().equalsIgnoreCase("r11")) {
			Map<String, Object> map = appService.getR11(flow_num);
			model.addAttribute("r11", map.get("r11"));
			model.addAttribute("cps", map.get("cps"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			R11 r11 = (R11) map.get("r11");
			// 设置权利范围值
			if (null != r11.getRightScope_()
					&& !r11.getRightScope_().equals("")) {
				String[] right_scope_ = r11.getRightScope_().split(",", -1);
				for (String str : right_scope_) {
					model.addAttribute(str, str);
				}
			}
			return "application/view_r11";
		}

		else if (app.getApp_type().equalsIgnoreCase("r21")) {
			Map<String, Object> map = appService.getR21(flow_num);
			model.addAttribute("r21", map.get("r21"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			model.addAttribute("cps1", map.get("cps1"));
			model.addAttribute("cps2", map.get("cps2"));
			return "application/view_r21";
		} else if (app.getApp_type().equalsIgnoreCase("r41")) {

			Map<String, Object> map = appService.getR41(flow_num);
			model.addAttribute("r41", map.get("r41"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			model.addAttribute("infos", map.get("infos"));
			return "application/view_r41";
		} else if (app.getApp_type().equalsIgnoreCase("r42")) {
			Map<String, Object> map = appService.getR42(flow_num);
			model.addAttribute("r42", map.get("r42"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_r42";
		} else if (app.getApp_type().equalsIgnoreCase("r43")) {
			Map<String, Object> map = appService.getR43_4(flow_num);
			model.addAttribute("r43_4", map.get("r43_4"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_r43";
		} else if (app.getApp_type().equalsIgnoreCase("r44")) {
			Map<String, Object> map = appService.getR43_4(flow_num);
			model.addAttribute("r43_4", map.get("r43_4"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_r44";
		} else if (app.getApp_type().equalsIgnoreCase("r45")) {
			Map<String, Object> map = appService.getR43_4(flow_num);
			model.addAttribute("r43_4", map.get("r43_4"));
			model.addAttribute("sqr", map.get("sqr"));
			if (map.get("dlr") != null) {
				model.addAttribute("dlr", map.get("dlr"));
			}
			return "application/view_r45";
		}
		return "";
	}

	/**
	 * 前台删除表单
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "delete", method = RequestMethod.POST)
	public void deleteApplication(HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			response.setContentType("text/xml; charset=UTF-8");
			// 以下两句为取消在本地的缓存
			response.setHeader("Cache-Control", "no-cache");
			response.setHeader("Pragma", "no-cache");
			out = response.getWriter();

			String flow_num = request.getParameter("flowNum");
			Application application = appService
					.getApplicationByCondition(" where flow_num ='" + flow_num
							+ "'");
			if (application != null) {
				appService.deleteApplication(" where flow_num ='" + flow_num
						+ "'");
				out.print("yes");
			}
		} catch (Exception e) {
			out.print("no");
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}

	@RequestMapping(value = "z11/update/{subType}", method = RequestMethod.POST)
	public String updateZ11Application(@PathVariable("subType") String subType,
			Model model, HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z11 z11) {

		/**
		 * 构建创作完成日期
		 */
		Long id = (Long) session.getAttribute("CCCS_USERID");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		if (null != year && null != month && !month.equals("") && day != null
				&& !day.equals("")) {
			z11.setCreate_date(year + "-" + month + "-" + day);
		}
		// 构建著作权人
		List<CopyrightPerson> cps = ApplicationUtils.createCps(request,
				z11.getFlow_num());
		// 构建申请人
		Person sp = ApplicationUtils
				.createSqrPerson(request, z11.getFlow_num());
		// 构建代理人
		Person dp = null;
		if (z11.getApply_type().equals("由代理人申请")) {
			dp = ApplicationUtils.createDlrPerson(request, z11.getFlow_num());// sfdasdfas
		} else {
			z11.setAgent_desc("");
		}
		if (!z11.getObtain_mode().equals("继承")) {
			z11.setInherit_desc("");
		}
		z11.setAuthor_name(CommonUtil.ToString(request
				.getParameterValues("author_name")));
		z11.setAuthor_sign(CommonUtil.ToString(request
				.getParameterValues("author_sign")));
		z11.setFlow_num(z11.getFlow_num());

		/**
		 * 权利拥有状况及其说明
		 */
		String rightScope = request.getParameter("rightScope");

		if (rightScope != null && rightScope.equals("全部")) {
			z11.setScope("全部");
			z11.setRight_scope("发表权,署名权,修改权,保护作品完整权,复制权,发行权,出租权,展览权,表演权,放映权,广播权,信息网络传播权,摄制权,改编权,翻译权,汇编权,其他");
		} else {
			z11.setScope("部分");
			if (z11.getRight_scope() == null) {
				z11.setRight_scope("");
			}
		}

		Application app = new Application();
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");// 标示保存
		} else {
			app.setState(2);// 表示提交
			app.setIsupdate("no");
		}
		app.setFlow_num(z11.getFlow_num());
		app.setApp_name(z11.getOpus_name());
		app.setApp_type("z11");
		app.setPublish_id(id);
		app.setType(1);

		// 新增申请办理信息--提交者信息 --姓名或名称 /电话号码
		List<PartByAdd> partAdds = null;
		String[] nameArr = request.getParameterValues("partname");
		String[] phoneArr = request.getParameterValues("partphone");
		if (nameArr.length > 0 && phoneArr.length > 0) {
			partAdds = ApplicationUtils.createPartByAdd(nameArr, phoneArr,
					z11.getFlow_num());
		}

		// 设置权利人
		String names = "";
		for (CopyrightPerson cp : cps) {
			names = names + cp.getName() + ",";
		}
		names = names.substring(0, names.length() - 1);
		app.setName(names);
		appService.updateZ11(z11, cps, sp, dp, app, partAdds);
		// 这里是从post方式redirect到get所以这里要用到绝对路进把z11/{subType}中的这个去掉
		return "redirect:/application/view/" + z11.getFlow_num();
	}

	@RequestMapping(value = "z21/update/{subType}", method = RequestMethod.POST)
	public String updateZ21Application(@PathVariable("subType") String subType,
			Model model, HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z21 z21) {
		Long id = (Long) session.getAttribute("CCCS_USERID");

		List<CopyrightPerson> cps1 = ApplicationUtils.createCps1(request,
				z21.getFlow_num());// 转让（许可）方信息
		List<CopyrightPerson> cps2 = ApplicationUtils.createCps2(request,
				z21.getFlow_num());// 受让（被许可）方信息
		Person sp = ApplicationUtils
				.createSqrPerson(request, z21.getFlow_num());
		Person dp = null;
		if (null != z21.getAgent() && z21.getAgent().equals("ok")) {
			dp = ApplicationUtils.createDlrPerson(request, z21.getFlow_num());
		} else {
			z21.setAgent_desc("");
		}
		List<PartByAdd> partAdds = null;
		String[] nameArr = request.getParameterValues("partname");
		String[] phoneArr = request.getParameterValues("partphone");
		if (nameArr.length > 0 && phoneArr.length > 0) {
			partAdds = ApplicationUtils.createPartByAdd(nameArr, phoneArr,
					z21.getFlow_num());
		}

		if (z21.getRight_scope() == null) {
			z21.setRight_scope("");
		}

		if (z21.getOpus_type() == null) {
			z21.setOpus_type("");
		}

		Application app = new Application();
		app.setApp_type("z21");
		app.setApp_name(z21.getOpus_name());
		app.setFlow_num(z21.getFlow_num());
		app.setPublish_id(id);
		app.setType(1);// 代表为作品著作权类
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		// 设置权利人
		String names = "";
		for (CopyrightPerson cp : cps1) {
			names = names + cp.getName() + ",";
		}
		names = names.substring(0, names.length() - 1);
		app.setName(names);

		appService.updateZ21(z21, cps1, cps2, sp, dp, app, partAdds);
		return "redirect:/application/view/" + z21.getFlow_num();
	}

	@RequestMapping(value = "initupdate/z41/{flow_num}", method = RequestMethod.GET)
	public String z41_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ21(flow_num);
		model.addAttribute("z41", map.get("z21"));
		model.addAttribute("cps1", map.get("cps1"));
		model.addAttribute("cps2", map.get("cps2"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}

		return "application/update_z41";
	}

	@RequestMapping(value = "z41/{subType}", method = RequestMethod.POST)
	public String Z41(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z21 z41) {
		/**
		 * 执行修改
		 */
		List<CopyrightPerson> cps1 = null;
		List<CopyrightPerson> cps2 = null;
		Person sp = null;
		Person dp = null;
		Long id = (Long) session.getAttribute("CCCS_USERID");
		if (z41.getFlow_num() != null && !z41.getFlow_num().equals("")) {
			cps1 = ApplicationUtils.createCpsZ41(request, z41.getFlow_num(), 1);// 转让（许可）方信息
			cps2 = ApplicationUtils.createCpsZ41(request, z41.getFlow_num(), 2);// 受让（被许可）方信息
			sp = ApplicationUtils.createSqrPerson(request, z41.getFlow_num());

			if (null != z41.getAgent() && z41.getAgent().equals("ok")) {
				dp = ApplicationUtils.createDlrPerson(request,
						z41.getFlow_num());
			} else {
				z41.setAgent_desc("");
			}
			Application app = new Application();
			app.setApp_type("z41");
			app.setApp_name(z41.getOpus_name());
			app.setFlow_num(z41.getFlow_num());
			app.setPublish_id(id);
			app.setType(1);// 代表为作品著作权类
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			// 设置权利人
			String names = "";
			for (CopyrightPerson cp : cps1) {
				names = names + cp.getName() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setName(names);

			appService.updateZ41(z41, cps1, cps2, sp, dp, app);
			return "redirect:/application/view/" + z41.getFlow_num();
		} else {// 执行新增
			String flow_num = ApplicationUtils.getFlowNum("z41", id);
			cps1 = ApplicationUtils.createCpsZ41(request, flow_num, 1);// 转让（许可）方信息
			cps2 = ApplicationUtils.createCpsZ41(request, flow_num, 2);// 受让（被许可）方信息
			sp = ApplicationUtils.createSqrPerson(request, flow_num);
			if (null != z41.getAgent() && z41.getAgent().equals("ok")) {
				dp = ApplicationUtils.createDlrPerson(request, flow_num);
			} else {
				z41.setAgent_desc("");
			}

			z41.setFlow_num(flow_num);
			Application app = new Application();
			app.setApp_type("z41");
			app.setApp_name(z41.getOpus_name());
			app.setFlow_num(flow_num);
			app.setPublish_id(id);
			app.setType(1);
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			// 设置权利人
			String names = "";
			for (CopyrightPerson cp : cps1) {
				names = names + cp.getName() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setName(names);

			appService.addZ41(z41, cps1, cps2, sp, dp, app);
			return "redirect:/application/view/" + flow_num;
		}
	}

	@RequestMapping(value = "initupdate/z73/{flow_num}", method = RequestMethod.GET)
	public String z73_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ73(flow_num);
		model.addAttribute("z73", map.get("z73"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}

		return "application/update_z73";
	}

	@RequestMapping(value = "z73/{subType}", method = RequestMethod.POST)
	public String addZ73(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z73_5 z73) {
		/**
		 * 执行修改
		 */
		Person sp = null;
		Person dp = null;
		Long id = (Long) session.getAttribute("CCCS_USERID");
		if (z73.getFlow_num() != null && !z73.getFlow_num().equals("")) {
			sp = ApplicationUtils.createSqrPerson(request, z73.getFlow_num());

			if (null != z73.getApply_type()
					&& z73.getApply_type().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request,
						z73.getFlow_num());
			} else {
				z73.setAgent_desc("");
			}
			Application app = new Application();
			app.setApp_type("z73");
			app.setApp_name(z73.getCn_opus_name());
			app.setFlow_num(z73.getFlow_num());
			app.setPublish_id(id);
			app.setType(1);// 代表为作品著作权类
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}

			appService.updateZ73(z73, sp, dp, app);
			return "redirect:/application/view/" + z73.getFlow_num();
		} else {// 执行新增
			String flow_num = ApplicationUtils.getFlowNum("z73", id);
			sp = ApplicationUtils.createSqrPerson(request, flow_num);
			if (null != z73.getApply_type()
					&& z73.getApply_type().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request, flow_num);
			} else {
				z73.setAgent_desc("");
			}

			z73.setFlow_num(flow_num);
			Application app = new Application();
			app.setApp_type("z73");
			app.setApp_name(z73.getCn_opus_name());
			app.setFlow_num(z73.getFlow_num());
			app.setPublish_id(id);
			app.setType(1);// 代表为作品著作权类
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			appService.addZ73(z73, sp, dp, app);
			return "redirect:/application/view/" + flow_num;
		}
	}

	@RequestMapping(value = "initupdate/z74/{flow_num}", method = RequestMethod.GET)
	public String z74_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ73(flow_num);
		model.addAttribute("z74", map.get("z73"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}

		return "application/update_z74";
	}

	@RequestMapping(value = "z74/{subType}", method = RequestMethod.POST)
	public String addZ74(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z73_5 z74) {
		/**
		 * 执行修改
		 */
		Person sp = null;
		Person dp = null;
		Long id = (Long) session.getAttribute("CCCS_USERID");
		if (z74.getFlow_num() != null && !z74.getFlow_num().equals("")) {
			sp = ApplicationUtils.createSqrPerson(request, z74.getFlow_num());

			if (null != z74.getApply_type()
					&& z74.getApply_type().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request,
						z74.getFlow_num());
			} else {
				z74.setAgent_desc("");
			}
			Application app = new Application();
			app.setApp_type("z74");
			app.setApp_name(z74.getCn_opus_name());
			app.setFlow_num(z74.getFlow_num());
			app.setPublish_id(id);
			app.setType(1);// 代表为作品著作权类
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}

			appService.updateZ73(z74, sp, dp, app);
			return "redirect:/application/view/" + z74.getFlow_num();
		} else {// 执行新增
			String flow_num = ApplicationUtils.getFlowNum("z74", id);
			sp = ApplicationUtils.createSqrPerson(request, flow_num);
			if (null != z74.getApply_type()
					&& z74.getApply_type().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request, flow_num);
			} else {
				z74.setAgent_desc("");
			}

			z74.setFlow_num(flow_num);
			Application app = new Application();
			app.setApp_type("z74");
			app.setApp_name(z74.getCn_opus_name());
			app.setFlow_num(z74.getFlow_num());
			app.setPublish_id(id);
			app.setType(1);// 代表为作品著作权类
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			appService.addZ73(z74, sp, dp, app);
			return "redirect:/application/view/" + flow_num;
		}
	}

	@RequestMapping(value = "initupdate/z75/{flow_num}", method = RequestMethod.GET)
	public String z75_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ75(flow_num);
		model.addAttribute("z75", map.get("z75"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		model.addAttribute("infos", map.get("infos"));
		return "application/update_z75";
	}

	@RequestMapping(value = "z75/{subType}", method = RequestMethod.POST)
	public String addZ75(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z73_5 z75) {
		/**
		 * 执行修改
		 */
		Person sp = null;
		Person dp = null;
		Long id = (Long) session.getAttribute("CCCS_USERID");
		if (z75.getFlow_num() != null && !z75.getFlow_num().equals("")) {
			sp = ApplicationUtils.createSqrPerson(request, z75.getFlow_num());

			if (null != z75.getApply_type()
					&& z75.getApply_type().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request,
						z75.getFlow_num());
			} else {
				z75.setAgent_desc("");
			}
			// 变更信息
			List<ContentInfo> infos = ApplicationUtils.createContentInfo(
					request, z75.getFlow_num());
			Application app = new Application();
			app.setApp_type("z75");
			app.setApp_name(z75.getCn_opus_name());
			app.setFlow_num(z75.getFlow_num());
			app.setPublish_id(id);
			app.setType(1);// 代表为作品著作权类
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}

			appService.updateZ75(z75, sp, dp, app, infos);
			return "redirect:/application/view/" + z75.getFlow_num();
		} else {// 执行新增
			String flow_num = ApplicationUtils.getFlowNum("z75", id);
			sp = ApplicationUtils.createSqrPerson(request, flow_num);
			if (null != z75.getApply_type()
					&& z75.getApply_type().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request, flow_num);
			} else {
				z75.setAgent_desc("");
			}
			// 变更信息
			List<ContentInfo> infos = ApplicationUtils.createContentInfo(
					request, flow_num);
			z75.setFlow_num(flow_num);
			Application app = new Application();
			app.setApp_type("z75");
			app.setApp_name(z75.getCn_opus_name());
			app.setFlow_num(z75.getFlow_num());
			app.setPublish_id(id);
			app.setType(1);// 代表为作品著作权类
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			appService.addZ75(z75, sp, dp, app, infos);
			return "redirect:/application/view/" + flow_num;
		}
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "z71/{subType}", method = RequestMethod.POST)
	public String addZ71(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z71 z71) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		Person sp = null;
		Person dp = null;
		List<CopyrightPerson> cps = null;
		Map<String, Object> map = null;
		List<RecordProduct> records = null;
		Application app = new Application();
		app.setApp_type("z71");
		app.setPublish_id(id);
		app.setType(1);// 代表为作品著作权类
		app.setState(1);
		app.setIsupdate("yes");
		// 构造录音制品信息
		String flowNum = null;
		// 新增
		String[] recordsid = null;
		flowNum = ApplicationUtils.getFlowNum("z71", id);
		z71.setFlow_num(flowNum);
		if (z71.getIsPublic().equals("是")) { // 是公版
			// 录音制品信息
			map = ApplicationUtils.createRecordProducts(request, flowNum,
					recordsid);
			records = (List<RecordProduct>) map.get("recordList");
			// 出版单位信息
			sp = ApplicationUtils.createSqrPerson(request, flowNum);
			// 出版合同主要内容
			z71.setIsProprietary("");
			z71.setPublishScope("");
			z71.setContractSignDate("");
			z71.setValidStartDate("");
			z71.setValidEndDate("");
			z71.setOtherInfo("");
			z71.setCertOrg("");
			z71.setCertNum("");// 认证情况-->证明书编号
			z71.setReplyResult("");// 认证情况-->回复结果
			app.setFlow_num(z71.getFlow_num());
			// 作品名称
			String names = "";
			for (RecordProduct recd : records) {
				names = names + recd.getCh_name() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setApp_name(names);
		} else {// 不是公版
			// 录音制品信息
			records = new ArrayList<RecordProduct>();
			RecordProduct record = new RecordProduct();
			String chname = request.getParameter("rname1_");
			record.setId(ApplicationUtils.getUUid("z71"));
			record.setCh_name(chname);
			record.setEn_name(request.getParameter("rename1_"));
			record.setFirst_address(request.getParameter("country1_"));
			record.setCreate_date(request.getParameter("publishDate1_"));
			record.setFlow_num(flowNum);
			records.add(record);
			// 授权方信息
			cps = ApplicationUtils.createCpsZ71(request, flowNum);
			// 出版单位信息
			sp = ApplicationUtils.createSqrPerson(request, flowNum);
			app.setFlow_num(z71.getFlow_num());
			app.setApp_name(chname);
			// 设置权利人
			String names = "";
			for (CopyrightPerson cp : cps) {
				names = names + cp.getName() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setName(names);
		}
		if (null != z71.getApplyType() && z71.getApplyType().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flowNum);
		} else {
			z71.setAgent_desc("");
		}
		appService.addZ71(z71, sp, dp, app, cps, records);
		if (subType.equals("subfor")) {
			model.addAttribute("records", records);
			model.addAttribute("flow_num", z71.getFlow_num());
			return "application/look_recards";
		} else {
			return "redirect:/application/view/" + z71.getFlow_num();
		}
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "initupdate/z71/{flow_num}", method = RequestMethod.GET)
	public String z71_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ71(flow_num);
		model.addAttribute("z71", map.get("z71"));
		model.addAttribute("sqr", map.get("sqr"));
		if (null != map.get("dlr")) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		Z71 z71 = (Z71) map.get("z71");
		if (z71.getIsPublic().equals("否")) {
			model.addAttribute("cps", map.get("cps"));
			RecordProduct record = ((List<RecordProduct>) map.get("records"))
					.get(0);
			model.addAttribute("record", record);
			model.addAttribute("oldrecordIds", "," + record.getId());
		} else {
			StringBuffer recordIds = new StringBuffer("");
			model.addAttribute("records", map.get("records"));
			for (RecordProduct record : ((List<RecordProduct>) map
					.get("records"))) {
				recordIds = recordIds.append(",").append(record.getId());
			}
			model.addAttribute("oldrecordIds", recordIds);
		}
		if (null != z71.getRecordType_() && !z71.getRecordType_().equals("")) {
			String[] recordType_ = z71.getRecordType_().split(",", -1);
			for (String str : recordType_) {
				model.addAttribute(str, str);
			}
		}
		if (null != z71.getRecordTypeSon_()
				&& !z71.getRecordTypeSon_().equals("")) {
			String[] recordTypeSon_ = z71.getRecordTypeSon_().split(",", -1);
			for (String strson : recordTypeSon_) {
				model.addAttribute(strson, strson);
			}
		}
		return "application/update_z71";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "z71/update/{subType}", method = RequestMethod.POST)
	public String updateZ71(@PathVariable("subType") String subType,
			Model model, HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z71 z71) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		Person sp = null;
		Person dp = null;
		List<CopyrightPerson> cps = null;
		Map<?, ?> map = null;
		List<RecordProduct> records = null;
		Application app = new Application();
		app.setApp_type("z71");
		app.setPublish_id(id);
		app.setType(1);// 代表为作品著作权类
		app.setState(1);
		app.setIsupdate("yes");
		String[] oldrecordIds = request.getParameter("oldrecordIds").split(",",
				-1);
		String recordnopubid = request.getParameter("recordnopubid");// 不是公版
		String[] recordIds = request.getParameterValues("recordid");// 是公版
		List<String> deleteRecordId = new ArrayList<String>();
		if (z71.getIsPublic().equals("是")) {
			// 构造录音制品信息
			map = ApplicationUtils.createRecordProducts(request,
					z71.getFlow_num(), recordIds);
			records = (List<RecordProduct>) map.get("recordList");
			String allRecordIds = (String) map.get("allRecordIds");
			if (recordnopubid != null && !recordnopubid.equals("")) {
				deleteRecordId.add(recordnopubid);
			}
			for (String oldRecId : oldrecordIds) {
				if (allRecordIds.indexOf(oldRecId) == -1) {
					deleteRecordId.add(oldRecId);
				}
			}
			// 出版合同主要内容
			z71.setIsProprietary("");
			z71.setPublishScope("");
			z71.setContractSignDate("");
			z71.setValidStartDate("");
			z71.setValidEndDate("");
			z71.setOtherInfo("");
			z71.setCertOrg("");
			z71.setCertNum("");// 认证情况-->证明书编号
			z71.setReplyResult("");// 认证情况-->回复结果
			// 作品名称
			String names = "";
			for (RecordProduct recd : records) {
				names = names + recd.getCh_name() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setApp_name(names);
		} else {// 不是公版
			// 构造录音制品信息
			records = new ArrayList<RecordProduct>();
			RecordProduct record = new RecordProduct();
			record.setCh_name(request.getParameter("rname1_"));
			record.setEn_name(request.getParameter("rename1_"));
			record.setFirst_address(request.getParameter("country1_"));
			record.setCreate_date(request.getParameter("publishDate1_"));
			record.setFlow_num(z71.getFlow_num());
			int method = 0;
			if (recordIds != null && recordIds.length > 0) {
				for (String str : recordIds) {
					if (!str.trim().equals("")) {
						deleteRecordId.add(str);
						method = 1;
					}
				}
			}
			if (method == 1) {
				record.setId(ApplicationUtils.getUUid("z71"));
				record.setMethodWay(1);
			} else {
				record.setId(recordnopubid);
				record.setMethodWay(2);
			}
			records.add(record);
			// 授权方信息
			cps = ApplicationUtils.createCpsZ71(request, z71.getFlow_num());
			// 设置权利人
			String names = "";
			for (CopyrightPerson cp : cps) {
				names = names + cp.getName() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setName(names);
			app.setApp_name(record.getCh_name());
		}
		app.setFlow_num(z71.getFlow_num());
		sp = ApplicationUtils.createSqrPerson(request, z71.getFlow_num());
		if (null != z71.getApplyType() && z71.getApplyType().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, z71.getFlow_num());
		} else {
			z71.setAgent_desc("");
		}
		appService.updateZ71(z71, sp, dp, app, cps, records, deleteRecordId);
		if (subType.equals("subfor")) {
			model.addAttribute("records", records);
			model.addAttribute("flow_num", z71.getFlow_num());
			return "application/look_recards";
		} else {
			return "redirect:/application/view/" + z71.getFlow_num();
		}
	}

	@RequestMapping(value = "z71/subform/{flow_num}", method = RequestMethod.GET)
	public String subFormZ71(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request,
			HttpServletResponse response) {
		if (null != appService.getApplication(flow_num)) {
			try {
				appService.updateApplication(2, flow_num);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/application/view/" + flow_num;
	}

	@RequestMapping(value = "looktracks/{recordId}/{flow_num}", method = RequestMethod.GET)
	public String lookRecards(@PathVariable("recordId") String recordId,
			@PathVariable("flow_num") String flow_num, Model model,
			HttpServletRequest request) {
		RecordProduct record = appService.getRecord(" where id='" + recordId
				+ "'");
		List<TracksInfos> tracks = appService
				.getTracksInfos(" where recordId ='" + recordId + "'");
		if (null != tracks && tracks.size() > 0) {
			model.addAttribute("tracks", tracks);
		}
		model.addAttribute("record", record);
		model.addAttribute("flow_num", flow_num);
		if (flow_num.equals("onlylook")) {
			return "application/view_tracks";
		} else {
			return "application/add_tracks";
		}

	}

	@RequestMapping(value = "addtracks/{recordId}/{flow_num}", method = RequestMethod.POST)
	public String addRecards(@PathVariable("recordId") String recordId,
			@PathVariable("flow_num") String flow_num, Model model,
			HttpServletRequest request) {
		String ch_name = request.getParameter("ch_name");
		String en_name = request.getParameter("en_name");
		List<TracksInfos> tracks = ApplicationUtils.createTracks(request,
				recordId, flow_num, ch_name + "  " + en_name);
		appService.addTracksInfos(tracks, recordId);
		return "redirect:/application/looktracks/" + recordId + "/" + flow_num;
	}

	@RequestMapping(value = "checktrack", method = RequestMethod.POST)
	public void ajaxCheckTrack(HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		boolean flag = true;
		List<TracksInfos> trackslist = null;
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/xml; charset=UTF-8");
			out = response.getWriter();
			String recordIds = request.getParameter("record_ids").substring(1,
					request.getParameter("record_ids").length());
			String[] recids = recordIds.split(",", -1);
			for (String recordId : recids) {
				trackslist = appService.getTracksInfos(" where recordId ='"
						+ recordId + "'");
				if (null == trackslist || trackslist.size() < 1) {
					flag = false;
					break;
				}
			}
			if (flag == false) {
				out.print("no");
			} else {
				out.print("yes");
			}
		} catch (Exception e) {
			out.print("no");
		}
	}

	@RequestMapping(value = "initupdate/z72/{flow_num}", method = RequestMethod.GET)
	public String z72_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getZ72(flow_num);
		model.addAttribute("z72", map.get("z72"));
		model.addAttribute("sqr", map.get("sqr"));
		if (map.get("dlr") != null) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		if (map.get("cps") != null) {
			model.addAttribute("cps", map.get("cps"));
		}
		Z71 z72 = (Z71) map.get("z72");
		if (null != z72.getRecordType_() && !z72.getRecordType_().equals("")) {
			String[] recordType_ = z72.getRecordType_().split(",", -1);
			for (String str : recordType_) {
				model.addAttribute(str, str);
			}
		}
		if (null != z72.getRecordTypeSon_()
				&& !z72.getRecordTypeSon_().equals("")) {
			String[] recordTypeSon_ = z72.getRecordTypeSon_().split(",", -1);
			for (String strson : recordTypeSon_) {
				model.addAttribute(strson, strson);
			}
		}
		model.addAttribute("record", map.get("record"));
		return "application/z72";
	}

	@RequestMapping(value = "z72/{subType}", method = RequestMethod.POST)
	public String addZ72(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Z71 z72, RecordProduct record) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		Person sp = null;
		Person dp = null;
		List<CopyrightPerson> cps = null;
		Application app = new Application();
		app.setApp_type("z72");
		app.setPublish_id(id);
		app.setType(1);// 代表为作品著作权类
		app.setState(1);
		app.setIsupdate("yes");
		// 构造录音制品信息
		String flowNum = null;
		int flag = 0;
		if (null != z72.getFlow_num() && !z72.getFlow_num().equals("")) {// 修改
			flowNum = z72.getFlow_num();
			flag = 1;
		} else { // 新增
			flowNum = ApplicationUtils.getFlowNum("z72", id);
			z72.setFlow_num(flowNum);
			record.setId(ApplicationUtils.getUUid("z72"));
		}
		if (z72.getIsPublic().equals("否")) {
			// 授权方信息
			cps = ApplicationUtils.createCpsZ71(request, flowNum);
		} else {
			record.setFirst_address("");
			record.setCreate_date("");
			z72.setIsProprietary("");
			z72.setPublishScope("");
			z72.setContractSignDate("");
			z72.setValidStartDate("");
			z72.setValidEndDate("");
			z72.setOtherInfo("");
			z72.setCertOrg("");
			z72.setCertNum("");// 认证情况-->证明书编号
			z72.setReplyResult("");// 认证情况-->回复结果
		}
		// 出版单位信息
		sp = ApplicationUtils.createSqrPerson(request, flowNum);
		if (z72.getApplyType() != null && z72.getApplyType().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flowNum);
		} else {
			z72.setAgent_desc("");
		}
		app.setFlow_num(flowNum);
		app.setApp_name(record.getCh_name());
		record.setFlow_num(flowNum);
		if (flag == 0) {// 新增
			appService.addZ72(z72, sp, dp, app, cps, record);
		} else {// 修改
			appService.updateZ72(z72, sp, dp, app, cps, record);
		}
		if (subType.equals("savefor")) {
			return "redirect:/application/view/" + z72.getFlow_num();
		} else {
			return "redirect:/application/list_movie/" + z72.getFlow_num();
		}
	}

	@RequestMapping(value = "list_movie/{flow_num}")
	public String list_Movie(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request,
			HttpServletResponse response) {
		Z71 z72 = appService.geOneZ72(flow_num);
		List<MovieInfos> movies = null;
		if (z72 != null) {
			movies = appService.getMovies(" where flow_num = '" + flow_num
					+ "'");
			if (movies != null && movies.size() > 0) {
				model.addAttribute("movies", movies);
				model.addAttribute("z72", z72);
			}
		}
		model.addAttribute("flow_num", flow_num);
		return "application/add_movies";
	}

	@RequestMapping(value = "addmovie/{flow_num}", method = RequestMethod.POST)
	public String add_Movie(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request,
			HttpServletResponse response) {
		List<MovieInfos> movies = ApplicationUtils.createMovies(request,
				flow_num);
		String langType = request.getParameter("langType");
		String isOffical = request.getParameter("isOffical");
		appService.addMovies(movies, langType, isOffical, flow_num);
		return "redirect:/application/view/" + flow_num;
	}

	@RequestMapping(value = "lookmovies/{flow_num}", method = RequestMethod.GET)
	public String lookMovies(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		Z71 z72 = appService.geOneZ72(flow_num);
		List<MovieInfos> movies = null;
		if (z72 != null) {
			movies = appService.getMovies(" where flow_num = '" + flow_num
					+ "'");
			if (movies != null && movies.size() > 0) {
				model.addAttribute("movies", movies);
				model.addAttribute("z72", z72);
			}
		}
		return "application/view_movie";
	}

	@RequestMapping(value = "initupdate/r11/{flow_num}", method = RequestMethod.GET)
	public String r11_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getR11(flow_num);
		if (map.get("r11") != null) {
			model.addAttribute("r11", map.get("r11"));
			R11 r11 = (R11) map.get("r11");

			// 设置权利范围值
			if (null != r11.getRightScope_()
					&& !r11.getRightScope_().equals("")) {
				String[] right_scope_ = r11.getRightScope_().split(",", -1);
				for (String str : right_scope_) {
					model.addAttribute(str, str);
				}
			}
		}
		model.addAttribute("sqr", map.get("sqr"));
		if (map.get("dlr") != null) {
			model.addAttribute("dlr", map.get("dlr"));
		}

		model.addAttribute("cps", map.get("cps"));
		return "application/update_r11";
	}

	@RequestMapping(value = "r11/{subType}", method = RequestMethod.POST)
	public String addR11(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, R11 r11) {
		/**
		 * 执行修改
		 */
		List<CopyrightPerson> cps = null;
		Person sp = null;
		Person dp = null;
		// 软件是否已登记
		if (null == r11.getIsSoftReg() || r11.getIsSoftReg().equals("")) {
			r11.setRegNumber("");
		}
		if (null == r11.getIsSoftChanged() || r11.getIsSoftChanged().equals("")) {
			r11.setChangeNumber("");
		}

		Long id = (Long) session.getAttribute("CCCS_USERID");
		if (r11.getFlow_num() != null && !r11.getFlow_num().equals("")) {
			/**
			 * 权利范围
			 */
			if (null != r11.getRightScope() && r11.getRightScope() == 1) {
				r11.setRightScope_("发表权,署名权,修改权,复制权,发行权,出租权,信息网络传播权,翻译权,应当由著作权人享有的其他权利 ");
			}
			cps = ApplicationUtils.createCpsR11(request, r11.getFlow_num());// 著作权人信息
			sp = ApplicationUtils.createSqrPerson(request, r11.getFlow_num());

			if (null != r11.getApplyType() && r11.getApplyType().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request,
						r11.getFlow_num());
			} else {
				r11.setAgent_desc("");
			}
			Application app = new Application();
			app.setApp_type("r11");
			app.setApp_name(r11.getSoftFullName());
			app.setFlow_num(r11.getFlow_num());
			app.setPublish_id(id);
			app.setType(2);// 计算机软件著作权登记
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			// 设置权利人
			String names = "";
			for (CopyrightPerson cp : cps) {
				names = names + cp.getName() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setName(names);

			appService.updateR11(r11, sp, dp, app, cps);
			return "redirect:/application/view/" + r11.getFlow_num();
		} else {// 执行新增
			String flow_num = ApplicationUtils.getFlowNum("r11", id);
			/**
			 * 构造r11
			 */
			r11.setFlow_num(flow_num);
			/**
			 * 权利范围
			 */
			if (null != r11.getRightScope() && r11.getRightScope() == 1) {
				r11.setRightScope_("发表权,署名权,修改权,复制权,发行权,出租权,信息网络传播权,翻译权,应当由著作权人享有的其他权利 ");
			}
			cps = ApplicationUtils.createCpsR11(request, flow_num);// 著作权人信息
			sp = ApplicationUtils.createSqrPerson(request, flow_num);
			if (null != r11.getApplyType() && r11.getApplyType().equals("代理人")) {
				dp = ApplicationUtils.createDlrPerson(request,
						r11.getFlow_num());
			} else {
				r11.setAgent_desc("");
			}

			Application app = new Application();
			app.setApp_type("r11");
			app.setApp_name(r11.getSoftFullName());
			app.setFlow_num(r11.getFlow_num());
			app.setPublish_id(id);
			app.setType(2);// 计算机软件著作权登记
			if (subType.equals("save")) {
				app.setState(1);
				app.setIsupdate("yes");
			} else {
				app.setState(2);
				app.setIsupdate("no");
			}
			// 设置权利人
			String names = "";
			for (CopyrightPerson cp : cps) {
				names = names + cp.getName() + ",";
			}
			names = names.substring(0, names.length() - 1);
			app.setName(names);
			appService.addR11(r11, sp, dp, app, cps);
			return "redirect:/application/view/" + flow_num;
		}
	}

	@RequestMapping(value = "initupdate/r21/{flow_num}", method = RequestMethod.GET)
	public String r21_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getR21(flow_num);
		model.addAttribute("r21", map.get("r21"));
		model.addAttribute("sqr", map.get("sqr"));
		if (map.get("dlr") != null) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		model.addAttribute("cps1", map.get("cps1"));
		model.addAttribute("cps2", map.get("cps2"));
		return "application/update_r21";
	}

	@RequestMapping(value = "r21/{subType}", method = RequestMethod.POST)
	public String addR21(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, R21 r21) {

		Long id = (Long) session.getAttribute("CCCS_USERID");
		List<CopyrightPerson> cps1 = null;
		List<CopyrightPerson> cps2 = null;
		Person sp = null;
		Person dp = null;
		String flowNum = null;
		int typemethod = 0;
		if (null != r21.getFlow_num() && !r21.getFlow_num().equals("")) {
			flowNum = r21.getFlow_num();
		} else {
			String flow_num = ApplicationUtils.getFlowNum("r21", id);
			flowNum = flow_num;
			typemethod = 1;
			r21.setFlow_num(flowNum);
		}

		/**
		 * 构造r21 合同主要内容
		 */
		if (null != r21.getContractType()
				&& r21.getContractType().equals("专有许可合同")) {
			r21.setRightScope(request.getParameter("rightScope2"));// 许可权利范围
			r21.setRegionScope(request.getParameter("regionScope2"));// 许可地域范围
			r21.setRegionScope_(request.getParameter("regionScope2_"));// 许可地域范围
																		// -->
																		// (可填写)
			r21.setValidStartDate(request.getParameter("validStartDate2"));// 许可权利期限
																			// 自
																			// 起
			r21.setValidEndDate(request.getParameter("validEndDate2"));// 许可权利期限
																		// 自 起，至
																		// 止

		} else {
			r21.setRightScope(request.getParameter("rightScope1"));// 转让权利范围
			r21.setRegionScope(request.getParameter("regionScope1"));// 转让地域范围
			r21.setRegionScope_(request.getParameter("regionScope1_"));// 转让地域范围
																		// -->
																		// (可填写)
			r21.setValidStartDate(request.getParameter("validStartDate1"));// 转让合同生效日期
			r21.setValidEndDate(request.getParameter(""));// 许可权利期限 自 起，至 止
		}
		cps1 = ApplicationUtils.createR21Cps1(request, flowNum);
		cps2 = ApplicationUtils.createR21Cps2(request, flowNum);

		sp = ApplicationUtils.createSqrPerson(request, flowNum);

		if (null != r21.getApplyType() && r21.getApplyType().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flowNum);
		} else {
			r21.setAgent_desc("");
		}

		Application app = new Application();
		app.setApp_type("r21");
		app.setApp_name(r21.getSoftFullName());
		app.setFlow_num(r21.getFlow_num());
		app.setPublish_id(id);
		app.setType(2);// 代表计算机软件著作
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}
		// 设置权利人
		String names = "";
		for (CopyrightPerson cp : cps1) {
			names = names + cp.getName() + ",";
		}
		names = names.substring(0, names.length() - 1);
		app.setName(names);

		if (typemethod == 0) {
			appService.updateR21(r21, cps1, cps2, sp, dp, app);
		} else {
			r21.setFlow_num(flowNum);
			appService.addR21(r21, cps1, cps2, sp, dp, app);
		}
		return "redirect:/application/view/" + flowNum;
	}

	@RequestMapping(value = "initupdate/r41/{flow_num}", method = RequestMethod.GET)
	public String r41_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getR41(flow_num);
		model.addAttribute("r41", map.get("r41"));
		model.addAttribute("sqr", map.get("sqr"));
		if (map.get("dlr") != null) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		R41 r41 = (R41) map.get("r41");
		if (r41 != null && r41.getApplyingType().equals("补充登记")) {
			@SuppressWarnings("unchecked")
			List<ContentInfo> infos = (List<ContentInfo>) map.get("infos");
			model.addAttribute("info", infos.get(0));
		} else {
			model.addAttribute("infos", map.get("infos"));
		}
		return "application/update_r41";
	}

	@RequestMapping(value = "r41/{subType}", method = RequestMethod.POST)
	public String addR21(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, R41 r41) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		List<ContentInfo> infos = null;
		Person sp = null;
		Person dp = null;
		String flowNum = null;
		int typemethod = 0;
		if (null != r41.getFlow_num() && !r41.getFlow_num().equals("")) {
			flowNum = r41.getFlow_num();
		} else {
			String flow_num = ApplicationUtils.getFlowNum("r41", id);
			flowNum = flow_num;
			typemethod = 1;
			r41.setFlow_num(flowNum);
		}
		if (r41.getApplyingType().equals("补充登记")) {
			infos = new ArrayList<ContentInfo>();
			ContentInfo info = new ContentInfo();
			info.setItem(request.getParameter("items2_"));
			info.setBefore_content(request.getParameter("beforeContent2_"));
			info.setAfter_content(request.getParameter("afterContent2_"));
			info.setFlow_num(flowNum);
			infos.add(info);
		} else {
			infos = ApplicationUtils.createContentInfo(request, flowNum);
		}
		sp = ApplicationUtils.createSqrPerson(request, flowNum);
		if (null != r41.getApplyType() && r41.getApplyType().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flowNum);
		} else {
			r41.setAgent_desc("");
		}

		Application app = new Application();
		app.setApp_type("r41");
		app.setApp_name(r41.getSoftFullName());
		app.setFlow_num(r41.getFlow_num());
		app.setPublish_id(id);
		app.setType(2);// 代表计算机软件著作
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}

		if (typemethod == 0) {
			appService.updateR41(r41, infos, sp, dp, app);
		} else {
			appService.addR41(r41, infos, sp, dp, app);
		}
		return "redirect:/application/view/" + flowNum;
	}

	@RequestMapping(value = "initupdate/r42/{flow_num}", method = RequestMethod.GET)
	public String r42_initUpdate(@PathVariable("flow_num") String flow_num,
			Model model, HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getR42(flow_num);
		model.addAttribute("r42", map.get("r42"));
		model.addAttribute("sqr", map.get("sqr"));
		if (map.get("dlr") != null) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		return "application/r42";
	}

	@RequestMapping(value = "r42/{subType}", method = RequestMethod.POST)
	public String addR42(@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, R42 r42) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		Person sp = null;
		Person dp = null;
		String flowNum = null;
		int typemethod = 0;
		if (null != r42.getFlow_num() && !r42.getFlow_num().equals("")) {
			flowNum = r42.getFlow_num();
		} else {
			String flow_num = ApplicationUtils.getFlowNum("r42", id);
			flowNum = flow_num;
			typemethod = 1;
			r42.setFlow_num(flowNum);
		}

		sp = ApplicationUtils.createSqrPerson(request, flowNum);
		if (null != r42.getApplyType() && r42.getApplyType().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flowNum);
		} else {
			r42.setAgent_desc("");
		}

		Application app = new Application();
		app.setApp_type("r42");
		app.setApp_name(r42.getSoftName());
		app.setFlow_num(r42.getFlow_num());
		app.setPublish_id(id);
		app.setType(2);// 代表计算机软件著作
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}

		if (typemethod == 0) {
			appService.updateR42(r42, sp, dp, app);
		} else {
			appService.addR42(r42, sp, dp, app);
		}
		return "redirect:/application/view/" + flowNum;
	}

	/**
	 * r43或r44初始化修改页面
	 * 
	 * @param appType
	 * @param flow_num
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "initupdate/{appType}/{flow_num}", method = RequestMethod.GET)
	public String r434_initUpdate(@PathVariable("appType") String appType,
			@PathVariable("flow_num") String flow_num, Model model,
			HttpServletRequest request) {
		String person = request.getParameter("person");
		if (person != null && person.equals("manage")) {// 后台查看绿表
			model.addAttribute("person", "manage");
		}
		Map<String, Object> map = appService.getR43_4(flow_num);
		model.addAttribute("r43_4", map.get("r43_4"));
		model.addAttribute("sqr", map.get("sqr"));
		if (map.get("dlr") != null) {
			model.addAttribute("dlr", map.get("dlr"));
		}
		if (appType.equals("r43")) {
			return "application/r43";
		} else if (appType.equals("r44")) {
			return "application/r44";
		} else {
			return "application/r45";
		}
	}

	/**
	 * r43或r44新增、修改
	 * 
	 * @param appType
	 * @param subType
	 * @param model
	 * @param request
	 * @param session
	 * @param response
	 * @param r43_4
	 * @return
	 */
	@RequestMapping(value = "{appType}/{subType}", method = RequestMethod.POST)
	public String addR42(@PathVariable("appType") String appType,
			@PathVariable("subType") String subType, Model model,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, R43_4 r43_4) {
		Long id = (Long) session.getAttribute("CCCS_USERID");
		Person sp = null;
		Person dp = null;
		String flowNum = null;
		int typemethod = 0;
		if (null != r43_4.getFlow_num() && !r43_4.getFlow_num().equals("")) {
			flowNum = r43_4.getFlow_num();
		} else {
			flowNum = ApplicationUtils.getFlowNum(appType, id);
			typemethod = 1;
			r43_4.setFlow_num(flowNum);
		}

		sp = ApplicationUtils.createSqrPerson(request, flowNum);
		if (null != r43_4.getApplyType() && r43_4.getApplyType().equals("代理人")) {
			dp = ApplicationUtils.createDlrPerson(request, flowNum);
		} else {
			r43_4.setAgent_desc("");
		}
		if (appType.equals("r44") && null == r43_4.getHasGtsqr()) {
			r43_4.setGtsqrName("");
			r43_4.setGtsqrIdea("");
		}
		Application app = new Application();
		app.setApp_type(appType);
		app.setApp_name(r43_4.getSoftName());
		app.setFlow_num(r43_4.getFlow_num());
		app.setPublish_id(id);
		app.setType(2);// 代表计算机软件著作
		if (subType.equals("save")) {
			app.setState(1);
			app.setIsupdate("yes");
		} else {
			app.setState(2);
			app.setIsupdate("no");
		}

		if (typemethod == 0) {
			appService.updateR43_4(r43_4, sp, dp, app);
		} else {
			appService.addR43_4(r43_4, sp, dp, app);
		}
		return "redirect:/application/view/" + flowNum;
	}
}
