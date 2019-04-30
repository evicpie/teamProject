package com.tj.hotel.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.hotel.model.Admin;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public Admin getAdmin(String adminId) {
		return sessionTemplate.selectOne("getAdmin", adminId);
	}
}
