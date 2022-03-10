package com.camper.config;

<<<<<<< HEAD
=======
import java.util.ArrayList;

>>>>>>> origin/jk
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
@RestController
public class AdminController {
	
=======
import com.camper.model.NboardDAO;
import com.camper.model.NboardTO;
import com.camper.model.OboardDAO;
import com.camper.model.OboardTO;
import com.camper.model.PtableDAO;
import com.camper.model.PtableTO;

@RestController

//admin controller
public class AdminController {
	
	// Nboard controller
	@Autowired
	private NboardDAO ndao;
	
	// Nboard controller
		@Autowired
		private OboardDAO odao;
		
	// Ptable controller
		@Autowired
		private PtableDAO pdao;
	
	// 관리자 메인
>>>>>>> origin/jk
	@RequestMapping("/admin/main.do")
	public ModelAndView adminMain(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_dashboard");
		

		return modelAndView;
	}
<<<<<<< HEAD
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
=======
	
	// 1:1 문의 list oboard
	@RequestMapping("/admin/ask.do")
	public ModelAndView adminAsk(HttpServletRequest request,HttpServletResponse response ) {
		
		ArrayList<OboardTO> boardLists = odao.boardList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_ask");
		modelAndView.addObject( "boardLists", boardLists );
		
		return modelAndView;
	}
		
		
	// 커뮤니티 게시판 list
	@RequestMapping("/admin/comm.do")
	public ModelAndView adminComm(HttpServletRequest request,HttpServletResponse response ) {
		
		ArrayList<PtableTO> boardLists = pdao.boardList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_comm");
		modelAndView.addObject( "boardLists", boardLists );

		return modelAndView;
	}
	
	
>>>>>>> origin/jk
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
<<<<<<< HEAD
	@RequestMapping("/admin/notice.do")
	public ModelAndView adminNotice(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_notice");
		

		return modelAndView;
	}
=======
	
	// 고객지원 list
	@RequestMapping("/admin/notice.do")
	public ModelAndView adminNotice(HttpServletRequest request,HttpServletResponse response ) {
		
		ArrayList<NboardTO> boardLists = ndao.boardList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_notice");
		modelAndView.addObject( "boardLists", boardLists );
		
		return modelAndView;
	}
	
>>>>>>> origin/jk
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
<<<<<<< HEAD
	@RequestMapping("/admin/view.do")
	public ModelAndView adminView(HttpServletRequest request,HttpServletResponse response ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_view");
		

		return modelAndView;
	}
=======
	
	//nboard view
	@RequestMapping("/admin/view.do")
	public ModelAndView adminView(HttpServletRequest request ) {
		
		NboardTO to = new NboardTO();
		to.setNseq( request.getParameter( "nseq" ) );
		to.setType( request.getParameter( "type" ) );
		
		to = ndao.boardView( to );	
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("a_view");
		modelAndView.addObject( "to", to );
		
		return modelAndView;
	}
	
	
	//oboard view
		@RequestMapping("/admin/view_o.do")
		public ModelAndView adminView_o(HttpServletRequest request ) {
			
			OboardTO to = new OboardTO();
			to.setOseq( request.getParameter( "oseq" ) );

			to = odao.boardView( to );	
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName( "a_view_o" );
			modelAndView.addObject( "to", to );
			
			return modelAndView;
		}

		
		//Ptable view
		@RequestMapping("/admin/view_p.do")
		public ModelAndView adminView_p(HttpServletRequest request ) {
			
			PtableTO to = new PtableTO();
			to.setPseq( request.getParameter( "pseq" ) );
			to.setType( request.getParameter( "type" ) );
			
			to = pdao.boardView( to );	
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("a_view_p");
			modelAndView.addObject( "to", to );
			
			return modelAndView;
		}
	
	
>>>>>>> origin/jk
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
