package com.hb.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class BbsDaoImp implements BbsDao{

	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<BbsVo> selectNoticeList() throws Exception {
		return sqlSession.selectList("info.selectNoticeList");
	}
	@Override
	public List<BbsVo> selectQnaList() throws Exception {
		return sqlSession.selectList("info.selectQnaList");
	}
	@Override
	public List<BbsVo> selMyWrite(String id) throws Exception {
		return sqlSession.selectList("mypage.selMyWrite",id);
	}
	
}
