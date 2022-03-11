package com.camper.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.camper.service.UserService;

@RestController
public class DashboadController {
	
	@Autowired
	UserService userService;

	// 관리자
	@RequestMapping("/dashboard/myads.do")
	public ModelAndView dashMyInfo(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		session.getAttribute("id");
		session.getAttribute("pwd");
		session.getAttribute("name");
		session.getAttribute("nick");
		session.getAttribute("birth");
		session.getAttribute("phone");
		session.getAttribute("email");
		session.getAttribute("gen");
		session.getAttribute("area");
		session.getAttribute("profile");
		session.getAttribute("greet");
		
		modelAndView.setViewName("dashboard/dashboard_my_ads");

		return modelAndView;
	}

	@RequestMapping("/dashboard/jjim.do")
	public ModelAndView dashJjim(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_jjim");

		return modelAndView;
	}

	@RequestMapping("/dashboard/follow.do")
	public ModelAndView dashFollow(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_follow");

		return modelAndView;
	}
	
	@RequestMapping("/dashboard/like.do")
	public ModelAndView dashLike(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_like");

		return modelAndView;
	}
	
	@RequestMapping("/dashboard/user.do")
	public ModelAndView dashUser(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/user_profile");
		
		return modelAndView;
	}


	@RequestMapping("/dashboard/message.do")
	public ModelAndView dashMassage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_message");

		return modelAndView;
	}

	@RequestMapping("/dashboard/question.do")
	public ModelAndView dashQuestion(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_question");

		return modelAndView;
	}

	@RequestMapping("/dashboard/write.do")
	public ModelAndView dashWrite(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_write");

		return modelAndView;
	}

	@RequestMapping("/dashboard/writeOk.do")
	public ModelAndView dashWriteOk(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("dashboard/dashboard_write_ok");

		return modelAndView;
	}

}
