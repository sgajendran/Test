package com.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Main extends SpringBootServletInitializer {
	
	@Override
	 protected SpringApplicationBuilder configure(SpringApplicationBuilder app) {
	         return app.sources(Main.class);
	     }
	
	public static void main(String args[]){
		SpringApplication.run(Main.class, args);
	}
	@RequestMapping(value="/")
	public String get(){
		return "Hello world from Test Application after modification 8.!!!";
	}
}
