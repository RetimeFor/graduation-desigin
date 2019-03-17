package com.whzc.website.xiangxi.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import com.whzc.website.xiangxi.pojo.User;

public class UserDao {
	
	ApplicationContext application = new FileSystemXmlApplicationContext("E:/eclipse/workspace/graduation-project-ywb/src/main/resources/applicationContext.xml");
	JdbcTemplate temp = (JdbcTemplate) application.getBean("jdbcTemplate");//导入jdbc模板

	public boolean regist(User user)  throws SQLException{
		temp.update("insert into user1 values(?,?,?,?,?,?,?,?,?,?)",user.getUid(),user.getUsername(),user.getPassword(),user.getName(),user.getEmail(),user.getTelephone(),user.getBirthday(),user.getSex(),user.getState(),user.getCode());
		return true;
	}

	public void active(String activeCode) throws SQLException {//激活账户
		temp.update("update user1 set state=? where code=?",1,activeCode);
	}

	public boolean checkUsername(String username) throws SQLException {
		temp.queryForList("select count(*) from user1 where username=?", username);
		return true;
	}

	public boolean checkLogin(String username, String password) throws SQLException {
		List<Map<String, Object>> queryList = temp.queryForList("select * from user1 where username=? and password=?",username,password);
		if(queryList.size() > 0 && (int)queryList.get(0).get("state")==1){//如果有这条数据，并且是激活的账号
			return true;
		}
		return false;
	}

	public boolean isLogin(String username,String password) throws SQLException {
		temp.queryForList("select * from user1 where username=?",username);
		return true;
	}
	
}
