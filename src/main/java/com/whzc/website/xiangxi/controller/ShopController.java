package com.whzc.website.xiangxi.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.whzc.website.xiangxi.pojo.AsideProductJson;
import com.whzc.website.xiangxi.pojo.HomeShopJson;
import com.whzc.website.xiangxi.pojo.Product;
import com.whzc.website.xiangxi.service.ProductService;

@Controller
@RequestMapping(value="/shop")
public class ShopController {

	@Autowired
	ProductService service;
	
	@RequestMapping(value="/home",method=GET)
	public String HomeShop(Model model){
		List<Product> list1 = service.getProductByDate();
		List<HomeShopJson> productJsonlist = new ArrayList<HomeShopJson>();
		for(int i = 0;i<list1.size();i++){
			HomeShopJson json = new HomeShopJson();
			
			String[] imgArr=list1.get(i).getProductImg().split(",");
			
			json.setId(list1.get(i).getId());
			json.setDateorder(1+i);
			json.setScore(list1.get(i).getProductScore());
			if(list1.get(i).getProductNum()==0){
				json.setTag(0);
			}else if(list1.get(i).getProductSellnumber() >= 50){
				json.setTag(1);
			}else{
				json.setTag(2);
			}
			
			if(imgArr.length>1){
				json.setImg1(imgArr[0]);
				json.setImg2(imgArr[1]);
			}else{
				json.setImg1(list1.get(i).getProductImg());
				json.setImg2(list1.get(i).getProductImg());
			}
			json.setName(list1.get(i).getProductName());
			json.setPrice(list1.get(i).getProductPrice());
			productJsonlist.add(json);
		}
		
		service.setPriceOrder(productJsonlist);
		service.setProductByScore(productJsonlist);
		service.setProductBySellNumber(productJsonlist);
		model.addAttribute("productJsonlist", productJsonlist);
		return "HomeShop";
	}
	
	@RequestMapping(value="/cart",method=GET)
	public String cart(){
		
		return "cart";
	}
	
	@RequestMapping(value="/product_detail/{productId}",method=GET)
	public String product_detail(Model model,
			@PathVariable("productId") String productId){
		//获取3个同类型产品
		Product product = service.getProductById(productId);
		String classify = product.getProductClassify();
		List<Product> list = service.getProductByClassify(classify);
		List<HomeShopJson> productJsonlist = new ArrayList<HomeShopJson>();
		for(int i = 0;i<list.size();i++){
			HomeShopJson json = new HomeShopJson();
			
			String[] imgArr=list.get(i).getProductImg().split(",");
			
			json.setId(list.get(i).getId());
			json.setDateorder(1+i);
			json.setScore(list.get(i).getProductScore());
			if(list.get(i).getProductNum()==0){
				json.setTag(0);
			}else if(list.get(i).getProductSellnumber() >= 50){
				json.setTag(1);
			}else{
				json.setTag(2);
			}
			
			if(imgArr.length>1){
				json.setImg1(imgArr[0]);
				json.setImg2(imgArr[1]);
			}else{
				json.setImg1(list.get(i).getProductImg());
				json.setImg2(list.get(i).getProductImg());
			}
			json.setName(list.get(i).getProductName());
			json.setPrice(list.get(i).getProductPrice());
			productJsonlist.add(json);
		}
		
		if(productJsonlist.size()< 3 ){
			model.addAttribute("InterfixProductlist", productJsonlist);
		}else{
			model.addAttribute("InterfixProductlist", productJsonlist.subList(0, 3));
		}
		String[] imglist = product.getProductImg().split(",");
		String[] taglist = product.getProductTag().split(",");
		model.addAttribute("product", product);
		model.addAttribute("imglist", imglist);
		model.addAttribute("taglist", taglist);
		return "product_detail";
	}
	
	@RequestMapping(value="/order",method=GET)
	public String order(){
		
		return "order";
	}
	
	@RequestMapping(value="/payment",method=GET)
	public String payment(){
		
		return "payment";
	}
	
	@ResponseBody
	@RequestMapping(value="/aside_new",method=GET,produces = {"text/html;charset=UTF-8;"})
	public String aside_new(){
		
		List<Product> list = service.getProductNew(3);
		List<AsideProductJson> jsonList = new ArrayList<AsideProductJson>();
		for(Product product:list){
			AsideProductJson JSON =new AsideProductJson();
			JSON.setId(product.getId());
			JSON.setImg(product.getProductImg().split(",")[0]);
			JSON.setName(product.getProductName());
			JSON.setPrice(product.getProductPrice());
			JSON.setScore(product.getProductScore());
			jsonList.add(JSON);
		}
		Gson gson = new Gson();
		String data = gson.toJson(jsonList);
		return data;
	}
	
	@ResponseBody
	@RequestMapping(value="/aside_sales",method=GET,produces = {"text/html;charset=UTF-8;"})
	public String aside_sales(){
		
		List<Product> list = service.getProductBySales(3);
		List<AsideProductJson> jsonList = new ArrayList<AsideProductJson>();
		for(Product product:list){
			AsideProductJson JSON =new AsideProductJson();
			JSON.setId(product.getId());
			JSON.setImg(product.getProductImg().split(",")[0]);
			JSON.setName(product.getProductName());
			JSON.setPrice(product.getProductPrice());
			JSON.setScore(product.getProductScore());
			jsonList.add(JSON);
		}
		Gson gson = new Gson();
		String data = gson.toJson(jsonList);
		return data;
	}
	
	@ResponseBody
	@RequestMapping(value="/aside_recommend",method=GET,produces = {"text/html;charset=UTF-8;"})
	public String aside_recommend(){
		
		List<Product> list = service.getProductByRecommend(3);
		List<AsideProductJson> jsonList = new ArrayList<AsideProductJson>();
		for(Product product:list){
			AsideProductJson JSON =new AsideProductJson();
			JSON.setId(product.getId());
			JSON.setImg(product.getProductImg().split(",")[0]);
			JSON.setName(product.getProductName());
			JSON.setPrice(product.getProductPrice());
			JSON.setScore(product.getProductScore());
			jsonList.add(JSON);
		}
		Gson gson = new Gson();
		String data = gson.toJson(jsonList);
		return data;
	}
	
	
	
	
}
