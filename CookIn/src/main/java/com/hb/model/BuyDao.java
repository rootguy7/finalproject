package com.hb.model;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface BuyDao {
	static final Logger logger = LoggerFactory.getLogger(BuyDao.class);
	
	List<CartVo> selectPcart(String id) throws Exception;
	UserVo selOneUser(String id) throws Exception;
	CartVo selectPcartOne(int cart_idx) throws Exception;
	void insertBuyOne(BuyVo bvo) throws Exception;
	int selMaxbuynum() throws Exception;
	void editPoint(HashMap<String, String> map);
	void delCartOne(String cart_idx) throws Exception;
	List<ProductVo> selectPList() throws Exception;
	ProductVo selectPOne(int serial_num) throws Exception;
}
