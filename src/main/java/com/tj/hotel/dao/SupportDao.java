package com.tj.hotel.dao;

import java.util.List;

import com.tj.hotel.model.Support;

public interface SupportDao {
	public List<Support> supportListPaging(Support support);
	public int supportTotal();
	public Support supportDetail(int supportCode);
	public int supportWrite(Support support);
	public int supportModify(Support support);
	public int supportDelete(int supportCode);
	public void supportDoA(Support support);
	public int supportReply(Support support);
	public List<Support> mySupportList(Support support);
	public int mySupportTotal(String guestId);
}
