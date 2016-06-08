package com.hb.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


public class UserDaoImp implements UserDao{

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public List<UserVo> selectOrder(String id) throws Exception {
		return sqlSession.selectList("user.selectOrder",id);
	}

	@Override
	public UserVo selectOne(String id) throws Exception {
		return sqlSession.selectOne("user.selectOne", id);
	}
	
	public List<UserVo> selectUserInfo() throws Exception{
		return sqlSession.selectList("info.selectUserInfo");
	}
	
	//로그인 아이디와, 패스워드를 통해 사용자가 있는지 검사
	@Override
	public int getLoginResult(Map<String, String> map) {
		return (Integer) sqlSession.selectOne("user.getLoginResult", map);
	}

	@Override
	public UserVo getUserInfo(String id) {
		return (UserVo) sqlSession.selectOne("user.getUserInfo",id);
	}

}