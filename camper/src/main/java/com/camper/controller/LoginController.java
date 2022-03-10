package com.camper.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.camper.model.UserDTO;
import com.camper.service.UserService;

@RestController
public class LoginController {
	
	@Autowired
	UserService userService;
	

	@RequestMapping("/index.do")
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		return modelAndView;
	}

	@RequestMapping("/login/login.do")
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");

		return modelAndView;
	}
	
	@RequestMapping("/login/loginCheck.do")
	public ModelAndView loginCheck(@RequestParam("id") String id, @RequestParam("pwd") String pwd, HttpSession session)  {
		ModelAndView mav = new ModelAndView();
		UserDTO to = new UserDTO();
		to.setId(id);
		to.setPwd(pwd);
		//List<UserDTO> user = userService.testLogin(to);
		//mav.addObject("user", user);
		int flag = 2;
		
		int idCheck = userService.checkId(to);
		if(idCheck == 1) { 
			//id 존재
			int pwdCheck = userService.checkPwd(to);
			if(pwdCheck == 1) {
				// 아이디와 비밀번호가 일치할 경우
				flag = 0;
			    to = userService.successLogin(to);
			    session.setAttribute("id", to.getId());
			    session.setAttribute("pwd", to.getPwd());
			    session.setAttribute("name", to.getName());
			    session.setAttribute("nick", to.getNick());
 			    session.setAttribute("birth", to.getBirth());
 			    session.setAttribute("phone", to.getPhone());
 			    session.setAttribute("email", to.getEmail());
 			    session.setAttribute("gen", to.getGen());
 			    session.setAttribute("area", to.getArea());
			    session.setAttribute("profile", to.getProfile());
			    session.setAttribute("greet", to.getGreet());
			    session.setAttribute("authority", to.getAuthority());
			    
			} else if(pwdCheck == 0) {
				// 아이디와 비밀번호가 일치하지 않음
				flag = 1;
			} else {
				// 기타 이유로 로그인 실패
				flag = 3;
			}
			
		}
		mav.addObject("flag", flag);
		mav.setViewName("login");
		return mav;

	}
	
	@RequestMapping("/login/register.do")
	public ModelAndView Register(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("register");
		
		return modelAndView;
	}

	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		session.invalidate();
		modelAndView.setViewName("/logout");
		return modelAndView;
	}
	
	@RequestMapping("/leave.do")
	public ModelAndView leave(@RequestParam("msg") String msg, @RequestParam("pwd") String pwd, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		
		int flag = 1;
		
		UserDTO to = new UserDTO();
		to.setId(session.getAttribute("id").toString());
		to.setPwd(pwd);
		to.setMsg(msg);
		
		int checkPwd = userService.checkPwd(to);
		
		if(checkPwd == 1) {
			//비밀번호가 일치하는 경우
			flag = 0;
			userService.leaveUser(to);
			userService.deleteUser(to);
		}
		modelAndView.addObject("flag", flag);
		modelAndView.setViewName("/leave");
		return modelAndView;
		
	}

}
