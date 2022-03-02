package com.camper.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminController {
	
	@RequestMapping("/admin/main.do")
	public ModelAndView adminMain(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_dashboard");
		

		return modelAndView;
	}
	@RequestMapping("/admin/ask.do")
	public ModelAndView adminAsk(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_ask");
		

		return modelAndView;
	}
	@RequestMapping("/admin/comm.do")
	public ModelAndView adminComm(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_comm");
		

		return modelAndView;
	}
	@RequestMapping("/admin/admin.do")
	public ModelAndView adminAdmin(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_admin");
		

		return modelAndView;
	}
	@RequestMapping("/admin/default.do")
	public ModelAndView adminDefault(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_default");
		

		return modelAndView;
	}
	@RequestMapping("/admin/member.do")
	public ModelAndView adminMember(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_member");
		

		return modelAndView;
	}
	@RequestMapping("/admin/modify_a.do")
	public ModelAndView adminModifyA(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_modify_a");
		

		return modelAndView;
	}
	@RequestMapping("/admin/modify_c.do")
	public ModelAndView adminModifyC(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_modify_c");
		

		return modelAndView;
	}
	@RequestMapping("/admin/modify_n.do")
	public ModelAndView adminModifyN(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_modify_n");
		

		return modelAndView;
	}
	@RequestMapping("/admin/notice.do")
	public ModelAndView adminNotice(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_notice");
		

		return modelAndView;
	}
	@RequestMapping("/admin/profile.do")
	public ModelAndView adminProfile(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_profile");
		

		return modelAndView;
	}
	@RequestMapping("/admin/site.do")
	public ModelAndView adminSite(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_site");
		

		return modelAndView;
	}
	@RequestMapping("/admin/terms.do")
	public ModelAndView adminTerms(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_terms");
		

		return modelAndView;
	}
	@RequestMapping("/admin/view.do")
	public ModelAndView adminView(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_view");
		

		return modelAndView;
	}
	@RequestMapping("/admin/write_a.do")
	public ModelAndView adminWriteA(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_write_a");
		

		return modelAndView;
	}
	@RequestMapping("/admin/write_c.do")
	public ModelAndView adminWriteC(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_write_c");
		

		return modelAndView;
	}
	@RequestMapping("/admin/write_n.do")
	public ModelAndView adminWriteN(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_write_n");
		

		return modelAndView;
	}
	
}
