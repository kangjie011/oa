package com.ssh.service;

import java.util.List;

import com.ssh.model.Person;

public interface AssistantService {
	// 预约上门
	public String orderPerson(Person p);

	// 查询需要打回访电话的候选人信息
	public List visitPhone();

	// 查询上一个工作日的上门候选人的信息(所有人都有)
	public List selectPersonAllByYestoday();

	// 按日期查询候选人信息
	public List selectPersonByDate(String minDay, String maxDay);
}
