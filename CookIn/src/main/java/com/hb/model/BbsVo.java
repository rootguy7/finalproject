package com.hb.model;

import java.sql.Date;

public class BbsVo{
	private int bbs_idx;
	private String id;
	private String password;
	private String title;
	private String content;
	private Date time;
	private int count;
	private int kind_num;
	private int secret;
	
	public BbsVo() {
		// TODO Auto-generated constructor stub
	}
	public BbsVo(int bbs_idx, String id, String password, String title, String content, Date time, int count,
			int kind_num, int secret) {
		super();
		this.bbs_idx = bbs_idx;
		this.id = id;
		this.password = password;
		this.title = title;
		this.content = content;
		this.time = time;
		this.count = count;
		this.kind_num = kind_num;
		this.secret = secret;
	}
	public int getBbs_idx() {
		return bbs_idx;
	}
	public String getId() {
		return id;
	}
	public String getPassword() {
		return password;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public Date getTime() {
		return time;
	}
	public int getCount() {
		return count;
	}
	public int getKind_num() {
		return kind_num;
	}
	public int getSecret() {
		return secret;
	}
	public void setBbs_idx(int bbs_idx) {
		this.bbs_idx = bbs_idx;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public void setKind_num(int kind_num) {
		this.kind_num = kind_num;
	}
	public void setSecret(int secret) {
		this.secret = secret;
	}
	@Override
	public String toString() {
		return "BbsVo [bbs_idx=" + bbs_idx + ", id=" + id + ", password=" + password + ", title=" + title + ", content="
				+ content + ", time=" + time + ", count=" + count + ", kind_num=" + kind_num + ", secret=" + secret
				+ "]";
	}
}
