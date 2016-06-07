package com.hb.model;

public class ProductVo { 
	
	private int serial_num;
	private int kind_num;
	private String name;
	private int price;
	private int c_num;
	
	public ProductVo() {
		// TODO Auto-generated constructor stub
	}
	
	public ProductVo(int serial_num, int kind_num, String name, int price, int c_num) {
		super();
		this.serial_num = serial_num;
		this.kind_num = kind_num;
		this.name = name;
		this.price = price;
		this.c_num = c_num;
	}
	public int getSerial_num() {
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
	public void setSerial_num(int serial_num) {
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

	@Override
	public String toString() {
		return "ProductVo [serial_num=" + serial_num + ", kind_num=" + kind_num + ", name=" + name + ", price=" + price
				+ ", c_num=" + c_num + "]";
	}
}
