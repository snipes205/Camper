package com.camper.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SearchController {


	@RequestMapping("/search/main.do")
	public ModelAndView searchMain(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("search_main");
		

		return modelAndView;
	}
	@RequestMapping("/search/map.do")
	public ModelAndView searchMap(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("search_map");
		

		return modelAndView;
	}
	@RequestMapping("/search/theme.do")
	public ModelAndView searchTheme(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("search_theme");
		

		return modelAndView;
	}
	
	@RequestMapping("/search/detail.do")
	public ModelAndView seachDetail(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("search_detail");
		

		return modelAndView;
	}
	
}
