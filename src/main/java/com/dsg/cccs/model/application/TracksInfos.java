package com.dsg.cccs.model.application;

/**
 * z71,录音制品曲目信息
 * @author panguixiang
 *
 */
public class TracksInfos {
	private Long id;
	private String flow_num;
	private String recordId;//RecordProduct的主键
	private String title_;//曲名
	private String recordName;
	private String artist_;//演唱（奏）者
	private String songWriter_;// 曲作者 
	private String wordsAuthor_;//词作者 
	private String duration_;//曲长
	private String remark_;//备注
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFlow_num() {
		return flow_num;
	}
	public void setFlow_num(String flow_num) {
		this.flow_num = flow_num;
	}
	public String getRecordId() {
		return recordId;
	}
	public void setRecordId(String recordId) {
		this.recordId = recordId;
	}
	public String getTitle_() {
		return title_;
	}
	public void setTitle_(String title_) {
		this.title_ = title_;
	}
	public String getRecordName() {
		return recordName;
	}
	public void setRecordName(String recordName) {
		this.recordName = recordName;
	}
	public String getArtist_() {
		return artist_;
	}
	public void setArtist_(String artist_) {
		this.artist_ = artist_;
	}
	public String getSongWriter_() {
		return songWriter_;
	}
	public void setSongWriter_(String songWriter_) {
		this.songWriter_ = songWriter_;
	}
	public String getWordsAuthor_() {
		return wordsAuthor_;
	}
	public void setWordsAuthor_(String wordsAuthor_) {
		this.wordsAuthor_ = wordsAuthor_;
	}
	public String getDuration_() {
		return duration_;
	}
	public void setDuration_(String duration_) {
		this.duration_ = duration_;
	}
	public String getRemark_() {
		return remark_;
	}
	public void setRemark_(String remark_) {
		this.remark_ = remark_;
	}
	
	
}
