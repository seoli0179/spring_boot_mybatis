package com.spring_boot_mybatis.project.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/images/**").addResourceLocations("file:///C:/springWorkspace/product_images/");
		registry.addResourceHandler("/images/**").addResourceLocations("file:///usr/local/project/product_images/");
	}

}
