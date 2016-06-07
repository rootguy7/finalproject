package com.hb.model;

public class UserVo {
	private String id;
	private String name;
	private int post;
	private String main_addr;
	private String sub_addr;
	private String phone;
	private String mobile;
	private String email;
	private int point;
	private String pm_num;
	private String password;
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserVo() {}

	public UserVo(String id, String name, int post, String main_addr, String sub_addr, String phone, String mobile,
			String email, int point, String pm_num) {
		this.id = id;
		this.name = name;
		this.post = post;
		this.main_addr = main_addr;
		this.sub_addr = sub_addr;
		this.phone = phone;
		this.mobile = mobile;
		this.email = email;
		this.point = point;
		this.pm_num = pm_num;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
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

	public String getPhone() {
		return phone;
	}

	public String getMobile() {
		return mobile;
	}

	public String getEmail() {
		return email;
	}

	public int getPoint() {
		return point;
	}

	public String getPm_num() {
		return pm_num;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
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

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public void setPm_num(String pm_num) {
		this.pm_num = pm_num;
	}

	@Override
	public String toString() {
		return "UserVo [id=" + id + ", name=" + name + ", post=" + post + ", main_addr=" + main_addr + ", sub_addr="
				+ sub_addr + ", phone=" + phone + ", mobile=" + mobile + ", email=" + email + ", point=" + point
				+ ", pm_num=" + pm_num + "]";
	}
	
}