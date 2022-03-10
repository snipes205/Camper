package com.camper.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.camper.model.UserDTO;
import com.camper.service.TestService;

@RestController
public class TestController {

	@Autowired
	TestService testService;

	@RequestMapping(value = "/test")
	public ModelAndView test() throws Exception {

		List<UserDTO> testList = testService.selectTest();

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", testList);
		return mav;
	}
	@RequestMapping(value = "/maptest")
	public ModelAndView maptest() throws Exception {

		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/maptest/maptest");
		return modelAndView;
	}
	@RequestMapping(value = "/maptest2")
	public ModelAndView maptest2() throws Exception {

		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/maptest/maptest2");
		return modelAndView;
	}
	@RequestMapping(value = "/maptest3")
	public ModelAndView maptest3() throws Exception {

		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/maptest/maptest3");
		return modelAndView;
	}
	@RequestMapping(value = "/maptest4")
	public ModelAndView maptest4() throws Exception {

		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/maptest/maptest4");
		return modelAndView;
	}
	@RequestMapping(value = "/maptest5")
	public ModelAndView maptest5() throws Exception {

		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/maptest/maptest5");
		return modelAndView;
	}
	@RequestMapping(value = "/maptest6")
	public ModelAndView maptest6() throws Exception {

		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/maptest/maptest6");
		return modelAndView;
	}
}
