package com.dsg.cccs.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsg.cccs.maper.application.ApplicationMapper;
import com.dsg.cccs.maper.application.ContentInfoMapper;
import com.dsg.cccs.maper.application.CopyrightPersonMapper;
import com.dsg.cccs.maper.application.PersonMapper;
import com.dsg.cccs.maper.application.R11Mapper;
import com.dsg.cccs.maper.application.R415Mapper;
import com.dsg.cccs.maper.application.Z11Mapper;
import com.dsg.cccs.maper.application.Z21Mapper;
import com.dsg.cccs.maper.application.Z5XMapper;
import com.dsg.cccs.maper.application.Z60Mapper;
import com.dsg.cccs.maper.application.Z71Mapper;
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
import com.dsg.cccs.utils.Page;

/**
 * @ClassName: ApplicationService
 * @Description:
 * @author proteus modoucc_gmail_com
 * @date 2011-8-7 下午2:03:58
 * 
 */
@Service
public class ApplicationService {
	@Autowired
	private ApplicationMapper appMapper;

	@Autowired
	private Z11Mapper z11Mapper;
	@Autowired
	private Z21Mapper z21Mapper;
	@Autowired
	private Z60Mapper z60Mapper;
	@Autowired
	private CopyrightPersonMapper cpMapper;
	@Autowired
	private PersonMapper psMapper;
	@Autowired
	private ContentInfoMapper infoMapper;
    @Autowired
    private R11Mapper r11Mapper;
    @Autowired
    private Z71Mapper z71Mapper;
    @Autowired
	private R415Mapper r415Mapper;
    @Autowired
   	private Z5XMapper z5XMapper;
	@Transactional
	public void addZ11(Z11 z11, List<CopyrightPerson> cps, Person sp,
			Person dp, Application app, List<PartByAdd> partAdds) {

		// 版权拥有者
		for (CopyrightPerson cp : cps) {
			cpMapper.addCopyrightPerson(cp);
		}
		if (null != partAdds && partAdds.size() > 0) {
			for (PartByAdd aprt : partAdds) {
				cpMapper.addPartByAdd(aprt);
			}
		}

		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z11Mapper.addZ11(z11);
		appMapper.addApplication(app);
	}

	/**
	 * 修改-作品著作权登记申请表
	 * 
	 * @param z11
	 * @param cps
	 * @param sp
	 * @param dp
	 * @param app
	 */
	@Transactional
	public void updateZ11(Z11 z11, List<CopyrightPerson> cps, Person sp,
			Person dp, Application app, List<PartByAdd> parts) {

		cpMapper.deleteCopyrightPerson(" where flow_num = '"
				+ z11.getFlow_num() + "'");
		// 版权拥有者
		for (CopyrightPerson cp : cps) {
			cpMapper.addCopyrightPerson(cp);
		}
		// update---partbyadd
		cpMapper.deletePartByAdd(" where flow_num='" + z11.getFlow_num() + "'");
		if (null != parts && parts.size() > 0) {
			for (PartByAdd aprt : parts) {
				cpMapper.addPartByAdd(aprt);
			}
		}
		psMapper.deletePerson(" where flow_num ='" + z11.getFlow_num() + "'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z11Mapper.updateZ11Two(z11);
		appMapper.updateApplicationTwo(app);

	}

	public Map<String, Object> getZ11(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z11", z11Mapper.getZ11(flow_num));
		map.put("cps", cpMapper.getCopyrightPersons(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("parts",
				cpMapper.getPartAddList(" where flow_num ='" + flow_num + "'"));
		return map;
	}

	public Map<String, Object> getZ31(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z31", z11Mapper.getZ11(flow_num));
		map.put("cps", cpMapper.getCopyrightPersons(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("authors",
				z11Mapper.getAuthorList(" where flow_num ='" + flow_num + "'"));
		return map;
	}
	
	@Transactional
	public void addZ21(Z21 z21, List<CopyrightPerson> cps1,
			List<CopyrightPerson> cps2, Person sp, Person dp, Application app,
			List<PartByAdd> partAdds) {
		// 版权拥有者
		for (CopyrightPerson cp : cps1) {
			cpMapper.addCopyrightPerson(cp);
		}
		// 版权转让者
		for (CopyrightPerson cp : cps2) {
			cpMapper.addCopyrightPerson(cp);
		}
		if (null != partAdds && partAdds.size() > 0) {
			for (PartByAdd aprt : partAdds) {
				cpMapper.addPartByAdd(aprt);
			}
		}
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z21Mapper.addZ21(z21);
		appMapper.addApplication(app);
	}

	@Transactional
	public void updateZ21(Z21 z21, List<CopyrightPerson> cps1,
			List<CopyrightPerson> cps2, Person sp, Person dp, Application app,
			List<PartByAdd> partAdds) {
		cpMapper.deleteCopyrightPerson(" where flow_num = '"
				+ z21.getFlow_num() + "'");
		// 版权拥有者
		for (CopyrightPerson cp : cps1) {
			cpMapper.addCopyrightPerson(cp);
		}
		// 版权转让者
		for (CopyrightPerson cp : cps2) {
			cpMapper.addCopyrightPerson(cp);
		}
		cpMapper.deletePartByAdd(" where flow_num='" + z21.getFlow_num() + "'");
		if (null != partAdds && partAdds.size() > 0) {
			for (PartByAdd aprt : partAdds) {
				cpMapper.addPartByAdd(aprt);
			}
		}
		psMapper.deletePerson(" where flow_num ='" + z21.getFlow_num() + "'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z21Mapper.updateZ21(z21);
		appMapper.updateApplicationTwo(app);
	}

	public Map<String, Object> getZ21(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z21", z21Mapper.getZ21(flow_num));
		map.put("cps1", cpMapper.getCopyrightPersonsByType(flow_num, 1)); // 版权拥有者列表
		map.put("cps2", cpMapper.getCopyrightPersonsByType(flow_num, 2)); // 版权受让者列表
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("parts",
				cpMapper.getPartAddList(" where flow_num ='" + flow_num + "'"));
		return map;
	}
	
	@Transactional
	public void addZ51(Z51 z51, Person sp, Person dp, Application app, List<CopyrightPerson> cps1,
			List<CopyrightPerson> cps2) {
		// 出质人信息
		for (CopyrightPerson cp : cps1) {
			cpMapper.addCopyrightPerson(cp);
		}
		// 质权人信息
		for (CopyrightPerson cp : cps2) {
			cpMapper.addCopyrightPerson(cp);
		}
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z5XMapper.addZ51(z51);
		appMapper.addApplication(app);
	}
	
	@Transactional
	public void updateZ51(Z51 z51, Person sp, Person dp, Application app, List<CopyrightPerson> cps1,
			List<CopyrightPerson> cps2) {
		// 出质人信息
		cpMapper.deleteCopyrightPerson(" where flow_num = '"+z51.getFlow_num()+"'");
		for (CopyrightPerson cp : cps1) {
			cpMapper.addCopyrightPerson(cp);
		}
		// 质权人信息
		for (CopyrightPerson cp : cps2) {
			cpMapper.addCopyrightPerson(cp);
		}
		psMapper.deletePerson(" where flow_num = '"+z51.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z5XMapper.updateZ51(z51);
		appMapper.updateApplicationTwo(app);
	}
	public Map<String, Object> getZ51(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cps1", cpMapper.getCopyrightPersonsByType(flow_num, 1)); // 出质人信息
		map.put("cps2", cpMapper.getCopyrightPersonsByType(flow_num, 2)); // 质权人信息
		map.put("z51", z5XMapper.queryZ51(" where flow_num='"+flow_num+"'"));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}
	
	public Map<String, Object> getZ52(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("parts1", cpMapper.getPartAddList(" where phone = 'czr' and flow_num='"+flow_num+"'")); // 出质人信息
		map.put("parts2", cpMapper.getPartAddList(" where phone = 'zqr' and flow_num='"+flow_num+"'")); // 质权人信息
		map.put("z52", r415Mapper.getR43_4(" where flow_num = '"+flow_num+"'"));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}
	
	
	@Transactional
	public void addZ61(Z60 z61, List<ContentInfo> infos, Person sp, Person dp,
			Application app) {
		for (ContentInfo info : infos) {
			infoMapper.addContentInfo(info);
		}
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z60Mapper.addZ60(z61);
		appMapper.addApplication(app);
	}

	@Transactional
	public void updateZ61(Z60 z61, List<ContentInfo> infos, Person sp, Person dp,
			Application app) {
			infoMapper.deleteInfo(" where flow_num = '"+z61.getFlow_num()+"'");
			for (ContentInfo info : infos) {
				infoMapper.addContentInfo(info);
			}
			psMapper.deletePerson(" where flow_num ='" + z61.getFlow_num() + "'");
			psMapper.addPerson(sp);
			if(dp != null) {
				psMapper.addPerson(dp);
			}
			z60Mapper.updateZ60(z61);
			appMapper.updateApplicationTwo(app);
	}


	public Map<String, Object> getZ61(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("infos", infoMapper.getContentInfoByFlowNum(flow_num));
		map.put("z60", z60Mapper.getZ60(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}

	@Transactional
	public void addZ60(Z60 z60, Person sp, Person dp, Application app) {
		appMapper.addApplication(app);
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z60Mapper.addZ60(z60);

	}
	
	@Transactional
	public void updateZ60(Z60 z60, Person sp, Person dp, Application app) {
		appMapper.updateApplicationTwo(app);
		psMapper.deletePerson(" where flow_num='"+z60.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z60Mapper.updateZ60(z60);

	}
	
	@Transactional
	public void addZ64(Z60 z64, Person sp, Person dp, Application app, List<PartByAdd> partAdds) {
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		if (null != partAdds && partAdds.size() > 0) {
			for (PartByAdd aprt : partAdds) {
				cpMapper.addPartByAdd(aprt);
			}
		}
		z60Mapper.addZ60(z64);
		appMapper.addApplication(app);
	}

	@Transactional
	public void updateZ64(Z60 z64, Person sp, Person dp, Application app, List<PartByAdd> partAdds) {
		psMapper.deletePerson(" where flow_num='"+z64.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		cpMapper.deletePartByAdd(" where flow_num='" + z64.getFlow_num() + "'");
		if (null != partAdds && partAdds.size() > 0) {
			for (PartByAdd aprt : partAdds) {
				cpMapper.addPartByAdd(aprt);
			}
		}
		z60Mapper.updateZ60(z64);
		appMapper.updateApplicationTwo(app);

	}
	
	public Map<String, Object> getZ60(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z60", z60Mapper.getZ60(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}
	
	public Map<String, Object> getZ64(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z64", z60Mapper.getZ60(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("parts",
				cpMapper.getPartAddList(" where flow_num ='" + flow_num + "'"));
		return map;
	}
	
	public Application getApplication(String flow_num) {
		return appMapper.getApplicationByFlowNum(flow_num);
	}
	
	public void updateApplication(int state,String flow_num) throws Exception {
		 appMapper.updateApplicationState(state, " where flow_num='"+flow_num+"'");
	}
	
	public Page getApplications(String sqlStr, int start, int size) {
		List<Application> list = appMapper.getApplicationPage(sqlStr, start,
				size);
		Integer count = appMapper.countApplicationBySQL(sqlStr);
		Page page = new Page(list, count);
		return page;
	}

	public void dealApplication(String flow_num, Integer state, String answer) {
		appMapper.dealApplicaton(flow_num, state, answer);
	}

	/**
	 * 我要登记页面右侧申请须知展示列表
	 * 
	 * @param condition
	 * @return
	 */
	public List<ApplyKnow> getApplyKnowList(String condition) {
		return appMapper.getApplyKnowList(condition);
	}

	public Application getApplicationByCondition(String condition) {
		return appMapper.getApplicationByCondition(condition);
	}

	public void deleteApplication(String condition) throws Exception {
		appMapper.updateApplication(condition);
	}

	/**
	 * 后台管理填表须知
	 * 
	 * @param condition
	 * @param start
	 * @param size
	 * @return
	 */
	public Page appKnowListPage(String condition, int start, int size) {
		return new Page(appMapper.appKnowListPage(condition, start, size),
				appMapper.appKnowCount(condition));
	}

	/**
	 * 按条件获得单个填表须知
	 * 
	 * @param condition
	 * @return
	 */
	public ApplyKnow getApplyKnow(String condition) {
		return appMapper.getApplyKnow(condition);
	}

	/**
	 * 新增填表须知
	 * 
	 * @param appknow
	 * @throws Exception
	 */
	public void addAppKnow(ApplyKnow appknow) throws Exception {
		appMapper.addAppKnow(appknow);
	}

	/**
	 * 修改填表须知
	 * 
	 * @param appknow
	 * @throws Exception
	 */
	public void updateAppKnow(ApplyKnow appknow) throws Exception {
		appMapper.updateAppKnow(appknow);
	}

	/**
	 * 删除填表须知
	 * 
	 * @param condition
	 * @throws Exception
	 */
	public void deleteAppKnow(String condition) throws Exception {
		appMapper.deleteAppKnow(condition);
	}

	/**
	 * 按条件获得单个表单处理意见
	 * 
	 * @param condition
	 * @return
	 */
	public CheckComment getCheckComment(String condition) {
		return appMapper.getCheckComment(condition);
	}
	
	/**
	 * 按条件获得表单处理意见列表
	 * 
	 * @param condition
	 * @return
	 */
	public List<CheckComment> getCheckCommentList(String condition) {
		return appMapper.getCheckCommentList(condition);
	}

	@Transactional
	public void addCheckComment(CheckComment comment, String isupdate) throws Exception {
		appMapper.checkApplication(comment.getState(), comment.getFlow_num(), isupdate);
		appMapper.addCheckComment(comment);
	}

	public Page getRecyclingApplicationPage(String condition, int start,
			int size) {
		return new Page(appMapper.getRecyclingApplication(condition, start,
				size), appMapper.countApplicationBySQL(condition));
	}

	/**
	 * 回收站恢复表单
	 * 
	 * @param obj
	 *            表单对象类型
	 * @param condition
	 * @throws Exception
	 */
	@Transactional
	public void recyclingByBackApplication(Integer state, String condition)
			throws Exception {
		appMapper.updateApplicationDeleteFlag(state, condition);
	}

	/**
	 * 回收站彻底删除 只是将application表中此表单的信息删除
	 * 
	 * @param obj
	 *            表单对象类型
	 * @param condition
	 * @throws Exception
	 */
	@Transactional
	public void recyclingByHardApplication(Application app) throws Exception {
		//删除application表
				appMapper.hardDeleteApplication(" where flow_num='"+app.getFlow_num()+"'");
				//删除person表
				psMapper.deletePerson(" where flow_num='"+app.getFlow_num()+"'");
				//删除checkcomment表
				appMapper.deleteCheckComment(" where flow_num='"+app.getFlow_num()+"'");
				if(null != app.getApp_type() && app.getApp_type().equals("z11")) {
					//copyright_person  partbyadd    z11
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					cpMapper.deletePartByAdd(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z11 where flow_num='"+app.getFlow_num()+"'");
					
				} else if(null != app.getApp_type() && app.getApp_type().equals("z21")) {
					//copyright_person  partbyadd    z21
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					cpMapper.deletePartByAdd(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z21 where flow_num='"+app.getFlow_num()+"'");
					
				} else if(null != app.getApp_type() && app.getApp_type().equals("z31")) {
					//copyright_person  author    z11
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					z11Mapper.deleteAuthor(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z11 where flow_num='"+app.getFlow_num()+"'");
					
				} else if(null != app.getApp_type() && app.getApp_type().equals("z41")) {
					//copyright_person    z21
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z21 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("z61")) {
					//content_info   z60
					infoMapper.deleteInfo(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z60 where flow_num='"+app.getFlow_num()+"'");
					
				} else if(null != app.getApp_type() && app.getApp_type().equals("z62")) {
					//z60
					appMapper.deleteObjForm(" z60 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("z63")) {
					// z60
					appMapper.deleteObjForm(" z60 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("z64")) {
					//partbyadd  z60
					cpMapper.deletePartByAdd(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z60 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("z71")) {
					//copyright_person  record tracksinfo z71
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					z71Mapper.deleteRecor(" where flow_num='"+app.getFlow_num()+"'");
					z71Mapper.deleteTracks(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z71 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("z72")) {
					//copyright_person  record movies z71
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					z71Mapper.deleteRecor(" where flow_num='"+app.getFlow_num()+"'");
					z71Mapper.deleteMovies(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z71 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("z73")) {
					//z73_5
					appMapper.deleteObjForm(" z73_5 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("z74")) {
					//z73_5
					appMapper.deleteObjForm(" z73_5 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("z75")) {
					//content_info z73_5
					infoMapper.deleteInfo(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z73_5 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("r11")) {
					//copyright_person  r11
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" r11 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("r21")) {
					//copyright_person  r21
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" r21 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("r41")) {
					//content_info  r41
					infoMapper.deleteInfo(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" r41 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("r42")) {
					//r42
					appMapper.deleteObjForm(" r42 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("r43")) {
					//r43_4
					appMapper.deleteObjForm(" r43_4 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("r44")) {
					//r43_4
					appMapper.deleteObjForm(" r43_4 where flow_num='"+app.getFlow_num()+"'");
				} else if(null != app.getApp_type() && app.getApp_type().equals("r45")) {
					appMapper.deleteObjForm(" r43_4 where flow_num='"+app.getFlow_num()+"'");
					//r43_4
				} else if(null != app.getApp_type() && app.getApp_type().equals("z51")) {
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" z51 where flow_num='"+app.getFlow_num()+"'");
					//z51
				} else if(null != app.getApp_type() && app.getApp_type().equals("z52")) {
					cpMapper.deletePartByAdd(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" r43_4 where flow_num='"+app.getFlow_num()+"'");
					//z52
				} else if(null != app.getApp_type() && app.getApp_type().equals("z53")) {
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					infoMapper.deleteInfo(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" r41 where flow_num='"+app.getFlow_num()+"'");
					//z53
				} else if(null != app.getApp_type() && app.getApp_type().equals("z54")) {
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" r41 where flow_num='"+app.getFlow_num()+"'");
					//z54
				} else if(null != app.getApp_type() && app.getApp_type().equals("z55")) {
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" r41 where flow_num='"+app.getFlow_num()+"'");
					//z55
				} else if(null != app.getApp_type() && app.getApp_type().equals("z56")) {
					cpMapper.deleteCopyrightPerson(" where flow_num='"+app.getFlow_num()+"'");
					infoMapper.deleteInfo(" where flow_num='"+app.getFlow_num()+"'");
					appMapper.deleteObjForm(" r41 where flow_num='"+app.getFlow_num()+"'");
					//z56
				}
	}

	public void updateAppnResource(String condition)
			throws Exception {
		appMapper.updateApplicationCondition(condition);
	}
	
	@Transactional
	public void addZ41(Z21 z41, List<CopyrightPerson> cps1,
			List<CopyrightPerson> cps2, Person sp, Person dp, Application app) {
		// 版权拥有者
		for (CopyrightPerson cp : cps1) {
			cpMapper.addCopyrightPerson(cp);
		}
		// 版权转让者
		for (CopyrightPerson cp : cps2) {
			cpMapper.addCopyrightPerson(cp);
		}
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z21Mapper.addZ21(z41);
		appMapper.addApplication(app);
	}
	
	@Transactional
	public void updateZ41(Z21 z41, List<CopyrightPerson> cps1,
			List<CopyrightPerson> cps2, Person sp, Person dp, Application app) {
		cpMapper.deleteCopyrightPerson(" where flow_num = '"
				+ z41.getFlow_num() + "'");
		// 版权拥有者
		for (CopyrightPerson cp : cps1) {
			cpMapper.addCopyrightPerson(cp);
		}
		// 版权转让者
		for (CopyrightPerson cp : cps2) {
			cpMapper.addCopyrightPerson(cp);
		}
		psMapper.deletePerson(" where flow_num ='" + z41.getFlow_num() + "'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z21Mapper.updateZ21(z41);
		appMapper.updateApplicationTwo(app);
	}
	
	
	@Transactional
	public void addZ31(Z11 z31, List<CopyrightPerson> cps,
			List<Author> authors, Person sp, Person dp, Application app) {
		// 版权拥有者
		for (CopyrightPerson cp : cps) {
			cpMapper.addCopyrightPerson(cp);
		}
		// 版权转让者
		for (Author author : authors) {
			z11Mapper.addAuthor(author);
		}
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z11Mapper.addZ11(z31);
		appMapper.addApplication(app);
	}
	
	@Transactional
	public void updateZ31(Z11 z31, List<CopyrightPerson> cps,
			List<Author> autors, Person sp, Person dp, Application app) {
		// 版权拥有者
		cpMapper.deleteCopyrightPerson(" where flow_num = '"
				+ z31.getFlow_num() + "'");
		for (CopyrightPerson cp : cps) {
			cpMapper.addCopyrightPerson(cp);
		}
		
		z11Mapper.deleteAuthor(" where flow_num='" + z31.getFlow_num() + "'");
		for (Author author : autors) {
			z11Mapper.addAuthor(author);
		}
		
		psMapper.deletePerson(" where flow_num ='" + z31.getFlow_num() + "'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z11Mapper.updateZ11Two(z31);
		appMapper.updateApplicationTwo(app);
	}
	
	@Transactional
	public void addZ73(Z73_5 z73, Person sp, Person dp, Application app) {
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z11Mapper.addZ73_5(z73);
		appMapper.addApplication(app);
	}
	
	@Transactional
	public void updateZ73(Z73_5 z73, Person sp, Person dp, Application app) {
		psMapper.deletePerson(" where flow_num ='" + z73.getFlow_num() + "'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		z11Mapper.updateZ73_5(z73);
		appMapper.updateApplicationTwo(app);
	}
	
	public Map<String, Object> getZ73(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z73", z11Mapper.getZ73_5(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}
	
	@Transactional
	public void addZ75(Z73_5 z75, Person sp, Person dp, Application app, List<ContentInfo> infos) {
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		for (ContentInfo info : infos) {
			infoMapper.addContentInfo(info);
		}
		z11Mapper.addZ73_5(z75);
		appMapper.addApplication(app);
	}
	
	@Transactional
	public void updateZ75(Z73_5 z75, Person sp, Person dp, Application app, List<ContentInfo> infos) {
		psMapper.deletePerson(" where flow_num ='" + z75.getFlow_num() + "'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		infoMapper.deleteInfo(" where flow_num = '"+z75.getFlow_num()+"'");
		for (ContentInfo info : infos) {
			infoMapper.addContentInfo(info);
		}
		z11Mapper.updateZ73_5(z75);
		appMapper.updateApplicationTwo(app);
	}
	
	public Map<String, Object> getZ75(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z75", z11Mapper.getZ73_5(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("infos", infoMapper.getContentInfoByFlowNum(flow_num));
		return map;
	}
	
	@Transactional
	public void addR11(R11 r11, Person sp, Person dp, Application app, List<CopyrightPerson> cps) {
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		for(CopyrightPerson copy: cps) {
			cpMapper.addCopyrightPerson(copy);
		}
		r11Mapper.insertR11(r11);
		appMapper.addApplication(app);
	}
	
	@Transactional
	public void updateR11(R11 r11, Person sp, Person dp, Application app, List<CopyrightPerson> cps) {
		psMapper.deletePerson(" where flow_num = '"+r11.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		cpMapper.deleteCopyrightPerson(" where flow_num = '"+r11.getFlow_num()+"'");
		for(CopyrightPerson copy: cps) {
			cpMapper.addCopyrightPerson(copy);
		}
		r11Mapper.updateR11(r11);
		appMapper.updateApplicationTwo(app);
	}
	
	public Map<String, Object> getR11(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("r11", r11Mapper.getR11(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("cps",cpMapper.getCopyrightPersonsByType(flow_num, 1));
		return map;
	}

	@Transactional
	public void addZ71(Z71 z71, Person sp, Person dp, Application app, 
			List<CopyrightPerson> cps, List<RecordProduct> records) {
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		if(cps != null) {
			for(CopyrightPerson copy: cps) {
				cpMapper.addCopyrightPerson(copy);
			}
		}
		for(RecordProduct record : records) {
			z71Mapper.addRecord(record);
		}
		z71Mapper.insertZ71(z71);
		appMapper.addApplication(app);
	}
	
	@Transactional
	public void updateZ71(Z71 z71, Person sp, Person dp, Application app,
			List<CopyrightPerson> cps, List<RecordProduct> records, List<String> deleteRecordId) {
		psMapper.deletePerson(" where flow_num ='"+z71.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		cpMapper.deleteCopyrightPerson(" where flow_num = '"+z71.getFlow_num()+"'");
		if(cps != null) {
		for(CopyrightPerson copy: cps) {
			cpMapper.addCopyrightPerson(copy);
		 }
		}
		//录音制品信息
		for(String deleteId : deleteRecordId) {
			z71Mapper.deleteRecords(deleteId);
			z71Mapper.deleteTracksInfos(deleteId);
		}
		for(RecordProduct record : records) {
			if(record.getMethodWay()==1) {
				z71Mapper.addRecord(record);
			} else {
				z71Mapper.updateRecord(record);
			}
		}
		z71Mapper.updateZ71(z71);
		appMapper.updateApplicationTwo(app);
	}
	
	
	@Transactional
	public void addZ72(Z71 z72, Person sp, Person dp, Application app, 
			List<CopyrightPerson> cps, RecordProduct record) {
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		if(cps != null) {
			for(CopyrightPerson copy: cps) {
				cpMapper.addCopyrightPerson(copy);
			}
		}
	    z71Mapper.addRecord(record);
		z71Mapper.insertZ71(z72);
		appMapper.addApplication(app);
	}
	
	@Transactional
	public void updateZ72(Z71 z72, Person sp, Person dp, Application app, 
			List<CopyrightPerson> cps, RecordProduct record) {
		psMapper.deletePerson(" where flow_num ='"+z72.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		cpMapper.deleteCopyrightPerson(" where flow_num = '"+z72.getFlow_num()+"'");
		if(cps != null) {
		for(CopyrightPerson copy: cps) {
			cpMapper.addCopyrightPerson(copy);
		 }
		}
		z71Mapper.updateRecord(record);
		z71Mapper.updateZ71(z72);
		appMapper.updateApplicationTwo(app);
	}
	
	public List<MovieInfos> getMovies(String condition) {
		return z71Mapper.getMovies(condition);
	}
	
	@Transactional
	public void addMovies(List<MovieInfos> movies, String langType, String isOffical, String flow_num) {
		z71Mapper.addMoviesUpdateZ71(langType,isOffical,flow_num);
		z71Mapper.deleteMovies(" where flow_num = '"+flow_num+"'");
		for(MovieInfos movie : movies) {
			z71Mapper.addMovieInfos(movie);
		}
		try {
			appMapper.updateApplicationState(2, flow_num);
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
   public Map<String, Object> getZ71(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z71", z71Mapper.getZ71(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("cps",cpMapper.getCopyrightPersonsByType(flow_num, 1));
		map.put("records", z71Mapper.getRecords(" where flow_num ='"+flow_num+"'"));
		return map;
   }
   public Map<String, Object> getZ72(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z72", z71Mapper.getZ71(flow_num));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("cps",cpMapper.getCopyrightPersonsByType(flow_num, 1));
		map.put("record", z71Mapper.getOneRecord(" where flow_num ='"+flow_num+"'"));
		return map;
  }
   
   public RecordProduct getRecord(String condition) {
	   return z71Mapper.getOneRecord(condition);
   }
   public List<TracksInfos> getTracksInfos(String condition) {
		return z71Mapper.getTracksInfos(condition);
	}
   
   public TracksInfos getOneTracks(String condition) {
	   return z71Mapper.getOneTracks(condition);
   }
   
   @Transactional
   public void addTracksInfos(List<TracksInfos> tracks, String recordId) {
	   z71Mapper.deleteTracksInfos(recordId);
	   for(TracksInfos track : tracks) {
		   z71Mapper.addTracksInfos(track);
	   }
   }
   
   @Transactional
   public void addR21(R21 r21,List<CopyrightPerson> cps1, List<CopyrightPerson> cps2,
		   Person sp, Person dp, Application app) {
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		
		for(CopyrightPerson copy1: cps1) {
				cpMapper.addCopyrightPerson(copy1);
		}
		for(CopyrightPerson copy2: cps2) {
			cpMapper.addCopyrightPerson(copy2);
	   }
		r11Mapper.insertR21(r21);
		appMapper.addApplication(app);
   }
   
   @Transactional
   public void updateR21(R21 r21,List<CopyrightPerson> cps1, List<CopyrightPerson> cps2,
		   Person sp, Person dp, Application app) {
	   psMapper.deletePerson(" where flow_num ='"+r21.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		cpMapper.deleteCopyrightPerson(" where flow_num = '"+r21.getFlow_num()+"'");
		for(CopyrightPerson copy1: cps1) {
				cpMapper.addCopyrightPerson(copy1);
		}
		for(CopyrightPerson copy2: cps2) {
			cpMapper.addCopyrightPerson(copy2);
	   }
		r11Mapper.updateR21(r21);
		appMapper.updateApplicationTwo(app);
   }
   
    
   public Map<String, Object> getR21(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("r21", r11Mapper.getR21(flow_num));
		map.put("cps1", cpMapper.getCopyrightPersonsByType(flow_num, 1)); // 版权拥有者列表
		map.put("cps2", cpMapper.getCopyrightPersonsByType(flow_num, 2)); // 版权受让者列表
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}
   
   @Transactional
   public void addR41(R41 r41, List<ContentInfo> infos, Person sp, Person dp, 
		   Application app){
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		
		for(ContentInfo info: infos) {
			infoMapper.addContentInfo(info);
		}
		r415Mapper.addR41(r41);
		appMapper.addApplication(app);
   }
   
   @Transactional
   public void updateR41(R41 r41, List<ContentInfo> infos, Person sp, Person dp, 
		   Application app){
	    psMapper.deletePerson(" where flow_num='"+r41.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		infoMapper.deleteInfo(" where flow_num='"+r41.getFlow_num()+"'");
		for(ContentInfo info: infos) {
			infoMapper.addContentInfo(info);
		}
		r415Mapper.updateR41(r41);
		appMapper.updateApplicationTwo(app);
   }
   
   public Map<String, Object> getR41(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("r41", r415Mapper.getR41(" where flow_num = '"+flow_num+"'"));
		map.put("infos", infoMapper.getContentInfoByFlowNum(flow_num)); // 
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}
   
   @Transactional
   public void addR42(R42 r42, Person sp, Person dp, 
		   Application app){
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		r415Mapper.addR42(r42);
		appMapper.addApplication(app);
   }
   
   @Transactional
   public void updateR42(R42 r42, Person sp, Person dp, 
		   Application app){
	    psMapper.deletePerson(" where flow_num='"+r42.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		r415Mapper.updateR42(r42);
		appMapper.updateApplicationTwo(app);
   }
   
   public Map<String, Object> getR42(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("r42", r415Mapper.getR42(" where flow_num = '"+flow_num+"'"));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}
   
   @Transactional
   public void addR43_4(R43_4 r43_4, Person sp, Person dp, 
		   Application app){
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		r415Mapper.addR43_4(r43_4);
		appMapper.addApplication(app);
   }
   
   @Transactional
   public void updateR43_4(R43_4 r43_4, Person sp, Person dp, 
		   Application app){
	    psMapper.deletePerson(" where flow_num='"+r43_4.getFlow_num()+"'");
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		r415Mapper.updateR43_4(r43_4);
		appMapper.updateApplicationTwo(app);
   }
   
   public Map<String, Object> getR43_4(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("r43_4", r415Mapper.getR43_4(" where flow_num = '"+flow_num+"'"));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		return map;
	}
   
   public Z71 geOneZ72(String flow_num) {
	   return z71Mapper.getZ71(flow_num);
   }
   
   @Transactional
   public void addZ52(R43_4 z52, Person sp, Person dp, Application app, 
		   List<PartByAdd> parts1, List<PartByAdd> parts2) {
	   psMapper.addPerson(sp);
	   r415Mapper.addR43_4(z52);
	   if(dp != null) {
			psMapper.addPerson(dp);
	   }
	   for(PartByAdd part1 : parts1) {
		   cpMapper.addPartByAdd(part1);
	   }
	   for(PartByAdd part2 : parts2) {
		   cpMapper.addPartByAdd(part2);
	   }
	   appMapper.addApplication(app);
   }
   
   @Transactional
   public void updateZ52(R43_4 z52, Person sp, Person dp, Application app, List<PartByAdd> parts1, 
		   List<PartByAdd> parts2) {
	   r415Mapper.updateR43_4(z52);
	   psMapper.deletePerson(" where flow_num='"+z52.getFlow_num()+"'");
	   psMapper.addPerson(sp);
	   if(dp != null) {
			psMapper.addPerson(dp);
	   }
	   cpMapper.deletePartByAdd(" where flow_num='"+z52.getFlow_num()+"'");
	   for(PartByAdd part1 : parts1) {
		   cpMapper.addPartByAdd(part1);
	   }
	   for(PartByAdd part2 : parts2) {
		   cpMapper.addPartByAdd(part2);
	   }
	   appMapper.updateApplicationTwo(app);
   }
   
   @Transactional
   public void updateZ536(R41 z536, Person sp, Person dp, Application app, List<CopyrightPerson> cps1,
		   List<CopyrightPerson> cps2, List<CopyrightPerson> cps3, List<ContentInfo> infos) {
	   psMapper.deletePerson(" where flow_num='"+z536.getFlow_num()+"'");
	 		psMapper.addPerson(sp);
	 		if(dp != null) {
	 			psMapper.addPerson(dp);
	 		}
	 		cpMapper.deleteCopyrightPerson(" where flow_num= '"+z536.getFlow_num()+"'");
	 		for(CopyrightPerson cp1 : cps1) {
	 			cpMapper.addCopyrightPerson(cp1);
	 		}
	 		for(CopyrightPerson cp2 : cps2) {
	 			cpMapper.addCopyrightPerson(cp2);
	 		}
	 		if(null != cps3) {
	 			for(CopyrightPerson cp3 : cps3) {
	 				cpMapper.addCopyrightPerson(cp3);
	 			}
	 		}
	 		infoMapper.deleteInfo(" where flow_num = '"+z536.getFlow_num()+"'");
	 		if(null != infos) {
	 		 for(ContentInfo info: infos) {
	 			infoMapper.addContentInfo(info);
	 		 }
	 		}
	 		r415Mapper.updateR41(z536);
	 		appMapper.updateApplicationTwo(app);
   }
   
   @Transactional
   public void addZ536(R41 z536, Person sp, Person dp, Application app, List<CopyrightPerson> cps1,
		   List<CopyrightPerson> cps2, List<CopyrightPerson> cps3, List<ContentInfo> infos) {
		psMapper.addPerson(sp);
		if(dp != null) {
			psMapper.addPerson(dp);
		}
		for(CopyrightPerson cp1 : cps1) {
			cpMapper.addCopyrightPerson(cp1);
		}
		for(CopyrightPerson cp2 : cps2) {
			cpMapper.addCopyrightPerson(cp2);
		}
		if(null != cps3) {
			for(CopyrightPerson cp3 : cps3) {
				cpMapper.addCopyrightPerson(cp3);
			}
		}
		if(null != infos) {
		 for(ContentInfo info: infos) {
			infoMapper.addContentInfo(info);
		 }
		}
		r415Mapper.addR41(z536);
		appMapper.addApplication(app);
   }
   
   public Map<String, Object> getZ536(String flow_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("z536", r415Mapper.getR41(" where flow_num = '"+flow_num+"'"));
		map.put("sqr", psMapper.getSqrPerson(flow_num));
		map.put("dlr", psMapper.getDlrPerson(flow_num));
		map.put("cps1", cpMapper.getCopyrightPersonsByType(flow_num, 1)); //出质人信息
		map.put("cps2", cpMapper.getCopyrightPersonsByType(flow_num, 2)); //质权人信息
		map.put("cps3", cpMapper.getCopyrightPersonsByType(flow_num, 3)); //质权人信息
		map.put("infos", infoMapper.getContentInfoByFlowNum(flow_num));
		return map;
	} 
   
   public List<Application> getApplicationStateMap(String condition) {
	   List<Application> list = appMapper.getApplicationStateMap(condition);
	   return list;
   }
}

