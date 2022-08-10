package com.gyojincompany.profileweb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class ProfileWeb00Application extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(ProfileWeb00Application.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		// TODO Auto-generated method stub
		return builder.sources(ProfileWeb00Application.class);
	}
	

}
