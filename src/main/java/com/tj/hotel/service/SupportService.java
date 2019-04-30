package com.tj.hotel.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.hotel.model.Support;

@Repository
public interface SupportService {
	public List<Support> supportListPaging(Support support);
	public int supportTotal();
	public Support supportDetail(int supportCode);
	public int supportWrite(MultipartHttpServletRequest mRequest, Support support);
	public int supportModify(MultipartHttpServletRequest mRequest);
	public int supportDelete(int supportCode);
	public void supportDoA(Support support);
	public int supportReply(MultipartHttpServletRequest mRequest, Support support);
	public List<Support> mySupportList(Support support);
	public int mySupportTotal(String guestId);
}
