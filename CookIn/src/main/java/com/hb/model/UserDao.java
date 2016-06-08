package com.hb.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface UserDao {
static final Logger logger = LoggerFactory.getLogger(UserDao.class);
	
	List<UserVo> selectOrder(String id) throws Exception;
	UserVo selOnePoint(String id) throws Exception;
	List<UserVo> selectUserInfo() throws Exception;
	int getLoginResult(Map<String, String> map) throws Exception;
	UserVo getUserInfo(String id) throws Exception;
}