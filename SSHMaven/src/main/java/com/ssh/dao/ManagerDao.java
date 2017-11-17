package com.ssh.dao;

import java.util.List;

import com.ssh.model.Person;
import com.ssh.model.User;

public interface ManagerDao {
	// .index查询上周预约总人数 ，上门总人数（有上门时间），已签订候选人总数（表格）
	public String selectOrderByWeek();

	public String selectVisitByWeek();

	public String selectSignByWeek();
	// .index查询所有按每个月本年度上门候选人和所有已签订候选人数量（流线图）

	public String selectVisitByMonth();

	public String selectSignByMonth();
	// .添加职员
	public String addUser();
	// .修改候选人信息
	public String updatePerson(int id);
	// .模糊查询所有职员
	public List selectAllUser();
	// .模糊查询所有候选人（候选人，指定时间，候选人状态）
	public List selectAllPerson(Person p,String minDate,String maxDate);
	// .修改职员信息
	public String updateUser(int id);
	// .预约成功率=候选人预约id为当前助理/候选人预约id为当前助理且上门时间不为空
	public String orderSuccessPercent(int id);
	// .面试成功率=当前人事已签订/当前人事所有面试候选人
	public String interviewSuccessPercent(int id);
	// .导出表格
	public String excel(String str);
}
