package com.whzc.website.xiangxi.service.impl;

import java.util.List;
import java.util.Map;

import com.whzc.website.xiangxi.dao.ChatDao;
import com.whzc.website.xiangxi.service.ChatService;

public class ChatServiceImpl implements ChatService{

	ChatDao dao = new ChatDao();
	@Override
	public int chatSize() {
		return dao.chatSize();
	}

	@Override
	public List<Map<String, Object>> pageChat() {
		return dao.pageChat();
	}

	@Override
	public List<Map<String, Object>> lastTimeChat() {
		return dao.lastTimeChat();
	}

	@Override
	public void addChat(String username, String date, String content) {
		dao.addChat(username, date, content);
	}

	/*public static void main(String[] args) {
		ChatServiceImpl ser= new ChatServiceImpl();
		List<Map<String, Object>> pageChat = ser.pageChat();
		System.out.println(pageChat);
	}*/

}
