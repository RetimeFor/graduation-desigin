package com.whzc.website.xiangxi.dao;

import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;


public class ChatDao {

	ApplicationContext application = new FileSystemXmlApplicationContext("E:/eclipse/workspace/graduation-project-ywb/src/main/resources/applicationContext.xml");
	JdbcTemplate temp = (JdbcTemplate) application.getBean("jdbcTemplate");//导入jdbc模板
	
	
	public int chatSize(){//获取总评论条数
		Integer count = temp.queryForObject("select count(*) from chats",Integer.class);
		return count;
	}
	
	int size = chatSize();
	int pageSize = 20;
	
	public List<Map<String, Object>> pageChat(){//当前页面显示评论的条数
		List<Map<String, Object>> list = temp.queryForList("select * from (select * from chats order by date desc limit "+pageSize+") chats order by date");
		return list;
	}
	
	public List<Map<String, Object>> lastTimeChat(){//往上查看过去的聊天记录
		pageSize +=20;
		return pageChat();
	}
	public void addChat(String username , String date , String content){
		temp.update("insert into chats values(?,?,?)",username,date,content);
	}
	
	/*public static void main(String[] args) {
		LocalDateTime time = LocalDateTime.now();
		System.out.println(time);
		CommentsDao dao = new CommentsDao();
		int commentsSize = dao.commentsSize();
		List<?> pageComments = dao.pageComments();
		System.out.println(commentsSize);
		System.out.println(pageComments);
	}*/
}
