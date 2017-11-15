package com.ssh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "person")
public class Person {
	private int pid;
	private String pname;
	private int page;
	private String pphone;
	private String psex;
	private String pordertime;
	private String pstate;
	private String pschool;
	private String pmajor;
	private String peducation;
	private String pvisittime;
	private String psigntime;
	private int pabout;
	private int ppersonnel;
	private String filed1;
	private String filed2;
	private String filed3;

	@Id
	@Column(name = "pid")
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	@Column(name = "pname")
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	@Column(name = "page")
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	@Column(name = "pphone")
	public String getPphone() {
		return pphone;
	}

	public void setPphone(String pphone) {
		this.pphone = pphone;
	}

	@Column(name = "psex")
	public String getPsex() {
		return psex;
	}

	public void setPsex(String psex) {
		this.psex = psex;
	}

	@Column(name = "pordertime")
	public String getPordertime() {
		return pordertime;
	}

	public void setPordertime(String pordertime) {
		this.pordertime = pordertime;
	}

	@Column(name = "pstate")
	public String getPstate() {
		return pstate;
	}

	public void setPstate(String pstate) {
		this.pstate = pstate;
	}

	@Column(name = "pschool")
	public String getPschool() {
		return pschool;
	}

	public void setPschool(String pschool) {
		this.pschool = pschool;
	}

	@Column(name = "pmajor")
	public String getPmajor() {
		return pmajor;
	}

	public void setPmajor(String pmajor) {
		this.pmajor = pmajor;
	}

	@Column(name = "peducation")
	public String getPeducation() {
		return peducation;
	}

	public void setPeducation(String peducation) {
		this.peducation = peducation;
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

	@Column(name = "pabout")
	public int getPabout() {
		return pabout;
	}

	public void setPabout(int pabout) {
		this.pabout = pabout;
	}

	@Column(name = "ppersonnel")
	public int getPpersonnel() {
		return ppersonnel;
	}

	public void setPpersonnel(int ppersonnel) {
		this.ppersonnel = ppersonnel;
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

	public Person(int pid, String pname, int page, String pphone, String psex, String pordertime, String pstate,
			String pschool, String pmajor, String peducation, String pvisittime, String psigntime, int pabout,
			int ppersonnel, String filed1, String filed2, String filed3) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.page = page;
		this.pphone = pphone;
		this.psex = psex;
		this.pordertime = pordertime;
		this.pstate = pstate;
		this.pschool = pschool;
		this.pmajor = pmajor;
		this.peducation = peducation;
		this.pvisittime = pvisittime;
		this.psigntime = psigntime;
		this.pabout = pabout;
		this.ppersonnel = ppersonnel;
		this.filed1 = filed1;
		this.filed2 = filed2;
		this.filed3 = filed3;
	}

	public Person(int pid, String pname, int page, String pphone, String psex, String pordertime, String pstate,
			String pschool, String pmajor, String peducation, String pvisittime, String psigntime, int pabout,
			int ppersonnel) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.page = page;
		this.pphone = pphone;
		this.psex = psex;
		this.pordertime = pordertime;
		this.pstate = pstate;
		this.pschool = pschool;
		this.pmajor = pmajor;
		this.peducation = peducation;
		this.pvisittime = pvisittime;
		this.psigntime = psigntime;
		this.pabout = pabout;
		this.ppersonnel = ppersonnel;
	}

	public Person() {
		super();
	}

	@Override
	public String toString() {
		return "Person [pid=" + pid + ", pname=" + pname + ", page=" + page + ", pphone=" + pphone + ", psex=" + psex
				+ ", pordertime=" + pordertime + ", pstate=" + pstate + ", pschool=" + pschool + ", pmajor=" + pmajor
				+ ", peducation=" + peducation + ", pvisittime=" + pvisittime + ", psigntime=" + psigntime + ", pabout="
				+ pabout + ", ppersonnel=" + ppersonnel + ", filed1=" + filed1 + ", filed2=" + filed2 + ", filed3="
				+ filed3 + "]";
	}

}
