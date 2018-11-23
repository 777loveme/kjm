package com.kjm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication
public class Kjm2Application {

//	@ResponseBody
//    @RequestMapping("/")
//    public String test(){
//        return "gradle springboot test";
//    }
//	
	
	public static void main(String[] args) {
		SpringApplication.run(Kjm2Application.class, args);
	}
}
