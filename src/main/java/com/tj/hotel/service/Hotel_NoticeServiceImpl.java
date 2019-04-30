package com.tj.hotel.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.dao.Hotel_NoticeDao;
import com.tj.hotel.model.FileUploadVO;
import com.tj.hotel.model.Hotel_Notice;
@Service
public class Hotel_NoticeServiceImpl implements Hotel_NoticeService {
	@Autowired
	private Hotel_NoticeDao hotel_noticeDao;
	@Override
	public List<Hotel_Notice> hotel_notice_list(Hotel_Notice hotel_notice) {
		return hotel_noticeDao.hotel_notice_list(hotel_notice);
	}

	@Override
	public int hotel_notice_write(MultipartHttpServletRequest mRequest, Hotel_Notice hotel_notice, Model model) {
		String uploadPath = mRequest.getRealPath("hotel_notice_fileupload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/hotel_notice_fileupload/";
		Iterator<String> params =  mRequest.getFileNames();
		String img = "";
		if(params.hasNext()){
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param);
			img = mFile.getOriginalFilename();
			if(img!=null && !img.equals("")) {
				if(new File(uploadPath + img).exists()) {
					img = System.currentTimeMillis() + "_" + img;
				}
				try {
					mFile.transferTo(new File(uploadPath + img));
					System.out.println("서버파일 : " + uploadPath + img);
					System.out.println("서버파일 : " + backupPath + img);
					int result = filecopy(uploadPath + img, backupPath + img);
					System.out.println(result == 1? "파일 복사 성공" : "파일 복사 실패");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else {
				img = "";
			}
		}
		System.out.println("img : " + img);
		hotel_notice.setNoticeFile(img);
		hotel_notice.setNoticeIp(mRequest.getRemoteAddr());
		System.out.println("등록할 글 : "+hotel_notice);
		int result = 0;
		try {
			result = hotel_noticeDao.hotel_notice_write(hotel_notice);
			model.addAttribute("successMsg", "글 작성이 완료되었습니다");
		} catch (Exception e) {
			model.addAttribute("failMsg", "글 작성에 실패했습니다");
		}
		return result;
	}
	private int filecopy(String serverFile, String backupFile) {
		int isCopy = 0;
		FileInputStream is = null;
		FileOutputStream os = null;
		try {
			is = new FileInputStream(serverFile);
			os = new FileOutputStream(backupFile);
			File sFile = new File(serverFile);
			byte[] buff = new byte[(int)sFile.length()];
			while(true) {
				int nRead = is.read(buff);
				if(nRead == -1) {
					break;
				}
				os.write(buff, 0, nRead);
			}
			isCopy = 1;
		} catch (FileNotFoundException e) {
			System.out.println("복사 예외0 : "+e.getMessage());
		} catch (IOException e) {
			System.out.println("복사 예외1 : "+e.getMessage());
		} finally {
			try {
				if(os!=null) {
					os.close();
				}
				if(is!=null) {
					is.close();
				}
			}catch (Exception e) {
			}
		}
		return isCopy;
	}
	
	@Override
	public int hotel_notice_modify(MultipartHttpServletRequest mRequest, int noticeCode, Model model) {
		String uploadPath = mRequest.getRealPath("hotel_notice_fileupload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/hotel_notice_fileupload/";
		Iterator<String> params =  mRequest.getFileNames();
		String img = "";
		if(params.hasNext()){
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param);
			img = mFile.getOriginalFilename();
			if(img!=null && !img.equals("")) {
				if(new File(uploadPath + img).exists()) {
					img = System.currentTimeMillis() + "_" + img;
				}
				try {
					mFile.transferTo(new File(uploadPath + img));
					System.out.println("서버파일 : " + uploadPath + img);
					System.out.println("서버파일 : " + backupPath + img);
					int result = filecopy(uploadPath + img, backupPath + img);
					System.out.println(result == 1? "파일 복사 성공" : "파일 복사 실패");
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else {
				System.out.println("original_noticeFile : " + mRequest.getParameter("original_noticeFile"));
				img = mRequest.getParameter("original_noticeFile");
			}
		}
		Hotel_Notice hotel_notice  = hotel_notice_view(noticeCode);
		hotel_notice.setAdminId(mRequest.getParameter("adminId"));
		hotel_notice.setNoticeTitle(mRequest.getParameter("noticeTitle"));
		hotel_notice.setNoticeContent(mRequest.getParameter("noticeContent"));
		hotel_notice.setNoticeFile(img);
		hotel_notice.setNoticeDate(Timestamp.valueOf(mRequest.getParameter("noticeDate")));
		hotel_notice.setNoticeIp(mRequest.getRemoteAddr());
		int result = 0;
		try {
			result = hotel_noticeDao.hotel_notice_modify(hotel_notice);
			model.addAttribute("successMsg", "글 수정이 완료되었습니다");
		}catch (Exception e) {
			model.addAttribute("failMsg", "글 수정에 실패했습니다");
		}
		return result;
	}

	@Override
	public int hotel_notice_delete(int noticeCode, Model model) {
		int result = hotel_noticeDao.hotel_notice_delete(noticeCode);
		if(result == 0) {
			model.addAttribute("failMsg", "글 삭제에 실패했습니다");
		}else {
			model.addAttribute("successMsg", "글 삭제에 성공했습니다");
		}
		return result; 
	}

	@Override
	public Hotel_Notice hotel_notice_view(int noticeCode) {
		return hotel_noticeDao.hotel_notice_view(noticeCode);
	}

	@Override
	public int counthotel_notice(Hotel_Notice hotel_notice) {
		return hotel_noticeDao.counthotel_notice(hotel_notice);
	}
	
	// [은실] 메인에 띄울 공지사항 불러오기
	@Override
	public List<Hotel_Notice> mainNotice() {
		Hotel_Notice mainNotice = new Hotel_Notice();
		
		// 공지사항 6개 띄울 예정(개수 조정하려면 endRow를 늘리세용)
		mainNotice.setStartRow(1);
		mainNotice.setEndRow(6);
		
		return hotel_noticeDao.hotel_notice_list(mainNotice);
	}

	@Override
	public FileUploadVO fileUpload(FileUploadVO fileUploadVO, HttpServletRequest request) {
		String rootPath = request.getRealPath("/");
		String attachPath = "hotel_notice_fileupload/";
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/hotel_notice_fileupload/";
		MultipartFile upload = fileUploadVO.getUpload();
		String filename = "";
		
		if(upload != null){
	    	filename = System.currentTimeMillis() + upload.getOriginalFilename();
	     	fileUploadVO.setFilename(filename);
	     	try{
	     		File file = new File(rootPath + attachPath + filename);
	     		upload.transferTo(file);
	     	}catch(IOException e){
	     		e.printStackTrace();
	     	}  
	     	
	     	fileUploadVO.setAttachPath(attachPath);
	     	fileUploadVO.setFilename(filename);
	     }
		 
		int result = filecopy(rootPath + attachPath + filename, backupPath+filename);
		if(result==1) {
			System.out.println(filename+" 파일 백업 성공");
		}
		return fileUploadVO;
	}
}
