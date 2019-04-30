package com.tj.hotel.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.FileUploadVO;
import com.tj.hotel.model.Hotel_Notice;

public interface Hotel_NoticeService {
	public List<Hotel_Notice> hotel_notice_list (Hotel_Notice hotel_notice);
	public int hotel_notice_write(MultipartHttpServletRequest mRequest, Hotel_Notice hotel_notice, Model model);
	public int hotel_notice_modify (MultipartHttpServletRequest mRequest, int noticeCode, Model model);
	public int hotel_notice_delete (int noticeCode, Model model);
	public Hotel_Notice hotel_notice_view (int noticeCode);
	public int counthotel_notice (Hotel_Notice hotel_notice);
	public FileUploadVO fileUpload(FileUploadVO fileUploadVO, HttpServletRequest request);
	
	// [은실] 메인에 띄울 공지사항 불러오기
	public List<Hotel_Notice> mainNotice();
}
