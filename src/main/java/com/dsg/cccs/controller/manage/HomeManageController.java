package com.dsg.cccs.controller.manage;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dsg.cccs.model.Manager;
import com.dsg.cccs.model.Role;
import com.dsg.cccs.service.ManagerService;
import com.dsg.cccs.utils.ArticleConstants;

/**
 * @ClassName: HomeController
 * @Description: 首页
 * @author proteus
 * @date 2011-7-14 上午11:14:32
 * 
 */
@Controller
@RequestMapping("/manage")
public class HomeManageController {

	@Autowired
	private ManagerService managerService;

	@RequestMapping("")
	public String index() {
		return "/manage/index";
	}
	
	@RequestMapping(value="main")
	public String Main(Model model) {
		return "/manage/main";
	}
	
	@RequestMapping(value="left")
	public String left() {
		return "/manage/left";

	}
	
	@RequestMapping(value="header")
	public String header(Model model) {
		model.addAttribute("now", new Date());
		return "/manage/header";

	}
	
	@RequestMapping(value="body")
	public String main() {
		return "/manage/body";

	}

	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public String signin(@RequestParam("username") String username,
			@RequestParam("passwd") String passwd, HttpSession session,
			Model model) {
		Manager manager = managerService.getManagerByName(username);
		if (null == manager) {
			model.addAttribute("msg", "管理员不存在，请重新输入");
			return "/manage";
		}
		if (!passwd.equalsIgnoreCase(manager.getPasswd())) {
			model.addAttribute("msg", "密码输入错误，请重新输入");
			return "/manage";
		}
		String menuResouceArr = "";
		String buttResourceArr = "";
		if(manager.getLevel()==1) {
			Map<String, String> resouceMap = ArticleConstants.getSuperResources();
			menuResouceArr = resouceMap.get("menuResouceArr");
			buttResourceArr = resouceMap.get("buttResourceArr");
		} else {
			Role role = managerService.getOneRole(" where id = '"+manager.getRoleid()+"'");
			if(role != null && role.getResourceid() != null && !role.getResourceid().trim().equals("")){
				String[] mangeResources = role.getResourceid().split(",");
				for(int i = 0; i < mangeResources.length; i++) {
					if(mangeResources[i].indexOf("meu")>-1) {
						menuResouceArr = menuResouceArr+mangeResources[i]+",";
					} else {
						buttResourceArr = buttResourceArr+mangeResources[i]+",";
					}
				}
				menuResouceArr = menuResouceArr.substring(0, menuResouceArr.length()-1);
				buttResourceArr = buttResourceArr.substring(0, buttResourceArr.length()-1);
			} 
		}
		session.setAttribute("CCCS_MENURESOURCE", menuResouceArr);
		session.setAttribute("CCCS_BUTTRESOURCE", buttResourceArr);
		session.setAttribute("CCCS_MANAGER_ID", manager.getId());
		session.setAttribute("CCCS_MANAGER_NAME", username);
		session.setAttribute("CCCS_MANAGER", manager);
		return "redirect:/manage/main";
	}
	
	
	@RequestMapping(value = "signout", method = RequestMethod.GET)
	public String signout(HttpSession session) {
		session.removeAttribute("CCCS_MENURESOURCE");
		session.removeAttribute("CCCS_BUTTRESOURCE");
		session.removeAttribute("CCCS_MANAGER");
		session.removeAttribute("CCCS_MANAGER_ID");
		session.removeAttribute("CCCS_MANAGER_NAME");
		return "redirect:/manage";
	}

	/**
	 * 后台管理员列表
	 * @param method
	 * @param request
	 * @param model
	 * @return
	 *//*
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
	
	
	*//**
	 * 初始化新增修改，新增、修改管理员用户
	 * @param method
	 * @param model
	 * @param request
	 * @return
	 *//*
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
        return "redirect:/manage/managerlist/list?id="+manager.getId();
	}
	
	*//**
	 * 管理员用户密码重置
	 * @param request
	 * @param response
	 *//*
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
	
	
	*//**
	 * 角色列表
	 * @param method
	 * @param request
	 * @param model
	 * @return
	 *//*
	@RequestMapping(value = "rolelist/{method}", method=RequestMethod.GET)
	public String rolesList(@PathVariable("method") String method, HttpServletRequest request, Model model) {
		if(method.equals("init")) {
			return "/manage/usermange/role_list";
		}
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
	
	
	*//**
	 * 初始化新增修改，新增、修改角色
	 * @param method
	 * @param model
	 * @param request
	 * @return
	 *//*
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
        return "redirect:/manage/rolelist/list?id="+role.getId();
	}
	
	*//**
	 * 删除 角色,管理员或用户
	 * @param request
	 * @param response
	 *//*
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
	
	
	*//**
	 * 用户列表
	 * @param method
	 * @param request
	 * @param model
	 * @return
	 *//*
	@RequestMapping(value = "userlist/{method}", method=RequestMethod.GET)
	public String usersList(@PathVariable("method") String method, HttpServletRequest request, Model model) {
		if(method.equals("init")) {
			return "/manage/usermange/user_list";
		}
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
	
	*//**
	 * 用户明细
	 * @param userid
	 * @param model
	 * @return
	 *//*
	@RequestMapping(value = "userdetail/{userid}", method=RequestMethod.GET)
	public String usersList(@PathVariable("userid") String userid, Model model) {
		
		Account account = managerService.getAccountUser(" where id= " +Long.parseLong(userid));
		model.addAttribute("account", account);
		return "/manage/usermange/user_detail";
	}*/
}
