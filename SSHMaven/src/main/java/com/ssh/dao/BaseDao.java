package com.ssh.dao;

import java.util.List;

import com.ssh.model.Person;
import com.ssh.model.User;

public interface BaseDao {
		//查询上一个工作日的上门候选人的信息(所有人都有) 
		public List<Person> selectPersonAllByYestoday();
		//添加备注
		public String addComment(Person p,User u,String str);
		//查询本月上门量
		public List selectMouth();
		//查询本月流失量
		public List selectLoser();
		//查询本月个人签单量
		public List selectSignByUser(User u);
		//导出表格
		public void Dao(String strs);
}
