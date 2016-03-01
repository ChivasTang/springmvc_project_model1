package com.yansm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yansm.dao.LoginLogDao;
import com.yansm.dao.UserDao;
import com.yansm.domain.LoginLog;
import com.yansm.domain.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LoginLogDao  loginLogDao;
	
	public boolean hasMatchUser(String userName,String password){
		int matchCount = userDao.getMatchCount(userName, password);
		return matchCount >0;
	}
	
	public User findUserByUserName(String userName){
		return userDao.findUserByUserName(userName);
	}
	
	public void loginSuccess(User user){
		user.setCredits(5+user.getCredits());
		LoginLog loginLog = new LoginLog();
		loginLog.setUserId(user.getUserId());
		loginLog.setIp(user.getLastIp());
		loginLog.setLoginDate(user.getLastVisit());
		userDao.updateLoginInfo(user);
		loginLogDao.insertLoginLog(loginLog);
	}

}
