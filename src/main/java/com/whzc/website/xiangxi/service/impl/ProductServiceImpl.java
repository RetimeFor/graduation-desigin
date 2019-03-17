package com.whzc.website.xiangxi.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whzc.website.xiangxi.mapper.ProductMapper;
import com.whzc.website.xiangxi.pojo.HomeShopJson;
import com.whzc.website.xiangxi.pojo.Product;
import com.whzc.website.xiangxi.pojo.ProductExample;
import com.whzc.website.xiangxi.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductMapper mapper;
	

	@Override
	public List<Product> getProductNew(int number) {
		ProductExample example = new ProductExample();
		example.setOrderByClause("product_time DESC");	
		List<Product> list = mapper.selectByExample(example);
		if(list.size()!=0 && list.size()<number){
			return list;
		}else if(list.size() >= number){
			List<Product> list2 = new ArrayList<Product>();
			for(int i=0;i<number;i++){
				list2.add(list.get(i));
			}
			return list2;
		}else{
			return null;
		}
		
	}

	@Override
	public Product getProductById(String id) {
		Product product = mapper.selectByPrimaryKey(id);
		return product;
	}

	@Override
	public List<Product> getProductBySales(int number) {
		ProductExample example = new ProductExample();
		example.setOrderByClause("product_sellnumber DESC");
		List<Product> list = mapper.selectByExample(example);
		if(list.size()!=0 && list.size()<number){
			return list;
		}else if(list.size() >= number){
			List<Product> list2 = new ArrayList<Product>();
			for(int i=0;i<number;i++){
				list2.add(list.get(i));
			}
			return list2;
		}else{
			return null;
		}
	}

	@Override
	public List<Product> getProductByRecommend(int number) {
		ProductExample example = new ProductExample();
		example.createCriteria().andProductRecommendEqualTo(true);
		List<Product> list = mapper.selectByExample(example);
		if(list.size()!=0 && list.size()<=number){
			return list;
		}else if(list.size() > number){
			List<Product> list2 = new ArrayList<Product>();
			int[] random = new int[number];
			for(int i=0;i<number;i++){
				random[i] = (int)(Math.random()*(list.size()+1));
			}

			for(int productorder:random){
				list2.add(list.get(productorder));
			}
			
			return list2;
		}else{
			return null;
		}
	}

	@Override
	public List<Product> getProductByClassify(String Classify) {
		ProductExample example = new ProductExample();
		example.createCriteria().andProductClassifyEqualTo(Classify);
		List<Product> list = mapper.selectByExample(example);
		if(list.size()!=0){
			return list;
		}
		return null;
	}

	@Override
	public List<Product> getProductByScore() {
		ProductExample example = new ProductExample();
		example.setOrderByClause("product_score DESC");	
		List<Product> list = mapper.selectByExample(example);
		if(list.size()!=0){
			return list;
		}else{
			return null;
		}
	}

	@Override
	public List<Product> getProductBySellNumber() {
		ProductExample example = new ProductExample();
		example.setOrderByClause("product_sellnumber DESC");	
		List<Product> list = mapper.selectByExample(example);
		if(list.size()!=0){
			return list;
		}else{
			return null;
		}
	}

	@Override
	public List<Product> getProductByprice() {
		ProductExample example = new ProductExample();
		example.setOrderByClause("product_price DESC");	
		List<Product> list = mapper.selectByExample(example);
		if(list.size()!=0){
			return list;
		}else{
			return null;
		}
	}

	@Override
	public List<Product> getProductByDate() {
		ProductExample example = new ProductExample();
		example.setOrderByClause("product_time DESC");	
		List<Product> list = mapper.selectByExample(example);
		if(list.size()!=0){
			return list;
		}else{
			return null;
		}
	}
	
	public HomeShopJson getHomeShopJsonById(String id,List<HomeShopJson> shop){
		HomeShopJson outShopJson = null;
		for(HomeShopJson product:shop){
			if(product.getId().equals(id)){
				outShopJson = product;
			}
		}
		return outShopJson;
	}
	
	public void setPriceOrder(List<HomeShopJson> shop){
		List<Product> productlist = getProductByprice();
		for(int i = 0;i<productlist.size();i++){
			getHomeShopJsonById(productlist.get(i).getId(),shop).setPriceorder(i+1);
		}
	}
	
	public void setProductBySellNumber(List<HomeShopJson> shop){
		List<Product> productlist = getProductBySellNumber();
		for(int i = 0;i<productlist.size();i++){
			getHomeShopJsonById(productlist.get(i).getId(),shop).setSellorder(i+1);
		}
	}
	
	public void setProductByScore(List<HomeShopJson> shop){
		List<Product> productlist = getProductByScore();
		for(int i = 0;i<productlist.size();i++){
			getHomeShopJsonById(productlist.get(i).getId(),shop).setScoreorder(i+1);
		}
	}
	
}
