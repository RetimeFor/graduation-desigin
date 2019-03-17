package com.whzc.website.xiangxi.service;

import java.util.List;
import java.util.Map;

public interface ChatService {

	public int chatSize();//获取总评论的条数
	public List<Map<String, Object>> pageChat();//当前页显示的总评论条数
	public List<Map<String, Object>> lastTimeChat();//查看浏览记录后，页面显示的评论条数
	public void addChat(String username , String date , String content);//添加评论
}
