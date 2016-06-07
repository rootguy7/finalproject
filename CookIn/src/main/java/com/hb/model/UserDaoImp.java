package com.hb.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class UserDaoImp implements UserDao{

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public List<UserVo> selectAll(String id) throws Exception {
		return sqlSession.selectList("user.selectAll",id);
	}

	@Override
	public UserVo selectOne(String id) throws Exception {
		return sqlSession.selectOne("user.selectOne", id);
	}
	
	public List<UserVo> selectUserInfo() throws Exception{
		return sqlSession.selectList("info.selectUserInfo");
	}

}
