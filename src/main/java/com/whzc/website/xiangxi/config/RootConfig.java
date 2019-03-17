package com.whzc.website.xiangxi.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan(basePackages={
		"com.whzc.website.xiangxi.service.impl"},excludeFilters={
		@Filter(type=FilterType.ANNOTATION,value=EnableWebMvc.class)})
@ImportResource("classpath:applicationContext.xml")
public class RootConfig {

	public RootConfig() {
		// TODO Auto-generated constructor stub
	}

}
