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
    #lower-header{
    	border-left:1px solid #dee0e5;
    	border-right:1px solid #dee0e5;
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
			
			<!-- Page Heading -->
			<section class="section page-heading animate-onscroll">
				
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-9">
					
						<h1>湘西特产商城</h1>
						<p class="breadcrumb"><a href="main-v1.html">Home</a> / 湘西特产商城</p>
						
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 align-right">
					
						<!-- 购物车预览 -->
						<div class="shopping-cart">
						
							<div class="cart-button">
								<i class="icons icon-basket"></i>
							</div>
							
							<div class="shopping-cart-dropdown">
							
								<div class="shopping-cart-content">
									<div class="cart-item">
										<div class="featured-image">
											<img src="img/shop/item6.jpg" alt="">
										</div>
										<div class="item-content">
											<h6><a href="#">Woo Ninja</a></h6>
											<span class="price">1 x &pound;20</span>
											<div class="remove-item">
												<i class="icons remove-shopping-item icon-cancel-circled"></i>
											</div>
										</div>
									</div>
									<div class="cart-item">
										<div class="featured-image">
											<img src="img/shop/item3.jpg" alt="">
										</div>
										<div class="item-content">
											<h6><a href="#">Happy Ninja</a></h6>
											<span class="price">1 x &pound;35</span>
											<div class="remove-item">
												<i class="icons remove-shopping-item icon-cancel-circled"></i>
											</div>
										</div>
									</div>
									<div class="cart-item">
										<div class="featured-image">
											<img src="img/shop/item5.jpg" alt="">
										</div>
										<div class="item-content">
											<h6><a href="#">Woo Album #2</a></h6>
											<span class="price">1 x &pound;9</span>
											<div class="remove-item">
												<i class="icons remove-shopping-item icon-cancel-circled"></i>
											</div>
										</div>
									</div>
									<div class="cart-item">
										<h6>Cart subtotal: &pound;64</h6>
									</div>
									<div class="cart-item">
										<a href="#" class="button">View cart</a>
										<a href="#" class="button donate">Checkout</a>
									</div>
								</div>
								
							</div>
							
						</div>
						<!-- /Shopping Cart -->						
					</div>
				</div>
				
			</section>
			<!-- Page Heading -->
			
			
			<!-- Section -->
			<section class="section full-width-bg gray-bg">
				
				<div class="row">
				
					<div class="col-lg-9 col-md-9 col-sm-8">
						
						<div class="shop-header animate-onscroll">
						
							<span class="results">一共有35件商品在商城出售</span>
							
							<div class="filter-filtering">
							
								<ul class="filter-dropdown ">
									<li><span>根据上架时间排列商品</span>
										<ul>
											<li class="sort" data-sort="dateorder:asc">根据上架时间排列商品</li>
											<li class="sort" data-sort="popularorder:asc">根据评分排序</li>
											<li class="sort" data-sort="avgratingorder:asc">根据销售量排序</li>
											<li class="sort" data-sort="priceorder:asc">根据价格降序排列</li>
											<li class="sort" data-sort="priceorder:desc">根据价格升序排列</li>
										</ul>
									</li>
								</ul>
							
							</div>
							
						</div>
						
						<div class="row shop-items">
						<c:forEach var="product" items="${ productJsonlist }">
							<div class="col-lg-4 col-md-4 col-sm-6 mix" data-dateorder="${ product.dateorder }" data-popularorder="${ product.scoreorder }" data-avgratingorder="${ product.sellorder }" data-priceorder="${ product.priceorder }">
								<div class="shop-item animate-onscroll">
									<div class="shop-image">
									<c:if test="${ product.tag == 1 }">
										<div class="shop-ribbon-sale"></div>
									</c:if>
									<c:if test="${ product.tag == 0 }">
										<div class="shop-ribbon-stock"></div>
									</c:if>
									<c:if test="${ product.tag == 2 }">
										<div class="shop-ribbon-new"></div>
									</c:if>
										<div class="shop-featured-image">
											<img  width="300px;" height="300px;" src="img/shop/product/${ product.img1 }" alt="">
										</div>
										<div class="shop-hover">
											<img src="img/shop/product/${ product.img2 }" alt="">
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
						
						<div class="animate-onscroll">
						
							<div class="divider"></div>
							
							<div class="numeric-pagination">
								<a href="#" class="button"><i class="icons icon-left-dir"></i></a>
								<a href="#" class="button">1</a>
								<a href="#" class="button active-button">2</a>
								<a href="#" class="button">3</a>
								<a href="#" class="button"><i class="icons icon-right-dir"></i></a>
							</div>
						
						</div>
						
						
					</div>
					
					
					
					<!-- 侧边栏 -->
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
</body>
</html>