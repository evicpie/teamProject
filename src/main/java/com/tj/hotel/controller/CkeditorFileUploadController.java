package com.tj.hotel.controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.hotel.model.FileUploadVO;
import com.tj.hotel.service.Hotel_NoticeService;
@Controller
public class CkeditorFileUploadController {
	@Autowired
	private Hotel_NoticeService hotel_noticeService;
	@RequestMapping(value="fileupload", method=RequestMethod.POST)
	public String fileUpload(FileUploadVO fileUploadVO, HttpServletRequest request , Model model){
		fileUploadVO = hotel_noticeService.fileUpload(fileUploadVO, request);
		model.addAttribute("filePath", fileUploadVO.getAttachPath() + fileUploadVO.getFilename());  
		model.addAttribute("filename", fileUploadVO.getFilename()); //결과값을
		return "ckeditorImageUpload";
    }
}
