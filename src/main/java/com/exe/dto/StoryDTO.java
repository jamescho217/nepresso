package com.exe.dto;

public class StoryDTO {

	private String pageUserEmail;
	private int num;
	private String subject;
	private String content;
	private int likecount;
	private String registration;
	private String tag;
	
	public String getPageUserEmail() {
		return pageUserEmail;
	}
	public void setPageUserEmail(String pageUserEmail) {
		this.pageUserEmail = pageUserEmail;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getLikecount() {
		return likecount;
	}
	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
}
