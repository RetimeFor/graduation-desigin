<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorPage.jsp"%><!-- 如果页面出错就请求转发到错误页面 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>

<meta charset="utf-8">
<base href="${pageContext.request.contextPath}/static/">
<title>Insert title here</title>


<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/fontello.css" rel="stylesheet" type="text/css">
<link href="css/flexslider.css" rel="stylesheet" type="text/css">
<link href="js/revolution-slider/css/settings.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="css/responsive-calendar.css" rel="stylesheet" type="text/css">
<link href="css/chosen.css" rel="stylesheet" type="text/css">
<!-- <link href="jackbox/css/jackbox.min.css" rel="stylesheet" type="text/css" /> -->
<link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/loaders.css">

<style type="text/css">
	.no-fouc {display:none;}
</style>

<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery-ui-1.10.4.min.js"></script>
<!-- 预加载动画 -->
<!-- <script src="js/jquery.queryloader2.min.js"></script> -->
		
<script type="text/javascript" src="js/whzc.xiangxi.aside.js"></script>

</head>
<body class="sticky-header-on tablet-sticky-header boxed-layout">
	<div id="fb-root"></div>
		<!-- Container -->
		<div class="container">
			
		<jsp:include page="common/header.jsp"></jsp:include>
			
		<section id="content">
			
			<!-- Section -->
			<section class="section full-width-bg">
				
				<div class="row">
				
					<div class="col-lg-12 col-md-12 col-sm-12">
						
						<!-- Revolution Slider -->
						<div class="tp-banner-container main-revolution">
						
							<span class="Apple-tab-span"></span>
 
							<div class="tp-banner">
								
								<ul>
									<li data-transition="papercut" data-slotamount="7">
										<img src="img/main-picture/美图1.jpg" alt="">
										<div class="tp-caption"  data-x="100" data-y="115" data-speed="700" data-start="1000" data-easing="easeOutBack"><h2>这里有着闻名于世界的<br>美丽风景</h2></div>
										<div class="tp-caption"  data-x="100" data-y="310" data-speed="500" data-start="1200" data-easing="easeOutBack"><a href="#" class="button big">点击进入</a></div>
									</li>
									
									<li data-transition="papercut" data-slotamount="7">
										<img src="img/main-picture/2.jpg" alt="">
										<div class="tp-caption align-center" data-x="center" data-y="135" data-speed="700" data-start="1000" data-easing="easeOutBack"><h2 class="great-vibes">这里有着独具风味的</h2></div>
										<div class="tp-caption align-center" data-x="center" data-y="220" data-speed="500" data-start="1200" data-easing="easeOutBack"><h2>湘西美食</h2></div>
										<div class="tp-caption align-center" data-x="center" data-y="300" data-speed="300" data-start="1400"><a href="#" class="button big button-arrow">点击进入d</a></div>
									</li>
									
									<li data-transition="papercut" data-slotamount="7">
										<img src="img/main-picture/3.jpg" alt="">
										<div class="tp-caption align-right" data-x="right" data-hoffset="-100" data-y="150" data-speed="700" data-start="1000" data-easing="easeOutBack"><h2>这里有着充满人情的</h2></div>
										<div class="tp-caption align-right" data-x="right" data-hoffset="-100" data-y="225" data-speed="500" data-start="1200" data-easing="easeOutBack"><h2>地域文化</h2></div>
										<div class="tp-caption align-right" data-x="right" data-hoffset="-100" data-y="305" data-speed="300" data-start="1400"><a href="#" class="button big button-arrow">点击进入</a></div>
									</li>
								</ul>
								
							</div>
						 
						</div>
						<!-- /Revolution Slider -->
						
					</div>	
				</div>
			</section>
			<!-- /Section -->
			
			
			
			
			<!-- Section -->
			<section class="section full-width-bg gray-bg">
				
				<div class="row">
				
					<div class="col-lg-9 col-md-9 col-sm-8">
						
						<h3 class="animate-onscroll no-margin-top">湘西概况</h3>
						
												<!-- Blog Post -->
						<div class="blog-post big animate-onscroll">
							
							<div class="post-image">
								<img src="img/main-picture/4.jpg" alt="">
							</div>
							
							<h4 class="post-title">湘西土家族苗族自治州，隶属湖南省，是湖南省唯一的少数民族自治州。</h4>
							
							<p>湘西州位于湖南省西北部,武陵山脉自西向东蜿蜒境内，系云贵高原东缘武陵山脉东北部，西骑云贵高原，北邻鄂西山地，东南以雪峰山为屏。东部、东北部与湖南省怀化市、张家界市交界；西南与贵州省铜仁市接壤；西部与重庆市秀山县、酉阳县毗连，西北部与湖北省恩施州相邻，系湘鄂渝黔四省市交界之地。1952年设立湘西苗族自治区，自治区人民政府驻乾城县所里。</p>
							
							<a href="###" class="button read-more-button big button-arrow">查看详情</a>
							
						</div>
						<!-- /Blog Post -->						
					</div>
					
					
					
					<!-- Sidebar -->
					<div class="col-lg-3 col-md-3 col-sm-4 sidebar">
						
												<!-- Upcoming Events -->
						<div class="sidebar-box white animate-onscroll">
							<h3>通知公告</h3>
							<ul class="upcoming-events">
							
								<!-- Event -->
								<li>
									<div class="date">
										<span>
											<span class="day">25</span>
											<span class="month">May</span>
										</span>
									</div>
									
									<div class="event-content">
										<h6><a href="###">湘西民族自治州关于五一放假安排</a></h6>
										<ul class="event-meta">
											<li><i class="icons icon-circle"></i>五一节放假从4月28号到5月1号
										</ul>
									</div>
								</li>
								<!-- /Event -->
								
								<!-- Event -->
								<li>
									<div class="date">
										<span>
											<span class="day">28</span>
											<span class="month">Apr</span>
										</span>
									</div>
									
									<div class="event-content">
										<h6><a href="###">4月28号，我市领导将下乡视察</a></h6>
										<ul class="event-meta">
											<li><i class="icons icon-circle"></i> 了解乡村人们近期的生活状况</li>
										</ul>
									</div>
								</li>
								<!-- /Event -->
								
								<!-- Event -->
								<li>
									<div class="date">
										<span>
											<span class="day">25</span>
											<span class="month">Apr</span>
										</span>
									</div>
									
									<div class="event-content">
										<h6><a href="event-post-v2.html">关于开展扫黑除恶工作</a></h6>
										<ul class="event-meta">
											<li><i class="icons icon-circle"></i> 为了让人民的生活更加安心。</li>
										</ul>
									</div>
								</li>
								<!-- /Event -->
								
							</ul>
							<a href="###" class="button transparent button-arrow">更多通知</a>
						</div>
						<!-- /Upcoming Events -->						
					</div>
					<!-- /Sidebar -->
					
				</div>
				
				
				
				<div class="row no-margin-bottom">
				
					
					<div class="col-lg-12 col-md-12 col-sm-12">
						
												
						<!-- Owl Carousel -->
						<div class="owl-carousel-container">
							
							<div class="owl-header">
								
								<h3 class="animate-onscroll">旅游景点</h3>
								
								<div class="carousel-arrows animate-onscroll">
									<span class="left-arrow"><i class="icons icon-left-dir"></i></span>
									<span class="right-arrow"><i class="icons icon-right-dir"></i></span>
								</div>
								
							</div>
							
							<div class="owl-carousel" data-max-items="4">
										
								<!-- Owl Item -->
								<div>
									
									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">
										
										<div class="post-image">
											<img src="img/main-picture/5.jpg" alt="">
										</div>
										
										<h4 class="post-title"><a href="###">凤凰古城</a></h4>
										
										<div class="post-meta">
											<span>位于湘西凤凰市的著名古城</span>
										</div>
										
										<p>凤凰古城是国家历史文化名城，曾被新西兰著名作家路易艾黎称赞为中国最美丽的小城。作为一座国家历史文化名城，凤凰的风景将自然的、人文的特质有机融合到一处，透视后的沉重感也许正是其吸引八方游人的魅力之精髓。</p>
										
										<a href="<c:url value="/detail1"></c:url>" class="button read-more-button big button-arrow">详情</a>
										
									</div>
									<!-- /Blog Post -->
									
								</div>
								<!-- /Owl Item -->
								
								<!-- Owl Item -->
								<div>
									
									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">
										
										<div class="post-image">
											<img src="img/main-picture/6.jpg" alt="">
										</div>
										
										<h4 class="post-title"><a href="###">张家界森林公园</a></h4>
										
										<div class="post-meta">
											<span>张家界地区的国家保护森林公园</span>
										</div>
										
										<p>张家界国家森林公园自然风光以峰称奇、以谷显幽、以林见秀。其间有奇峰3000多座，如人如兽、如器如物，形象逼真，气势壮观，有“三千奇峰，八百秀水”之美称。主要景点有金鞭溪、袁家界、杨家界等。</p>
										
										<a href="###" class="button read-more-button big button-arrow">详情</a>
										
									</div>
									<!-- /Blog Post -->
									
								</div>
								<!-- /Owl Item -->
								
								<!-- Owl Item -->
								<div>
									
									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">
										
										<div class="post-image">
											<img src="img/main-picture/7.jpg" alt="">
										</div>
										
										<h4 class="post-title"><a href="###">乾州古城</a></h4>
										
										<div class="post-meta">
											<span>拥有几百年历史的著名古城</span>
										</div>
										
										<p>具有420多年历史的吉首乾州古城位于湖南省湘西自治州首府吉首市区内的万溶江河畔，这里交通便捷，209国道和枝柳铁路纵贯南北，是湘、鄂、渝、黔四省边区传统的物质集散中心。</p>
										
										<a href="###" class="button read-more-button big button-arrow">详情</a>
										
									</div>
									<!-- /Blog Post -->
									
								</div>
								<!-- /Owl Item -->
								
								<!-- Owl Item -->
								<div>
									
									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">
										
										<div class="post-image">
											<img src="img/main-picture/8.jpg" alt="">
										</div>
										
										<h4 class="post-title"><a href="###">矮寨大桥</a></h4>
										
										<div class="post-meta">
											<span>世界上最长的高架桥</span>
										</div>
										
										<p>矮寨大桥的桥型方案为钢桁加劲梁单跨悬索桥，全长1073.65m，悬索桥的主跨为1176m，创造了四项世界第一。矮寨特大悬索桥位于湖南省湘西州吉首市矮寨镇境内，距吉首市区约20公里，是国家重点规划的8条高速公路之一</p>
										
										<a href="###" class="button read-more-button big button-arrow">详情</a>
										
									</div>
									<!-- /Blog Post -->
									
								</div>
								<!-- /Owl Item -->
								
								<!-- Owl Item -->
								<div>
									
									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">
										
										<div class="post-image">
											<img src="img/main-picture/9.jpg" alt="">
										</div>
										
										<h4 class="post-title"><a href="###">湘西吊脚楼</a></h4>
										
										<div class="post-meta">
											<span>一种古代干阑式建筑</span>
										</div>
										
										<p>湘西吊脚楼是中国南方少数民族一种特有的建筑形式，建筑框架完全采用木材、榫卯接合方式建成。它的建筑艺术体现了 “地不平我身平”的哲学思想。</p>
										
										<a href="###" class="button read-more-button big button-arrow">详情</a>
										
									</div>
									<!-- /Blog Post -->
									
								</div>
								<!-- /Owl Item -->
								
								<!-- Owl Item -->
								<div>
									
									<!-- Blog Post -->
									<div class="blog-post animate-onscroll">
										
										<div class="post-image">
											<img src="img/main-picture/10.jpg" alt="">
										</div>
										
										<h4 class="post-title"><a href="###">芙蓉镇</a></h4>
										
										<div class="post-meta">
											
											<span>拥有两千多年历史的古镇</span>
										</div>
										
										<p>因宏伟瀑布穿梭其中，称“挂在瀑布上的千年古镇”。位于湘西土家族苗族自治州境内的永顺县，与龙山里耶镇、泸溪浦市镇、花垣茶峒镇并称湘西四大名镇，又有酉阳雄镇、“小南京”之美誉。</p>
										
										<a href="blog-single-sidebar.html" class="button read-more-button big button-arrow">Read More</a>
										
									</div>
									<!-- /Blog Post -->
									
								</div>
								<!-- /Owl Item -->
							
							</div>
						
						</div>
						<!-- /Owl Carousel -->						
					</div>
					
					
				
				</div>
				
				
				<h3>地域文化</h3>
				
				<div class="row">
				
					<div class="col-lg-9 col-md-9 col-sm-8">
						
												<!-- Banner Rotator -->
						<div class="banner-rotator animate-onscroll">
							
							<div class="flexslider banner-rotator-flexslider">
								
								<ul class="slides">
									
									<li id="flex_rotator_2">
										<div class="banner-rotator-content">
											<h5>德夯赶秋 迎庆丰收</h5>
											<h6>湘西人最美好的时光</h6>
											<span class="date">已有2人看过</span>
											<a href="#" class="button big button-arrow">查看</a>
										</div>
									</li>
									
									<li id="flex_rotator_1">
										<div class="banner-rotator-content">
											<h5>神秘恐怖！！！ </h5>
											<h6>湘西赶尸是真是假？</h6>
											<span class="date">已有6人浏览过</span>
											<a href="#" class="button big button-arrow">查看</a>
										</div>
									</li>
									
									
									
									<li id="flex_rotator_3">
										<div class="banner-rotator-content">
											<h5>厄巴舞</h5>
											<h6>诠释民间最古老的祭祀</h6>
											<span class="date">已有12人看过</span>
											<a href="#" class="button big button-arrow">查看</a>
										</div>
									</li>
									
								</ul>
								
							</div>
						
						</div>
						<!-- /Banner Rotator -->						
					</div>
					
					
					
					<!-- Sidebar -->
					<div class="col-lg-3 col-md-3 col-sm-4 sidebar" style="text-align:center">
						<h3>湘西宣传片</h3>
												<!-- Image Banner -->
						<div id="video" style="text-align:center"><div id="a1"></div></div>
						<!-- /Image Banner -->						
					</div>
					<!-- /Sidebar -->
				</div>
				
				
				
			</section>
			<!-- /Section -->
		
		</section>


			
		
			<jsp:include page="common/footer.jsp"></jsp:include>
			
			<!-- Back To Top -->
			<a href="#" id="button-to-top"><i class="icons icon-up-dir"></i></a>
			
			
		
		</div>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- Chosen -->
<!-- Modernizr -->
<script type="text/javascript" src="js/modernizr.js"></script>

<!-- Sliders/Carousels -->
<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>

<!-- Revolution Slider  -->
<script type="text/javascript" src="js/revolution-slider/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
	
<script type="text/javascript" src="js/responsive-calendar.min.js"></script>
<script type="text/javascript" src="js/jquery.raty.min.js"></script>
<script type="text/javascript" src="js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="js/jflickrfeed.min.js"></script>
<script type="text/javascript" src="js/instafeed.min.js"></script>
<script type="text/javascript" src="js/jquery.tweet.js"></script>
<script type="text/javascript" src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="jackbox/js/jackbox-packed.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/ckplayer.js"></script>
<script type="text/javascript" src="js/ckplayer.js" charset="utf-8"></script>
<script type="text/javascript">
	var flashvars={
		f:'video/20180425_001743.mp4',
		c:0,
		b:1
		};
	var params={bgcolor:'#FFF',allowFullScreen:true,allowScriptAccess:'always'};
	CKobject.embedSWF('ckplayer/ckplayer.swf','a1','ckplayer_a1','263','187',flashvars,params);
	/*
	CKobject.embedSWF(播放器路径,容器id,播放器id/name,播放器宽,播放器高,flashvars的值,其它定义也可省略);
	下面三行是调用html5播放器用到的
	*/
	var video=['video/20180425_001743.mp4->video/mp4'];
	var support=['iPad','iPhone','ios','android+false','msie10+false','webKit'];
	CKobject.embedHTML5('video','ckplayer_a1',263,187,video,flashvars,support);
  </script>
</body>
</html>