package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "comment")
public class Comment {
	private int cid;
	private String ccomment;
	private int uid;
	private String ctime;
	private int pid;
	private String filed1;
	private String filed2;
	private String filed3;

	public Comment(int cid, String ccomment, int uid, String ctime, int pid, String filed1, String filed2,
			String filed3) {
		super();
		this.cid = cid;
		this.ccomment = ccomment;
		this.uid = uid;
		this.ctime = ctime;
		this.pid = pid;
		this.filed1 = filed1;
		this.filed2 = filed2;
		this.filed3 = filed3;
	}

	public Comment(int cid, String ccomment, int uid, String ctime, int pid) {
		super();
		this.cid = cid;
		this.ccomment = ccomment;
		this.uid = uid;
		this.ctime = ctime;
		this.pid = pid;
	}

	public Comment() {
		super();
	}

	@Id
	@Column(name = "cid")
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Column(name = "ccomment")
	public String getCcomment() {
		return ccomment;
	}

	public void setCcomment(String ccomment) {
		this.ccomment = ccomment;
	}

	@Column(name = "uid")
	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	@Column(name = "ctime")
	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}

	@Column(name = "pid")
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
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
		return "comment [cid=" + cid + ", ccomment=" + ccomment + ", uid=" + uid + ", ctime=" + ctime + ", pid=" + pid
				+ ", filed1=" + filed1 + ", filed2=" + filed2 + ", filed3=" + filed3 + "]";
	}

}
