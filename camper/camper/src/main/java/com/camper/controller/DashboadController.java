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
public class DashboadController {
//관리자
	@RequestMapping("/dashboard/myads.do")
	public ModelAndView dashMyInfo(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard_my_ads");
		

		return modelAndView;
	}
	@RequestMapping("/dashboard/jjim.do")
	public ModelAndView dashJjim(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard_jjim");
		

		return modelAndView;
	}
	@RequestMapping("/dashboard/like.do")
	public ModelAndView dashLike(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard_like");
		

		return modelAndView;
	}
	@RequestMapping("/dashboard/message.do")
	public ModelAndView dashMassage(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard_message");
		

		return modelAndView;
	}
	@RequestMapping("/dashboard/question.do")
	public ModelAndView dashQuestion(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard_question");
		

		return modelAndView;
	}
	@RequestMapping("/dashboard/write.do")
	public ModelAndView dashWrite(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard_write");
		

		return modelAndView;
	}
	@RequestMapping("/dashboard/writeOk.do")
	public ModelAndView dashWriteOk(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard_write_ok");
		

		return modelAndView;
	}
}
