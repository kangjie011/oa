package com.ssh.service;

import java.util.List;

import com.ssh.model.Person;
import com.ssh.model.User;

public interface ManagerService {

	// 按星期查询三个week方法
	public List selectByWeek();

	// 按月查询两个mouth方法
	public List selectByMonth(int month);

	// .添加职员
	public void addUser(User u);

	// 修改职员信息
	public void updateUser(User u);

	// 删除职员
	public void delUser(int id);

	// .模糊查询所有职员
	public List selectAllUser();

	// .模糊查询所有候选人（候选人，指定时间，候选人状态）
	public List selectAllPerson(Person p, String minDate, String maxDate);

	// .预约成功率=候选人预约id为当前助理/候选人预约id为当前助理且上门时间不为空
	public List orderSuccessPercent(int id);

	// .面试成功率=当前人事已签订/当前人事所有面试候选人
	public List interviewSuccessPercent(int id);

	// .导出表格
	public String excel(String str);

	// 按id查出一个职员
	public List selectOneUser(int id);

}
