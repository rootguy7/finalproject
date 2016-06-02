package com.hb.model;

import java.sql.Date;

public class CartVo {

	private int cart_idx;
	private String p_name;
	private String id;
	private int serial_num;
	private int ea;
	/**
	 * 개당 가격
	 */
	private int eaPrice;
	private Date cart_date;
	
	public CartVo() {}

	public CartVo(int cart_idx, String p_name, String id, int serial_num, int ea, int eaPrice, Date cart_date) {
		this.cart_idx = cart_idx;
		this.id = id;
		this.serial_num = serial_num;
		this.ea = ea;
		this.eaPrice = eaPrice;
		this.cart_date = cart_date;
	}

	public int getCart_idx() {
		return cart_idx;
	}

	public String getP_name() {
		return p_name;
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
	/**
	 * @return 개당 가격
	 */
	public int getEaPrice() {
		return eaPrice;
	}

	public Date getCart_date() {
		return cart_date;
	}

	public void setCart_idx(int cart_idx) {
		this.cart_idx = cart_idx;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
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

	/**
	 * 개당 가격
	 */
	public void setEaPrice(int eaPrice) {
		this.eaPrice = eaPrice;
	}

	public void setCart_date(Date cart_date) {
		this.cart_date = cart_date;
	}

	@Override
	public String toString() {
		return "CartVo [cart_idx=" + cart_idx + ", p_name=" + p_name + ", id=" + id + ", serial_num=" + serial_num
				+ ", ea=" + ea + ", eaPrice=" + eaPrice + ", cart_date=" + cart_date + "]";
	}

	
	
}
