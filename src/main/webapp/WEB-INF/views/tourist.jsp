<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<script>
(function($){
//此时的$是jQuery-1.11.0
$('#');
})(jq1110);
</script>
<script>
jq3.1.1(function($){
//此时的$是jQuery-1.4.2
$('#');
});
</script>

<style type="text/css">
		<!-- *{ -->
			<!-- margin: 0; -->
			<!-- padding: 0; -->
		<!-- } -->
		.boxlhb{
			margin-top: 30px;
			width: 100%;
			height: 340px;
			position: relative;
		}

		.listlhb{
			width: 1200px;
			height: 300px;
			overflow: hidden;
			position: absolute;
			left: 50%;
			margin-left: -600px;
		}

		.btnlhb{
			position: absolute;
			top: 50%;
			margin-top: -50px;
			width: 60px;
			height: 100px;
			line-height: 100px;
			font-size: 30px;
			color: white;
			text-decoration: none;
			text-align: center;
			background: rgba(0,255,0,.5);
			cursor: pointer;
		}
		.nextlhb{
			right: 0;
		}

		span > li{
			position: absolute;
			top: 0;
			left: 0;
			list-style: none;
			opacity: 0;
			transition: all 0.3s ease-out;
		}
		.imglhb{
			width: 751px;
			height: 300px;
			border:none;
			float: left;
		}
		.p1{
			transform:translate3d(-224px,0,0) scale(0.81);
		}
		.p2{
			transform:translate3d(0px,0,0) scale(0.81);
			transform-origin:0 50%;
			opacity: 0.8;
			z-index: 2;
		}
		.p3{
			transform:translate3d(224px,0,0) scale(1);
			z-index: 3;
			opacity: 1;
		}
		.p4{
			transform:translate3d(449px,0,0) scale(0.81);
			transform-origin:100% 50%;
			opacity: 0.8;
			z-index: 2;
		}
		.p5{
			transform:translate3d(672px,0,0) scale(0.81);
		}
		.p6{
			transform:translate3d(896px,0,0) scale(0.81);
		}
		.p7{
			transform:translate3d(1120px,0,0) scale(0.81);
		}

		.buttonslhb{
			position: absolute;
			width: 1200px;
			height: 30px;
			bottom: 0;
			left: 50%;
			margin-left: -600px;
			text-align: center;
			padding-top: 10px;
		}
		.buttonslhb a{
			display: inline-block;
			width: 35px;
			height: 5px;
			padding-top: 4px;
			cursor: pointer;
		}
		.spanlhb{
			display: block;
			width: 35px;
			height: 1px;
			background: red;
		}
		.blue{
			background: blue;
		}
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
			<div class="boxlhb">

			<div class="listlhb">
				<ul>
					<span>
					<li class="p7"><img class="imglhb" src="img/scenery/9.jpg" alt="" /></li>
					<li class="p6"><img class="imglhb" src="img/scenery/10.jpg" alt="" /></li>
					<li class="p5"><img class="imglhb" src="img/scenery/11.jpg" alt="" /></li>
					<li class="p4"><img class="imglhb" src="img/scenery/12.jpg" alt="" /></li>
					<li class="p3"><img class="imglhb" src="img/scenery/13.jpg" alt="" /></li>
					<li class="p2"><img class="imglhb" src="img/scenery/14.jpg" alt="" /></li>
					<li class="p1"><img class="imglhb" src="img/scenery/15.jpg" alt="" /></li>
					</span>
				</ul>
			</div>
			
			<a href="javascript:;" class="prev btnlhb"><</a>
			<a href="javascript:;" class="nextlhb btnlhb">></a>

			<div class="buttonslhb">
				<a href="javascript:;"><span class="spanlhb blue"></span></a>
				<a href="javascript:;"><span class="spanlhb"></span></a>
				<a href="javascript:;"><span class="spanlhb"></span></a>
				<a href="javascript:;"><span class="spanlhb"></span></a>
				<a href="javascript:;"><span class="spanlhb"></span></a>
				<a href="javascript:;"><span class="spanlhb"></span></a>
				<a href="javascript:;"><span class="spanlhb"></span></a>
			</div>
		</div>
	
			
			<!-- Section -->
			<section class="section full-width-bg gray-bg">
				
				<div class="row">
				
					<div class="col-lg-12 col-md-12 col-sm-12">
						
						<div class="media-items row">
							
						<div class="col-lg-6 col-md-6 col-sm-6 mix category-photos" data-nameorder="1" data-dateorder="3">
							
																						<!-- Media Item 1-->
							<div class="media-item animate-onscroll ">
								
								<div class="media-image">
								
									<img src="img/scenery/1.jpg" alt="">
									
									<div class="media-hover">
										<div class="media-icons">
											<a href="###" data-group="media-jackbox" data-thumbnail="img/media/media1.jpg" class="jackbox media-icon"><i class="icons icon-zoom-in"></i></a>
											<a href="###" class="media-icon"><i class="icons icon-link"></i></a>
										</div>
									</div>
								
								</div>
								
																
								<div class="media-info">
								
									<div class="media-header">
										
										
										<div class="media-caption">
											<h2><a href="名胜古迹详情页.html">湘西凤凰古城</a></h2>
											<span class="tags1">最为繁华的古城</span>
										</div>
										
									</div>
									
									<div class="media-description">
										<p>凤凰古城是国家历史文化名城，曾被新西兰著名作家路易艾黎称赞为中国最美丽的小城。作为一座国家历史文化名城，凤凰的风景将自然的、人文的特质有机融合到一处，透视后的沉重感也许正是其吸引八方游人的魅力之精髓。</p>
									</div>
									
									<div class="media-button">
										<a href="名胜古迹详情页.html" class="button big button-arrow">详情</a>
									</div>
								
								</div>
								
																
							</div>
							<!-- /Media Item -->							
							</div>
							
							<div class="col-lg-6 col-md-6 col-sm-6 mix category-videos category-meetings" data-nameorder="2" data-dateorder="1">
							
																						<!-- Media Item 2-->
							<div class="media-item animate-onscroll ">
								
								<div class="media-image">
								
									<img src="img/scenery/2.jpg" alt="">
									
									<div class="media-hover">
										<div class="media-icons">
											<a href="###" data-group="media-jackbox" data-thumbnail="img/media/media1.jpg" class="jackbox media-icon"><i class="icons icon-zoom-in"></i></a>
											<a href="###" class="media-icon"><i class="icons icon-link"></i></a>
										</div>
									</div>
								
								</div>
								
																
								<div class="media-info">
								
									<div class="media-header">
										
										
										<div class="media-caption">
											<h2><a href="名胜古迹详情页.html">张家界森林公园</a></h2>
											<span class="tags1">世界自然遗产名录</span>
										</div>
										
									</div>
									
									<div class="media-description">
										<p>张家界国家森林公园自然风光以峰称奇、以谷显幽、以林见秀。其间有奇峰3000多座，如人如兽、如器如物，形象逼真，气势壮观，有“三千奇峰，八百秀水”之美称。主要景点有金鞭溪、袁家界、杨家界等。</p>
									</div>
									
									<div class="media-button">
										<a href="名胜古迹详情页.html" class="button big button-arrow">详情</a>
								</div>
								
								</div>
								
																
							</div>
							<!-- /Media Item -->							
							</div>
							
							
							
							<div class="col-lg-6 col-md-6 col-sm-6 mix category-campaign category-videos category-meetings" data-nameorder="3" data-dateorder="2">
							
																						<!-- Media Item 3-->
							<div class="media-item animate-onscroll ">
								
								<div class="media-image">
								
									<img src="img/scenery/3.jpg" alt="">
									
									<div class="media-hover">
										<div class="media-icons">
											<a href="###" data-group="media-jackbox" data-thumbnail="img/media/media1.jpg" class="jackbox media-icon"><i class="icons icon-zoom-in"></i></a>
											<a href="###" class="media-icon"><i class="icons icon-link"></i></a>
										</div>
									</div>
								
								</div>
								
																
								<div class="media-info">
								
									<div class="media-header">
										
										
										<div class="media-caption">
											<h2><a href="名胜古迹详情页.html">德夯古镇</a></h2>
											<span class="tags1">古老建筑风格的小镇</span>
										</div>
										
									</div>
									
									<div class="media-description">
										<p>德夯，美丽的峡谷，由于山势跌宕，绝壁高耸，峰林重叠，形成了许多断崖、石壁、峰林、瀑布、原始森林。区内溪河交错，四季如春，气候宜人，有丰富的   动植物资源，自然风光十分秀丽迷人而得名。</p>
									</div>
									
									<div class="media-button">
										<a href="名胜古迹详情页.html" class="button big button-arrow">详情</a>
																			</div>
								
								</div>
								
																
							</div>
							<!-- /Media Item -->							
							</div>
							
							
							
							<div class="col-lg-6 col-md-6 col-sm-6 mix category-campaign category-photos" data-nameorder="4" data-dateorder="5">
							
																						<!-- Media Item 4-->
							<div class="media-item animate-onscroll ">
								
								<div class="media-image">
								
									<img src="img/scenery/4.jpg" alt="">
									
									<div class="media-hover">
										<div class="media-icons">
											<a href="###" data-group="media-jackbox" data-thumbnail="img/media/media1.jpg" class="jackbox media-icon"><i class="icons icon-zoom-in"></i></a>
											<a href="###" class="media-icon"><i class="icons icon-link"></i></a>
										</div>
									</div>
								
								</div>
								
																
								<div class="media-info">
								
									<div class="media-header">
										
										
										<div class="media-caption">
											<h2><a href="名胜古迹详情页.html">矮寨大桥</a></h2>
											<span class="tags1">世界上最长的高架桥</span>
										</div>
										
									</div>
									
									<div class="media-description">
										<p>矮寨大桥的桥型方案为钢桁加劲梁单跨悬索桥，全长1073.65m，悬索桥的主跨为1176m，创造了四项世界第一。矮寨特大悬索桥位于湖南省湘西州吉首市矮寨镇境内，距吉首市区约20公里，是国家重点规划的8条高速公路之一</p>
									</div>
									
									<div class="media-button">
										<a href="名胜古迹详情页.html" class="button big button-arrow">详情</a>
							        </div>
								
								</div>
								
																
							</div>
							<!-- /Media Item -->							
							</div>
							
						</div>
						<br>
						<h2>站长推荐</h2>
						
													<div class="col-lg-3 col-md-3 col-sm-6">
								
																<!-- Team Member -->
								<div class="team-member animate-onscroll ">
									
									<img class="team-member-image" src="img/scenery/5.jpg" alt="">
									
									<div class="team-member-info">
										
										<h2>芙蓉镇</h2>
										<span class="job">推荐指数5.0</span>
										
										<div class="team-member-more">
											<p>是一个拥有两千多年历史的古镇，因宏伟瀑布穿梭其中，又称“挂在瀑布上的千年古镇”。位于湘西土家族苗族自治州境内的永顺县，与龙山里耶镇、泸溪浦市镇、花垣茶峒镇并称湘西四大名镇，又有酉阳雄镇、“小南京”之美誉。</p>
											
										</div>
										
									</div>
									
								</div>
								<!-- /Team Member -->							
							</div>
							
							
							
							<div class="col-lg-3 col-md-3 col-sm-6">
								
																<!-- Team Member -->
								<div class="team-member animate-onscroll ">
									
									<img class="team-member-image" src="img/scenery/6.jpg" alt="">
									
									<div class="team-member-info">
										
										<h2>乾州古城</h2>
										<span class="job">推荐指数4.9</span>
										
										<div class="team-member-more">
											<p>具有420多年历史的吉首乾州古城位于湖南省湘西自治州首府吉首市区内的万溶江河畔，这里交通便捷，209国道和枝柳铁路纵贯南北，是湘、鄂、渝、黔四省边区传统的物质集散中心。</p>
											
										</div>
										
									</div>
									
								</div>
								<!-- /Team Member -->							
							</div>
							
							
							
							<div class="col-lg-3 col-md-3 col-sm-6">
								
																<!-- Team Member -->
								<div class="team-member animate-onscroll ">
									
									<img class="team-member-image" src="img/scenery/7.jpg" alt="">
									
									<div class="team-member-info">
										
										<h2>凤凰古城</h2>
										<span class="job">推荐指数4.7</span>
										
										<div class="team-member-more">
											<p>凤凰古城，位于湖南省湘西土家族苗族自治州的西南部，土地总面积约10平方千米。2010年底约5万人口，由苗族、汉族、土家族等28个民族组成，为典型的少数民族聚居区。</p>
											
										</div>
										
									</div>
									
								</div>
								<!-- /Team Member -->							
							</div>
							
							
							
							<div class="col-lg-3 col-md-3 col-sm-6">
								
																<!-- Team Member -->
								<div class="team-member animate-onscroll ">
									
									<img class="team-member-image" src="img/scenery/8.jpg" alt="">
									
									<div class="team-member-info">
										
										<h2>百龙天梯</h2>
										<span class="job">推荐指数4.7</span>
										
										<div class="team-member-more">
											<p>百龙天梯气势恢弘，垂直高差335米，运行高度326米，由154米的山体内竖井和172米的贴山钢结构井架组成，采用三台双层全暴露观光并列分体运行。目前以“最高户外电梯”荣誉而被载入吉尼斯世界纪录</p>
											
										</div>
										
									</div>
									
								</div>
								<!-- /Team Member -->							
							</div>
						
					</div>
					
					
				
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
<script type="text/javascript">
		var $a=$(".buttonslhb a");
		var $s=$(".buttonslhb spanlhb");
		var cArr=["p7","p6","p5","p4","p3","p2","p1"];
		var index=0;
		$(".nextlhb").click(
			function(){
			nextimg();
			}
		)
		$(".prev").click(
			function(){
			previmg();
			}
		)
		//上一张
		function previmg(){
			cArr.unshift(cArr[6]);
			cArr.pop();
			//i是元素的索引，从0开始
			//e为当前处理的元素
			//each循环，当前处理的元素移除所有的class，然后添加数组索引i的class
			$("span > li").each(function(i,e){
				$(e).removeClass().addClass(cArr[i]);
			})
			index--;
			if (index<0) {
				index=6;
			}
			show();
		}

		//下一张
		function nextimg(){
			cArr.push(cArr[0]);
			cArr.shift();
			$("span > li").each(function(i,e){
				$(e).removeClass().addClass(cArr[i]);
			})
			index++;
			if (index>6) {
				index=0;
			}
			show();
		}

		//通过底下按钮点击切换
		$a.each(function(){
			$(this).click(function(){
				var myindex=$(this).index();
				var b=myindex-index;
				if(b==0){
					return;
				}
				else if(b>0) {
					/*
					 * splice(0,b)的意思是从索引0开始,取出数量为b的数组
					 * 因为每次点击之后数组都被改变了,所以当前显示的这个照片的索引才是0
					 * 所以取出从索引0到b的数组,就是从原本的这个照片到需要点击的照片的数组
					 * 这时候原本的数组也将这部分数组进行移除了
					 * 再把移除的数组添加的原本的数组的后面
					 */
					var newarr=cArr.splice(0,b);
					cArr=$.merge(cArr,newarr);
					$("span > li").each(function(i,e){
					$(e).removeClass().addClass(cArr[i]);
					})
					index=myindex;
					show();
				}
				else if(b<0){
					/*
					 * 因为b<0,所以取数组的时候是倒序来取的,也就是说我们可以先把数组的顺序颠倒一下
					 * 而b现在是负值,所以取出索引0到-b即为需要取出的数组
					 * 也就是从原本的照片到需要点击的照片的数组
					 * 然后将原本的数组跟取出的数组进行拼接
					 * 再次倒序,使原本的倒序变为正序
					 */
					cArr.reverse();
					var oldarr=cArr.splice(0,-b)
					cArr=$.merge(cArr,oldarr);
					cArr.reverse();
					$("span > li").each(function(i,e){
					$(e).removeClass().addClass(cArr[i]);
					})
					index=myindex;
					show();
				}
			})
		})

		//改变底下按钮的背景色
		function show(){
				$($s).eq(index).addClass("blue").parent().siblings().children().removeClass("blue");
		}

		//点击class为p2的元素触发上一张照片的函数
		$(document).on("click",".p2",function(){
			previmg();
			return false;//返回一个false值，让a标签不跳转
		});

		//点击class为p4的元素触发下一张照片的函数
		$(document).on("click",".p4",function(){
			nextimg();
			return false;
		});

		//			鼠标移入boxlhb时清除定时器
		$(".boxlhb").mouseover(function(){
			clearInterval(timer);
		})

		//			鼠标移出boxlhb时开始定时器
		$(".boxlhb").mouseleave(function(){
			timer=setInterval(nextimg,4000);
		})

		//			进入页面自动开始定时器
		timer=setInterval(nextimg,4000);
		</script>
				
				<!--[if lt IE 9]>
					<script type="text/javascript" src="js/jquery.placeholder.js"></script>
					<script type="text/javascript" src="js/script_ie.js"></script>
				<![endif]-->
				
</body>
</html>