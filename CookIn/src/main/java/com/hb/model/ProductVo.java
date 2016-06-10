package com.hb.model;

import java.sql.Date;

public class ProductVo { 
	
	private String serial_num;
	private int kind_num;
	private String name;
	private int price;
	private int c_num;
	private String reppicture;
	private String explpicture;
	private String imgname;
	private String mainexp;
	private int ea;
	private String c_name;
	private Date ip_date;
	
	public ProductVo() {}

	public ProductVo(String serial_num, int kind_num, String name, int price, int c_num, String reppicture,
			String explpicture, String imgname, String mainexp, int ea, String c_name, Date ip_date) {
		this.serial_num = serial_num;
		this.kind_num = kind_num;
		this.name = name;
		this.price = price;
		this.c_num = c_num;
		this.reppicture = reppicture;
		this.explpicture = explpicture;
		this.imgname = imgname;
		this.mainexp = mainexp;
		this.ea = ea;
		this.c_name = c_name;
		this.ip_date = ip_date;
	}

	public ProductVo(String serial_num, int kind_num, String name, int price, int c_num, String reppicture,
			String explpicture, String imgname, String mainexp) {
		this.serial_num = serial_num;
		this.kind_num = kind_num;
		this.name = name;
		this.price = price;
		this.c_num = c_num;
		this.reppicture = reppicture;
		this.explpicture = explpicture;
		this.imgname = imgname;
		this.mainexp = mainexp;
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

	public String getReppicture() {
		return reppicture;
	}

	public String getExplpicture() {
		return explpicture;
	}

	public String getImgname() {
		return imgname;
	}

	public String getMainexp() {
		return mainexp;
	}

	public int getEa() {
		return ea;
	}

	public String getC_name() {
		return c_name;
	}

	public Date getIp_date() {
		return ip_date;
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

	public void setReppicture(String reppicture) {
		this.reppicture = reppicture;
	}

	public void setExplpicture(String explpicture) {
		this.explpicture = explpicture;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public void setMainexp(String mainexp) {
		this.mainexp = mainexp;
	}

	public void setEa(int ea) {
		this.ea = ea;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public void setIp_date(Date ip_date) {
		this.ip_date = ip_date;
	}

	@Override
	public String toString() {
		return "ProductVo [serial_num=" + serial_num + ", kind_num=" + kind_num + ", name=" + name + ", price=" + price
				+ ", c_num=" + c_num + ", reppicture=" + reppicture + ", explpicture=" + explpicture + ", imgname="
				+ imgname + ", mainexp=" + mainexp + ", ea=" + ea + ", c_name=" + c_name + ", ip_date=" + ip_date + "]";
	}
	
	
}