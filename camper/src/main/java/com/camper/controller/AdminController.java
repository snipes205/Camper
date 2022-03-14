package com.camper.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.camper.model.BoardTO;
import com.camper.model.LeaveUserDAO;
import com.camper.model.LeaveUserTO;
import com.camper.model.NboardDAO;
import com.camper.model.NboardTO;
import com.camper.model.OboardDAO;
import com.camper.model.OboardTO;
import com.camper.model.PtableDAO;
import com.camper.model.PtableTO;
import com.camper.model.UserDAO;
import com.camper.model.UserDTO;
import com.camper.model.UserTO;

@RestController
public class AdminController {
	
	// 고객지원 Nboard 
	@Autowired
	private NboardDAO ndao;
	
	// 1:1 Oboard 
	@Autowired
	private OboardDAO odao;
			
	// 커뮤니티 Ptable 
	@Autowired
	private PtableDAO pdao;
	
	// user 
	@Autowired
	private UserDAO udao;
	
	// leave 
	@Autowired
	private LeaveUserDAO ldao;
		
	
	// 관리자 메인
	@RequestMapping("/admin/main.do")
	public ModelAndView adminMain(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_dashboard");
		
		return modelAndView;
	}
	
	// 1:1문의 List - Oboard
	@RequestMapping("/admin/ask.do")
	public ModelAndView adminAsk(HttpServletRequest request,HttpServletResponse response ) {
		
		ArrayList<OboardTO> boardLists = odao.boardList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_ask");
		modelAndView.addObject( "boardLists", boardLists );
		
		return modelAndView;
	}
	
	// 커뮤니티 List - Ptable
	@RequestMapping("/admin/comm.do")
	public ModelAndView adminComm(HttpServletRequest request,HttpServletResponse response ) {
		
		ArrayList<PtableTO> boardLists = pdao.boardList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_comm");
		modelAndView.addObject( "boardLists", boardLists );
		
		return modelAndView;
	}
			
	// 캠핑로그 List
	@RequestMapping("/admin/comm_log.do")
	public ModelAndView adminCommLog(HttpServletRequest request,HttpServletResponse response ) {
			
		ArrayList<PtableTO> boardListsL = pdao.boardListL();
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_comm_log");
		modelAndView.addObject( "boardListsL", boardListsL );
			
		return modelAndView;
	}		
		
	// 캠핑꿀팁 List
	@RequestMapping("/admin/comm_honey.do")
	public ModelAndView adminCommH(HttpServletRequest request,HttpServletResponse response ) {
			
		ArrayList<PtableTO> boardListsH = pdao.boardListH();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_comm_honey");
		modelAndView.addObject( "boardListsH", boardListsH );
			
		return modelAndView;
	}
		
	// 캠핑가자 List
	@RequestMapping("/admin/comm_go.do")
	public ModelAndView adminCommGo(HttpServletRequest request,HttpServletResponse response ) {
			
		ArrayList<PtableTO> boardListsG = pdao.boardListG();
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_comm_go");
		modelAndView.addObject( "boardListsG", boardListsG );
			
		return modelAndView;
	}
		
	
	// 고객지원 List - Nboard
	@RequestMapping("/admin/notice.do")
	public ModelAndView adminNotice(HttpServletRequest request,HttpServletResponse response ) {
			
		ArrayList<NboardTO> boardLists = ndao.boardList();
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_notice");
		modelAndView.addObject( "boardLists", boardLists );

		return modelAndView;
	}
	
	// 고객지원 FAQ - Nboard
	@RequestMapping("/admin/faq.do")
	public ModelAndView adminFAQ(HttpServletRequest request ) {
				
		ArrayList<NboardTO> boardListsF = ndao.boardListF();
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_notice_f");
		modelAndView.addObject( "boardListsF", boardListsF );

		return modelAndView;
	}
		
	// 고객지원 공지사항 - Nboard
	@RequestMapping("/admin/notice_n.do")
	public ModelAndView adminNotice_N(HttpServletRequest request,HttpServletResponse response ) {
				
		ArrayList<NboardTO> boardListsN = ndao.boardListN();
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_notice_n");
		modelAndView.addObject( "boardListsN", boardListsN );

		return modelAndView;
	}	
	
	// 관리자 설정
	@RequestMapping("/admin/admin.do")
	public ModelAndView adminAdmin(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_admin");

		return modelAndView;
	}
	
	
	// 회원관리
	@RequestMapping("/admin/member.do")
	public ModelAndView adminMember(HttpServletRequest request,HttpServletResponse response ) {
		
		ArrayList<UserTO> boardLists = udao.boardList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_member");
		modelAndView.addObject( "boardLists", boardLists );
		
		return modelAndView;
	}
	
	// 탈퇴회원
	@RequestMapping("/admin/leaveuser.do")
	public ModelAndView adminLeaveU(HttpServletRequest request,HttpServletResponse response ) {
			
		ArrayList<LeaveUserTO> boardLists = ldao.boardList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_leaveuser");
		modelAndView.addObject( "boardLists", boardLists );
			
		return modelAndView;
	}
	
	// 1:1 문의 수정 a_modify_a
	@RequestMapping("/admin/modify_a.do")
	public ModelAndView adminModifyA(HttpServletRequest request ) {
		
		OboardTO to = new OboardTO();
		to.setOseq( request.getParameter( "oseq" ) );

		to = odao.boardModify( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_modify_a");
		modelAndView.addObject( "to", to );
		
		return modelAndView;
	}
	
	// 1:1 문의 수정 a_modify_aok
	@RequestMapping("/admin/modify_aok.do")
	public ModelAndView boardModifyOkA(HttpServletRequest request) {
			
		OboardTO to = new OboardTO();
		to.setOseq( request.getParameter( "oseq" ) );
		to.setTitle( request.getParameter( "title" ) );
		to.setNick( request.getParameter( "nick" ) );
		to.setContent( request.getParameter( "content" ) );	
		int flag = odao.boardMoidfyOk( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_modify_aok");
		modelAndView.addObject( "flag", flag );
		modelAndView.addObject( "oseq", to.getOseq() );
			
		return modelAndView;
	}
	
	// 고객지원 수정
	@RequestMapping("/admin/modify_n.do")	
	public ModelAndView adminModifyN(HttpServletRequest request ) {
			
		NboardTO to = new NboardTO();
		to.setNseq( request.getParameter( "nseq" ) );

		to = ndao.boardModify( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_modify_n");
		modelAndView.addObject( "to", to );
			
		return modelAndView;
	}
	
	// 고객지원 Modify
	@RequestMapping("/admin/modify_nok.do")
	public ModelAndView boardModifyOkN(HttpServletRequest request) {
			
		NboardTO to = new NboardTO();
		to.setNseq( request.getParameter( "nseq" ) );
		to.setTitle( request.getParameter( "title" ) );
		to.setNick( request.getParameter( "nick" ) );
		to.setContent( request.getParameter( "content" ) );	
		int flag = ndao.boardMoidfyOk( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_modify_nok");
		modelAndView.addObject( "flag", flag );
		modelAndView.addObject( "nseq", to.getNseq() );
			
		return modelAndView;
	}
	
	// 회원 상세페이지
	@RequestMapping("/admin/profile.do")
	public ModelAndView adminProfile(HttpServletRequest request ) {
		
		UserTO to = new UserTO();
		to.setName( request.getParameter( "id" ) );
		to.setName( request.getParameter( "pwd" ) );
		to.setName( request.getParameter( "name" ) );
		to.setName( request.getParameter( "nick" ) );
		to.setName( request.getParameter( "birth" ) );
		to.setName( request.getParameter( "phone" ) );
		to.setName( request.getParameter( "email" ) );
		to.setName( request.getParameter( "gen" ) );
		to.setName( request.getParameter( "area" ) );
		to.setName( request.getParameter( "greet" ) );
		
		to = udao.boardView( to );	
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_profile");	
		modelAndView.addObject( "to", to );

		return modelAndView;
	}
	
	// 사이트 정보
	@RequestMapping("/admin/site.do")
	public ModelAndView adminSite(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_site");

		return modelAndView;
	}
	
	// 가입 약관
	@RequestMapping("/admin/terms.do")
	public ModelAndView adminTerms(HttpServletRequest request,HttpServletResponse response ) {
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_terms");

		return modelAndView;
	}
	
	// 고객지원 View
	@RequestMapping("/admin/view.do")
	public ModelAndView adminView(HttpServletRequest request ) {
			
		NboardTO to = new NboardTO();
		to.setNseq( request.getParameter( "nseq" ) );
		to.setType( request.getParameter( "type" ) );
			
		to = ndao.boardView( to );	
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_view_n");
		modelAndView.addObject( "to", to );
			
		return modelAndView;
	}
	
	// 1:1문의 View
	@RequestMapping("/admin/view_o.do")
	public ModelAndView adminView_o(HttpServletRequest request ) {
				
		OboardTO to = new OboardTO();
		to.setOseq( request.getParameter( "oseq" ) );

		to = odao.boardView( to );	
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName( "admin/a_view_o" );
		modelAndView.addObject( "to", to );
				
		return modelAndView;
	}
	
	// 커뮤니티 View
	@RequestMapping("/admin/view_p.do")
	public ModelAndView adminView_p(HttpServletRequest request ) {
				
		PtableTO to = new PtableTO();
		to.setPseq( request.getParameter( "pseq" ) );
		to.setType( request.getParameter( "type" ) );
				
		to = pdao.boardView( to );	
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_view_p");
		modelAndView.addObject( "to", to );
				
		return modelAndView;
	}
	
	// 고객지원 Write
	@RequestMapping("/admin/write_n.do")
	public ModelAndView adminWriteN(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_write_n");
		
		return modelAndView;
	}

	// 고객지원 WriteOK
		@RequestMapping("/admin/write_nok.do")
		public ModelAndView adminWriteNOk(HttpServletRequest request,HttpServletResponse response ) {
			
			NboardTO to = new NboardTO();
			to.setTitle( request.getParameter( "title" ) );
			to.setNick( request.getParameter( "nick" ) );
			to.setContent( request.getParameter( "content" ) );	
			to.setType( request.getParameter( "type" ) );	
			int flag = ndao.boardWriteOk( to );
				
			
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.setViewName("admin/a_write_nok");
			
			modelAndView.addObject( "flag", flag );
			
			return modelAndView;
		}
		

	// 1:1 문의 Write
	@RequestMapping("/admin/write_a.do")
	public ModelAndView adminWriteA(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_write_a");
			
		return modelAndView;
	}
	
	// 1:1 문의 WriteOK
	@RequestMapping("/admin/write_aok.do")
	public ModelAndView adminWriteAOk(HttpServletRequest request,HttpServletResponse response ) {
					
		OboardTO to = new OboardTO();
		to.setTitle( request.getParameter( "title" ) );
		to.setNick( request.getParameter( "nick" ) );
		to.setContent( request.getParameter( "content" ) );	
		int flag = odao.boardWriteOk( to );						
					
		ModelAndView modelAndView = new ModelAndView();				
		modelAndView.setViewName("admin/a_write_aok");				
		modelAndView.addObject( "flag", flag );
					
		return modelAndView;
	}
						
	// 1:1문의 Delete
	@RequestMapping("/admin/delete_oOk.do")
	public ModelAndView boardDeleteOk1(HttpServletRequest request) {
			
		OboardTO to = new OboardTO();
		to.setOseq( request.getParameter( "oseq" ) );

		int flag = odao.boardDeleteOk( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_ask_deleteok");
		modelAndView.addObject( "flag", flag );
			
		return modelAndView;
	}
			
	// 커뮤니티 DeleteOk
	@RequestMapping("/admin/delete_cOk.do")
	public ModelAndView boardDeleteOk2(HttpServletRequest request) {
			
		PtableTO to = new PtableTO();
		to.setPseq( request.getParameter( "pseq" ) );

		int flag = pdao.boardDeleteOk( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_comm_deleteok");
		modelAndView.addObject( "flag", flag );
			
		return modelAndView;
	}
		
	// 고객지원 DeleteOk
	@RequestMapping("/admin/delete_nOk.do")
	public ModelAndView boardDeleteOk3(HttpServletRequest request) {
					
		NboardTO to = new NboardTO();
		to.setNseq( request.getParameter( "nseq" ) );

		int flag = ndao.boardDeleteOk( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_notice_deleteok");
		modelAndView.addObject( "flag", flag );
					
		return modelAndView;
	}
	
	// 회원삭제 DeleteOk
	@RequestMapping("/admin/member_D.do")
	public ModelAndView boardDeleteOk4(HttpServletRequest request) {
						
		UserTO to = new UserTO();
		to.setName( request.getParameter( "name" ) );

		int flag = udao.boardDeleteOk( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_member_deleteok");
		modelAndView.addObject( "flag", flag );
						
		return modelAndView;
	}
			
}
