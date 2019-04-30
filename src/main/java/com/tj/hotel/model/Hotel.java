package com.tj.hotel.model;

public class Hotel {
   // 호텔 테이블 필드
   private String hotelCode;
   private String adminId;
   private String hotelName;
   private String hotelAddress;
   private String hotelPhone;
   private String hotelImg_1;
   private String hotelImg_2;
   private String hotelImg_3;
   private String hotelNotice;
   private String hotelDetail;
   private double hotelScore;
   
   public Hotel() {}
   public Hotel(String hotelCode, String adminId, String hotelName, String hotelAddress, String hotelPhone,
			String hotelImg_1, String hotelImg_2, String hotelImg_3, String hotelNotice, String hotelDetail,
			double hotelScore) {
		this.hotelCode = hotelCode;
		this.adminId = adminId;
		this.hotelName = hotelName;
		this.hotelAddress = hotelAddress;
		this.hotelPhone = hotelPhone;
		this.hotelImg_1 = hotelImg_1;
		this.hotelImg_2 = hotelImg_2;
		this.hotelImg_3 = hotelImg_3;
		this.hotelNotice = hotelNotice;
		this.hotelDetail = hotelDetail;
		this.hotelScore = hotelScore;
	}
// Getter & Setter Methods
   public String getHotelCode() {
      return hotelCode;
   }
   public void setHotelCode(String hotelCode) {
      this.hotelCode = hotelCode;
   }
   public String getAdminId() {
      return adminId;
   }
   public void setAdminId(String adminId) {
      this.adminId = adminId;
   }
   public String getHotelName() {
      return hotelName;
   }
   public void setHotelName(String hotelName) {
      this.hotelName = hotelName;
   }
   public String getHotelAddress() {
      return hotelAddress;
   }
   public void setHotelAddress(String hotelAddress) {
      this.hotelAddress = hotelAddress;
   }
   public String getHotelPhone() {
      return hotelPhone;
   }
   public void setHotelPhone(String hotelPhone) {
      this.hotelPhone = hotelPhone;
   }
   public String getHotelImg_1() {
      return hotelImg_1;
   }
   public void setHotelImg_1(String hotelImg_1) {
      this.hotelImg_1 = hotelImg_1;
   }
   public String getHotelImg_2() {
      return hotelImg_2;
   }
   public void setHotelImg_2(String hotelImg_2) {
      this.hotelImg_2 = hotelImg_2;
   }
   public String getHotelImg_3() {
      return hotelImg_3;
   }
   public void setHotelImg_3(String hotelImg_3) {
      this.hotelImg_3 = hotelImg_3;
   }
   public String getHotelNotice() {
      return hotelNotice;
   }
   public void setHotelNotice(String hotelNotice) {
      this.hotelNotice = hotelNotice;
   }
   public String getHotelDetail() {
      return hotelDetail;
   }
   public void setHotelDetail(String hotelDetail) {
      this.hotelDetail = hotelDetail;
   }
   public double getHotelScore() {
      return hotelScore;
   }
   public void setHotelScore(double hotelScore) {
      this.hotelScore = hotelScore;
   }
   
}