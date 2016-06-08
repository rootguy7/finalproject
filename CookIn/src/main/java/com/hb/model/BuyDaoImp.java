package com.hb.model;

import java.util.HashMap;
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
	public int selMaxbuynum() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("buy.selMaxbuynum");
	}

	@Override
	public void editPoint(HashMap<String, String> map) {
		sqlSession.update("buy.editPoint", map);
		
	}

	@Override
	public void delCartOne(String cart_idx) throws Exception {
		sqlSession.delete("buy.delCartOne", cart_idx);
	}
}
