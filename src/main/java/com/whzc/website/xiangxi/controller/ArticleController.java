package com.whzc.website.xiangxi.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.whzc.website.xiangxi.pojo.Chat;
import com.whzc.website.xiangxi.pojo.User;
import com.whzc.website.xiangxi.service.ChatService;
import com.whzc.website.xiangxi.service.UserService;
import com.whzc.website.xiangxi.service.impl.ChatServiceImpl;
import com.whzc.website.xiangxi.service.impl.UserServiceImpl;
import com.whzc.website.xiangxi.utils.CommonsUtils;
import com.whzc.website.xiangxi.utils.MD5Utils;
import com.whzc.website.xiangxi.utils.MailUtils;

@Controller
public class ArticleController {

	@RequestMapping(value="/home")
	public String home(){
		
		return "home";
	}

	@RequestMapping(value="/outline")
	public String outline(){
		
		return "outline";
	}
	
	@RequestMapping(value="/tourist")
	public String tourist(){
		
		return "tourist";
	}
	
	@RequestMapping(value="/cate")
	public String cate(){
		
		return "cate";
	}
	
	@RequestMapping(value="/culture")
	public String culture(){
		
		return "culture";
	}
	
	//临时
	@RequestMapping(value="/detail1")
	public String detail1(){
		
		return "detail1";
	}
	
	//临时
	@RequestMapping(value="/detail2")
	public String detail2(){
		
		return "detail2";
	}
	
	@RequestMapping(value="/worthy")
	public String worthy(){
		
		return "worthy";
	}
	//注册
	@RequestMapping(value="/register")
	public String register(){
		return "register";
	}
	@RequestMapping(value="/register_success")
	public String register_success(){
		return "register_success";
	}
	//登录
	@RequestMapping(value="/login")
	public String login(){
		return "login";
	}
	//交流区
	@RequestMapping(value="/tourist_chat")
	public String tourist_chat(HttpServletRequest request, HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		Cookie[] cookies = request.getCookies();

		String username=cookies[1].getValue();//用户名
		String password=cookies[2].getValue();//加密后的密码
		UserService service = new UserServiceImpl();
		
		try {
			if(service.isLogin(username,password)){
				return "tourist_chat";
			}
			return "login";
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().write("<h1>网络异常,请重新登录</h1>");
			return "login";
		}
	}
	@ResponseBody
	@RequestMapping(value="/findChats",method=GET,produces = {"text/html;charset=UTF-8;"})
	public String findChats(){
		//获取交流的信息
		ChatService chatService = new ChatServiceImpl();
		List<Map<String, Object>> chat = chatService.pageChat();
		List<Chat> jsonList = new ArrayList<Chat>();
		for(Map<String, Object> map:chat){
			Chat JSON =new Chat();
			JSON.setUsername((String) map.get("username"));
			JSON.setDate((String) map.get("date"));
			JSON.setContent((String) map.get("content"));
			jsonList.add(JSON);
		}
		Gson gson = new Gson();
		String data = gson.toJson(jsonList);
		return data;
	}
	@ResponseBody
	@RequestMapping(value="/addChats")
	public void addChats(String username , String date , String content){
		//获取交流的信息
		ChatService chatService = new ChatServiceImpl();
		chatService.addChat(username, date, content);
		//chatService.addChat(username, date, content);
	}
	
	

	
	//网站维护页面
	@RequestMapping(value="/errorPage")
	public String errorPage(){
		return "errorPage";
	}
	
	@RequestMapping(value="/LoginCheckServlet")
	public String LoginCheckServlet(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserService service = new UserServiceImpl();
		try {
			
			if( service.checkLogin(username,password) ){
				password = MD5Utils.md5(request.getParameter("password"));//将密码数据进行md5加密
				
				Cookie cookie1 = new Cookie("username", username);
				Cookie cookie2 = new Cookie("password", password);
				cookie1.setPath("/");
				cookie2.setPath("/");
				response.addCookie(cookie1);
				response.addCookie(cookie2);//发送cookie到客户端
				//HttpSession session=request.getSession(true);//创建session
				//session.setAttribute("username", username);
				//session.setAttribute("password", password);
				//session.setMaxInactiveInterval(60*60*24);//设置有效非活动时间为1天
				response.sendRedirect("home");
				
			}else{
				request.setAttribute("isError", "true");
				//response.sendRedirect("login");重定向导致数据无法传过去
				request.getRequestDispatcher("login").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "home";
	}
	
	@RequestMapping(value="/ActiveServlet")
	public String ActiveServlet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String activeCode = request.getParameter("activeCode");//获取RegisterServlet中的参数的值
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		UserService service = new UserServiceImpl();
		boolean activeSuccess = service.active(activeCode);
		if(activeSuccess){
			response.getWriter().write("激活成功,3后跳转到登录页面");
			response.setHeader("refresh","3;login");
			//response.sendRedirect(request.getContextPath() + "/login");
		}else{
			response.sendRedirect(request.getContextPath() + "/register");
		}
		return "login";
	}
	
	@RequestMapping(value="/RegisterCheckServlet")
	public String RegisterCheckServlet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username");
		UserService service = new UserServiceImpl();
		boolean isExist = service.checkUsername(username);
		
		
		if(isExist){
			response.getWriter().write("<h1>该用户名已存在,将返回登录页面</h1>");
			response.setHeader("refresh","2;register");
		}
		//String json = "{\"isExist\":"+isExist+"}";
		//response.getWriter().write(json);
		return "home";
	}
	
	@RequestMapping(value="/RegisterServlet")
	public String RegisterServlet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("UTF-8");
		
		//获取表单数据
		Map<String, String[]> parameterMap = request.getParameterMap();
		User user = new User();
		try {
			BeanUtils.populate(user, parameterMap);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		user.setUid(CommonsUtils.getUUID());
		user.setTelephone(null);
		user.setState(0);
		String activeCode = CommonsUtils.getUUID();//注意，这个字符串是随机生成的，每次调用这个工具类的方法，值都会不同
		user.setCode(activeCode);
		
		//将user传递给service层
		UserService service = new UserServiceImpl();
		boolean isRegisterSuccess = service.regist(user);
		
		if(isRegisterSuccess){
			//发送邮件
			try {
				MailUtils.sendMail(user.getEmail(), "请点击下方链接激活账号 <br>"
						+ "<a href='http://localhost:8080/graduation-project-ywb/ActiveServlet?activeCode="+activeCode+"'>"
						+"http://localhost:8080/graduation-project-ywb/ActiveServlet?activeCode="+activeCode+"</a>");
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			
			response.sendRedirect(request.getContextPath()+"/register_success");
		}else{
			response.sendRedirect(request.getContextPath()+"/RegisterCheckServlet");
		}
		return "register_success";
	}
	
}
