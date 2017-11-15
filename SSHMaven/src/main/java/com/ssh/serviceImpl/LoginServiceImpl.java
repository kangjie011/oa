package com.ssh.serviceImpl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.ssh.dao.LoginDao;
import com.ssh.model.User;
import com.ssh.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired()
	LoginDao loginDao;

	@Override
	public List login(User u) {
		List list = loginDao.login(u);
		return list;
	}

}
