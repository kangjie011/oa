package com.ssh.service;

import com.ssh.model.Person;

public interface ForntService {
	// 补充候选人信息
	public String addPersonMessages(Person p);

	// 查询当日上门候选人信息
	public String selectToday();
}
