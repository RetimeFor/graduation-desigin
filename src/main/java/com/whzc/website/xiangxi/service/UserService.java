package com.whzc.website.xiangxi.service;

import com.whzc.website.xiangxi.pojo.User;

public interface UserService {

	public boolean regist(User user);//注册验证(判断用户是否已存在)

	public boolean active(String activeCode);//激活验证(判断账号是否激活)

	public boolean checkUsername(String username);//用户名验证(用于检验登入评论区的用户)

	public boolean checkLogin(String username,String password);//登录验证

	public boolean isLogin(String username, String password);//判断是否处于登录状态(是否在未登录时进入评论区)
}
