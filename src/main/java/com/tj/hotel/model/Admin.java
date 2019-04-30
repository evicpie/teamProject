package com.tj.hotel.model;

public class Admin {

	// 멤버 변수 필드
	private String adminId;
	private String adminPw;
	private String adminSection; // adminName -> adminSection으로 변경
	
	// Constructors
	public Admin() {
	
	}

	public Admin(String adminId, String adminPw, String adminSection) {
		super();
		this.adminId = adminId;
		this.adminPw = adminPw;
		this.adminSection = adminSection;
	}

	// Getter & Setter Methods
	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPw() {
		return adminPw;
	}

	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}

	public String getAdminSection() {
		return adminSection;
	}

	public void setAdminSection(String adminSection) {
		this.adminSection = adminSection;
	}


	// toString() Override
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminPw=" + adminPw + ", adminSection=" + adminSection + "]";
	}
	
}
