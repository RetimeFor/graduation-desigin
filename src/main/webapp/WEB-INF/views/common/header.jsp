<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<title>Insert title here</title>

<style>
.active-button{
	background:#63b2f5 !important;
}
.loginbutton , .registerbutton{
	color:#fff;
}
.registerbutton:hover , .loginbutton:hover{
	color:#5288e0;
}
</style>
<script type="text/javascript">

 $(document).ready(function () {
	var MyCookie = document.cookie;//数据格式是  username = xxxxxxx;password = xxxxxxxx;
    var cookies = MyCookie.split(";");
    var userinfos = cookies[0];
    var userinfo = userinfos.split("=");
    if(userinfo != null && userinfo != "" && userinfo[0] == "username"){
   		var username = userinfo[1];//获取到用户名
    }else if(userinfo != null && userinfo != "" && userinfo[0] != "username"){
    	userinfos = cookies[1];
    	userinfo = userinfos.split("=");
    	var username = userinfo[1];
    }
    
    if(MyCookie != null && MyCookie !=""){//根据cookie判断登录状态
    	$('.LoginOrRegister').hide();
    	$('.information-user').append("<h3>您好:"+username+"</h3>")
    	$('.cancel-login').append("<button>注销</button>")
    };
    
    $('.cancel-login').click(function(){//点击注销
    	 var keys = document.cookie.match(/[^ =;]+(?=\=)/g);
    
         if(keys) {  
           for(var i = keys.length; i--;){
        	   /* alert(document.cookie);
				MyCookie = keys[i] + '=0;expires=' + new Date(0).toUTCString();//清除cookie */
				$.cookie('username',   null, { path:"/",expires: -1 });//jquery的方法
				$.cookie('password', null, { path:"/",expires: -1 });
           }
             location.reload();//刷新页面
         }
    });
    $('.comments-img').click(function(){//进入交流区
    	if(MyCookie != 'null' && MyCookie !=""){
    		$(window).attr('location','//localhost:8080/graduation-project-ywb/tourist_chat');
        }else{
        	alert("您还未登录,请先登录");
        	$(window).attr('location','//localhost:8080/graduation-project-ywb/login');
        }
    });
    //以上直接通过cookie的方式存放用户信息有安全隐患
    
    <%-- var MySession = '<%=session.getAttribute("username") %>';
    if(MySession != 'null' && MySession !=""){
    	$('.LoginOrRegister').hide();
    	$('.information-user').append("<h3>您好:"+MySession+"</h3>")
    	$('.cancel-login').append("<button>注销</button>")
    };
    
    $('.cancel-login').click(function(){//点击注销
        <%session.setAttribute("username", null);%>
    	location.reload();//刷新页面
    });
    
    $('.comments-img').click(function(){//进入评论区
    	if(MySession != 'null' && MySession !=""){
    		$(window).attr('location','https://www.baidu.com');
        }else{
        	alert("您还未登录,请先登录");
        	$(window).attr('location','../login');
        }
    }); --%>
    
}); 


</script>
</head>
<body>
<!-- Header -->
			<header id="header" class="animate-onscroll">
				
				<!-- Main Header -->
				<div id="main-header">
					
					<div class="container">
					
					<div class="row">
						
						<!-- Logo -->
						<div id="logo" class="col-lg-3 col-md-3 col-sm-3">
							
							<a href="###"><img src="img/logo4.png" alt="Logo"></a>
							
						</div>
						<!-- /Logo -->
						
						
						<!-- Main Quote -->
						<div class="col-lg-3 col-md-3 col-sm-3">
							
							<blockquote>就让我们一起来解密神秘美丽的湘西<br>努力探索中。。。</blockquote>
							
						</div>
						<!-- /Main Quote -->
						<!-- Comments -->
						<div class="col-lg-3 col-md-3 col-sm-3 comments-log">
							<img src="img/comments.jpg" alt="" class="comments-img"  style="width:100px;height:100px;cursor:pointer;" />
						</div>
						<!-- /Comments -->
						
						<!-- Newsletter -->
						
						<div class="col-lg-2 col-md-2 col-sm-2 information-user">
							
							<div class="LoginOrRegister" style="background:#274472;height:40px;">
								<h5 style="line-height:40px"><a href="<c:url value="/login"></c:url>" class="loginbutton"><strong>登录 </strong></a> / <a href="<c:url value="/register"></c:url>" class="registerbutton"><strong>注册</strong></a></h5>
							</div>
							
						</div>
						
						<!-- /Newsletter -->
						<div class="col-lg-1 col-md-1 col-sm-1 cancel-login"></div>
						<!-- <div class="col-lg-1 col-md-1 col-sm-1">
							<a href="message-board"><img alt="picture" src="img/leave-message.jpg"  style="padding-top:15px;"></a>
						</div> -->
						
					</div>
					
					</div>
					
				</div>
				<!-- /Main Header -->
				
				
				
				
				
				<!-- Lower Header -->
				<div id="lower-header">
					
					<div class="container">
					
					<div id="menu-button">
						<div>
						<span></span>
						<span></span>
						<span></span>
						</div>
						<span>Menu</span>
					</div>
					
					<ul id="navigation">
						
						<!-- Home -->
						<li class="home-button active-button">
						
							<a href="<c:url value="/home"></c:url>"><i class="icons icon-home"></i></a>
							
						</li>
						<!-- /Home -->
						
						<!-- Pages -->
						<li >
						
							<a href="<c:url value="/outline"></c:url>"><span>湘西概况</span></a>
							
							
						</li>
						<!-- /Pages -->
						
						<!-- Events -->
						<li >
						
							<a href="<c:url value="/tourist"></c:url>"><span>旅游景点</span></a>
							
						</li>
						<!-- /Events -->
						
						<!-- Media -->
						<li >
						
							<a href="<c:url value="/cate"></c:url>"><span>舌尖上的湘西</span></a>
							
						</li>
						<!-- /Media -->
						
						
						
						<!-- Get Involved -->
						<li >
							<a href="<c:url value="/culture"></c:url>"><span>地域文化</span></a>
						</li>
						<!-- /Get Involved -->
						
						
						
						<!-- Features -->
						<li >
						
							<a href="<c:url value="/worthy"></c:url>"><span>杰出人物</span></a>
							
						</li>
						<!-- /Features -->
						
						
						
						
						<!-- /Shop -->
						
						<!-- Donate -->
						<li class="donate-button ">
							<a href="<c:url value="/shop/home"></c:url>"><span>特产商城首页</span></a>
						</li>
						<!-- /Donate -->
						
					</ul>
					
					</div>
					
				</div>
				<!-- /Lower Header -->
				
				
			</header>
			<!-- /Header -->
</body>

</html>