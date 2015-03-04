package com.dsg.cccs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dsg.cccs.model.Info;
import com.dsg.cccs.service.InfoService;
import com.dsg.cccs.utils.Page;
import com.dsg.cccs.utils.SystemUtils;

/**
 * @ClassName: ArticleController
 * @Description: Info Controller
 * @author proteus modoucc_gmail_com
 * @date 2011-7-27 上午9:47:16
 * 
 */
@Controller
@RequestMapping(value = "/info")
public class InfoController {

	@Autowired
	private InfoService infoService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(HttpServletRequest request, Model model) {
		
		String offset = request.getParameter("pager.offset");
		if (null == offset || "".equalsIgnoreCase(offset)) {
			offset = "0";
		}
		Page page = null;
		//condition.append(" WHERE MONTH(create_time) = MONTH(CURDATE()) AND YEAR(create_time) = YEAR(CURDATE()) ");
		String opusnumber = request.getParameter("opusnumber");//作品编号
		String id = request.getParameter("id");
		if (null != opusnumber && !opusnumber.equals("")) {//点击了前台首页检索查询
			page = infoService.searchInfoListPage(" where opusnumber = '" + SystemUtils.changeStr(opusnumber) + "'" 
					,Integer.parseInt(offset), Page.SIZE_PER_PAGE );
			model.addAttribute(page);
		}
		else if(id != null && !id.equals("")){
			page = infoService.searchInfoListPage(" where id = " + Integer.parseInt(id)
					,Integer.parseInt(offset), Page.SIZE_PER_PAGE );
			model.addAttribute(page);
		}
		model.addAttribute("opusnumber", opusnumber);
		return "info/list";
	}

	/**
	 * objType 1=版权           2=质权
	 * @param app_type
	 * @return
	 */
	/*@RequestMapping(value = "initinfo/{app_type}/{parent_type}", method = RequestMethod.GET)
	public String initInfoList(@PathVariable("app_type") String app_type, @PathVariable("parent_type") String parent_type
			, Model model) {
		model.addAttribute("parent_type", parent_type);
		model.addAttribute("app_type", app_type);
		return "info/info_list";
	}*/
	
	@RequestMapping(value = "infolist/{app_type}/{parent_type}")
	public String searchInfoList(@PathVariable("app_type") String app_type, @PathVariable("parent_type") String parent_type, Info info, Model model, HttpServletRequest request, HttpServletResponse response) {
		//String app_type = request.getParameter("app_type");
		String offset = request.getParameter("pager.offset");
		//String parent_type = request.getParameter("parent_type");//质权信息公示查询页面要有这个隐藏域 2
		StringBuffer condition = new StringBuffer();
		condition.append("where app_type= '"+app_type+"'");
		
		if(null != info.getNum() && !info.getNum().equals("")) {
			condition.append(" and num = '"+SystemUtils.changeStr(info.getNum())+"'");
		}
		if (null != info.getOpusnumber() && !info.getOpusnumber().equals("")) {
			condition.append(" and opusnumber = '" + SystemUtils.changeStr(info.getOpusnumber()) + "'");
		}
		if(null != info.getRecord() && !info.getRecord().equals("")) {
			condition.append(" and record = '"+SystemUtils.changeStr(info.getRecord())+"'");
		}
		if(null != info.getName() && !info.getName().equals("")) {
			condition.append(" and name = '"+SystemUtils.changeStr(info.getName())+"'");
		}
		if(null != info.getEnglishname() && !info.getEnglishname().equals("")) {
			condition.append(" and englishname  = '"+SystemUtils.changeStr(info.getEnglishname())+"'");
		}
		if(null != info.getOwner() && !info.getOwner().equals("")) {
			condition.append(" and owner = '"+SystemUtils.changeStr(info.getOwner())+"'");
		}
		if(null != info.getType() && !info.getType().equals("")) {
			condition.append(" and type = '"+SystemUtils.changeStr(info.getType())+"'");
		}
		//z21,z71
	    if(null != info.getTransferee() && !info.getTransferee().equals("")) {
	    	condition.append(" and transferee = '"+SystemUtils.changeStr(info.getTransferee())+"'");
	    }
	    //z73,z75
	    if(null != info.getPublishUnitName() && !info.getPublishUnitName().equals("")) {
	    	condition.append(" and publishUnitName = '"+SystemUtils.changeStr(info.getPublishUnitName())+"'");
	    }
	    if(null != info.getCompcode() && !info.getCompcode().equals("")) {
	    	condition.append(" and compcode = '"+SystemUtils.changeStr(info.getCompcode())+"'"); 
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
		
		Page page = infoService.searchInfoListPage(condition.toString() 
					,Integer.parseInt(offset), Page.SIZE_PER_PAGE );
			model.addAttribute(page);
			model.addAttribute("offset", offset);
			model.addAttribute("info", info);
			model.addAttribute("beginTime", beginTime);
			model.addAttribute("endTime", endTime);
			model.addAttribute("offset", offset);
			model.addAttribute("parent_type", parent_type);
			model.addAttribute("app_type", app_type);
			return "info/info_list";
	 }
	}
