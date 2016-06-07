package com.hb.model;

import java.sql.Date;

public class BuyEPVo{
	//BuyVo+개당 가격이 있는 vo
	
	private int index;
	private String id;
	private int serial_num;
	private int ea;
	private int state_num;
	private Date req_date;
	private String rec_name;
	private String phone;
	private int post;
	private String main_addr;
	private String sub_addr;
	/**
	 * DB에 널값 가능
	 */
	private String se_phone;
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
	private int eaPrice;
	private String pname;//상품명
	
	public BuyEPVo() {}

	
	

	public BuyEPVo(int index, String id, int serial_num, int ea, int state_num, Date req_date, String rec_name,
			String phone, int post, String main_addr, String sub_addr, String se_phone, String comment, String add_comment,
			String pay_option, int buynum, int eaPrice, String pname) {
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
		this.eaPrice = eaPrice;
		this.pname = pname;
	}




	public BuyEPVo(BuyVo vo, String pname, int eaPrice){
		this.index = vo.getIndex();
		this.id = vo.getId();
		this.serial_num = vo.getSerial_num();
		this.ea = vo.getEa();
		this.state_num = vo.getState_num();
		this.req_date = vo.getReq_date();
		this.rec_name = vo.getRec_name();
		this.phone = vo.getPhone();
		this.post = vo.getPost();
		this.main_addr = vo.getMain_addr();
		this.sub_addr = vo.getSub_addr();
		this.se_phone = vo.getSe_phone();
		this.comment = vo.getComment();
		this.add_comment = vo.getAdd_comment();
		this.pay_option = vo.getPay_option();
		this.buynum = vo.getBuynum();
		this.eaPrice = eaPrice;
		this.pname = pname;
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

	public String getPhone() {
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

	public String getSe_phone() {
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

	public void setPhone(String phone) {
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

	public void setSe_phone(String se_phone) {
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

	/**
	 * @return the eaPrice
	 */
	public int getEaPrice() {
		return eaPrice;
	}

	/**
	 * @param eaPrice the eaPrice to set
	 */
	public void setEaPrice(int eaPrice) {
		this.eaPrice = eaPrice;
	}
	
	/**
	 * @return the pname
	 */
	public String getPname() {
		return pname;
	}


	/**
	 * @param pname the pname to set
	 */
	public void setPname(String pname) {
		this.pname = pname;
	}

	@Override
	public String toString() {
		return "BuyEPVo [index=" + index + ", id=" + id + ", serial_num=" + serial_num + ", ea=" + ea + ", state_num="
				+ state_num + ", req_date=" + req_date + ", rec_name=" + rec_name + ", phone=" + phone + ", post="
				+ post + ", main_addr=" + main_addr + ", sub_addr=" + sub_addr + ", se_phone=" + se_phone + ", comment="
				+ comment + ", add_comment=" + add_comment + ", pay_option=" + pay_option + ", buynum=" + buynum
				+ ", eaPrice=" + eaPrice + ", pname=" + pname + "]";
	}
}
