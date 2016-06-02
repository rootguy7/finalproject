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
		return sqlSession.selectList("buy.selectPcart", id);
	}

	@Override
	public UserVo selOneUser(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("buy.selOneUser", id);
	}

}
