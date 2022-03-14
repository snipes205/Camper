package com.camper.controller;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.camper.model.UserDTO;
import com.camper.service.UserService;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@RestController
public class UserController {
	
	@Autowired
	UserService userService;
	
	// 프로필 사진 업로드 경로 
	private String uploadPath = "/Users/dongdong/git/camper/src/main/webapp/images/user";

	@RequestMapping("/index.do")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	
	
	// 로그인 컨트롤러

	@RequestMapping("/login/login.do")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");

		return mav;
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
 			    session.setAttribute("zipcode", to.getZipcode());
 			    session.setAttribute("address", to.getAddress());
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
		mav.setViewName("user/login");
		return mav;

	}
	
	
	// 회원가입 컨트롤러
	
	@RequestMapping("/login/register.do")
	public ModelAndView Register(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/register");
		
		return mav;
	}
	
	@RequestMapping("/login/registerok.do")
	public ModelAndView RegisterOk(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		UserDTO to = new UserDTO();
		to.setId(request.getParameter("id"));
		to.setPwd(request.getParameter("pwd"));
		to.setName(request.getParameter("name"));
		to.setNick(request.getParameter("nick"));
		to.setBirth(request.getParameter("birth"));
		to.setPhone(request.getParameter("phone"));
		to.setEmail(request.getParameter("email"));
		to.setGen("F");
		to.setZipcode(request.getParameter("postcode"));
		to.setAddress(request.getParameter("jibunAddress"));
		
		if(request.getParameter("profile").equals("") || request.getParameter("profile") == null) {
			to.setProfile("");
		} else {
			to.setProfile(request.getParameter("profile"));
		}
		
		if(request.getParameter("greet").equals("") || request.getParameter("greet") == null) {
			to.setGreet(null);
		} else {
			to.setGreet(request.getParameter("greet"));
		}
		to.setAuthority("user");
		int flag = userService.signup(to);
		
		mav.addObject("flag", flag);
		mav.setViewName("user/register_ok");
		return mav;
	}
	
	// 아이디 중복체크 컨트롤러
	@ResponseBody
	@RequestMapping("/idcheck.do")
	public String idCheck(@RequestParam("user_id") String id, HttpServletResponse response) {
		UserDTO to = new UserDTO();
		to.setId(id);
		
		int flag = userService.checkId(to);
		String result = "" + flag;
		
		return result;
	}
	
	// 닉네임 중복체크 컨트롤러
	@ResponseBody
	@RequestMapping("/nickcheck.do")
	public String nickCheck(@RequestParam("user_nick") String nick, HttpServletResponse response) {
		UserDTO to = new UserDTO();
		to.setNick(nick);
		
		int flag = userService.checkNick(to);
		String result = "" + flag;
		
		return result;
	}
	
	
	// 로그아웃 컨트롤러
	
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("user/logout");
		return mav;
	}
	
	
    // 회원 탈퇴 컨트롤러
	
	@RequestMapping("/leave.do")
	public ModelAndView leave(@RequestParam("msg") String msg, @RequestParam("pwd") String pwd, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
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
		mav.addObject("flag", flag);
		mav.setViewName("user/leave");
		return mav;
	}
	
	
	// 비밀번호 찾기 컨트롤러(아이디와 이메일 존재 여부 확인)
	@RequestMapping("/findpwdcheck.do")
	public String findPwdCheck(@RequestParam("fid") String fid, @RequestParam("email") String email, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		UserDTO to = new UserDTO();
		to.setId(fid);
		to.setEmail(email);
		
		int flag = userService.findPwdCheck(to);
		String result = "" + flag;
		
		return result;
		}
	
	// 비밀번호 찾기 컨트롤러(존재할 경우 임시 비밀번호 발송)
	@RequestMapping("/findPwd.do")
	public ModelAndView findPwd(@RequestParam("fid") String fid, @RequestParam("mail1") String mail1, @RequestParam("mail2") String mail2, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String email = mail1.concat("@").concat(mail2);
		
		int flag = 0;
		UserDTO to = new UserDTO();
		to.setId(fid);
		to.setEmail(email);
		
		flag = userService.findPwd(response, to);
		mav.addObject("flag", flag);
		mav.setViewName("user/findPwd_ok");
		return mav;
		
	}
	
	// 비밀번호 찾기 컨트롤러(존재할 경우 임시 비밀번호 발송)
	@RequestMapping("/updatePwd.do")
	public ModelAndView updatePwd(HttpServletRequest request , HttpServletResponse response, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		UserDTO to = new UserDTO();
		UserDTO to2 = new UserDTO();
		to.setId(session.getAttribute("id").toString());
		to.setPwd(request.getParameter("current_pwd"));
		to2.setId(session.getAttribute("id").toString());
		to2.setPwd(request.getParameter("new_pwd"));
		
		int flag = userService.checkPwd(to);
		int result = 0;
		if(flag == 1) {
			result = userService.updatePwd(to2);
		} else {
			result = 2;
		}
		mav.addObject("result", result);
		mav.setViewName("dashboard/updatePwd");
		return mav;
		
	}
	
	
	// 비밀번호 찾기 컨트롤러(존재할 경우 임시 비밀번호 발송)
	@RequestMapping("/userProfile.do")
	public ModelAndView userProfile(HttpServletRequest request , HttpServletResponse response, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/userProfile");
		return mav;
		
	}
	
}
	

