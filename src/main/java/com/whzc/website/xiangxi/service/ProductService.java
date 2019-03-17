package com.whzc.website.xiangxi.service;

import java.util.List;

import com.whzc.website.xiangxi.pojo.HomeShopJson;
import com.whzc.website.xiangxi.pojo.Product;

public interface ProductService {

	//获取最新上架的产品
	public List<Product> getProductNew(int number);
	//按评分降序排列
	public List<Product> getProductByDate();
	//按评分降序排列
	public List<Product> getProductByScore();
	//按销售量降序排列
	public List<Product> getProductBySellNumber();
	//按价格降序排列
	public List<Product> getProductByprice();
	
	public Product getProductById(String id);
	
	//获取最热销的产品
	public List<Product> getProductBySales(int number);
	
	//随机获取推荐产品中的三个
	public List<Product> getProductByRecommend(int number);

	//获取同类型的产品
	public List<Product> getProductByClassify(String Classify);
	
	public void setPriceOrder(List<HomeShopJson> shop);
	
	public void setProductBySellNumber(List<HomeShopJson> shop);
	
	public void setProductByScore(List<HomeShopJson> shop);
	
	//通过传入的产品类型获取同类型产品
//	public List<Product> getProductByClassify();
	
}
