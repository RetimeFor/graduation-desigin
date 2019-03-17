<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath}/static/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="css/login/style.css"></c:url>" />
<style>
	body{height:100%;background:#16a085;overflow:hidden;}
	canvas{z-index:-1;position:absolute;}
</style>
<script src="<c:url value="js/jquery-1.11.0.min.js"></c:url>"></script>
<script src="<c:url value="js/verificationNumbers.js"></c:url>"></script>
<script src="<c:url value="js/Particleground.js"></c:url>"></script>
<script>
	$(document).ready(function() {
	  //粒子背景特效
	  $('body').particleground({
	    dotColor: '#4ac3f3',
	    lineColor: '#4ac3f3'
	  });
	  //验证码
	  createCode();
	  /* //测试提交，对接程序删除即可
	  $(".submit_btn").click(function(){
		  location.href="/login";
		  }); */
	  if(<%=request.getAttribute("isError")%>){
		  alert("用户名或密码错误");
		  window.history.back(-1);//回到之前的页面
	  }
	});
</script>
</head>
<body>
	<form action="<c:url value="/LoginCheckServlet"></c:url>" method="post">
		<dl class="admin_login">
		 <dt>
		  <strong>解密湘西网站登录</strong>
		  <em>吉首大学物理与机电工程学院</em>
		 </dt>
		 <dd class="user_icon">
		  <input type="text" name="username" id="username" placeholder="账号" class="login_txtbx"/>
		 </dd>
		 <dd class="pwd_icon">
		  <input type="password" name="password" id="password" placeholder="密码" class="login_txtbx"/>
		 </dd>
		 
		 
		 <dd class="val_icon">
		  <div class="checkcode">
		    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
		    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
		  </div>
		  <input type="button" value="验证码核验" class="ver_btn search" onClick="validate();">
		 </dd>
		 <dd>
		  <input type="submit" value="立即登陆" class="submit_btn"/>
		 </dd>
		 <dd>
		  <p>© 2018-2019 whzc 版权所有</p>
		 </dd>
		 <dd id="box">
		 </dd>
		</dl>
	</form>
</body>
</html>