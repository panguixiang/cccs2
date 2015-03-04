package com.dsg.cccs.model;

/**
 * @ClassName: ApplicationArticle
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-8 上午1:28:20
 * 
 */
public class ApplicationArticle {
	private Long id;
	private String type;
	private String title;
	private String content;
	private Integer num_id;
	private String typeStr;
	//版权服务对应模块 1=作品著作权相关登记 2=计算机软件相关登记 3=作品著作权质权相关登记 4=计算机软件著作权质权相关登记
	private Integer objtype;

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
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content
	 *            the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the num_id
	 */
	public Integer getNum_id() {
		return num_id;
	}

	/**
	 * @param num_id
	 *            the num_id to set
	 */
	public void setNum_id(Integer num_id) {
		this.num_id = num_id;
	}

	public Integer getObjtype() {
		return objtype;
	}

	public void setObjtype(Integer objtype) {
		this.objtype = objtype;
	}

	public String getTypeStr() {
		if(type != null) {
			if(type.equals("z11")) {
				typeStr = "作品著作权登记申请";
			} else if(type.equals("z21")){
				typeStr = "著作权合同备案申请";
			} else if(type.equals("z31")){
				typeStr = "与著作权有关权利事项登记申请";
			} else if(type.equals("z41")){
				typeStr = "重印国外期刊合同登记申请";
			} else if(type.equals("z61")){
				typeStr = "作品著作权和合同变更或补发登记申请";
			} else if(type.equals("z62")){
				typeStr = "撤销作品著作权和合同登记申请";
			} else if(type.equals("z63")){
				typeStr = "撤回作品著作权和合同登记申请";
			} else if(type.equals("z64")){
				typeStr = "补发或更换登记证书申请";
			} else if(type.equals("z71")){
				typeStr = "出版境外音像制品合同登记申请-录音制品";
			} else if(type.equals("z72")){
				typeStr = "出版境外音像制品合同登记申请-影视作品";
			} else if(type.equals("z73")){
				typeStr = "撤销出版境外音像制品合同登记申请";
			} else if(type.equals("z74")){
				typeStr = "撤回出版境外音像制品合同登记申请";
			} else if(type.equals("z75")){
				typeStr = "变更出版境外音像制品合同登记申请";
			} else if(type.equals("r11")){
				typeStr = "计算机软件著作权登记申请";
			} else if(type.equals("r21")){
				typeStr = "计算机软件著作权转让或专有许可合同登记申请";
			} else if(type.equals("r41")){
				typeStr = "软件登记事项变更或补充申请";
			} else if(type.equals("r42")){
				typeStr = "撤销计算机软件登记请求";
			} else if(type.equals("r43")){
				typeStr = "撤回计算机软件登记申请";
			} else if(type.equals("r44")){
				typeStr = "撤销或放弃计算机软件登记申请";
			} else if(type.equals("r45")){
				typeStr = "补发或者换发软件登记证书申请";
			} else if(type.equals("z51")){
				typeStr = "著作权质权登记申请";
			} else if(type.equals("z52")){
				typeStr = "著作权质权撤销登记申请";
			} else if(type.equals("z53")){
				typeStr = "著作权质权变更登记申请";
			} else if(type.equals("z54")){
				typeStr = "注销著作权质权登记申请";
			} else if(type.equals("z55")){
				typeStr = "撤回著作权质权登记申请";
			} else if(type.equals("z56")){
				typeStr = "转让著作权质权登记事项申请";
			} 
		}
		return typeStr;
	}

}
