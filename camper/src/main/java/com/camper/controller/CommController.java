package com.camper.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.camper.model.BoardDAO;
import com.camper.model.BoardListTO;
import com.camper.model.BoardTO;
import com.camper.model.ReplyTO;
import com.camper.service.ReplyService;
import com.google.gson.JsonObject;

// 캠핑톡톡 Controller
@RestController
public class CommController {
	
	@Autowired
	BoardDAO dao;
	
	@Autowired
	ReplyService replyService;
	

	// 캠핑톡톡 메인 ( main )
	@RequestMapping("/community/main.do")
	public ModelAndView boardMain(HttpServletRequest request) {
		
		ArrayList<BoardTO> boardLists5 = dao.boardMain();
		ArrayList<BoardTO> boardLists6 = dao.boardMain2();
		ArrayList<BoardTO> boardLists7 = dao.boardMain3();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_main");
		modelAndView.addObject( "boardLists5", boardLists5 );
		modelAndView.addObject( "boardLists6", boardLists6 );
		modelAndView.addObject( "boardLists7", boardLists7 );
		
		return modelAndView;
	}
	
	// 캠핑로그 리스트 ( list1 )
	@RequestMapping("/community/camplog.do")
	public ModelAndView boardCamplog(HttpServletRequest request) {
		
		// 현재 페이지 번호
		int cpage = 1;
		if( request.getParameter( "cpage" ) != null && !request.getParameter( "cpage" ).equals( "" ) ) {
			cpage = Integer.parseInt( request.getParameter( "cpage" ) ); 
		}
		
		// 전달할 listTO 객체 만들기 ( cpage 값 입력)
		BoardListTO listTO = new BoardListTO();
		listTO.setCpage( cpage );
		
		// listTO 객체 전달
		listTO = dao.boardList( listTO );
		
		ArrayList<BoardTO> boardLists = listTO.getBoardLists();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_list1");
		modelAndView.addObject( "boardLists", boardLists );
		modelAndView.addObject( "listTO", listTO );
		modelAndView.addObject( "cpage", cpage ); 
		
		return modelAndView;
	}

	// 캠핑꿀팁 리스트 ( list2 )
	@RequestMapping("/community/camptip.do")
	public ModelAndView boardCamptip(HttpServletRequest request) {
		
		// 현재 페이지 번호
		int cpage = 1;
		if( request.getParameter( "cpage" ) != null && !request.getParameter( "cpage").equals( "" ) ) {
		cpage = Integer.parseInt( request.getParameter( "cpage" ) );
			}
				
		// 전달할 listTO 객체 만들기 ( cpage 값 입력)
		BoardListTO listTO = new BoardListTO();
		listTO.setCpage( cpage );
				
		// listTO 객체 전달
		listTO = dao.boardList2( listTO );
				
		ArrayList<BoardTO> boardLists2 = listTO.getBoardLists();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_list2");
		modelAndView.addObject( "boardLists2", boardLists2 );
		modelAndView.addObject( "listTO", listTO );
		modelAndView.addObject( "cpage", cpage ); 
		
		return modelAndView;
	}

	// 캠핑가자 리스트 ( list3 )
	@RequestMapping("/community/campgo.do")
	public ModelAndView boardCampgo(HttpServletRequest request) {
		
		// 현재 페이지 번호
		int cpage = 1;
		if( request.getParameter( "cpage" ) != null && !request.getParameter( "cpage").equals( "" ) ) {
		cpage = Integer.parseInt( request.getParameter( "cpage" ) );
		}
				
		// 전달할 listTO 객체 만들기 ( cpage 값 입력)
		BoardListTO listTO = new BoardListTO();
		listTO.setCpage( cpage );
				
		// listTO 객체 전달
		listTO = dao.boardList3( listTO );
				
		ArrayList<BoardTO> boardLists3 = listTO.getBoardLists();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_list3");
		modelAndView.addObject( "boardLists3", boardLists3 );
		modelAndView.addObject( "listTO", listTO );
		modelAndView.addObject( "cpage", cpage ); 
		
		
		return modelAndView;
	}

	// 캠핑로그 글쓰기 ( write )
	@RequestMapping("/community/write.do")
	public ModelAndView boardWrite(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_write");
		
		return modelAndView;
	}
	
	// 캠핑꿀팁 글쓰기 ( write2 )
	@RequestMapping("/community/write2.do")
	public ModelAndView boardWrite2(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_write2");
		
		return modelAndView;
	}
	
	// 캠핑가자 글쓰기 ( write3 )
	@RequestMapping("/community/write3.do")
	public ModelAndView boardWrite3(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_write3");
		
		return modelAndView;
	}
	
	// 캠핑로그 글쓰기 ( writeOK )
	@RequestMapping("/community/writeOk.do")
	public ModelAndView boardWriteOk(HttpServletRequest request, HttpServletResponse response) {
			
		BoardTO to = new BoardTO();
		
		to.setTitle( request.getParameter( "title" ) );
		to.setContent( request.getParameter( "content" ) );
		to.setPwd( request.getParameter( "pwd" ) );
		// 로그인 세션에서 조회
		to.setNick( request.getSession().getAttribute("nick").toString() );
		to.setType( request.getParameter( "type" ) );
		
		int flag = dao.boardWirteOk( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_write_ok");
		modelAndView.addObject( "flag", flag );
			
		return modelAndView;
	}
	
	// 캠핑꿀팁 글쓰기 ( writeOK2 )
	@RequestMapping("/community/writeOk2.do")
	public ModelAndView boardWriteOk2(HttpServletRequest request, HttpServletResponse response) {
			
		BoardTO to = new BoardTO();
		
		to.setTitle( request.getParameter( "title" ) );
		to.setContent( request.getParameter( "content" ) );
		to.setPwd( request.getParameter( "pwd" ) );
		// 로그인 세션에서 조회
		to.setNick( request.getSession().getAttribute("nick").toString() );
		to.setType( request.getParameter( "type" ) );
		
		
		int flag = dao.boardWirteOk2( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_write_ok2");
		modelAndView.addObject( "flag", flag );
			
		return modelAndView;
	}
	
	// 캠핑가자 글쓰기 ( writeOK3 )
	@RequestMapping("/community/writeOk3.do")
	public ModelAndView boardWriteOk3(HttpServletRequest request, HttpServletResponse response) {
			
		BoardTO to = new BoardTO();
		
		to.setTitle( request.getParameter( "title" ) );
		to.setContent( request.getParameter( "content" ) );
		to.setPwd( request.getParameter( "pwd" ) );
		// 로그인 세션에서 조회
		to.setNick( request.getSession().getAttribute("nick").toString() );
		
		int flag = dao.boardWirteOk3( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_write_ok3");
		modelAndView.addObject( "flag", flag );
			
		return modelAndView;
	}

	// 캠핑톡톡 글보기  ( view )
	@RequestMapping("/community/view.do")
	public ModelAndView boardView(HttpServletRequest request) {
		
		BoardTO to = new BoardTO();
		to.setPseq( request.getParameter( "pseq" ) );
		to.setType( request.getParameter( "type" ) );
		
		to = dao.boardView( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_view");
		modelAndView.addObject( "to", to );
		
		return modelAndView;
	}
	
	// 캠핑톡톡 글보기  ( view2 )
	@RequestMapping("/community/view2.do")
	public ModelAndView boardView2(HttpServletRequest request) {
			
		BoardTO to = new BoardTO();
		to.setNseq( request.getParameter( "nseq" ) );
		to.setType( request.getParameter( "type" ) );
			
		to = dao.boardView2( to );
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_view2");
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
		modelAndView.setViewName("community/board_modify");
		modelAndView.addObject( "to", to );
		
		return modelAndView;
	}
	
	// 캠핑톡톡 글수정( modifyOk )
	@RequestMapping("/community/modifyOk.do")
	public ModelAndView boardModifyOk(HttpServletRequest request) {
		
		BoardTO to = new BoardTO();
		to.setPseq( request.getParameter( "pseq" ) );
		to.setNick( request.getSession().getAttribute("nick").toString() );
		to.setTitle( request.getParameter( "title" ) );
		to.setType( request.getParameter( "type" ) );
		to.setContent( request.getParameter( "content" ) );
		
		int flag = dao.boardMoidfyOk( to );
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_modify_ok");
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
		modelAndView.setViewName("community/board_delete");
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
		modelAndView.setViewName("community/board_delete_ok");
		modelAndView.addObject( "flag", flag );
		
		return modelAndView;
	}

	// 자주 묻는 질문 ( FAQ )
	@RequestMapping("/ask/faq.do")
	public ModelAndView boardFaq() {
		
		ArrayList<BoardTO> boardLists = dao.boardList5();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_faq");
		modelAndView.addObject( "boardLists", boardLists );
		
		return modelAndView;
	}

	// 공지사항 ( notice )
	@RequestMapping("/ask/notice.do")
	public ModelAndView boardNotice(HttpServletRequest request) {
		
		// 현재 페이지 번호
		int cpage = 1;
		if( request.getParameter( "cpage" ) != null && !request.getParameter( "cpage").equals( "" ) ) {
		cpage = Integer.parseInt( request.getParameter( "cpage" ) );
		}
				
		// 전달할 listTO 객체 만들기 ( cpage 값 입력)
		BoardListTO listTO = new BoardListTO();
		listTO.setCpage( cpage );
				
		// listTO 객체 전달
		listTO = dao.boardList4( listTO );
		
		ArrayList<BoardTO> boardLists4 = listTO.getBoardLists();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("community/board_notice");
		modelAndView.addObject( "boardLists4", boardLists4 );
		modelAndView.addObject( "listTO", listTO );
		modelAndView.addObject( "cpage", cpage );
		
		return modelAndView;
	}
	
	// ck에디터 파일업로드
	@PostMapping("/admin/resources/ckUpload")
	public void postCKEditorImgUpload(HttpServletRequest req, HttpServletResponse res, @RequestParam MultipartFile upload) throws Exception {
		 
		String uploadPath = req.getSession().getServletContext().getRealPath("/").concat("resources");
		System.out.println("uploadPath  : "+uploadPath);
		
		// 랜덤 문자 생성
		UUID uid = UUID.randomUUID();
		 
		OutputStream out = null;
		PrintWriter printWriter = null;
		   
		// 인코딩
		res.setCharacterEncoding("utf-8");
		res.setContentType("application/json");
		 
		try {
			
			// 파일 이름 가져오기
			String fileName =  upload.getOriginalFilename(); 
			byte[] bytes = upload.getBytes();
		  
			// 업로드 경로
			String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" +fileName;
		  
			out = new FileOutputStream(new File(ckUploadPath));
			out.write(bytes);
			out.flush(); // out에 저장된 데이터를 전송하고 초기화
		  
			//String callback = req.getParameter("CKEditorFuncNum");
			printWriter = res.getWriter();
			String fileUrl = "/resources/ckUpload/" + uid + "_" +fileName; // 작성화면
		  
			// 업로드시 메시지 출력
			JsonObject json = new JsonObject();
			json.addProperty("uploaded", 1);
			json.addProperty("fileName", fileName);
			json.addProperty("url", fileUrl);
			printWriter.println(json);
		  
			printWriter.flush();
			System.out.println("test url : "+req.getSession().getServletContext().getRealPath("resouces/ckUpload"));
			System.out.println("url : "+fileUrl);
			System.out.println("ckUploadPath : "+ckUploadPath);
		} catch (IOException e) { e.printStackTrace();
		} finally {
		  try {
		   if(out != null) { out.close(); }
		   if(printWriter != null) { printWriter.close(); }
		  } catch(IOException e) { e.printStackTrace(); }
		 }
		 return; 
	}
	
	// 댓글관련
	
	// 모댓글 작성
	@ResponseBody
	@RequestMapping(value = "/community/camp_write_reply.do", method = { RequestMethod.POST })
	public ReplyTO write_reply(@RequestParam int bno, @RequestParam String content, HttpSession session) throws Exception {
		
		ReplyTO to = new ReplyTO();
		// 게시물 번호 세팅
		to.setBno(bno);
		
		// 댓글 내용 세팅
		to.setContent(content);

		// 댓글작성자 nick을 writer로 세팅
		to.setNick((String) session.getAttribute("nick"));
		
		//	값이 잘 넘어오는지 확인
		/*
		  System.out.println("controller bno: " + to.getBno());
		  System.out.println("controller content: " + to.getContent());
		  System.out.println("controller writer: " + to.getWriter());
		 */
		// +1된 댓글 갯수를 담아오기 위함
		ReplyTO result = replyService.writeReply(to);
		

		return result;
	}
}

	// 답글작성
	// 댓글 리스트
	// 모댓글 삭제
	// 답글 삭제


