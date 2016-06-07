package com.hb.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
 
public interface ProductDao {
	static final Logger logger = LoggerFactory.getLogger(ProductDao.class);
	
	List<ProductVo> selectProList() throws Exception;//list
	ProductVo selectOne(int serial_num) throws Exception;//detail
}
