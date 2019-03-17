package com.whzc.website.xiangxi.config;

import java.util.EnumSet;

import javax.servlet.DispatcherType;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;


public class XiangxiInitializer implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {
		//配置Spring提供的字符编码过滤器
        javax.servlet.FilterRegistration.Dynamic filter = servletContext.addFilter("encoding", new CharacterEncodingFilter());
        //配置过滤器的过滤路径
        filter.addMappingForUrlPatterns(EnumSet.of(DispatcherType.REQUEST), true, "/");
		
		//基于注解配置的Spring容器上下文
        AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
        //注册Spring容器配置类
        rootContext.register(RootConfig.class);
        servletContext.addListener(new ContextLoaderListener(rootContext));
		
		//基于注解配置的Web容器上下文
        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
        //注册Web容器配置类
        context.register(WebConfig.class);
        Dynamic servlet = servletContext.addServlet("dispatcher", new DispatcherServlet(context));
        //配置映射路径
        servlet.addMapping("/");
        //启动顺序
        servlet.setLoadOnStartup(1);
		
	}


}
