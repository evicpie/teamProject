package com.tj.hotel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Support;
@Repository
public class SupportDaoImpl implements SupportDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public List<Support> supportListPaging(Support support) {
		return sessionTemplate.selectList("supportListPaging", support);
	}

	@Override
	public int supportTotal() {
		return sessionTemplate.selectOne("supportTotal");
	}

	@Override
	public Support supportDetail(int supportCode) {
		return sessionTemplate.selectOne("supportDetail", supportCode);
	}

	@Override
	public int supportWrite(Support support) {
		return sessionTemplate.insert("supportWrite", support);
	}

	@Override
	public int supportModify(Support support) {
		return sessionTemplate.update("supportModify", support);
	}

	@Override
	public int supportDelete(int supportCode) {
		return sessionTemplate.delete("supportDelete", supportCode);
	}

	@Override
	public void supportDoA(Support support) {
		sessionTemplate.update("supportDoA", support);
	}

	@Override
	public int supportReply(Support support) {
		return sessionTemplate.insert("supportReply", support);
	}

	@Override
	public List<Support> mySupportList(Support support) {
		return sessionTemplate.selectList("mySupportList", support);
	}

	@Override
	public int mySupportTotal(String guestId) {
		return sessionTemplate.selectOne("mySupportTotal", guestId);
	}

}
