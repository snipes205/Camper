package com.camper.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.camper.model.BoardTO;
import com.camper.model.NboardDAO;
import com.camper.model.NboardTO;
import com.camper.model.OboardDAO;
import com.camper.model.OboardTO;
import com.camper.model.PtableDAO;
import com.camper.model.PtableTO;

@RestController
public class AdminController {
	
	// 고객지원 Nboard controller
	@Autowired
	private NboardDAO ndao;
	
	// 1:1 Oboard controller
	@Autowired
	private OboardDAO odao;
			
	// 커뮤니티 Ptable controller
	@Autowired
	private PtableDAO pdao;
		
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
	
	// 고객지원 List - Nboard
	@RequestMapping("/admin/notice.do")
	public ModelAndView adminNotice(HttpServletRequest request,HttpServletResponse response ) {
			
		ArrayList<NboardTO> boardLists = ndao.boardList();
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_notice");
		modelAndView.addObject( "boardLists", boardLists );

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
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_member");
		
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
	public ModelAndView adminProfile(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_profile");	

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
	
	// 1:1 문의 Write
	@RequestMapping("/admin/write_a.do")
	public ModelAndView adminWriteA(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_write_a");
		
		return modelAndView;
	}
	
	// 고객지원 Write
	@RequestMapping("/admin/write_n.do")
	public ModelAndView adminWriteN(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/a_write_n");
		
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
			
}
