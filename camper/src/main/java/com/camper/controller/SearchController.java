package com.camper.controller;

import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.camper.model.ReviewDAO;
import com.camper.model.ReviewTO;



@RestController
public class SearchController {
	
	@Autowired
	ReviewDAO dao;

	
	@RequestMapping("/search/main.do")
	public ModelAndView searchMain(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("search/search_main");

		return modelAndView;
	}

	@RequestMapping("/search/map.do")
	public ModelAndView searchMap(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("search/search_map");

		return modelAndView;
	}

	@RequestMapping("/search/theme.do")
	public ModelAndView searchTheme(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("search/search_theme");

		return modelAndView;
	}

	@RequestMapping("/search/detail.do")
	public ModelAndView seachDetail(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView modelAndView = new ModelAndView();
		ReviewTO to = new ReviewTO();
		to.setContentId(request.getParameter("contentId"));
		ArrayList<ReviewTO> reviewLists = dao.ReviewLists(to);
		modelAndView.addObject("reviewLists",reviewLists);
		modelAndView.setViewName("search/search_detail");
		return modelAndView;
	}
	@RequestMapping("/search/detail2.do")
	public ModelAndView seachDetail2(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("search/search_detail2");
		return modelAndView;
	}
	@RequestMapping(value="/search/writeReview.do",method=RequestMethod.POST)
	public int writeReview(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		ReviewTO to = new ReviewTO();
		to.setNick(request.getParameter("nick"));
		to.setPwd(session.getAttribute("pwd").toString());
		to.setContentId(request.getParameter("contentId"));
		to.setContent(request.getParameter("content"));
		
		
		int flag = dao.ReviewWrite(to);
		
		return flag;
	}
	@RequestMapping(value="/search/getReview.do",method=RequestMethod.POST)
	public ArrayList<ReviewTO> getReview(HttpServletRequest request, HttpServletResponse response) {

		ReviewTO to = new ReviewTO();
		to.setContentId(request.getParameter("contentId"));

		ArrayList<ReviewTO> reviewLists = dao.ReviewLists(to);
	
		return reviewLists;
	}
	@RequestMapping(value="/search/deleteReview.do",method=RequestMethod.POST)
	public int deleteReview(HttpServletRequest request, HttpServletResponse response) {

		ReviewTO to = new ReviewTO();

		to.setNick(request.getParameter("nick"));
		to.setRvseq(request.getParameter("rvseq"));
		to.setPwd(request.getParameter("password"));
		
		int flag = dao.ReviewDelete(to);
		
		return flag;
	}
	@RequestMapping(value="/search/modifyReview.do",method=RequestMethod.POST)
	public int modifyReview(HttpServletRequest request, HttpServletResponse response) {

		ReviewTO to = new ReviewTO();
		to.setNick(request.getParameter("nick"));
		to.setRvseq(request.getParameter("rvseq"));
		to.setPwd(request.getParameter("password"));
		to.setContent(request.getParameter("content"));

		int flag = dao.ReviewModyfy(to);
		
		return flag;
	}

	
	

}
