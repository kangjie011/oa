package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "time")
public class Time {
	private int tid;
	private int pid;
	private String pordertime;
	private String pordertimetwo;
	private String pvisittime;
	private String psigntime;
	private String filed1;
	private String filed2;
	private String filed3;

	@Id
	@Column(name = "tid")
	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	@Column(name = "pid")
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	@Column(name = "pordertime")
	public String getPordertime() {
		return pordertime;
	}

	public void setPordertime(String pordertime) {
		this.pordertime = pordertime;
	}

	@Column(name = "pordertimetwo")
	public String getPordertimetwo() {
		return pordertimetwo;
	}

	public void setPordertimetwo(String pordertimetwo) {
		this.pordertimetwo = pordertimetwo;
	}

	@Column(name = "pvisittime")
	public String getPvisittime() {
		return pvisittime;
	}

	public void setPvisittime(String pvisittime) {
		this.pvisittime = pvisittime;
	}

	@Column(name = "psigntime")
	public String getPsigntime() {
		return psigntime;
	}

	public void setPsigntime(String psigntime) {
		this.psigntime = psigntime;
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

	public Time(int tid, int pid, String pordertime, String pordertimetwo, String pvisittime, String psigntime,
			String filed1, String filed2, String filed3) {
		super();
		this.tid = tid;
		this.pid = pid;
		this.pordertime = pordertime;
		this.pordertimetwo = pordertimetwo;
		this.pvisittime = pvisittime;
		this.psigntime = psigntime;
		this.filed1 = filed1;
		this.filed2 = filed2;
		this.filed3 = filed3;
	}

	public Time(int tid, int pid, String pordertime, String pordertimetwo, String pvisittime, String psigntime) {
		super();
		this.tid = tid;
		this.pid = pid;
		this.pordertime = pordertime;
		this.pordertimetwo = pordertimetwo;
		this.pvisittime = pvisittime;
		this.psigntime = psigntime;
	}

	public Time() {
		super();
	}

	@Override
	public String toString() {
		return "Time [tid=" + tid + ", pid=" + pid + ", pordertime=" + pordertime + ", pordertimetwo=" + pordertimetwo
				+ ", pvisittime=" + pvisittime + ", psigntime=" + psigntime + ", filed1=" + filed1 + ", filed2="
				+ filed2 + ", filed3=" + filed3 + "]";
	}

}
