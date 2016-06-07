package com.hb.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface UserDao {
static final Logger logger = LoggerFactory.getLogger(UserDao.class);
	
	List<UserVo> selectAll(String id) throws Exception;
	UserVo selectOne(String id) throws Exception;
	List<UserVo> selectUserInfo() throws Exception;
}
