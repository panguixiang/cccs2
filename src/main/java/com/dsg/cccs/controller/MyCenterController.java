/**   
 * @Title: AccountController.java 
 * @Package com.dsg.cccs.action 
 * @Description: TODO
 * @author proteus modoucc_gmail_com   
 * @date 2011-7-16 上午1:50:18   
 */
package com.dsg.cccs.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dsg.cccs.model.Account;
import com.dsg.cccs.model.StationMail;
import com.dsg.cccs.model.application.Application;
import com.dsg.cccs.service.AccountService;
import com.dsg.cccs.service.ApplicationService;
import com.dsg.cccs.utils.FileUtil;
import com.dsg.cccs.utils.Page;
import com.dsg.cccs.utils.SystemUtils;
import com.dsg.cccs.utils.UploadFileServlet;

/**
 * @ClassName: AccountController
 * @Description: Account控制器
 * @author proteus modoucc_gmail_com
 * @date 2011-7-16 上午1:50:18
 * 
 */
@Controller
@RequestMapping(value = "/mycenter")
public class MyCenterController {

	@Autowired
	private AccountService accountService;

	@Autowired
	private ApplicationService appService;

	@RequestMapping(value = "passwd", method = RequestMethod.GET)
	public String passwd() {
		return "mycenter/passwd";
	}

	@RequestMapping(value = "passwd", method = RequestMethod.POST)
	public String passwd(HttpSession session,
			@RequestParam("passwd") String passwd,
			@RequestParam("re_passwd") String re_passwd, Model model) {
		if (passwd.length() < 4 || passwd.length() > 20) {
			model.addAttribute("message", "密码输入格式有误，请重新输入!");
			return "mycenter/updatepswd";
		}
		if (!passwd.equals(re_passwd)) {
			model.addAttribute("remessage", "重复密码与密码不一致，请重新输入!");
			return "mycenter/updatepswd";
		}
		Long id = (Long) session.getAttribute("CCCS_USERID");
		accountService.modifyPasswd(passwd, id);
		model.addAttribute("result", true);
		return "mycenter/updatepswd";
	}

	@RequestMapping(value = "interaccount/{objType}", method = RequestMethod.GET)
	public String account(@PathVariable("objType") String objType, Model model,
			HttpServletRequest request, HttpSession session) {
		Account account = accountService.getAccount(" where id = "
				+ session.getAttribute("CCCS_USERID"));
		if (account != null) {
			model.addAttribute("account", account);
		}
		String result = request.getParameter("result");
		if(result!=null && !result.trim().equals("")) {
			model.addAttribute("resultmsg", "<font color='red'>操作成功!</font>");
		}
		return "mycenter/" + objType;
	}

	@RequestMapping(value = "account", method = RequestMethod.POST)
	public String account(MultipartHttpServletRequest request,
			@Valid Account account, BindingResult result, Model model) {
		// account字段验证错误，则返回注册页
		if (result.hasErrors()) {
			model.addAttribute("messageList", result.getAllErrors());
			return "mycenter/account";
		}

		// 设置营业执照副本
		MultipartFile businessFile = request.getFile("business");
		if (null != businessFile && 0 != businessFile.getSize()) {
			account.setBusiness_file(FileUtil.saveFile(request.getSession()
					.getServletContext().getRealPath(""), businessFile));
		}

		// 设置营业执照副本
		MultipartFile enterpriseFile = request.getFile("enterprise");
		if (null != enterpriseFile && 0 != enterpriseFile.getSize()) {
			account.setEnterprise_file(FileUtil.saveFile(request.getSession()
					.getServletContext().getRealPath(""), enterpriseFile));
		}

		// 更新用户信息
		accountService.updateAccount(account);
		model.addAttribute("result", true);
		return "mycenter/account";
	}

/*	@RequestMapping(value = "subregister", method = RequestMethod.POST)
	public String subRegisterCenter(MultipartHttpServletRequest request,
			@Valid Account account, BindingResult result, Model model,
			HttpSession session) {
		MultipartFile updateImage = request.getFile("updateImage");
		String newImageName = null;
		StringBuffer condition = new StringBuffer();
		if (updateImage != null) {
			newImageName = FileUtil.updateUserImage(session.getServletContext()
					.getRealPath(""), updateImage, account.getPassport());
			if (newImageName.equals("false")) {
				model.addAttribute("resultmsg",
						"<font color='red'>修改失败,请上传jpg或gif格式的图片!</font>");
				return "mycenter/register_center";
			}
			session.removeAttribute("PORTRAITIMGA");
			session.setAttribute("PORTRAITIMGA", newImageName);
			condition.append(" portraitimg = '" + newImageName + "' ");
			if (null != account.getPasswd() && !account.getPasswd().equals("")) {
				condition.append(",passwd = '"
						+ Digest.MD5(account.getPasswd()) + "'");
			}
		} else {
			if (null != account.getPasswd() && !account.getPasswd().equals("")) {
				condition.append(" passwd = '"
						+ Digest.MD5(account.getPasswd()) + "'");
			}
		}
		condition.append(" where passport = '" + account.getPassport() + "'");
		if (newImageName == null && account.getPasswd().equals("")) {
			return "mycenter/register_center";
		} else {
			accountService.updateAccountByCondition(condition.toString());
			model.addAttribute("resultmsg", "<font color='red'>修改成功!</font>");
			return "mycenter/register_center";
		}
	}*/

	@RequestMapping(value = "updateregister", method = RequestMethod.POST)
	public String updateregister(Account account, Model model) {
		StringBuffer condition = new StringBuffer();
		condition.append(" name = '").append(account.getName())
				.append("',address = '").append(account.getAddress())
				.append("',postcode='").append(account.getPostcode())
				.append("',p_name='").append(account.getP_name())
				.append("',phone='").append(account.getPhone())
				.append("',peremail='").append(account.getPeremail())
				.append("',mobile='").append(account.getMobile())
				.append("',fax='").append(account.getFax())
				.append("' where id =").append(account.getId());
		accountService.updateAccountByCondition(condition.toString());
		return "redirect:/mycenter/interaccount/registermsg?result=yes";
	}

	/**
	 * 个人中心查询版权和质权状态计数统计
	 * 
	 * @param objType
	 * @param userid
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "{objType}/{userid}", method = RequestMethod.GET)
	public String copyRightCount(@PathVariable("objType") String objType,
			@PathVariable("userid") String userid, Model model) {
		String condition = null;
		if (objType.equals("pledge")) {
			condition = " where publish_id = " + userid + " and type in(3,4);";
		} else {
			condition = " where publish_id = " + userid + " and type in(1,2);";
		}
		List<Application> applications = (List<Application>) appService
				.getApplicationStateMap(condition);
		if (applications != null && applications.size() > 0) {
			Map<Integer, Integer> stateMap = SystemUtils
					.createMapAppStates(applications);
			model.addAttribute("stateMap", stateMap);
		}
		model.addAttribute("objType", objType);
		return "mycenter/copyright";
	}

	@RequestMapping(value = "updatecenter", method = RequestMethod.POST)
	public String updateUserCenter(MultipartHttpServletRequest request,
			Account account, Model model) {
		// 上传证件的扫描件,上传法人证件的扫描件
		MultipartFile businessFile = request.getFile("businessfile");
		String flag = null;
		if (null != businessFile && 0 != businessFile.getSize()) {
			flag = FileUtil.saveCenterFile(request.getSession()
					.getServletContext().getRealPath(""), businessFile,
					account.getBusiness_file(),"account");
			if (flag == "false") {
				model.addAttribute("resultmsg",
						"<font color='red'>修改失败,请上传jpg或gif格式的图片!</font>");
				return "mycenter/resource_user";
			} else {
				account.setBusiness_file(flag);
			}
		}
		if (account.getCenter_type().equals("企业")) {
			// 上传企业证明文件
			MultipartFile enterpriseFile = request.getFile("enterprisefile");
			if (null != enterpriseFile && 0 != enterpriseFile.getSize()) {
				flag = FileUtil.saveCenterFile(request.getSession()
						.getServletContext().getRealPath(""), enterpriseFile,
						account.getEnterprise_file(),"account");
				if (flag == "false") {
					model.addAttribute("resultmsg",
							"<font color='red'>修改失败,请上传jpg或gif格式的图片!</font>");
					return "mycenter/resource_user";
				} else {
					account.setEnterprise_file(flag);
				}
			}
		}
		if (account.getProvince().equals("-1111")) {
			account.setCity(request.getParameter("otherCity"));
		}
		account.setLevel(2);
		if (account.getCenter_type().equals("企业")) {
			accountService.updateAccountByCenter(account,
					",p_name='" + account.getP_name() + "'");
		} else {
			accountService.updateAccountByCenter(account, " ");
		}
		return "redirect:/mycenter/interaccount/resource_user?result=yes";
	}

	/**
	 * 前台站内信列表
	 * 
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "stationmaillist", method = RequestMethod.GET)
	public String stationMailList(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		StringBuffer condition = new StringBuffer();
		String mailtype = request.getParameter("mailtype");
		if(mailtype != null && !mailtype.equals("")) {
			if(mailtype.equals("1")) {//查看收件箱
				condition.append(" where recipients = '"+(String) request.getSession().getAttribute(
						"CCCS_NAME")+"'");
			}
			else if(mailtype.equals("2")){//查看发件箱
				condition.append(" where addresser = '"+(String) request.getSession().getAttribute(
						"CCCS_NAME")+"'");
			}
			 model.addAttribute("mailtype",Integer.parseInt(mailtype));
		} else {
			condition.append(" where recipients = '"+(String) request.getSession().getAttribute(
					"CCCS_NAME")+"'");
		}
		String title = request.getParameter("title");
		if (null != title && !title.trim().equals("")) {
			condition.append(" and title = '" + SystemUtils.changeStr(title)
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
        model.addAttribute("beginTime",beginTime);
        model.addAttribute("endTime",endTime);
        model.addAttribute("offset",offset);
		return "stationmail_list";
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
		return "lookstationmail";
	}
	
/**
 * 删除站内信
 * @param request
 * @param response
 */
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
		return  "addstationmail";
	}
	
	/**
	 * 前台用户新增站内信
	 * @param mail
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "addstationmail", method = RequestMethod.POST)
	public String addStationmail(StationMail mail, HttpServletRequest request, HttpServletResponse response) {
			mail.setAddresser((String) request.getSession().getAttribute(
					"CCCS_NAME"));
			mail.setId(SystemUtils.createUUID());
			accountService.addStationMail(mail);
		return "redirect:/mycenter/stationmaillist";
	}
	
	/**
	 * 修改头像上传预览
	 * @param userId
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "updateimage/{useid}", method = RequestMethod.POST)
	public String updateImage(@PathVariable("useid") Long userId, MultipartHttpServletRequest request,
		 Model model) {
		// 上传证件的扫描件,上传法人证件的扫描件
		MultipartFile imagefile = request.getFile("enterprisefile");
		String oldImagefile = request.getParameter("oldimage");
		HttpSession session = request.getSession();
		String flag = null;
		if (null != imagefile && 0 != imagefile.getSize()) {
			flag = FileUtil.saveCenterFile(
					session.getServletContext().getRealPath(""), imagefile,
					oldImagefile,"cachefile");
			if (flag == "false") {
				model.addAttribute("resultmsg",
						"<font color='red'>修改失败,请上传jpg或gif格式的图片!</font>");
				return "mycenter/updateimage";
			}
		}
		FileInputStream fis;
		try {
			fis = new FileInputStream(session.getServletContext().getRealPath("")+flag);
			BufferedImage bufferedImg = ImageIO.read(fis); 
			int imgWidth = bufferedImg.getWidth();
			model.addAttribute("imageWidth", imgWidth);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 model.addAttribute("imageurl", flag);
		 return "mycenter/updateimage";
	}
	/**
	 * 截图成功后，提交修改头像
	 * @param userId
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "clearimage/{useid}", method = RequestMethod.POST)
	public String clearimage(@PathVariable("useid") Long userId,HttpServletRequest request,
		 Model model) {
		String parentImgUrl = request.getParameter("parentImgUrl");
		int x1 = (int) Double.parseDouble(request.getParameter("x1"))+1;
		int y1 = (int) Double.parseDouble(request.getParameter("y1"))+1;
		int width = (int) Double.parseDouble(request.getParameter("width"))+1;
		int height = (int) Double.parseDouble(request.getParameter("height"))+1;
		int oldimageWidth = Integer.parseInt(request.getParameter("imageWidth"));
		float dof =  oldimageWidth/(float)600;
		HttpSession session = request.getSession();
		String newFileUrl = null;
        try {
           newFileUrl = UploadFileServlet.abscut(session.getServletContext().getRealPath(""),
        		   parentImgUrl, (int)(x1*dof),(int)(y1*dof),
        		   (int)(width*dof), (int)(height*dof), "portimage");
          accountService.updateAccountByCondition(" portraitimg = '"+newFileUrl+"' where id="+userId);
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
        Account account = (Account)session.getAttribute("accountSession");
        session.removeAttribute("accountSession");
       if(account != null) {
    	   System.out.println(account.getAddress()+account.getName());
    	   account.setPortraitimg(newFileUrl);
    	   session.setAttribute("accountSession", account);
       }
        return "redirect:/mycenter/tiaozhuan";
	}
	
	/**
	 * 取消头像上传，删除缓存文件夹里的文件
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "calloffupdateimg", method = RequestMethod.GET)
	public String callOffUpdateImg(HttpServletRequest request) {
		String parentImgUrl = request.getParameter("parentImgUrl");
		if (null != parentImgUrl && parentImgUrl.length() > 5) {// 这里大于5只是为了防止“”
			File fileDir = new File(request.getSession().getServletContext().getRealPath("")+parentImgUrl);
			if (fileDir.exists()) {
				fileDir.delete();
			}
		} 
		return "mycenter/updateimage";
	}
	
	/**
	 * 每次截图上传成功后，刷新页面又进行了截图
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "tiaozhuan", method = RequestMethod.GET)
	public String tiaoZhuan(HttpServletRequest request) {
		return "mycenter/updateimage";
	}
	
}
