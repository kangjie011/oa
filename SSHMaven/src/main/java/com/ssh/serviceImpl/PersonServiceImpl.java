package com.ssh.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.PersonDao;
import com.ssh.service.PersonService;

/**
 * 
 * 创建时间：2017年11月13日
 * 项目名称：SSHMaven
   @author 亢杰
   @version 1.0
 *
 */
@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
	PersonDao personDao;
	@Override
	public List selectPersonAllByDate() {
		// TODO Auto-generated method stub
		return personDao.selectPersonAllByDate();
	}

}
