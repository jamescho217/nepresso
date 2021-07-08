package com.exe.dto;

public class ImageFileDTO {

	private String pageUserEmail;
	private int num;
	private String saveFileName;
	private String originalFileName;
	
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
	public String getSaveFileName() {
		return saveFileName;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	
}
