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

<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery-ui-1.10.4.min.js"></script>
<!-- 预加载动画 -->
<!-- <script src="js/jquery.queryloader2.min.js"></script> -->
		
<script type="text/javascript" src="js/whzc.xiangxi.aside.js"></script>


</head>
<body class="sticky-header-on tablet-sticky-header">
	
<div id="fb-root"></div>
<!-- Container -->
<div class="container">
<!-- Header -->
	<jsp:include page="common/header.jsp"></jsp:include>
	
	<section id="content">
		<!-- Page Heading -->
		<section class="section page-heading animate-onscroll">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9">
					
					<h1>产品详情页</h1>
					<p class="breadcrumb"><a href="<c:url value="/shop/home"></c:url>">商城首页</a> / ${ product.productName}</p>
					
				</div>
				<!-- 购物车 -->
				<div class="col-lg-3 col-md-3 col-sm-3 align-right">
					<div class="shopping-cart">
						
						<div class="cart-button">
							<i class="icons icon-basket"></i>
						</div>
						
						<div class="shopping-cart-dropdown">
						
							<div class="shopping-cart-content">
								<div class="cart-item">
									<div class="featured-image">
										<img src="img/shop/product/湘西椪柑1.gif" alt="">
									</div>
									<div class="item-content">
										<h6><a href="#">湘西椪柑</a></h6>
										<span class="price">1 x &pound;12</span>
										<div class="remove-item">
											<i class="icons remove-shopping-item icon-cancel-circled"></i>
										</div>
									</div>
								</div>
								<div class="cart-item">
									<div class="featured-image">
										<img src="img/shop/product/古丈毛尖1.jpg" alt="">
									</div>
									<div class="item-content">
										<h6><a href="#">古丈毛尖</a></h6>
										<span class="price">1 x &pound;46</span>
										<div class="remove-item">
											<i class="icons remove-shopping-item icon-cancel-circled"></i>
										</div>
									</div>
								</div>
								<div class="cart-item">
									<div class="featured-image">
										<img src="img/shop/product/酒鬼酒1.jpg" alt="">
									</div>
									<div class="item-content">
										<h6><a href="#">酒鬼酒</a></h6>
										<span class="price">1 x &pound;12</span>
										<div class="remove-item">
											<i class="icons remove-shopping-item icon-cancel-circled"></i>
										</div>
									</div>
								</div>
								<div class="cart-item">
									<h6>总计: 68元</h6>
								</div>
								<div class="cart-item">
									<a href="#" class="button">进入购物车</a>
									<a href="#" class="button donate">结算</a>
								</div>
							</div>
							
						</div>
						
					</div>
					
				</div>
			</div>
		</section>	
		
		<section class="section full-width-bg gray-bg">
				
			<div class="row">
			
				<div class="col-lg-9 col-md-9 col-sm-8">
					
					<div class="alert-box alert-box-button info animate-onscroll" hidden="true">
						<div class="row">
							<div class="col-lg-9 col-md-9 col-sm-8">
								<p><strong>"${ product.productName }"</strong> 已经成功加入了购物车 </p>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-4 align-right">
								<a href="<c:url value="/shop/cart"></c:url>" class="button donate button-arrow">查看购物车</a> 
							</div>
						</div>
					</div>
					
					
					<!-- Product Single -->
					<div class="shop-single">
						 
						<!-- Product Gallery -->
						<div class="shop-product-gallery animate-onscroll">
							
							<div class="main-image">
								<div class="shop-ribbon-sale"></div>
								<img  width="400px;" height="500px;" class="cloud-zoom-image" src="img/shop/product/${ imglist[0] }" alt="">
								<div class="fullscreen-icon">
									<i class="icons icon-resize-full"></i>
								</div>
							</div>
							
							<ul class="slider-navigation">
							<c:forEach var="img" items="${ imglist }">
								<li>
									<a  href="img/shop/product/${ img }" class="jackbox" data-group="shop-product-gallery">
										<img src="img/shop/product/${ img }" alt="">
									</a>
								</li>
							</c:forEach>
							</ul>
							
						</div>
						<!-- /Product Gallery -->
						
						
						<!-- Shop Product Content -->
						<div class="shop-product-content">
							
							<h2 class="animate-onscroll">${ product.productName }</h2>
							<div class="shop-rating read-only animate-onscroll" data-score="${ product.productScore }"></div>
							
							<span class="price animate-onscroll">${ product.productPrice }元</span>
							
							<p class="animate-onscroll">${ product.productBrief }</p>
							
							
							<div class="animate-onscroll">
								<input class="numeric-input" type="text" value="1">
							</div>
							
							<a href="#" class="add-to-cart-button button donate animate-onscroll">加入购物车</a>
							
							<p class="animate-onscroll">标签: 
							<c:forEach var="tag" items="${ taglist }" varStatus="status">
							
								<c:choose>
									<c:when test="${status.last == true}">
										<a href="<c:url value="/shop/tag/${ tag }"></c:url>">${ tag }</a>
									</c:when>
									<c:otherwise>
										<a href="<c:url value="/shop/tag/${ tag }"></c:url>">${ tag }</a>, 	
									</c:otherwise>
								</c:choose>						
							</c:forEach>
							</p>
							
						</div>
						<!-- /Shop Product Content -->
						
					</div>
					<!-- /Product Single -->
					
					
					
					<!-- 评论和详情 -->
						<div class="tabs style2 product-single-tabs animate-onscroll">
							
							<div class="tab-header">
								<ul>
									<li><h6><a href="#tab1">详细介绍</a></h6></li>
									<li><h6><a href="#tab2">评论</a></h6></li>
								</ul>
							</div>
							
							<div class="tab-content">
								
								<div id="tab1" class="tab">
									<p>${ product.productIntro }
								</div>
								
								<div id="tab2" class="tab">
									
									<!-- Reviews -->
								<ul class="product-reviews">
								
									<li id="fabu1">
										<img src="img/testimonials/profile2.jpg" alt="">
										<div class="shop-rating read-only animate-onscroll" data-score="5"></div>
										<h5>李先生</h5>
										<span class="date">2018年4月24日</span>
										<p>吉首大学</p>
									</li>
									
									<li>
										<img src="img/testimonials/profile1.jpg" alt="">
										<div class="shop-rating read-only animate-onscroll" data-score="4.5"></div>
										<h5>李先生</h5>
										<span class="date">2018年4月24日</span>
										<p>很不错</p>
									</li>
									
									<li>
										<img src="img/testimonials/profile2.jpg" alt="">
										<div class="shop-rating read-only animate-onscroll" data-score="5"></div>
										<h5>谢先生</h5>
										<span class="date">2018年4月24日</span>
										<p>棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒</p>
									</li>
									
									<li>
										<img src="img/testimonials/profile3.jpg" alt="">
										<div class="shop-rating read-only animate-onscroll" data-score="3"></div>
										<h5>刘先生</h5>
										<span class="date">2018年4月24日</span>
										<p>很好，下次还买。</p>
									</li>
									
								</ul>
								<!-- /Reviews -->
								
								<form id="pinlun" class="submit-review">
									
									<h4>添加一条评论</h4>
									
									<div class="inline-inputs">
										<div class="col-lg-6 col-md-6 col-sm-6">
											<label>姓名*</label>
											<input type="text">
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6">
											<label>Email*</label>
											<input type="text">
										</div>
									</div>
									
									<label>评分*</label>
									<div class="shop-rating rate-only animate-onscroll" data-score="0"></div>
									
									<label>你的评论*</label>
									<textarea rows="8"></textarea>
									<input type="submit" value="发布" id="fabu">
									
								</form>
								
							</div>
							
						</div>
						
					</div>
					<!-- /评论 -->
					
					<!-- 相关产品 -->
					<div class="row related-products" id="product-skip">
						<div class="col-lg-12 col-md-12 col-sm-12 animate-onscroll">
							<h3>相关产品</h3>
						</div>
						
					
					<c:forEach var="product" items="${ InterfixProductlist }">
							<div class="col-lg-4 col-md-4 col-sm-6 mix" >
								<div class="shop-item animate-onscroll">
									<div class="shop-image product-skip" id="${ product.id }" >
									<c:if test="${ product.tag == 1 }">
										<div class="shop-ribbon-sale"></div>
									</c:if>
									<c:if test="${ product.tag == 0 }">
										<div class="shop-ribbon-stock"></div>
									</c:if>
										<div class="shop-ribbon-new"></div>
										<div class="shop-featured-image">
											<img width="300px;" height="320px;" src="img/shop/product/${ product.img1 }" alt="">
										</div>
										<div class="shop-hover">
											<img width="300px;" height="320px;" src="img/shop/product/${ product.img2 }" alt="">
										</div>
									</div>
									<div class="shop-content">
										
										<h4><a href="<c:url value="/shop/product_detail/${ product.id }"></c:url>">${ product.name }</a></h4>
										<span class="price">${ product.price }元</span>
										
										<div class="shop-rating read-only" data-score="${ product.score }"></div>
										
										<a href="#" id="addCart" class="button add-to-cart-button transparent">加入购物车</a>
										<a href="<c:url value="/shop/product_detail/${ product.id }"></c:url>" class="button details-button button-arrow transparent">了解更多</a>
										
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					
					
					
				</div>
				
				
				
				<!-- 侧边栏-->
				<div class="col-lg-3 col-md-3 col-sm-4 sidebar">
						
						
						<div class="sidebar-box white animate-onscroll" id="aside_new">
							
							<div class="loader" id="aside_new_loader"  >
								<div class="loader-inner ball-clip-rotate-multiple">
								  <div></div>
								  <div></div>
								</div>
							</div>
							
						</div>

						<div class="sidebar-box category-box white animate-onscroll">
							
							<h3>商品分类</h3>
							<ul>
								<li><a href="#">饮品</a></li>
								<li><a href="#">水果</a></li>
								<li><a href="#">蔬菜</a></li>
								<li><a href="#">肉类</a></li>
								<li><a href="#">小吃</a></li>
							</ul>
							
						</div>
					
						<div class="sidebar-box white animate-onscroll" id="aside_sales">
							
							<div class="loader" id="aside_sales_loader"  >
								<div class="loader-inner ball-clip-rotate-multiple">
								  <div></div>
								  <div></div>
								</div>
							</div>
							
						</div>
						
						<div class="sidebar-box white animate-onscroll" id="aside_recommend">
							
							<div class="loader" id="aside_recommend_loader"  >
								<div class="loader-inner ball-clip-rotate-multiple">
								  <div></div>
								  <div></div>
								</div>
							</div>
							
						</div>
						
					</div>
				<!-- /侧边栏 -->
				
				
					
				
			</div>
		</section>
			
	</section>
	
	<jsp:include page="common/footer.jsp"></jsp:include>
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
</body>
</html>