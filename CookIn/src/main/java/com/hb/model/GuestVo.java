package com.hb.model;

import java.sql.Date;

public class GuestVo {
	private int sabun;
	private String name;
	private String sub;
	private Date nalja;
	private int pay;

	public GuestVo() {
	}

	public GuestVo(int sabun, String name, String sub, Date nalja, int pay) {
		this.sabun = sabun;
		this.name = name;
		this.sub = sub;
		this.nalja = nalja;
		this.pay = pay;
	}

	@Override
	public String toString() {
		return "GuestVo [sabun=" + sabun + ", name=" + name + ", sub=" + sub + ", nalja=" + nalja + ", pay=" + pay
				+ "]";
	}

	public int getSabun() {
		return sabun;
	}

	public String getName() {
		return name;
	}

	public String getSub() {
		return sub;
	}

	public Date getNalja() {
		return nalja;
	}

	public int getPay() {
		return pay;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}
}