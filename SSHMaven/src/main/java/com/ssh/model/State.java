package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "state")
public class State {
	private int sid;
	private String sname;
	private String filed1;
	private String filed2;
	private String filed3;

	@Id
	@Column(name = "sid")
	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	@Column(name = "sname")
	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
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

	public State(int sid, String sname, String filed1, String filed2, String filed3) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.filed1 = filed1;
		this.filed2 = filed2;
		this.filed3 = filed3;
	}

	public State(int sid, String sname) {
		super();
		this.sid = sid;
		this.sname = sname;
	}

	public State() {
		super();
	}

	@Override
	public String toString() {
		return "State [sid=" + sid + ", sname=" + sname + ", filed1=" + filed1 + ", filed2=" + filed2 + ", filed3="
				+ filed3 + "]";
	}

}
