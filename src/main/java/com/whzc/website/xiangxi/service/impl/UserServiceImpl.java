package com.whzc.website.xiangxi.service.impl;

import java.sql.SQLException;


import com.whzc.website.xiangxi.dao.UserDao;
import com.whzc.website.xiangxi.pojo.User;
import com.whzc.website.xiangxi.service.UserService;

public class UserServiceImpl implements UserService {

	UserDao dao = new UserDao();
	@Override
	public boolean regist(User user) {
		try {
			return dao.regist(user);
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean active(String activeCode) {
		try {
			dao.active(activeCode);//如果激活成功
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean checkUsername(String username) {
		try {
			return dao.checkUsername(username);
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean checkLogin(String username, String password) {
		try {
			return dao.checkLogin(username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean isLogin(String username, String password) {
		try {
			return dao.isLogin(username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
