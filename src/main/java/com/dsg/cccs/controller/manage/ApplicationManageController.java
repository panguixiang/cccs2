package com.dsg.cccs.controller.manage;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dsg.cccs.model.application.Application;
import com.dsg.cccs.model.application.ApplyKnow;
import com.dsg.cccs.model.application.Author;
import com.dsg.cccs.model.application.CheckComment;
import com.dsg.cccs.model.application.ContentInfo;
import com.dsg.cccs.model.application.CopyrightPerson;
import com.dsg.cccs.model.application.MovieInfos;
import com.dsg.cccs.model.application.PartByAdd;
import com.dsg.cccs.model.application.R11;
import com.dsg.cccs.model.application.R41;
import com.dsg.cccs.model.application.RecordProduct;
import com.dsg.cccs.model.application.TracksInfos;
import com.dsg.cccs.model.application.Z11;
import com.dsg.cccs.model.application.Z21;
import com.dsg.cccs.model.application.Z51;
import com.dsg.cccs.model.application.Z71;
import com.dsg.cccs.service.ApplicationService;
import com.dsg.cccs.utils.Page;
import com.dsg.cccs.utils.SystemUtils;

/**
 * @ClassName: HomeController
 * @Description: 首页
 * @author proteus
 * @date 2011-7-14 上午11:14:32
 * 
 */
@Controller
@RequestMapping("/manage/application")
public class ApplicationManageController {

	@Autowired
	private ApplicationService appService;

	/**
	 * 后台表单处理-表单汇总
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "list/{str}")
	public String list(@PathVariable("str") String str, Application application, Model model,
			HttpServletRequest request, HttpServletResponse response) {
		// 默认分页首页
		String offset = request.getParameter("pager.offset");
		if (null == offset || "".equalsIgnoreCase(offset)) {
			offset = "0";
		}
		// 表单大类型
		String type = request.getParameter("type");

		StringBuffer condition = new StringBuffer();
		if(str.trim().equals("all")) {//表单汇总
			condition.append(" where delete_flag = 1 and type = "
					+ type);
			if(application.getArea() != null) {
				condition.append(" and area = "
						+ application.getArea());
			}
		} else {//具体分中心或无分中心 area=0为无分中心
			condition.append(" where delete_flag = 1 and type = "
					+ type+" and area = "+Integer.parseInt(str));
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
		if(null != application.getApp_type() && !application.getApp_type().equals("")) {
			condition.append(" and app_type = '"
					+ application.getApp_type() + "'");
		}
		if (null != application.getState()
				&& !application.getState().equals("")) {
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

		Page page = appService.getApplications(condition.toString(),
				Integer.parseInt(offset), Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		model.addAttribute("type", Integer.parseInt(type));
		model.addAttribute("application", application);
		model.addAttribute("beginTime", beginTime);
		model.addAttribute("endTime", endTime);
		model.addAttribute("offset", offset);
		model.addAttribute("area", str);
		return "manage/application/list";

	}

	/**
	 * 通过流水号查看提交的表单-后台
	 * 
	 * @param flow_num
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "view/{flow_num}", method = RequestMethod.GET)
	public String view(@PathVariable("flow_num") String flow_num, Model model) {
		Application app = appService.getApplication(flow_num);
		model.addAttribute("houtai", "houtai");//标签，判断是不是后台的请求而生成的页面，对z71,z72这两个表单再view页面里会有进一步操作做准备         
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
				String[] right_scope = z11.getRight_scope().split(",",-1);
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
			String[] right_scopes = right_scope.split(",",-1);
			for (String str : right_scopes) {
				model.addAttribute(str, str);
			}

			// 设置作品类别
			String opus_type = z21.getOpus_type();
			String[] opus_types = opus_type.split(",",-1);
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
			String[] OpusType = OpusTypes.split(",",-1);
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
					String[] softFullNames = z536.getSoftFullName().split(",",-1);
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
				String[] recordType_ = z71.getRecordType_().split(",",-1);
				for (String str : recordType_) {
					model.addAttribute(str, str);
				}
			}
			if (null != z71.getRecordTypeSon_()
					&& !z71.getRecordTypeSon_().equals("")) {
				String[] recordTypeSon_ = z71.getRecordTypeSon_().split(",",-1);
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
				String[] recordType_ = z72.getRecordType_().split(",",-1);
				for (String str : recordType_) {
					model.addAttribute(str, str);
				}
			}
			if (null != z72.getRecordTypeSon_()
					&& !z72.getRecordTypeSon_().equals("")) {
				String[] recordTypeSon_ = z72.getRecordTypeSon_().split(",",-1);
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
				String[] right_scope_ = r11.getRightScope_().split(",",-1);
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
	/**
	 * 后台删除表单
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
	
	@RequestMapping(value = "{flow_num}/deal", method = RequestMethod.GET)
	public String dealApplication(@PathVariable("flow_num") String flow_num,
			Model model) {
		Application app = appService.getApplication(flow_num);
		model.addAttribute("application", app);
		return "manage/application/edit";
	}

	@RequestMapping(value = "deal", method = RequestMethod.POST)
	public String dealApplication(Application app) {
		appService.dealApplication(app.getFlow_num(), app.getState(),
				app.getAnswer());
		return "redirect:/manage/application/collectlist";
	}

	/**
	 * 后台管理填表须知
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "applyknow", method = RequestMethod.GET)
	public String applyKnowList(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String offset = request.getParameter("pager.offset");
		if (null == offset || offset.equals("")) {
			offset = "0";
		}
		StringBuffer condition = new StringBuffer();
		condition.append(" where 1 =1 ");
		String id = request.getParameter("id");
		if (null != id && !id.equals("")) {
			condition.append(" and id =" + id);
		}
		Page page = appService.appKnowListPage(condition.toString(),
				Integer.parseInt(offset), Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		return "manage/application/appknow_list";
	}

	/**
	 * 初始化新增填表须知页面
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "initappknow", method = RequestMethod.GET)
	public String initAddAppKnow(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String id = request.getParameter("id");
		if (null != id && !id.equals("")) {
			ApplyKnow applyknow = appService.getApplyKnow(" where id = "
					+ Integer.parseInt(id));
			if (applyknow != null) {
				model.addAttribute("appknow", applyknow);
			} 
		} else {
			model.addAttribute("appknow", new ApplyKnow());
		}
		return "manage/application/add_appknow";
	}

	/**
	 * 新增或者修改表须知
	 * 
	 * @param appknow
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "addappknow", method = RequestMethod.POST)
	public String addAppKnow(MultipartHttpServletRequest request,
			ApplyKnow appknow, Model model, HttpServletResponse response) {
		try {
			if (null != appknow.getId() && !appknow.getId().equals("")) {
				appService.updateAppKnow(appknow);
			} else {
				appService.addAppKnow(appknow);
				/*appknow = appService.getApplyKnow(" where content = '"
						+ appknow.getContent() + "'");*/
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/manage/application/applyknow";
	}

	/**
	 * 删除申请须知
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "deleteappknow", method = RequestMethod.GET)
	public String deleteAppKnow(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String id = request.getParameter("id");
		if (null != id && !id.equals("")) {
			try {
				appService.deleteAppKnow(" where id =" + Integer.parseInt(id));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/manage/application/applyknow";
	}

	/**
	 * 查看处理意见
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "ajaxanswer", method = RequestMethod.POST)
	public void ajaxLookAnswer(HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/xml; charset=UTF-8");
			// 以下两句为取消在本地的缓存
			/*
			 * response.setHeader("Cache-Control","no-cache");
			 * response.setHeader("Pragma","no-cache");
			 */
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

	/**
	 * 后台审核表单管理页面
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "check/{flow_num}", method = RequestMethod.GET)
	public String check(@PathVariable("flow_num") String flow_num, Model model) {
		Application application = appService.getApplication(flow_num);
		List<CheckComment> list = appService
				.getCheckCommentList(" where flow_num = '" + flow_num
						+ "' ORDER BY id DESC;");

		model.addAttribute("commet_list", list);
		model.addAttribute("application", application);
		return "manage/application/check";
	}

	/**
	 * 提交表单审核意见
	 * 
	 * @param model
	 * @param checkcomm
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "check", method = RequestMethod.POST)
	public String check(Model model, CheckComment checkcomm) {
		try {
			if(checkcomm.getState() != null && checkcomm.getState()==1) {
				appService.addCheckComment(checkcomm, "yes");
			} else {
				appService.addCheckComment(checkcomm, "no");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/manage/application/check/" + checkcomm.getFlow_num();
	}

	/**
	 * 回收站查询
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "recycllist")
	public String recyclList(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		String type = request.getParameter("type");
		StringBuffer condition = new StringBuffer();
		condition.append(" where delete_flag = -1 and type = "+Long.parseLong(type));
		String app_name  = request.getParameter("app_name");
		if(null != app_name && !app_name.trim().equals("")) {
			condition.append(" and app_name = '"+SystemUtils.changeStr(app_name)+"'");
		}
		String flow_num = request.getParameter("flow_num");
		if(null != flow_num && !flow_num.trim().equals("")) {
			condition.append(" and flow_num = '"+SystemUtils.changeStr(flow_num)+"'");
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
		Page page = appService.getRecyclingApplicationPage(condition.toString(),Integer.parseInt(offset),Page.SIZE_PER_PAGE);
	    model.addAttribute(page);
	    model.addAttribute("type", type);
	    model.addAttribute("app_name", app_name);
	    model.addAttribute("flow_num", flow_num);
	    model.addAttribute("beginTime", beginTime);
	    model.addAttribute("endTime", endTime);
	    model.addAttribute("offset", offset);
		return "manage/application/recycling_list";
	}
	
	/**
	 * 后台回收站彻底删除/恢复表单
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "backdelete", method = RequestMethod.POST)
	public void ajaxdeleteApp(HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/xml; charset=UTF-8");
			out = response.getWriter();
			String flow_num = request.getParameter("flow_num");
			String way = request.getParameter("waylay");
			Application app = appService.getApplication(flow_num);
			if (null != app) {
				if (null != way && way.equals("back")) {// 恢复
					appService.recyclingByBackApplication(1,
							" where flow_num = '" + flow_num + "'");
					out.print("yes");
				} else if (null != way && way.equals("hard")) {// 彻底删除
					appService.recyclingByHardApplication(app);
					out.print("yes");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.print("no");
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}

	/**
	 * 后台关闭/开启表单修改权限
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "updateresource", method = RequestMethod.POST)
	public void updateResourceApp(HttpServletRequest request,
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/xml; charset=UTF-8");
			out = response.getWriter();
			String flow_num = request.getParameter("flowNum");
			String way = request.getParameter("waylay");
			appService.updateAppnResource(" set isupdate='"+way+"' where flow_num='"+flow_num+"'");
			out.print("yes");
		} catch (Exception e) {
			out.print("no");
			e.printStackTrace();
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}

}
