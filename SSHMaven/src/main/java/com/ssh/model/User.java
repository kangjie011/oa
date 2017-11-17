package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
	private int uid;
	private String unickname;
	private String uname;
	private String upwd;
	private String uphone;
	private int ujob;
	private int udel;
	private String filed1;
	private String filed2;
	private String filed3;

	@Id
	@Column(name = "uid")
	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	@Column(name = "unickname")
	public String getUnickname() {
		return unickname;
	}

	public void setUnickname(String unickname) {
		this.unickname = unickname;
	}

	@Column(name = "uname")
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	@Column(name = "upwd")
	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	@Column(name = "uphone")
	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	@Column(name = "ujob")
	public int getUjob() {
		return ujob;
	}

	public void setUjob(int ujob) {
		this.ujob = ujob;
	}

	@Column(name = "udel")
	public int getUdel() {
		return udel;
	}

	public void setUdel(int udel) {
		this.udel = udel;
	}

	@Column(name = "filed1")
	public String getFiled1() {
		return filed1;
	}

	public void setFiled1(String filed1) {
		this.filed1 = filed1;
	}

	@Column(name = "filed2")
	public String getFiled2() {
		return filed2;
	}

	public void setFiled2(String filed2) {
		this.filed2 = filed2;
	}

	@Column(name = "filed3")
	public String getFiled3() {
		return filed3;
	}

	public void setFiled3(String filed3) {
		this.filed3 = filed3;
	}

	public User(int uid, String unickname, String uname, String upwd, String uphone, int ujob, int udel, String filed1,
			String filed2, String filed3) {
		super();
		this.uid = uid;
		this.unickname = unickname;
		this.uname = uname;
		this.upwd = upwd;
		this.uphone = uphone;
		this.ujob = ujob;
		this.udel = udel;
		this.filed1 = filed1;
		this.filed2 = filed2;
		this.filed3 = filed3;
	}

	public User(int uid, String unickname, String uname, String upwd, String uphone, int ujob, int udel) {
		super();
		this.uid = uid;
		this.unickname = unickname;
		this.uname = uname;
		this.upwd = upwd;
		this.uphone = uphone;
		this.ujob = ujob;
		this.udel = udel;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", unickname=" + unickname + ", uname=" + uname + ", upwd=" + upwd + ", uphone="
				+ uphone + ", ujob=" + ujob + ", udel=" + udel + ", filed1=" + filed1 + ", filed2=" + filed2
				+ ", filed3=" + filed3 + "]";
	}

}