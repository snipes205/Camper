package com.camper.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
//커뮤니티 컨트롤러
@RestController
public class CommController {
	
	//게시판

	@RequestMapping("/community/main.do")
	public ModelAndView boardMain() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_main");
		return modelAndView;
	}
	@RequestMapping("/community/camplog.do")
	public ModelAndView boardCamplog() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_list1");
		return modelAndView;
	}
	@RequestMapping("/community/camptip.do")
	public ModelAndView boardCamptip() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_list2;");
		return modelAndView;
	}
	@RequestMapping("/community/campgo.do")
	public ModelAndView boardCampgo() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_list3");
		return modelAndView;
	}
	@RequestMapping("/community/write.do")
	public ModelAndView boardWrite() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_write");
		return modelAndView;
	}
	@RequestMapping("/community/view.do")
	public ModelAndView boardView() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_view");
		return modelAndView;
	}
	@RequestMapping("/community/modify.do")
	public ModelAndView boardModify() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_modify");
		return modelAndView;
	}
	@RequestMapping("/community/delete.do")
	public ModelAndView boardDelete() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_delete");
		return modelAndView;
	}
	@RequestMapping("/community/deleteOk.do")
	public ModelAndView boardDeleteOk() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_delete_Ok");
		return modelAndView;
	}
	//공지사항
	@RequestMapping("/ask/faq.do")
	public ModelAndView boardFaq() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_faq");
		return modelAndView;
	}
	@RequestMapping("/ask/notice.do")
	public ModelAndView boardNotice() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_notice");
		return modelAndView;
	}



	
}
