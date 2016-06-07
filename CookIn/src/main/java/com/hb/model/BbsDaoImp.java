package com.hb.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class BbsDaoImp implements BbsDao{

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<BbsVo> selectNoticeList() throws Exception {//list
		return sqlSession.selectList("info.selectNoticeList");
	}
	
}
