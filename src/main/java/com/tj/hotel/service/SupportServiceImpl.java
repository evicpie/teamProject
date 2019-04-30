package com.tj.hotel.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.dao.GuestDao;
import com.tj.hotel.dao.SupportDao;
import com.tj.hotel.model.Guest;
import com.tj.hotel.model.Support;
@Service
public class SupportServiceImpl implements SupportService {
	@Autowired
	private SupportDao supportDao;
	@Autowired
	private GuestDao guestDao;
	@Autowired
	private JavaMailSender mailSender;
	@Override
	public List<Support> supportListPaging(Support support) {
		return supportDao.supportListPaging(support);
	}

	@Override
	public int supportTotal() {
		return supportDao.supportTotal();
	}

	@Override
	public Support supportDetail(int supportCode) {
		return supportDao.supportDetail(supportCode);
	}

	@Override
	public int supportWrite(MultipartHttpServletRequest mRequest, Support support) {
		String uploadPath = mRequest.getRealPath("supportFileUpload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/supportFileUpload/";
		Iterator<String> params = mRequest.getFileNames(); // temp_bimg1, ...
		String[] supportfile = {""};
		int idx = 0;
		while(params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param); // 파라미터에 연결된 파일 객체
			supportfile[idx] = mFile.getOriginalFilename();
			if(supportfile[idx]!=null && !supportfile[idx].equals("")) { // 파일첨부했다
				if(new File(uploadPath+supportfile[idx]).exists()) { // 서버에 같은 파일 이름이 있을때
					supportfile[idx] = System.currentTimeMillis()+"_"+supportfile[idx];
				}
				try {
					mFile.transferTo(new File(uploadPath+supportfile[idx])); // 서버에 저장하는 로직
					System.out.println("서버파일 : "+uploadPath+supportfile[idx]);
					System.out.println("백업파일 : "+backupPath+supportfile[idx]);
					int result = 
						filecopy(uploadPath+supportfile[idx], backupPath+supportfile[idx]); // 파일 카피
					System.out.println(result == 1? idx+"번째 복사성공":idx+"번째 복사 실패");
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else { // 파일첨부 안했다
				supportfile[idx] = "";
			}//if
			idx++;
		}//while
		support.setSupportFile(supportfile[0]);
		support.setSupportIp(mRequest.getRemoteAddr());
		return supportDao.supportWrite(support);
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
				if(nRead==-1)break;
				os.write(buff, 0, nRead);
			}
			isCopy=1;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(os!=null)os.close();
				if(is!=null)is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return isCopy;
	}

	@Override
	public int supportModify(MultipartHttpServletRequest mRequest) {
		String uploadPath = mRequest.getRealPath("supportFileUpload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/supportFileUpload/";
		Iterator<String> params = mRequest.getFileNames(); // temp_bimg1, ...
		String[] supportfile = {""};
		int idx = 0;
		while(params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param); // 파라미터에 연결된 파일 객체
			supportfile[idx] = mFile.getOriginalFilename();
			if(supportfile[idx]!=null && !supportfile[idx].equals("")) { // 파일첨부했다
				if(new File(uploadPath+supportfile[idx]).exists()) { // 서버에 같은 파일 이름이 있을때
					supportfile[idx] = System.currentTimeMillis()+"_"+supportfile[idx];
				}
				try {
					mFile.transferTo(new File(uploadPath+supportfile[idx])); // 서버에 저장하는 로직
					System.out.println("서버파일 : "+uploadPath+supportfile[idx]);
					System.out.println("백업파일 : "+backupPath+supportfile[idx]);
					int result = 
						filecopy(uploadPath+supportfile[idx], backupPath+supportfile[idx]); // 파일 카피
					System.out.println(result == 1? idx+"번째 복사성공":idx+"번째 복사 실패");
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else { // 파일첨부 안했다
				supportfile[idx] = "";
			}//if
			idx++;
		}//while
		Support support = new Support();
		support.setSupportCode(Integer.parseInt(mRequest.getParameter("supportCode")));
		support.setSupportTitle(mRequest.getParameter("supportTitle"));
		support.setSupportContent(mRequest.getParameter("supportContent"));
		support.setSupportFile(supportfile[0]);
		support.setSupportIp(mRequest.getRemoteAddr());
		return supportDao.supportModify(support);
	}


	@Override
	public int supportDelete(int supportCode) {
		return supportDao.supportDelete(supportCode);
	}

	@Override
	public void supportDoA(Support support) {
		supportDao.supportDoA(support);
	}

	@Override
	public int supportReply(MultipartHttpServletRequest mRequest, Support support) {
		supportDoA(support);
		String uploadPath = mRequest.getRealPath("supportFileUpload/");
		String backupPath = "D:/mega_IT/team_project/source/team_project/src/main/webapp/supportFileUpload/";
		Iterator<String> params = mRequest.getFileNames(); // temp_bimg1, ...
		String[] supportfile = {""};
		int idx = 0;
		while(params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param); // 파라미터에 연결된 파일 객체
			supportfile[idx] = mFile.getOriginalFilename();
			if(supportfile[idx]!=null && !supportfile[idx].equals("")) { // 파일첨부했다
				if(new File(uploadPath+supportfile[idx]).exists()) { // 서버에 같은 파일 이름이 있을때
					supportfile[idx] = System.currentTimeMillis()+"_"+supportfile[idx];
				}
				try {
					mFile.transferTo(new File(uploadPath+supportfile[idx])); // 서버에 저장하는 로직
					System.out.println("서버파일 : "+uploadPath+supportfile[idx]);
					System.out.println("백업파일 : "+backupPath+supportfile[idx]);
					int result = 
						filecopy(uploadPath+supportfile[idx], backupPath+supportfile[idx]); // 파일 카피
					System.out.println(result == 1? idx+"번째 복사성공":idx+"번째 복사 실패");
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else { // 파일첨부 안했다
				supportfile[idx] = "";
			}//if
			idx++;
		}//while
		support.setSupportGroup(Integer.parseInt(mRequest.getParameter("supportGroup")));
		support.setSupportStep(Integer.parseInt(mRequest.getParameter("supportStep"))+1);
		support.setSupportIndent(Integer.parseInt(mRequest.getParameter("supportIndent"))+1);
		support.setSupportFile(supportfile[0]);
		support.setSupportIp(mRequest.getRemoteAddr());
		//답변이완료되었다는 메일을 보내기
		final Guest supportGuest = guestDao.getGuest(support.getGuestId());
		MimeMessagePreparator message = new MimeMessagePreparator() {
			String content = 
					"<img src=\"http://daramchu.dothome.co.kr/mailHeader.png\" width=\"800\">"+
					"<div style=\"width: 800px; margin: 30px 0; text-align: center;\">"+
					"<h1 style=\"text-align: center;\">"+supportGuest.getGuestName() +"님이 올리신 문의에 답변이 완료되었습니다</h1>"+

					"  <div>" + 
					"    <div>" + 
					"    	<br><br>" + 
					"      사이트에 로그인하여 답변을 확인해주세요\n\n" + 
					"    	<br><br><br><br>" + 
					"      <hr color=\"red\" style=\"margin-bottom: 50px;\">" + 
					"    </div>" + 
					"  </div>";
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				mimeMessage.setRecipient(Message.RecipientType.TO, 
						new InternetAddress(supportGuest.getGuestEmail()));
				mimeMessage.setFrom(new InternetAddress("hybrid190501@gmail.com "));
				mimeMessage.setSubject(supportGuest.getGuestName()+"님이 올리신 문의에 답변이 완료되었습니다");
				mimeMessage.setText(content, "utf-8", "html");
			}
		};
		mailSender.send(message);
		return supportDao.supportReply(support);
	}

	@Override
	public List<Support> mySupportList(Support support) {
		return supportDao.mySupportList(support);
	}

	@Override
	public int mySupportTotal(String guestId) {
		return supportDao.mySupportTotal(guestId);
	}
}
