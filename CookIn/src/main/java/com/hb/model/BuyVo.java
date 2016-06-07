package com.hb.model;

import java.sql.Date;

public class BuyVo {
	//TB_BUY 테이블에 쓸꺼
	
	private int index;
	private String id;
	private int serial_num;
	private int ea;
	private int state_num;
	private Date req_date;
	private String rec_name;
	private int phone;
	private int post;
	private String main_addr;
	private String sub_addr;
	/**
	 * DB에 널값 가능
	 */
	private int se_phone;
	private String comment;
	/**
	 * DB에 널값 가능
	 */
	private String add_comment;
	private String pay_option;
	/**
	 * 운송장 번호
	 */
	private int buynum;
	
	public BuyVo() {}

	public BuyVo(int index, String id, int serial_num, int ea, int state_num, Date req_date, String rec_name,
			int phone, int post, String main_addr, String sub_addr, int se_phone, String comment, String add_comment,
			String pay_option, int buynum) {
		this.index = index;
		this.id = id;
		this.serial_num = serial_num;
		this.ea = ea;
		this.state_num = state_num;
		this.req_date = req_date;
		this.rec_name = rec_name;
		this.phone = phone;
		this.post = post;
		this.main_addr = main_addr;
		this.sub_addr = sub_addr;
		this.se_phone = se_phone;
		this.comment = comment;
		this.add_comment = add_comment;
		this.pay_option = pay_option;
		this.buynum = buynum;
	}

	public int getIndex() {
		return index;
	}

	public String getId() {
		return id;
	}

	public int getSerial_num() {
		return serial_num;
	}

	public int getEa() {
		return ea;
	}

	public int getState_num() {
		return state_num;
	}

	public Date getReq_date() {
		return req_date;
	}

	public String getRec_name() {
		return rec_name;
	}

	public int getPhone() {
		return phone;
	}

	public int getPost() {
		return post;
	}

	public String getMain_addr() {
		return main_addr;
	}

	public String getSub_addr() {
		return sub_addr;
	}

	public int getSe_phone() {
		return se_phone;
	}

	public String getComment() {
		return comment;
	}

	public String getAdd_comment() {
		return add_comment;
	}

	public String getPay_option() {
		return pay_option;
	}

	public int getBuynum() {
		return buynum;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setSerial_num(int serial_num) {
		this.serial_num = serial_num;
	}

	public void setEa(int ea) {
		this.ea = ea;
	}

	public void setState_num(int state_num) {
		this.state_num = state_num;
	}

	public void setReq_date(Date req_date) {
		this.req_date = req_date;
	}

	public void setRec_name(String rec_name) {
		this.rec_name = rec_name;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public void setPost(int post) {
		this.post = post;
	}

	public void setMain_addr(String main_addr) {
		this.main_addr = main_addr;
	}

	public void setSub_addr(String sub_addr) {
		this.sub_addr = sub_addr;
	}

	public void setSe_phone(int se_phone) {
		this.se_phone = se_phone;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public void setAdd_comment(String add_comment) {
		this.add_comment = add_comment;
	}

	public void setPay_option(String pay_option) {
		this.pay_option = pay_option;
	}

	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}

	@Override
	public String toString() {
		return "BuyVo [index=" + index + ", id=" + id + ", serial_num=" + serial_num + ", ea=" + ea + ", state_num="
				+ state_num + ", req_date=" + req_date + ", rec_name=" + rec_name + ", phone=" + phone + ", post="
				+ post + ", main_addr=" + main_addr + ", sub_addr=" + sub_addr + ", se_phone=" + se_phone + ", comment="
				+ comment + ", add_comment=" + add_comment + ", pay_option=" + pay_option + ", buynum=" + buynum + "]";
	}
	
	
	
}
