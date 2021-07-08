package com.exe.dto;

public class ProfileDTO {

	private String pageUserEmail;
	private String pageUserName;
	private String profileImage;
	private int boardNum;
	private int follower;
	private String nickname;
	
	public String getPageUserEmail() {
		return pageUserEmail;
	}
	public void setPageUserEmail(String pageUserEmail) {
		this.pageUserEmail = pageUserEmail;
	}
	public String getPageUserName() {
		return pageUserName;
	}
	public void setPageUserName(String pageUserName) {
		this.pageUserName = pageUserName;
	}
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public int getFollower() {
		return follower;
	}
	public void setFollower(int follower) {
		this.follower = follower;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}	
	
}
