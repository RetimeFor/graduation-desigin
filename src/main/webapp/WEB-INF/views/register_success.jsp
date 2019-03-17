<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>恭喜您注册成功</h1>
<br>
<div><a href="https://mail.163.com/" target="_Blank">点击完成邮箱验证，激活账号</a></div>
<br>
<div><a href="<c:url value='/login'></c:url>">前往登录页面</a></div>
</body>
</html>