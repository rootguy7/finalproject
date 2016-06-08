package com.hb.model;

import java.sql.Date;

public class ProductVo { 
	
	private String serial_num;
	private int kind_num;
	private String name;
	private int price;
	private int c_num;
	private Date ip_date;
	private int ea;
	private String c_name;
	
	public ProductVo() {
		// TODO Auto-generated constructor stub
	}
	
	public ProductVo(String serial_num, int kind_num, String name, int price, int c_num, Date ip_date, int ea,
			String c_name) {
		super();
		this.serial_num = serial_num;
		this.kind_num = kind_num;
		this.name = name;
		this.price = price;
		this.c_num = c_num;
		this.ip_date = ip_date;
		this.ea = ea;
		this.c_name = c_name;
	}

	public String getSerial_num() {
		return serial_num;
	}

	public int getKind_num() {
		return kind_num;
	}

	public String getName() {
		return name;
	}

	public int getPrice() {
		return price;
	}

	public int getC_num() {
		return c_num;
	}

	public Date getIp_date() {
		return ip_date;
	}

	public int getEa() {
		return ea;
	}

	public String getC_name() {
		return c_name;
	}

	public void setSerial_num(String serial_num) {
		this.serial_num = serial_num;
	}

	public void setKind_num(int kind_num) {
		this.kind_num = kind_num;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setC_num(int c_num) {
		this.c_num = c_num;
	}

	public void setIp_date(Date ip_date) {
		this.ip_date = ip_date;
	}

	public void setEa(int ea) {
		this.ea = ea;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	@Override
	public String toString() {
		return "ProductVo [serial_num=" + serial_num + ", kind_num=" + kind_num + ", name=" + name + ", price=" + price
				+ ", c_num=" + c_num + ", ip_date=" + ip_date + ", ea=" + ea + ", c_name=" + c_name + "]";
	}
}
