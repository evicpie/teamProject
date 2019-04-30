package com.tj.hotel.model;

import java.sql.Timestamp;

public class Support {
	private int supportCode;
	private String guestId;
	private String adminId;
	private String supportTitle;
	private String supportContent;
	private String supportFile;
	private Timestamp supportDate;
	private String supportIp;
	private int supportGroup;
	private int supportStep;
	private int supportIndent;
	private int startRow;
	private int endRow;
	
	public Support() {}
	public Support(int supportCode, String guestId, String adminId, String supportTitle, String supportContent,
			String supportFile, Timestamp supportDate, String supportIp, int supportGroup, int supportStep,
			int supportIndent, int startRow, int endRow) {
		this.supportCode = supportCode;
		this.guestId = guestId;
		this.adminId = adminId;
		this.supportTitle = supportTitle;
		this.supportContent = supportContent;
		this.supportFile = supportFile;
		this.supportDate = supportDate;
		this.supportIp = supportIp;
		this.supportGroup = supportGroup;
		this.supportStep = supportStep;
		this.supportIndent = supportIndent;
		this.startRow = startRow;
		this.endRow = endRow;
	}
	public int getSupportCode() {
		return supportCode;
	}
	public void setSupportCode(int supportCode) {
		this.supportCode = supportCode;
	}
	public String getGuestId() {
		return guestId;
	}
	public void setGuestId(String guestId) {
		this.guestId = guestId;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getSupportTitle() {
		return supportTitle;
	}
	public void setSupportTitle(String supportTitle) {
		this.supportTitle = supportTitle;
	}
	public String getSupportContent() {
		return supportContent;
	}
	public void setSupportContent(String supportContent) {
		this.supportContent = supportContent;
	}
	public String getSupportFile() {
		return supportFile;
	}
	public void setSupportFile(String supportFile) {
		this.supportFile = supportFile;
	}
	public Timestamp getSupportDate() {
		return supportDate;
	}
	public void setSupportDate(Timestamp supportDate) {
		this.supportDate = supportDate;
	}
	public String getSupportIp() {
		return supportIp;
	}
	public void setSupportIp(String supportIp) {
		this.supportIp = supportIp;
	}
	public int getSupportGroup() {
		return supportGroup;
	}
	public void setSupportGroup(int supportGroup) {
		this.supportGroup = supportGroup;
	}
	public int getSupportStep() {
		return supportStep;
	}
	public void setSupportStep(int supportStep) {
		this.supportStep = supportStep;
	}
	public int getSupportIndent() {
		return supportIndent;
	}
	public void setSupportIndent(int supportIndent) {
		this.supportIndent = supportIndent;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	@Override
	public String toString() {
		return "Support [supportCode=" + supportCode + ", guestId=" + guestId + ", adminId=" + adminId
				+ ", supportTitle=" + supportTitle + ", supportContent=" + supportContent + ", supportFile="
				+ supportFile + ", supportDate=" + supportDate + ", supportIp=" + supportIp + ", supportGroup="
				+ supportGroup + ", supportStep=" + supportStep + ", supportIndent=" + supportIndent + ", startRow="
				+ startRow + ", endRow=" + endRow + "]";
	}
}
