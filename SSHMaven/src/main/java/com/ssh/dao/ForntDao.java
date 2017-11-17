package com.ssh.dao;

import java.util.List;

import com.ssh.model.Person;

public interface ForntDao {
	// .添加未预约直接参加面试候选人（人事助理id为空）
	public String insertPerson();

	// .补全信息并添加人事自动改为来访（自动设置来访时间）
	public String updatePerson();

	// .查询所有当天预约和二次预约的候选人（模糊查询按候选人姓名查找）
	public List selectToDay(Person p,String minDate,String maxDate);
	
}
