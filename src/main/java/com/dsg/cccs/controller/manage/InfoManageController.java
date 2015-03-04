package com.dsg.cccs.controller.manage;

import java.io.File;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dsg.cccs.model.Account;
import com.dsg.cccs.model.FriendsConnection;
import com.dsg.cccs.model.Info;
import com.dsg.cccs.model.Manager;
import com.dsg.cccs.model.Role;
import com.dsg.cccs.model.StationMail;
import com.dsg.cccs.service.AccountService;
import com.dsg.cccs.service.InfoService;
import com.dsg.cccs.service.ManagerService;
import com.dsg.cccs.utils.FileUtil;
import com.dsg.cccs.utils.Page;
import com.dsg.cccs.utils.SystemUtils;

/**
 * @ClassName: ArticleController
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-7-27 上午9:47:16
 * 
 */
@Controller
@RequestMapping(value = "/manage/info")
public class InfoManageController {

	@Autowired
	private InfoService infoService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private ManagerService managerService;

	@RequestMapping(value = "list")
	public String list(HttpServletRequest request, Model model) {
		String offset = request.getParameter("pager.offset");
		if (null == offset || "".equalsIgnoreCase(offset)) {
			offset = "0";
		}
		Page page = infoService.getInfos(Integer.parseInt(offset),
				Page.SIZE_PER_PAGE);

		model.addAttribute("page", page);

		return "manage/info/list";
	}

	@RequestMapping(value = "new", method = RequestMethod.GET)
	public String add(Model model) {
		Info info = new Info();
		model.addAttribute(info);
		return "manage/info/edit";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String add(Info info, Model model) {
		try {
			infoService.addInfo(info);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/manage/info/list";
	}

	@RequestMapping(value = "{id}/delete", method = RequestMethod.GET)
	public String delete(@PathVariable Long id, Model model) {
		try {
			infoService.deleteInfo(id);
		} catch (Exception e) {
		}
		return "redirect:/manage/info/list";
	}

/*	@RequestMapping(value = "initinfo/{app_type}/{parent_type}", method = RequestMethod.GET)
	public String initInfoList(@PathVariable("app_type") String app_type,@PathVariable("parent_type") String parent_type,
			Model model) {
		model.addAttribute("app_type", app_type);
		model.addAttribute("parent_type", parent_type);
		if (app_type.equals("z51") || app_type.equals("z52")
				|| app_type.equals("z53") || app_type.equals("z54")
				|| app_type.equals("z56")) {
			return "manage/info/z516_list";
		}
		return "manage/info/info_list";
	}*/

	@RequestMapping(value = "infolist/{app_type}/{parent_type}")
	public String searchInfoList(@PathVariable("app_type") String app_type,@PathVariable("parent_type") String parent_type,Info info, Model model,
			HttpServletRequest request, HttpServletResponse response) {
		//String app_type = request.getParameter("app_type");
		//String parent_type = request.getParameter("parent_type");
		String offset = request.getParameter("pager.offset");

		StringBuffer condition = new StringBuffer();
		condition.append("where app_type= '" + app_type + "'");

		if (null != info.getNum() && !info.getNum().equals("")) {
			condition.append(" and num = '" + SystemUtils.changeStr(info.getNum()) + "'");
		}
		if (null != info.getOpusnumber() && !info.getOpusnumber().equals("")) {
			condition.append(" and opusnumber = '" + SystemUtils.changeStr(info.getOpusnumber()) + "'");
		}
		if (null != info.getId()) {
			condition.append(" and id = " + info.getId());
		}
		if (null != info.getRecord() && !info.getRecord().equals("")) {
			condition.append(" and record = '" + SystemUtils.changeStr(info.getRecord()) + "'");
		}
		if (null != info.getName() && !info.getName().equals("")) {
			condition.append(" and name = '" + SystemUtils.changeStr(info.getName()) + "'");
		}
		if (null != info.getEnglishname() && !info.getEnglishname().equals("")) {
			condition.append(" and englishname  = '"
					+ SystemUtils.changeStr(info.getEnglishname()) + "'");
		}
		if (null != info.getOwner() && !info.getOwner().equals("")) {
			condition.append(" and owner = '" + SystemUtils.changeStr(info.getOwner()) + "'");
		}
		if (null != info.getType() && !info.getType().equals("")) {
			condition.append(" and type = '" + SystemUtils.changeStr(info.getType()) + "'");
		}

		// z21,z71
		if (null != info.getTransferee() && !info.getTransferee().equals("")) {
			condition.append(" and transferee = '"
					+ SystemUtils.changeStr(info.getTransferee()) + "'");
		}
		// z73,z75
		if (null != info.getPublishUnitName()
				&& !info.getPublishUnitName().equals("")) {
			condition.append(" and publishUnitName = '"
					+ SystemUtils.changeStr(info.getPublishUnitName()) + "'");
		}
		if (null != info.getCompcode() && !info.getCompcode().equals("")) {
			condition.append(" and compcode = '" + SystemUtils.changeStr(info.getCompcode())
					+ "'");
		}
		if (null != info.getDate() && !info.getDate().equals("")) {
			condition.append(" and date = '" + info.getDate() + "'");
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
		if (null == offset || "".equalsIgnoreCase(offset)) {
			offset = "0";
		}

		Page page = infoService.searchInfoListPage(condition.toString(),
				Integer.parseInt(offset), Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		model.addAttribute("app_type", app_type);
		model.addAttribute("parent_type", parent_type);
		model.addAttribute("offset", offset);
		model.addAttribute("info", info);
		model.addAttribute("beginTime", beginTime);
		model.addAttribute("endTime", endTime);
		model.addAttribute("offset", offset);
		if (app_type.equals("z51") || app_type.equals("z52")
				|| app_type.equals("z53") || app_type.equals("z54")
				|| app_type.equals("z56")) {
			return "manage/info/z516_list";
		}
		return "manage/info/info_list";
	}

	@RequestMapping(value = "initinfoadd/{parent_type}/{app_type}", method = RequestMethod.GET)
	public String initInfoAdd(@PathVariable("parent_type") Integer parent_type, @PathVariable("app_type") String app_type, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String id = request.getParameter("id");
		Info info = null;
		if (null != id) {
			info = infoService.getInfo(" where id=" + id);
			model.addAttribute("info", info);
		}
		if(app_type.equals("z51") || app_type.equals("z52")
				|| app_type.equals("z53") || app_type.equals("z54")
				|| app_type.equals("z56")) {
			return "manage/info/z516_add";
		}
		model.addAttribute("app_type",app_type);
		model.addAttribute("parent_type",parent_type);
		return "manage/info/info_add";
	}

	@RequestMapping(value = "addinfo/{parent_type}/{app_type}", method = RequestMethod.POST)
	public String addInfo(@PathVariable("parent_type") Integer parent_type, @PathVariable("app_type") String app_type, Info info, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			if (null != info.getId()) { // 表示修改
				infoService.updateInfo(info);
			} else { // 表示新增
				infoService.addInfo(info);
			}
		} catch (Exception e) {
			System.out.println("---后台新增/修改信息公示出错---");
		}
		return "redirect:/manage/info/infolist/"+app_type+"/"+parent_type;

	}

	/**
	 * 删除信息公式
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "deleteinfo/{infoid}", method = RequestMethod.POST)
	public void deleteInfo(@PathVariable("infoid") Long id, HttpServletRequest request, 
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			response.setContentType("text/xml; charset=UTF-8");
			// 以下两句为取消在本地的缓存
			response.setHeader("Cache-Control", "no-cache");
			response.setHeader("Pragma", "no-cache");
			out = response.getWriter();
		    infoService.deleteInfo(id);
		    out.print("yes");
		} catch(Exception e) {
           out.print("no");
		} finally {
			if(out != null) {
				out.close();
			}
		}
	}
	
	@RequestMapping(value = "stationmaillist", method = RequestMethod.GET)
	public String stationMailPage(Model model, HttpServletRequest request, 
			HttpServletResponse response) {
		StringBuffer condition = new StringBuffer();
		String mailtype = request.getParameter("mailtype");
		if(null != mailtype && !mailtype.equals("")) {
			if(mailtype.equals("1")) {//收件箱
				condition.append(" where recipients is null ");
			} 
			else if(mailtype.equals("2")) {//发件箱
				condition.append(" where addresser = '"+(String) request.getSession().getAttribute(
						"CCCS_MANAGER_NAME")+"'");
			}
			model.addAttribute("mailtype", Integer.parseInt(mailtype));
		} else {//收件箱
			condition.append(" where recipients is null ");
		}
		String title = request.getParameter("title");
		if (null != title && !title.trim().equals("")) {
			condition.append(" and title = '" + SystemUtils.changeStr(title)
					+ "'");
		}
		String addresser = request.getParameter("addresser");
		if (null != addresser && !addresser.trim().equals("")) {
			condition.append(" and addresser = '" + SystemUtils.changeStr(addresser)
					+ "'");
		}
		String beginTime = request.getParameter("beginTime");
		if (null != beginTime && !beginTime.trim().equals("")) {
			condition.append(" and createdate >= '" + beginTime + " 00:00:00'");
		}
		String endTime = request.getParameter("endTime");
		if (null != endTime && !endTime.trim().equals("")) {
			condition.append(" and createdate <= '" + endTime + " 23:59:59'");
		}
		String offset = request.getParameter("pager.offset");
		if (null == offset || "".equalsIgnoreCase(offset)) {
			offset = "0";
		}
		condition.append(" ORDER BY createdate DESC ");
		Page page = accountService.stationMailPage(condition.toString(),
				Integer.parseInt(offset), Page.SIZE_PER_PAGE);
        model.addAttribute(page);
        model.addAttribute("title",title);
        model.addAttribute("addresser",addresser);
        model.addAttribute("beginTime",beginTime);
        model.addAttribute("endTime",endTime);
        model.addAttribute("offset",offset);
		return "manage/stationmail_list";
	}
	
	/**
	 * 按条件查询单个站内信
	 * @param id
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "lookstationmail/{id}", method = RequestMethod.GET)
	public String lookStationMail(@PathVariable("id") String id, Model model, HttpServletRequest request, 
			HttpServletResponse response) {
		StationMail mail = accountService.getStationMail(" where id = '"+id+"'");
		if(mail != null) {
			model.addAttribute("mail", mail);
		}
		return "manage/lookstationmail";
	}
	
	@RequestMapping(value = "deletemail", method = RequestMethod.POST)
	public void deleteStationMail(HttpServletRequest request, 
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			response.setContentType("text/xml; charset=UTF-8");
			// 以下两句为取消在本地的缓存
			response.setHeader("Cache-Control", "no-cache");
			response.setHeader("Pragma", "no-cache");
			out = response.getWriter();
			String id = request.getParameter("id");
			if(id != null) {
				accountService.deleteMail(" where id = '"+id+"'");
				out.print("yes");
			}
		} catch(Exception e) {
           out.print("no");
		} finally {
			if(out != null) {
				out.close();
			}
		}
	}
	
	@RequestMapping(value = "initaddmail")
	public String initAddMail() {
		return  "manage/addstationmail";
	}
	
	/**
	 * 管理员新增站内信
	 * @param mail
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "addstationmail", method = RequestMethod.POST)
	public String addStationmail(StationMail mail, HttpServletRequest request, HttpServletResponse response) {
			mail.setAddresser((String) request.getSession().getAttribute(
					"CCCS_MANAGER_NAME"));
			String lastrecipient  = request.getParameter("lastrecipient");
			if(null != lastrecipient && !lastrecipient.trim().equals("")) {//发送多人
				String recipients[] = lastrecipient.substring(0, lastrecipient.length()).split("@");
				for(String recipient : recipients) {
					if(!recipient.trim().equals("")) {
						mail.setId(SystemUtils.createUUID());
						mail.setRecipients(recipient);
						accountService.addStationMail(mail);
					}
				}
			} 
		return "redirect:/manage/info/stationmaillist";
	}
	
	/**
	 * 构建添加多个收件人页面数据
	 * @param mail
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "allaccount", method = RequestMethod.GET)
	public String allAccount(Model model, HttpServletRequest request, HttpServletResponse response) {
			List<String> names = accountService.getAccountNameList();
			if(names.size()>0) {
				model.addAttribute("listname", names);
			}
		return "manage/accountname_list";
	}
	
	/**
	 * 友情连接列表
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	
	@RequestMapping(value = "friendslist", method = RequestMethod.GET)
	public String friendsConnectionlist(Model model, HttpServletRequest request, 
			HttpServletResponse response) {
		String offset = request.getParameter("pager.offset");
		if (null == offset || "".equalsIgnoreCase(offset)) {
			offset = "0";
		}
		Page page = accountService.getFriendsConnectionlist(" ORDER BY create_date DESC ", 
				Integer.parseInt(offset), Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		return "manage/friends_list";
	}
	
	
	@RequestMapping(value = "initaddfriend", method=RequestMethod.GET)
	public String initAddFriend(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		FriendsConnection friend = null;
		if(null != id && !id.equals("")) {
			friend = accountService.getOneFirend(" where id = "+Integer.parseInt(id));
		}
	    if(friend != null) {
	    	model.addAttribute("friend", friend);
	    }
		return  "manage/add_friend";
	}
	
	
	/**
	 * 新增友情连接
	 * @param mail
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "addfriend", method = RequestMethod.POST)
	public String addFriends(Model model, FriendsConnection friend, MultipartHttpServletRequest request,
			HttpServletResponse response) {
		// 图片
		MultipartFile image_file = request.getFile("image_file");
		/**
		 * 判断是否需要上传或修改图片
		 */
		if (null != image_file && 0 != image_file.getSize()) {
			String flag = FileUtil.saveCenterFile(request.getSession()
					.getServletContext().getRealPath(""), image_file, "", "firends");
			if(flag.equals("false")) {
				model.addAttribute("imagemesage", "<font color='red'>请输入正确规格的图片,暂时只支持jpg和gif格式的图片</font>");
				return "manage/add_friend";
			} else {
				friend.setImage(flag);
			}
		}
		try {
			accountService.addFriend(friend);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/manage/info/friendslist";
	}
	
	
	/**
	 * 修改友情连接
	 * @param mail
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "updatefriend", method = RequestMethod.POST)
	public String updateFriends(Model model, FriendsConnection friend, MultipartHttpServletRequest request,
			HttpServletResponse response) {
		// 图片
		MultipartFile image_file = request.getFile("image_file");
		String oldImageUrl = request.getParameter("oldImageUrl");
		/**
		 * 判断是否需要上传或修改图片
		 */
		StringBuffer condition = new StringBuffer();
		condition.append(" url = '"+friend.getUrl()+"'");
		condition.append(",create_date = now()");
		if (null != image_file && 0 != image_file.getSize()) {
			String flag = FileUtil.saveCenterFile(request.getSession()
					.getServletContext().getRealPath(""), image_file, oldImageUrl, "firends");
			if(flag.equals("false")) {
				model.addAttribute("imagemesage", "<font color='red'>请输入正确规格的图片,暂时只支持jpg和gif格式的图片</font>");
				return "manage/add_friend";
			} else {
			condition.append(",image = '"+flag+"'");
			}
		}
		condition.append(" where id = "+friend.getId()+"");
		/**
		 * 判断是新增还是修改
		 */
		try {
			//url=#{obj.url},image=#{obj.image},create_date=now() where id = #{obj.id}
				accountService.updateFriend(condition.toString());
		} catch (Exception e) {
			System.out.println("------修改连接添加发生系统异常！-------");
		}
		return "redirect:/manage/info/friendslist";
	}
	
	
	
	/**
	 * 删除友情连接
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "deletfriend", method = RequestMethod.POST)
	public void deletFriend(HttpServletRequest request, 
			HttpServletResponse response) {
		PrintWriter out = null;
		try {
			response.setContentType("text/xml; charset=UTF-8");
			// 以下两句为取消在本地的缓存
			response.setHeader("Cache-Control", "no-cache");
			response.setHeader("Pragma", "no-cache");
			out = response.getWriter();
			String id = request.getParameter("id");
			String image = request.getParameter("image");
			if(id != null) {
				accountService.deletFriend(" where id = '"+id+"'");
				if(null != image && image.length()>5) {//这里大于5只是为了防止“  ”
					String oldFullUrl = request.getSession()
							.getServletContext().getRealPath("")+image;
					File fileDir = new File(oldFullUrl);
					if (fileDir.exists()) {
						fileDir.delete();
					}
				}
				out.print("yes");
			}
		} catch(Exception e) {
           out.print("no");
		} finally {
			if(out != null) {
				out.close();
			}
		}
	}
	
	/**
	 * 后台管理员列表
	 * @param method
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "managerlist/{method}", method = RequestMethod.GET)
	public String managerList(@PathVariable("method") String method, HttpServletRequest request,
			 Model model) {
		if(method.equals("init")) {
			return "/manage/usermange/manager_list";	
		} 
		Manager manger = (Manager)request.getSession().getAttribute("CCCS_MANAGER");
		StringBuffer condition = new StringBuffer();
		if(manger.getLevel()==1) {
			condition.append(" where 1 = 1 ");//超级管理员
		} else {
			condition.append(" where level = 2 ");//一般管理员
		}
		String username = request.getParameter("username");
		if(null != username && !username.equals("")) {
			condition.append(" and username like '%"+SystemUtils.changeStr(username.trim())+"%'");
		}
		String id = request.getParameter("id");
		if(null != id && !id.equals("")) {
			condition.append(" and id = "+ Long.parseLong(id));
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
		Page page = managerService.pageMangerList(condition.toString(), Integer.parseInt(offset), Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		model.addAttribute("username",username);
		model.addAttribute("beginTime",beginTime);
		model.addAttribute("endTime",endTime);
		return "/manage/usermange/manager_list";
	}
	
	
	/**
	 * 初始化新增修改，新增、修改管理员用户
	 * @param method
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "addmanage/{method}")
	public String addManageUser(@PathVariable("method") String method, Model model,
			Manager manager, HttpServletRequest request) {
		model.addAttribute("rolelist",managerService.getRoleList(""));
		if(method.trim().equals("init")) {   //进入新增或修改页面
			if(null != manager.getId() && !manager.getId().equals("")) {
				manager = managerService.getOneManager(" where id = "+manager.getId());
				model.addAttribute("manage",manager);
			}
			return "/manage/usermange/add_manager";
		}
	    String oldname = request.getParameter("oldname");
	    if(null != oldname && !oldname.equals(manager.getUsername())) {
	    	if(null != managerService.getManagerByName(manager.getUsername())) {
	    		model.addAttribute("errpnamemsg","<font color='red'>此登录名已存在,请重新输入!</font>");
	    		if(null != manager.getId()) {
	    			model.addAttribute("manage",manager);	
	    		}
	    		return "/manage/usermange/add_manager";
	    	}
	    }
        if(method.trim().equals("add")) {//执行新增
        	String repetPaswd = request.getParameter("repetPaswd");
        	if(!repetPaswd.equals(manager.getPasswd())) {
        		model.addAttribute("errpswdmsg","<font color='red'>登录密码与确认密码请保持一致!</font>");
        		return "/manage/usermange/add_manager";
        	}
        	manager.setLevel(2);
        	manager.setId(managerService.addManager(manager));
		} else {
			//否则执行修改
			managerService.updateManager(manager);
		}
        return "redirect:/manage/info/managerlist/list?id="+manager.getId();
	}
	
	/**
	 * 管理员用户密码重置
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "resetpaswd", method=RequestMethod.POST)
	public void resetManagepaswd(HttpServletRequest request, HttpServletResponse response) {
		PrintWriter out = null;
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/xml; charset=UTF-8");
			out = response.getWriter();
			String maid  = request.getParameter("mid");
			String newpaswd  = request.getParameter("npswd");
			String repnewpwd  = request.getParameter("rnpswd");
		    if(null != maid && null != newpaswd && null != repnewpwd) {
		    	managerService.updateManagerPswd(newpaswd,Long.parseLong(maid));
		    }
		    out.print("yes");
		} catch(Exception e) {
			System.out.println("------管理用户密码重置失败，系统异常!------");
			out.print("no");			
		} finally {
			if(out != null) {
				out.close();
			}
		}
	}
	
	
	/**
	 * 角色列表
	 * @param method
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "rolelist/{method}", method=RequestMethod.GET)
	public String rolesList(@PathVariable("method") String method, HttpServletRequest request, Model model) {
		StringBuffer condition = new StringBuffer();
		String rolename = request.getParameter("name");
		String beginTime = request.getParameter("beginTime");
		String id  = request.getParameter("id");
		condition.append(" where 1=1 ");
		if(null != rolename && !rolename.equals("")) {
			condition.append(" and name LIKE '%"+SystemUtils.changeStr(rolename.trim())+"%'");
		}
		if(null != id && !id.equals("")) {
			condition.append(" and id = '"+id.trim()+"'");
		}
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
		Page page  = managerService.pageRoleList(condition.toString(), Integer.parseInt(offset), Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		model.addAttribute("offset", offset);
		model.addAttribute("name", rolename);
		model.addAttribute("beginTime", beginTime);
		model.addAttribute("endTime", endTime);
		return "/manage/usermange/role_list";
	}
	
	
	/**
	 * 初始化新增修改，新增、修改角色
	 * @param method
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "addrole/{method}")
	public String addRole(@PathVariable("method") String method, Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		Role role = null;
		if(method.trim().equals("init")) {//进入新增或修改页面
			if(null != id && !id.trim().equals("")) {
				role = managerService.getOneRole(" where id = '"+id+"'");
				if(null != role.getResourceid() && !(role.getResourceid().trim().equals(""))) {
					String[] resourceArr = role.getResourceid().split(",");
					for(String resouce : resourceArr) {
						model.addAttribute(resouce,resouce);
					}
				}
				model.addAttribute("role",role);
			}
			return "/manage/usermange/add_role";
		}
		String roleName = request.getParameter("name");
		role = new Role();
		role.setName(roleName);
		String[] resourceids = request.getParameterValues("resourceid");
		String resourceid = "";
		if(null != resourceids && resourceids.length>0) {
			for(String source : resourceids) {
				resourceid+=source+",";
			}
			role.setResourceid(resourceid.substring(0, resourceid.length()-1));
		}
        if(method.trim().equals("add")) {//执行新增
        	role.setId(SystemUtils.createUUID());
        	managerService.addRole(role);
		} else {
			//否则执行修改
			role.setId(id);
			managerService.updateRole(role);
		}
        return "redirect:/manage/info/rolelist/list?id="+role.getId();
	}
	
	/**
	 * 删除 角色,管理员或用户
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "delete/{obj}", method=RequestMethod.POST)
	public void deleteRole(@PathVariable("obj") String obj, HttpServletRequest request, HttpServletResponse response) {
		PrintWriter out = null;
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/xml; charset=UTF-8");
			out = response.getWriter();
			String id  = request.getParameter("id");
			if(!id.trim().equals("")) {
				managerService.deleteObj(obj+" where id = '"+id+"'");
				out.print("yes");
			}
		} catch(Exception e) {
			System.out.println("------角色,管理员，或用户删除失败，系统异常!------");
			out.print("no");			
		} finally {
			if(out != null) {
				out.close();
			}
		}
	}
	
	
	/**
	 * 用户列表
	 * @param method
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "userlist/{method}", method=RequestMethod.GET)
	public String usersList(@PathVariable("method") String method, HttpServletRequest request, Model model) {
		StringBuffer condition = new StringBuffer();
		String passport = request.getParameter("passport");
		String beginTime = request.getParameter("beginTime");
		condition.append(" where 1=1 ");
		if(null != passport && !passport.equals("")) {
			condition.append(" and passport LIKE '%"+SystemUtils.changeStr(passport.trim())+"%'");
		}
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
		condition.append(" ORDER BY create_time DESC ");
		Page page  = managerService.pageUsersList(condition.toString(), Integer.parseInt(offset), Page.SIZE_PER_PAGE);
		model.addAttribute(page);
		model.addAttribute("offset", offset);
		model.addAttribute("passport", passport);
		model.addAttribute("beginTime", beginTime);
		model.addAttribute("endTime", endTime);
		return "/manage/usermange/user_list";
	}
	
	/**
	 * 用户明细
	 * @param userid
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "userdetail/{userid}", method=RequestMethod.GET)
	public String usersList(@PathVariable("userid") String userid, Model model) {
		
		Account account = managerService.getAccountUser(" where id= " +Long.parseLong(userid));
		model.addAttribute("account", account);
		return "/manage/usermange/user_detail";
	}	
}
