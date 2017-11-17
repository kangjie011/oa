package com.ssh.dao;

import java.util.List;

import com.ssh.model.Person;

public interface PersonnelDao {
//	.将来访或进行试听改为考虑中 或签定 或流失
	public String updatePerson(Person p);
//	.查询所有自己面试(状态为来访或进行试听的候选人）或（已签定、考虑中的候选人）
	public List selectMyself(int id);
}
