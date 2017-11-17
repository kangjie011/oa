package com.ssh.dao;

import java.util.List;

import com.ssh.model.Person;
import com.ssh.model.User;

public interface AssistantDao {
	// 二次预约和预约的录入信息
	public String selectOrder(Person p, User u);

	// 修改状态为流失
	public String updateLose(Person p);

	// 添加候选人： 3个字段 姓名，电话，性别（自动加当前助理id）
	public String addPerson(Person p, int id);

	// .查看所有自己预约成功了多少人（id为当前人事助理的候选人且候选人上门时间不为空）
	public List selectOrderSuccess(int id);

	// .模糊查询查（当前助理id下预约和二次预约和流失）
	public List selectByCondition(Person p, int id);

	// .预约当天没来的状态自动改为二次预约（预约时间=当天）
	public void updateStateTwoOrder();

	// .二次预约当天晚上没来的自动改为流失（二次预约时间=当天）
	public void updateStateLose();
}
