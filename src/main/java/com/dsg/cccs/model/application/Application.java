package com.dsg.cccs.model.application;

import java.util.Date;

import com.dsg.cccs.utils.SystemUtils;

/**此表以后所有表单都要在这里注册
 * @ClassName: Application
 * @Description:
 * @author proteus modoucc_gmail_com
 * @date 2011-8-6 上午7:06:08
 */
public class Application {
	private Long id;
	private String flow_num;// 流水号
	private String app_name;// 作品名称
	private String name; // 权利人
	/**
	 * 1申请表未完成,2申请表已提交,3申请表未通过,4递交材料中
	 * 5初审中,6初审未通过,7缴费中,8复审中,9复审未通过
	 * 10终审中,11终审未通过,12证书已发放
	 */
	private Integer state; //state只用来记录表单状态，不参与表单是否能够被修改
	private String answer; //如果是ok表示此表单已被后台操作人员审核一次(与审核通过否无关)，若还未审核则为空
	private Date create_time;
	private Date update_time;
	private Integer type;// 登記表总类型(1作品著作权相关登记,2计算机软件著作权相关登记,3=作品著作权质权相关登记,4=计算机著作权质权相关登记)
	private String app_type; // 登記表的具体類型
	private Long publish_id; // 發佈者的ID
    private Integer deleteFlag;//删除标志，1表示正常，-1表示已经删除
    private Integer area;//地区  0=无分中心覆盖区域
    private Date delete_time;//删除表单时间
    
    private String updateTimeStr;
    private String stateStr;
    
    private String isupdate;//关闭开放修改权限 默认为yes表示可以，no表示不可以
    
    
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the flow_num
	 */
	public String getFlow_num() {
		return flow_num;
	}

	/**
	 * @param flow_num
	 *            the flow_num to set
	 */
	public void setFlow_num(String flow_num) {
		this.flow_num = flow_num;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	/**
	 * @return the app_name
	 */
	public String getApp_name() {
		return app_name;
	}

	/**
	 * @param app_name
	 *            the app_name to set
	 */
	public void setApp_name(String app_name) {
		this.app_name = app_name;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the create_time
	 */
	public Date getCreate_time() {
		return create_time;
	}

	/**
	 * @param create_time
	 *            the create_time to set
	 */
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	/**
	 * @return the update_time
	 */
	public Date getUpdate_time() {
		return update_time;
	}

	/**
	 * @param update_time
	 *            the update_time to set
	 */
	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}

	/**
	 * @return the app_type
	 */
	public String getApp_type() {
		return app_type;
	}

	/**
	 * @param app_type
	 *            the app_type to set
	 */
	public void setApp_type(String app_type) {
		this.app_type = app_type;
	}

	/**
	 * @return the publish_id
	 */
	public Long getPublish_id() {
		return publish_id;
	}

	/**
	 * @param publish_id
	 *            the publish_id to set
	 */
	public void setPublish_id(Long publish_id) {
		this.publish_id = publish_id;
	}

	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}


	public Integer getArea() {
		return area;
	}

	public void setArea(Integer area) {
		this.area = area;
	}

	public Date getDelete_time() {
		return delete_time;
	}

	public void setDelete_time(Date delete_time) {
		this.delete_time = delete_time;
	}

	public String getUpdateTimeStr() {
		
		if(update_time != null) {
			return updateTimeStr=SystemUtils.dateFormatString(update_time);
		}
		return updateTimeStr;
	}

	public String getStateStr() {
		if(state != null) {
			if(state == 1) {
				return stateStr = "申请表未完成";
			}
			if(state == 2) {
				return stateStr = "申请表已提交";
			}
			if(state == 3) {
				return stateStr = "申请表未通过";
			}
			if(state == 4) {
				return stateStr = "递交材料中";
			}
			if(state == 5) {
				return stateStr = "初审中";
			}
			if(state == 6) {
				return stateStr = "初审未通过";
			}
			if(state == 7) {
				return stateStr = "缴费中";
			}
			if(state == 8) {
				return stateStr = "复审中";
			}
			if(state == 9) {
				return stateStr = "复审未通过";
			}
			if(state == 10) {
				return stateStr = "终审中";
			}
			
			if(state == 11) {
				return stateStr = "终审未通过";
			}
			if(state == 12) {
				return stateStr = "证书已发放";
			}
		}
		return stateStr;
	}

	public String getIsupdate() {
		return isupdate;
	}

	public void setIsupdate(String isupdate) {
		this.isupdate = isupdate;
	}

	

}
