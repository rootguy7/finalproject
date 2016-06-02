package com.hb.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class BuyDaoImp implements BuyDao{

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<CartVo> selectPcart(String id) throws Exception {
		return sqlSession.selectOne("buy.selectPcart", id);
	}

}
