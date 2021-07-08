package com.exe.dto;

public class CommentDTO {

	private String pageUserEmail;
	int num;
	private String nickname;
	private String bcomment;
	private int comment_num;
	
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBcomment() {
		return bcomment;
	}
	public void setBcomment(String bcomment) {
		this.bcomment = bcomment;
	}
	
}
