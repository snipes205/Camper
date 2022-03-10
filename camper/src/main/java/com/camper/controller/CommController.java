package com.camper.controller;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

=======
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
>>>>>>> origin/ljh
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
//커뮤니티 컨트롤러
@RestController
public class CommController {

	// 게시판

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
		modelAndView.setViewName("board_list2");
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

	// 공지사항
=======
import com.camper.model.BoardDAO;
import com.camper.model.BoardTO;

// 캠핑톡톡 Controller
@RestController
public class CommController {
	
	@Autowired
	BoardDAO dao;
	

	// 캠핑톡톡 메인 ( main )
	@RequestMapping("/community/main.do")
	public ModelAndView boardMain(HttpServletRequest request) {
		
		ArrayList<BoardTO> boardLists = dao.boardList();
		ArrayList<BoardTO> boardLists2 = dao.boardList2();
		ArrayList<BoardTO> boardLists3 = dao.boardList3();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_main");
		modelAndView.addObject( "boardLists", boardLists );
		modelAndView.addObject( "boardLists2", boardLists2 );
		modelAndView.addObject( "boardLists3", boardLists3 );
		
		return modelAndView;
	}
	
	// 캠핑로그 리스트 ( list1 )
	@RequestMapping("/community/camplog.do")
	public ModelAndView boardCamplog(HttpServletRequest request) {
		
		ArrayList<BoardTO> boardLists = dao.boardList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_list1");
		modelAndView.addObject( "boardLists", boardLists );
		
		return modelAndView;
	}

	// 캠핑꿀팁 리스트 ( list2 )
	@RequestMapping("/community/camptip.do")
	public ModelAndView boardCamptip(HttpServletRequest request) {
		
		ArrayList<BoardTO> boardLists2 = dao.boardList2();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_list2");
		modelAndView.addObject( "boardLists2", boardLists2 );
		
		return modelAndView;
	}

	// 캠핑가자 리스트 ( list3 )
	@RequestMapping("/community/campgo.do")
	public ModelAndView boardCampgo(HttpServletRequest request) {
		
		ArrayList<BoardTO> boardLists3 = dao.boardList3();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_list3");
		modelAndView.addObject( "boardLists3", boardLists3 );
		
		return modelAndView;
	}

	// 캠핑톡톡 글쓰기 ( write )
	@RequestMapping("/community/write.do")
	public ModelAndView boardWrite(HttpServletRequest request) {
		
		BoardTO to = new BoardTO();
		to.setType( request.getParameter( "type" ) );
		
		to = dao.boardWrite( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_write");
		modelAndView.addObject( "to", to );
		
		return modelAndView;
	}
	
	// 캠핑톡톡 글쓰기 ( writeOK )
		@RequestMapping("/community/writeOk.do")
		public ModelAndView boardWriteOk(HttpServletRequest request) {
			
			BoardTO to = new BoardTO();
			to.setTitle( request.getParameter( "title" ) );
			to.setNick( request.getParameter( "nick" ) );
			to.setPwd( request.getParameter( "pwd" ) );
			to.setContent( request.getParameter( "content" ) );
			
			int flag = dao.boardWirteOk( to );
			request.setAttribute( "flag", flag );
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("board_write_ok");
			modelAndView.addObject( "flag", flag );
			
			return modelAndView;
	}

	// 캠핑톡톡 글보기 
	@RequestMapping("/community/view.do")
	public ModelAndView boardView(HttpServletRequest request) {
		
		BoardTO to = new BoardTO();
		to.setPseq( request.getParameter( "pseq" ) );
		to.setType( request.getParameter( "type" ) );
		
		to = dao.boardView( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_view");
		modelAndView.addObject( "to", to );
		
		return modelAndView;
	}
	
	// 캠핑톡톡 글수정 ( modify )
	@RequestMapping("/community/modify.do")
	public ModelAndView boardModify(HttpServletRequest request) {
		
		BoardTO to = new BoardTO();
		to.setPseq( request.getParameter( "pseq" ) );
		
		to = dao.boardModify( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_modify");
		modelAndView.addObject( "to", to );
		
		return modelAndView;
	}
	
	// 캠핑톡톡 글수정( modifyOk )
	@RequestMapping("/community/modifyOk.do")
	public ModelAndView boardModifyOk(HttpServletRequest request) {
		
		BoardTO to = new BoardTO();
		to.setPseq( request.getParameter( "pseq" ) );
		to.setPwd( request.getParameter( "pwd" ) );
		to.setTitle( request.getParameter( "title" ) );
		to.setType( request.getParameter( "type" ) );
		to.setContent( request.getParameter( "content" ) );	
		int flag = dao.boardMoidfyOk( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_modify_ok");
		modelAndView.addObject( "flag", flag );
		modelAndView.addObject( "pseq", to.getPseq() );
		
		return modelAndView;
	}

	// 캠핑톡톡 글삭제 ( delete )
	@RequestMapping("/community/delete.do")
	public ModelAndView boardDelete(HttpServletRequest request) {
		
		BoardTO to = new BoardTO();
		to.setPseq( request.getParameter( "pseq" ) );
		to.setType( request.getParameter( "type" ) );
		to = dao.boardDelete( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_delete");
		modelAndView.addObject( "to", to );
		
		return modelAndView;
	}
	
	// 캠핑톡톡 글삭제 ( deleteOk )
	@RequestMapping("/community/deleteOk.do")
	public ModelAndView boardDeleteOk(HttpServletRequest request) {
		
		BoardTO to = new BoardTO();
		to.setPseq( request.getParameter( "pseq" ) );
		to.setPwd( request.getParameter( "pwd" ) );
		
		int flag = dao.boardDeleteOk( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_delete_ok");
		modelAndView.addObject( "flag", flag );
		
		return modelAndView;
	}

	// 자주 묻는 질문 ( FAQ )
>>>>>>> origin/ljh
	@RequestMapping("/ask/faq.do")
	public ModelAndView boardFaq() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_faq");
<<<<<<< HEAD
		return modelAndView;
	}

	@RequestMapping("/ask/notice.do")
	public ModelAndView boardNotice() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_notice");
=======
		
		return modelAndView;
	}

	// 공지사항 ( notice )
	@RequestMapping("/ask/notice.do")
	public ModelAndView boardNotice(HttpServletRequest request) {
		
		ArrayList<BoardTO> boardLists4 = dao.boardList4();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board_notice");
		modelAndView.addObject( "boardLists4", boardLists4 );
		
>>>>>>> origin/ljh
		return modelAndView;
	}
}
