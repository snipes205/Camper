package com.camper.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.camper.config,com.camper.model1"})//패키지 읽기.. 중요함 
public class CamperWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(CamperWebApplication.class, args);
		System.out.println("서버시작");
	}

}
