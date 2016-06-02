package com.hb.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface BuyDao {
	static final Logger logger = LoggerFactory.getLogger(BuyDao.class);
	
	List<CartVo> selectPcart(String id) throws Exception;
	UserVo selOneUser(String id) throws Exception;
	
}
