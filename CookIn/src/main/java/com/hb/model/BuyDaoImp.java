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
		return sqlSession.selectOne("buy.selOneUser", id);
	}

	@Override
	public CartVo selectPcartOne(int cart_idx) throws Exception {
		return sqlSession.selectOne("buy.selectPcartOne", cart_idx);
	}

	@Override
	public void insertBuyOne(BuyVo bvo) throws Exception {
		sqlSession.insert("buy.insertBuyOne", bvo);
	}

	@Override
	public void delCartOne(int cart_idx) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int selMaxbuynum() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("buy.selMaxbuynum");
	}

}
