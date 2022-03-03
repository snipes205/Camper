<<<<<<<< HEAD:camper/src/main/java/com/camper/web/CamperWebApplication.java
package com.camper.web;
========
package com.camper;
>>>>>>>> origin/dongdong:camper/src/main/java/com/camper/CamperApplication.java

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.camper.controller,com.camper.model, com.camper.service, com.camper.mapper"})
public class CamperApplication {

	public static void main(String[] args) {
		SpringApplication.run(CamperApplication.class, args);
		System.out.println("서버시작");
	}

}
