package com.camper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
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

}