package com.hb.model;

import java.util.List; 

import org.apache.ibatis.session.SqlSession;

public class ProductDaoImp implements ProductDao{

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<ProductVo> selectProList() throws Exception {
		return sqlSession.selectList("info.selectProList");
	}
	@Override //list detail하는중
	public ProductVo selectOne(String serial_num) throws Exception {
		return sqlSession.selectOne("info.selectOne",serial_num);
	}
}
