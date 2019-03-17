package com.whzc.website.xiangxi.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages={"com.whzc.website.xiangxi.controller"})
public class WebConfig extends WebMvcConfigurerAdapter {
	public WebConfig() {
		// TODO Auto-generated constructor stub
	}
	
	//配置JSP视图解析器
	@Bean
	public ViewResolver viewResolver(){
		InternalResourceViewResolver resolver=
				new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setExposeContextBeansAsAttributes(true);
		return resolver;
		
	}
	
	//配置静态资源的处理
	public void configureDefaultServletHandling(
			DefaultServletHandlerConfigurer configurer){
		configurer.enable();
	}
}
