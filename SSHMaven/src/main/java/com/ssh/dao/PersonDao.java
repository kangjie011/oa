package com.ssh.dao;

import java.util.List;

/**
 * 
 * 创建时间：2017年11月13日
 * 项目名称：SSHMaven
   @author 亢杰
   @version 1.0
 *
 */
public interface PersonDao {
	//查看当日上门量
	public List selectPersonAllByDate();
	
}
