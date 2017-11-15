package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job")
public class Job {
	public Job(int jid, String jname) {
		super();
		this.jid = jid;
		this.jname = jname;
	}

	public Job() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Job(int jid, String jname, String filed1, String filed2, String filed3) {
		super();
		this.jid = jid;
		this.jname = jname;
		this.filed1 = filed1;
		this.filed2 = filed2;
		this.filed3 = filed3;
	}

	private int jid;
	private String jname;
	private String filed1;
	private String filed2;
	private String filed3;

	@Id
	@Column(name = "jid")
	public int getJid() {
		return jid;
	}

	public void setJid(int jid) {
		this.jid = jid;
	}

	@Column(name = "jname")
	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
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

	@Override
	public String toString() {
		return "Job [jid=" + jid + ", jname=" + jname + ", filed1=" + filed1 + ", filed2=" + filed2 + ", filed3="
				+ filed3 + "]";
	}
	
	
}
