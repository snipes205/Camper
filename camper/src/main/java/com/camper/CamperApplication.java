package com.camper;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.camper.controller,com.camper.model, com.camper.service, com.camper.mapper", "com.camper.search"})
public class CamperApplication {

	public static void main(String[] args) {
		SpringApplication.run(CamperApplication.class, args);
		System.out.println("서버시작");
	}

}
