package com.hb.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface BbsDao {
	static final Logger logger = LoggerFactory.getLogger(BbsDao.class);
	
	List<BbsVo> selectNoticeList() throws Exception;//notice list
	List<BbsVo> selectQnaList() throws Exception;//qna list
	List<BbsVo> selMyWrite(String id) throws Exception;//mypage write list
}
