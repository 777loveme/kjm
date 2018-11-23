package com.kjm;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class HomeController {
//	@RequestMapping("/")
//	public String home() {
//		 return "¾È³ç Spring Boot!";
//	}
	
	
	 @RequestMapping(value = "/index")
	    public ModelAndView main() {
	        ModelAndView view = new ModelAndView("index4");
	        view.addObject("text", "world");
	        return view;
	    }
	 
	 
	 @RequestMapping(value = "/json")
	    public ModelAndView json() {
	        ModelAndView view = new ModelAndView("json");
	        
	        return view;
	    }
}
