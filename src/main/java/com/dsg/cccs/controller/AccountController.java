/**   
 * @Title: AccountController.java 
 * @Package com.dsg.cccs.action 
 * @Description: TODO
 * @author proteus modoucc_gmail_com   
 * @date 2011-7-16 上午1:50:18   
 */
package com.dsg.cccs.controller;

import java.awt.image.BufferedImage;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dsg.cccs.model.Account;
import com.dsg.cccs.service.AccountService;
import com.dsg.cccs.service.ArticleService;
import com.dsg.cccs.utils.Digest;
import com.dsg.cccs.utils.MessageUtil;
import com.dsg.cccs.utils.SystemUtils;
import com.dsg.cccs.utils.ToEmailUtils;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;

/**
 * @ClassName: AccountController
 * @Description: Account控制器
 * @author proteus modoucc_gmail_com
 * @date 2011-7-16 上午1:50:18
 * 
 */
@Controller
@RequestMapping(value = "/account")
public class AccountController {

	//
	@Autowired
	private AccountService accountService;

	@Autowired
	private Producer captchaProduce;

	@Autowired
	private ArticleService articleServicse;
	
	@RequestMapping(value = "initsignup", method = RequestMethod.GET)
	public String signup(Model model) {
		Account account = new Account();
		model.addAttribute(account);
		return "signup";
	}

	
	
	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public String signup(HttpServletRequest request,
			Account account,  Model model, HttpSession session) {
		
		//检测用户名是否含有@符号
		if(null != account.getPassport() && account.getPassport().indexOf("@")>-1) {
			model.addAttribute("message", "用户名不能包涵@符号，请重新输入!");
			return "signup";
		}
		// 校验重复密码是否跟密码保持一致
		String re_passwd = request.getParameter("re_passwd");
		if (!re_passwd.equalsIgnoreCase(account.getPasswd())) {
			model.addAttribute("message", "重复密码输入错误，请重新输入!");
			return "signup";
		}
		// 校验验证码是否正确
		String kaptcha1 = (String) request.getSession().getAttribute(
				Constants.KAPTCHA_SESSION_KEY);
		String kaptcha2 = request.getParameter("captcha");
		System.out.println(kaptcha1 + ":" + kaptcha2);
		if (!kaptcha1.equalsIgnoreCase(kaptcha2)) {
			model.addAttribute("message", "验证码错误，请重新输入!");
			return "signup";
		}

		// 查看用户名和姓名是否有重复
		if (null != accountService.getAccount(" where passport = '"+account.getPassport()+"'")) {
			model.addAttribute("message", "您输入的用户名已被使用，请重新输入!");
			return "signup";
		}
		// 查看登录邮箱是否重复
		if(accountService.getAccountByCondition(" where email = '"+account.getEmail()+"'") != null) {
					model.addAttribute("message", "您输入的电子邮箱已被使用，请重新输入!");
					return "signup";
				}
		else {
			account.setLevel(1);
			account.setType(1);
			account.setLogin_number(1);
			account.setLong_time((long) 0);
			account.setCenter_update(1);
			account.setId(accountService.addAccount(account));
			session.setAttribute("CCCS_USERID", account.getId());
			session.setAttribute("CCCS_NAME", account.getPassport());
			session.setAttribute("CCCS_USER_LEVEL", account.getLevel());
			session.setAttribute("accountSession", account);
			//session.setAttribute("ACCOUNTIMAGE", account.getPortraitimg());
			session.setAttribute("LOGINTIME", new Date());
			return "redirect:/account/sign_succ";
		}
	}

	@RequestMapping(value = "sign_succ", method = RequestMethod.GET)
	public String sign_succ(Model model) {
		return "sign_succ";
	}

	@RequestMapping(value = "signin", method = RequestMethod.POST)
	@ResponseBody
	public MessageUtil signin(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String passport = request.getParameter("passport");
		String passwd = request.getParameter("passwd");
		String type = request.getParameter("types");
		String kaptcha1 = (String) request.getSession().getAttribute(
				Constants.KAPTCHA_SESSION_KEY);
		String kaptcha2 = request.getParameter("captcha");
		MessageUtil msg = new MessageUtil(false);
		if (!kaptcha1.equalsIgnoreCase(kaptcha2)) {
			msg.setMsg("验证码错误，请重新输入!");
			return msg;
		}
		/*Account account = accountService.getAccountByPassport(passport);*/
		Account account = null;
		if(passport.indexOf("@")>-1) {//邮箱登录
			account = accountService.getAccountByCondition(" where email = '"+passport+"'");
		} else {//用户名登录
			account = accountService.getAccountByCondition(" where passport = '"+passport+"'");
		}
		if (null == account) {
			msg.setMsg("用户名或邮箱不存在，请重新输入!");
			return msg;
		}
		if (!account.getPasswd().equalsIgnoreCase(Digest.MD5(passwd))) {
			msg.setMsg("密码输入错误，请重新输入!");
			return msg;
		}
		accountService.updateAccountByCondition(" login_number = "+(account.getLogin_number()+1)+" where id = "+account.getId());
		session.setAttribute("CCCS_USERID", account.getId());
		session.setAttribute("CCCS_NAME", account.getPassport());
		session.setAttribute("CCCS_USER_LEVEL", account.getLevel());
		session.setAttribute("accountSession", account);
		//session.setAttribute("ACCOUNTIMAGE", account.getPortraitimg());
		session.setAttribute("LOGINTIME", new Date());
		if(null != type && !type.equals("")) {
			session.setAttribute("TYPEID",type);
		}
		msg.setResult(true);
		return msg;
	}

	/**
	 * 初始化登录页面(针对点击在线登记按钮后)
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "intlogin")
	public String initLogin(Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String type  = request.getParameter("typeCode");
		if(type != null) {
			model.addAttribute("type",type);
		}
			
		return "login";
	}
	
	/**
	 * 执行登录(针对点击在线登记按钮后)
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String passport = request.getParameter("passport");
		String passwd = request.getParameter("passwd");
		String type = request.getParameter("typeCode");
		String kaptcha1 = (String) request.getSession().getAttribute(
				Constants.KAPTCHA_SESSION_KEY);
		String kaptcha2 = request.getParameter("captcha");
		if (!kaptcha1.equalsIgnoreCase(kaptcha2)) {
			model.addAttribute("codemsg","<font color='red'>验证码错误，请重新输入!</font>");
			return "login";
		}
		Account account = accountService.getAccountByPassport(passport);
		if (null == account) {
			model.addAttribute("namemsg","<font color='red'>用户名不存在，请重新输入!</font>");
			return "login";
		}
		if (!account.getPasswd().equalsIgnoreCase(Digest.MD5(passwd))) {
			model.addAttribute("paswdmsg","<font color='red'>密码输入错误，请重新输入!</font>");
			return "login";
		}
		HttpSession session = request.getSession();
		accountService.updateAccountByCondition(" login_number = "+(account.getLogin_number()+1)+" where id = "+account.getId());
		session.setAttribute("CCCS_USERID", account.getId());
		session.setAttribute("CCCS_NAME", account.getPassport());
		session.setAttribute("CCCS_USER_LEVEL", account.getLevel());
		session.setAttribute("accountSession", account);
		//session.setAttribute("ACCOUNTIMAGE", account.getPortraitimg());
		session.setAttribute("LOGINTIME", new Date());
		if(null != type) {
			return "redirect:/application/" + type;
		} else {
			model.addAttribute("now", new Date());
			model.addAttribute("yw", articleServicse.getArticleBySize("yw", 6));
			model.addAttribute("dt", articleServicse.getArticleBySize("dt", 6));
			model.addAttribute("zx", articleServicse.getArticleBySize("zx", 6));
			model.addAttribute("gz", articleServicse.getArticleBySize("gz", 6));
			model.addAttribute("fzxxw", articleServicse.getArticleBySize("fzxxw", 10));
			model.addAttribute("flfw", articleServicse.getArticleBySize("flfw", 10));
			//获得产品中心滚动栏的内容
			model.addAttribute("indexnew", articleServicse.getArticleList(" where channel ='xw' and subject='dt' limit 0,5"));
			return "index";
		}
	}
	@RequestMapping("signout")
	@ResponseBody
	public void logout(HttpSession session) {
		Date loginTime = (Date)session.getAttribute("LOGINTIME");
		Long hour;
		try {
			hour = SystemUtils.timeDispatchMinus(SystemUtils.dateFormatString(loginTime),
					SystemUtils.dateFormatString(new Date()));
			Account acount = (Account)session.getAttribute("accountSession");
			accountService.updateAccountByCondition(" long_time = "+(hour+acount.getLong_time())+
					",last_login_time=now() where id="+session.getAttribute("CCCS_USERID"));
			session.removeAttribute("CCCS_USERID");
			session.removeAttribute("CCCS_USER_LEVEL");
			session.removeAttribute("CCCS_NAME");
			session.removeAttribute("accountSession");
			session.removeAttribute("LOGINTIME");
			//session.removeAttribute("ACCOUNTIMAGE");
		} catch (Exception e) {
		}
	}


	@RequestMapping("/captcha-image")
	public String handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setDateHeader("Expires", 0);
		response.setHeader("Cache-Control",
				"no-store, no-cache, must-revalidate");
		response.addHeader("Cache-Control", "post-check=0, pre-check=0");
		response.setHeader("Pragma", "no-cache");
		response.setContentType("image/jpeg");
		String capText = captchaProduce.createText();
		request.getSession().setAttribute(Constants.KAPTCHA_SESSION_KEY,
				capText);
		BufferedImage bi = captchaProduce.createImage(capText);
		ServletOutputStream out = response.getOutputStream();
		ImageIO.write(bi, "jpg", out);
		try {
			out.flush();
		} finally {
			out.close();
		}
		return null;
	}

	@RequestMapping(value = "toforgetpaswd")
	public String toForgetPaswd(Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return "forgetpaswd";
	}
	
	@RequestMapping(value = "forgetpaswd")
	public String Forgetpaswd(Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String useremail = request.getParameter("useremail");
		String kaptcha1 = (String) request.getSession().getAttribute(
				Constants.KAPTCHA_SESSION_KEY);
		String kaptcha2 = request.getParameter("captcha");
		if (kaptcha1 != null && !kaptcha1.equalsIgnoreCase(kaptcha2)) {
			model.addAttribute("codemsg","<font color='red'>验证码错误，请重新输入!</font>");
			model.addAttribute("username", username);
			model.addAttribute("useremail", useremail);
			return "forgetpaswd";
		} 
		Account account = accountService.getAccountByPassport(username);
		if (null == account) {
			model.addAttribute("namemsg","<font color='red'>此用户名不存在，请重新输入!</font>");
			model.addAttribute("useremail", useremail);
			return "forgetpaswd";
		} else {
			if(null != account.getEmail() && !account.getEmail().equals(useremail)) {
			model.addAttribute("emailmsg","<font color='red'>此邮箱不存在，请重新输入!</font>");
			model.addAttribute("username", username);
				return "forgetpaswd";
			}
		}
		accountService.updatepaswdState("yes",account.getId());
		String codeUrl = SystemUtils.getBASE64(SystemUtils.dateFormatString(new Date(),
				"yyyy-MM-ddHH:mm:ss")+"@"+SystemUtils.createUUID());
		String emailUrl = SystemUtils.createCompUrl(request)+"/account/initpaswd/"+username+"/"
				+codeUrl;
		ToEmailUtils.toEmailByPaswd(request, useremail, "找回密码-中国动漫作品版权服务平台", 
				emailUrl, username);
		model.addAttribute("useremail", useremail);
		return "forgetmessage";
	}
	
	@RequestMapping(value = "initpaswd/{username}/{dataStr}")
	public String initUpdatePaswd(@PathVariable("username") String username, @PathVariable("dataStr") String enterBase64, 
			Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String desBase64 = SystemUtils.getFromBASE64(enterBase64);
		String onlyEmailCode = desBase64.substring(0, desBase64.indexOf("@"));
		long days = SystemUtils.comparaTwoDateByDay((onlyEmailCode.substring(0, 10)+" "
		 +onlyEmailCode.substring(10, onlyEmailCode.length())));
        if(days==0) {//还在一天之内
        	Account account = accountService.getAccountByPassport(username);
        	if(null != account && null != account.getUpdatepaswd() 
        			&& account.getUpdatepaswd().equals("yes")) {
        		model.addAttribute("account", account);
        		accountService.updatepaswdState(" ",account.getId());
        		return "initupdatepaswd";
        	} else {
        		return "error";
        	}
        } else {
        	return "error";
        }
	}
	
	@RequestMapping(value = "updatepaswd")
	public String updatePaswd(Model model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String password = Digest.MD5(request.getParameter("newpassport"));
		accountService.updateAccountPaswd(password,Long.parseLong(id));
		return "upswd_message";
	}
}
