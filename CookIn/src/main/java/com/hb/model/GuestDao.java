package com.hb.model;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface GuestDao {
	static final Logger logger = LoggerFactory.getLogger(GuestDao.class);
	
	List<GuestVo> selectAll();
	void insertOne(GuestVo bean);
	GuestVo selectOne(int sabun);
	
	
}
