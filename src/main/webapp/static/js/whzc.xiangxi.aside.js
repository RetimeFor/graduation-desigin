function getRootPath(){  
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp  
//    var curWwwPath=window.document.location.href;  
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
    var pathName=window.document.location.pathname;  
//    var pos=curWwwPath.indexOf(pathName);  
    //获取主机地址，如： http://localhost:8083  
//    var localhostPaht=curWwwPath.substring(0,pos);  
    //获取带"/"的项目名，如：/uimcardprj  
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
    return(projectName);  
}  

$(function(){

	var AsideNewJson = null;
	
	$.get(getRootPath()+'/shop/aside_new',function(data){
		AsideNewJson = eval(data);
		toNewProduct(AsideNewJson);
		$('#aside_new_loader').hide();
	})
	
	$.get(getRootPath()+'/shop/aside_sales',function(data){
		AsideNewJson = eval(data);
		tosalesProduct(AsideNewJson);
		$('#aside_sales_loader').hide();
	})
	
	$.get(getRootPath()+'/shop/aside_recommend',function(data){
		AsideNewJson = eval(data);
		torecommendProduct(AsideNewJson);
		$('#aside_recommend_loader').hide();
	})
	
	
	//渲染函数--最新上架
	function toNewProduct(arr){
		$('#aside_new').append('<h3>最新上架</h3><ul class="shop-items-widget" id="aside_new_ul"></ul>');
		var str = "";
		arr.forEach(function (ele, index) {
			str += '<li id="'+ele.id+'"><div class="featured-image">\
				<img src="img/shop/product/'+ele.img+'" alt=""></div>\
				<div class="shop-item-content">\
				<h6 class="aside_new" ><font  color="red">'+ele.name+'</font></h6>\
				<span class="price">'+ele.price+'</span>\
				<div class="shop-rating read-only-small" data-score="'+ele.score+'"></div>\
				</div></li>'
		})
		$('#aside_new_ul').append(str);
		
		//最新上架绑定事件
		$('#aside_new_ul').on('click','li',function(){
			var productID = $(this).attr('id');
			window.location.href= getRootPath()+'/shop/product_detail/'+productID;
		})
		
		enableStarRating();
	}
	
	//渲染函数--站点推荐
	function torecommendProduct(arr){
		$('#aside_recommend').append('<h3>站点推荐</h3><ul class="shop-items-widget" id="aside_recommend_ul"></ul>');
		var str = "";
		arr.forEach(function (ele, index) {
			str += '<li id="'+ele.id+'"><div class="featured-image">\
				<img src="img/shop/product/'+ele.img+'" alt=""></div>\
				<div class="shop-item-content">\
				<h6 class="aside_recommend" ><font  color="red">'+ele.name+'</font></h6>\
				<span class="price">'+ele.price+'</span>\
				<div class="shop-rating read-only-small" data-score="'+ele.score+'"></div>\
				</div></li>'
		})
		$('#aside_recommend_ul').append(str);
		
		//最新上架绑定事件
		$('#aside_recommend_ul').on('click','li',function(){
			var productID = $(this).attr('id');
			window.location.href= getRootPath()+'/shop/product_detail/'+productID;
		})
		
		enableStarRating();
	}
	
	//渲染函数--热卖商品
	function tosalesProduct(arr){
		$('#aside_sales').append('<h3>热卖商品</h3><ul class="shop-items-widget" id="aside_sales_ul"></ul>');
		var str = "";
		arr.forEach(function (ele, index) {
			str += '<li id="'+ele.id+'"><div class="featured-image">\
				<img src="img/shop/product/'+ele.img+'" alt=""></div>\
				<div class="shop-item-content">\
				<h6 class="aside_new" ><font  color="red">'+ele.name+'</font></h6>\
				<span class="price">'+ele.price+'</span>\
				<div class="shop-rating read-only-small" data-score="'+ele.score+'"></div>\
				</div></li>'
		})
		$('#aside_sales_ul').append(str);
		
		//最新上架绑定事件
		$('#aside_sales_ul').on('click','li',function(){
			var productID = $(this).attr('id');
			window.location.href= getRootPath()+'/shop/product_detail/'+productID;
		})
		
		enableStarRating();
	}
	
	
	//星级评分
	function enableStarRating(){
			
			// Read Only Rating
			$('.shop-rating.read-only').raty({ 
				readOnly: true,
				path:'img/rating',
				score: function() {
					return $(this).attr('data-score');
				}
			 });
			 
			 // Rate Only Rating
			$('.shop-rating.rate-only').raty({ 
				readOnly: false,
				path:'img/rating',
				score: function() {
					return $(this).attr('data-score');
				}
			 });
			 
			 // Read Only Rating Small
			$('.shop-rating.read-only-small').raty({ 
				readOnly: true,
				path:'img/rating/small',
				score: function() {
					return $(this).attr('data-score');
				}
			 });
			
		}

	
	$('#pinlun').on('submit',function(){
		return false;
	})
	
	$('#fabu1').hide();
	//临时评论
	$('#fabu').on('click',function(){
		$('#fabu1').show();
		return false;
	})
	
	//最新上架绑定事件, 写在这里没用
//	$('#aside_new_ul').on('click','li',function(){
//		alert('ss');
//		var productID = $(this).attr('id');
//		window.location.href= getRootPath()+'/product_detail/'+productID;
//	})
	
})
