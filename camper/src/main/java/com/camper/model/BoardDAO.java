package com.camper.model;

import javax.sql.DataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	private DataSource dataSource;
	
	// 캠핑톡톡 메인1( board_main.jsp )
	public ArrayList<BoardTO> boardMain() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<BoardTO> boardLists5 = new ArrayList<BoardTO>();
		
		try {
			conn = this.dataSource.getConnection();
			
			// 캠핑로그이므로 조건절에 'l' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 'l' order by pseq desc limit 0,5";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				BoardTO to = new BoardTO();
				
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setType( rs.getString( "type" ) );
				to.setWdate( rs.getString( "wdate" ) );
				
				boardLists5.add( to );
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
		if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
		if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
		if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		
		}
		
		return boardLists5;
	}
	
	// 캠핑톡톡 메인2( board_main.jsp )
	public ArrayList<BoardTO> boardMain2() {
			
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		ArrayList<BoardTO> boardLists6 = new ArrayList<BoardTO>();
			
		try {
			conn = this.dataSource.getConnection();
				
			// 캠핑로그이므로 조건절에 'l' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 't' order by pseq desc limit 0,5";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
			rs = pstmt.executeQuery();
				
			while( rs.next() ) {
				BoardTO to = new BoardTO();
					
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setType( rs.getString( "type" ) );
				to.setWdate( rs.getString( "wdate" ) );
					
				boardLists6.add( to );
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
			
		}
		return boardLists6;
		
	}
		
	// 캠핑톡톡 메인3( board_main.jsp )
	public ArrayList<BoardTO> boardMain3() {
			
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		ArrayList<BoardTO> boardLists7 = new ArrayList<BoardTO>();
			
		try {
			conn = this.dataSource.getConnection();
				
			// 캠핑로그이므로 조건절에 'l' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 'g' order by pseq desc limit 0,5";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
			rs = pstmt.executeQuery();
				
			while( rs.next() ) {
				BoardTO to = new BoardTO();
					
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setType( rs.getString( "type" ) );
				to.setWdate( rs.getString( "wdate" ) );
					
				boardLists7.add( to );
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
			
		}	
		return boardLists7;
		
	}
	
	// 캠핑로그 List( board_list1.jsp )
	public ArrayList<BoardTO> boardList() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<BoardTO> boardLists = new ArrayList<BoardTO>();
		
		try {
			conn = this.dataSource.getConnection();
			
			// 캠핑로그이므로 조건절에 'l' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 'l' order by pseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				BoardTO to = new BoardTO();
				
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setType( rs.getString( "type" ) );
				to.setWdate( rs.getString( "wdate" ) );
				
				boardLists.add( to );
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
		if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
		if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
		if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		
		}
		
		return boardLists;
	}
	
	// 캠핑꿀팁 List( board_list2.jsp )
	public ArrayList<BoardTO> boardList2() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<BoardTO> boardLists = new ArrayList<BoardTO>();
		
		try {
			conn = this.dataSource.getConnection();
			
			// 캠핑꿀팁이므로 조건절에 't' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 't' order by pseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				BoardTO to = new BoardTO();
				
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setType( rs.getString( "type" ) );
				to.setWdate( rs.getString( "wdate" ) );
				
				boardLists.add( to );
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
		if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
		if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
		if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		
		}
		
		return boardLists;
	}
	
	// 캠핑가자 List( board_list3.jsp )
	public ArrayList<BoardTO> boardList3() {
			
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		ArrayList<BoardTO> boardLists = new ArrayList<BoardTO>();
			
		try {
			conn = this.dataSource.getConnection();
				
			// 캠핑가자이므로 조건절에 'g' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 'g' order by pseq desc";	
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
			rs = pstmt.executeQuery();
				
			while( rs.next() ) {
				BoardTO to = new BoardTO();
					
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setType( rs.getString( "type" ) );
				to.setWdate( rs.getString( "wdate" ) );
					
				boardLists.add( to );
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
			
		}
			
		return boardLists;
	}
		
	// 페이지네이션을 위한 BoardList1 ( 캠핑로그 )
	public BoardListTO boardList( BoardListTO listTO ) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int cpage = listTO.getCpage();
		int recordPerPage = listTO.getRecordPerPage();
		int blockPerPage = listTO.getBlockPerPage();
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type='l' order by pseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
					
			rs = pstmt.executeQuery();
			
			// 읽을 위치를 맨 아래로
			rs.last();
			
			// 전체 데이터 개수
			listTO.setTotalRecord( rs.getRow() );
			rs.beforeFirst();
			
			listTO.setTotalPage( ( ( listTO.getTotalRecord() - 1 ) / recordPerPage ) + 1 );
			
			// 읽을 위치 지정
			int skip = (cpage - 1) * recordPerPage;
			if(skip != 0) rs.absolute( skip );

			ArrayList<BoardTO> boardLists = new ArrayList<BoardTO>();
			// 마지막 데이터까지 읽기
			for( int i=0; i<recordPerPage && rs.next(); i++ ) {
				BoardTO to = new BoardTO();
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setWdate( rs.getString( "wdate" ) );
				to.setType( rs.getString( "type" ) );
					
				boardLists.add( to );
			}
			
			// ArrayList를 인자로 받아 ListTO 객체에 저장
			listTO.setBoardLists( boardLists );
			
			// startBlock과 endBlock 설정 ( -endBlock의 경우 포함 )
			listTO.setStartBlock( cpage - (cpage-1) % blockPerPage );
			listTO.setEndBlock( cpage - (cpage-1) % blockPerPage + blockPerPage - 1 );
			if( listTO.getEndBlock() >= listTO.getTotalPage() ) {
				listTO.setEndBlock( listTO.getTotalPage() );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		}
		
		return listTO;
	}
	
	// 페이지네이션을 위한 BoardList2 ( 캠핑꿀팁 )
	public BoardListTO boardList2( BoardListTO listTO ) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int cpage = listTO.getCpage();
		int recordPerPage = listTO.getRecordPerPage();
		int blockPerPage = listTO.getBlockPerPage();
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type='t' order by pseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
					
			rs = pstmt.executeQuery();
			
			// 읽을 위치를 맨 아래로
			rs.last();
			
			// 전체 데이터 개수
			listTO.setTotalRecord( rs.getRow() );
			rs.beforeFirst();
			
			listTO.setTotalPage( ( ( listTO.getTotalRecord() - 1 ) / recordPerPage ) + 1 );
			
			// 읽을 위치 지정
			int skip = (cpage - 1) * recordPerPage;
			if(skip != 0) rs.absolute( skip );

			ArrayList<BoardTO> boardLists2 = new ArrayList<BoardTO>();
			// 마지막 데이터까지 읽기
			for( int i=0; i<recordPerPage && rs.next(); i++ ) {
				BoardTO to = new BoardTO();
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setWdate( rs.getString( "wdate" ) );
				to.setType( rs.getString( "type" ) );
					
				boardLists2.add( to );
			}
			
			// ArrayList를 인자로 받아 ListTO 객체에 저장
			listTO.setBoardLists( boardLists2 );
			
			// startBlock과 endBlock 설정 ( -endBlock의 경우 포함 )
			listTO.setStartBlock( cpage - (cpage-1) % blockPerPage );
			listTO.setEndBlock( cpage - (cpage-1) % blockPerPage + blockPerPage - 1 );
			if( listTO.getEndBlock() >= listTO.getTotalPage() ) {
				listTO.setEndBlock( listTO.getTotalPage() );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		}
		
		return listTO;
	}
	
	// 페이지네이션을 위한 BoardList3 ( 캠핑가자 )
	public BoardListTO boardList3( BoardListTO listTO ) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int cpage = listTO.getCpage();
		int recordPerPage = listTO.getRecordPerPage();
		int blockPerPage = listTO.getBlockPerPage();
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type='g' order by pseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
					
			rs = pstmt.executeQuery();
			
			// 읽을 위치를 맨 아래로
			rs.last();
			
			// 전체 데이터 개수
			listTO.setTotalRecord( rs.getRow() );
			rs.beforeFirst();
			
			listTO.setTotalPage( ( ( listTO.getTotalRecord() - 1 ) / recordPerPage ) + 1 );
			
			// 읽을 위치 지정
			int skip = (cpage - 1) * recordPerPage;
			if(skip != 0) rs.absolute( skip );

			ArrayList<BoardTO> boardLists3 = new ArrayList<BoardTO>();
			// 마지막 데이터까지 읽기
			for( int i=0; i<recordPerPage && rs.next(); i++ ) {
				BoardTO to = new BoardTO();
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setWdate( rs.getString( "wdate" ) );
				to.setType( rs.getString( "type" ) );
					
				boardLists3.add( to );
			}
			
			// ArrayList를 인자로 받아 ListTO 객체에 저장
			listTO.setBoardLists( boardLists3 );
			
			// startBlock과 endBlock 설정 ( -endBlock의 경우 포함 )
			listTO.setStartBlock( cpage - (cpage-1) % blockPerPage );
			listTO.setEndBlock( cpage - (cpage-1) % blockPerPage + blockPerPage - 1 );
			if( listTO.getEndBlock() >= listTO.getTotalPage() ) {
				listTO.setEndBlock( listTO.getTotalPage() );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		}
		
		return listTO;
	}
	
	// 글보기 ( board_view.jsp )
	public BoardTO boardView( BoardTO to ) {
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try {
			conn = this.dataSource.getConnection();
					
			String sql = 
			"select title, nick, date_format( wdate, '%y-%m-%d' ) wdate, content, type from p_table where pseq=?";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getPseq() );
					
			rs = pstmt.executeQuery();
					
			if( rs.next() ) {
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setWdate( rs.getString( "wdate" ) );
				to.setContent( rs.getString( "content" ) );
				to.setType( rs.getString( "type" ) );
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
					
		}
				
		return to;
	}
	
	// 글보기2 ( board_view2.jsp - 공지사항 )
	public BoardTO boardView2( BoardTO to ) {
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try {
			conn = this.dataSource.getConnection();
					
			String sql = 
			"select title, nick, date_format( wdate, '%y-%m-%d' ) wdate, content, type from n_board where nseq=?";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getNseq() );
					
			rs = pstmt.executeQuery();
					
			if( rs.next() ) {
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setWdate( rs.getString( "wdate" ) );
				to.setContent( rs.getString( "content" ) );
				to.setType( rs.getString( "type" ) );
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
					
		}
				
		return to;
	}
	
	// 글쓰기 ( board_write_ok.jsp )
	public int boardWirteOk( BoardTO to ) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int flag = 1;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"insert into p_table values( 0, ?, ?, ?, ?, ?, now(), 0, 0 )";
			
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getTitle() );
			pstmt.setString( 2, to.getNick() );
			pstmt.setString( 3, to.getPwd() );
			pstmt.setString( 4, to.getContent() );
			pstmt.setString( 5, "l" );
			
			if( pstmt.executeUpdate() == 1 ) {
				flag = 0;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() + e);
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
		}
		
		return flag;
	}
	
	// 글쓰기 ( board_write_ok2.jsp )
	public int boardWirteOk2( BoardTO to ) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int flag = 1;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"insert into p_table values( 0, ?, ?, ?, ?, ?, now(), 0, 0 )";
			
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getTitle() );
			pstmt.setString( 2, to.getNick() );
			pstmt.setString( 3, to.getPwd() );
			pstmt.setString( 4, to.getContent() );
			pstmt.setString( 5, "t" );
			
			if( pstmt.executeUpdate() == 1 ) {
				flag = 0;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() + e);
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
		}
		
		return flag;
	}
	
	// 글쓰기 ( board_write_ok3.jsp )
	public int boardWirteOk3( BoardTO to ) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int flag = 1;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"insert into p_table values( 0, ?, ?, ?, ?, ?, now(), 0, 0 )";
			
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getTitle() );
			pstmt.setString( 2, to.getNick() );
			pstmt.setString( 3, to.getPwd() );
			pstmt.setString( 4, to.getContent() );
			pstmt.setString( 5, "g" );
			
			if( pstmt.executeUpdate() == 1 ) {
				flag = 0;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() + e);
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
		}
		
		return flag;
	}
	
	// 글삭제 ( board_delete.jsp )
	public BoardTO boardDelete(BoardTO to) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		
			conn = this.dataSource.getConnection();
			
			String sql = "select title, nick, type from p_table where pseq=?";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getPseq() );
			
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setType( rs.getString( "type" ) );

			}
			
		} catch ( SQLException e ) {
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try {conn.close(); } catch( SQLException e ) {}
			if( rs != null ) try{ rs.close(); } catch( SQLException e ) {}
		}
		
		return to;	
	}
	
	// 글삭제( board_delete_ok.jsp )
	public int boardDeleteOk(BoardTO to) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int flag = 2;
		
		try{

			conn = this.dataSource.getConnection();
			
			String sql = "delete from p_table where pseq=? and pwd=?";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getPseq() );
			pstmt.setString( 2, to.getPwd() );
			
			int result = pstmt.executeUpdate();
			if( result == 0 ) {
				flag = 1;
			} else if( result == 1 ) {
				flag = 0;
			}
			
		} catch ( SQLException e ) {
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try {conn.close(); } catch( SQLException e ) {}
		}
		
		return flag;	
	}
	
	// 글수정 ( board_modify.jsp )
	public BoardTO boardModify(BoardTO to) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {

			conn = this.dataSource.getConnection();
			
			String sql = "select title, nick, content, type from p_table where pseq=?";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getPseq() );
			
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setContent( rs.getString( "content" ) );
				to.setType( rs.getString( "type" ) );

			}

		} catch ( SQLException e ) {
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try {conn.close(); } catch( SQLException e ) {}
			if( rs != null ) try{ rs.close(); } catch( SQLException e ) {}
		}
		
		return to;
	}
	
	// 글수정 ( board_modfiy_ok.jsp )
	public int boardMoidfyOk(BoardTO to) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int flag = 2;
		try{
			
			conn = this.dataSource.getConnection();
			
			String sql = "update p_table set title=?, content=? where pseq=?";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getTitle() );
			pstmt.setString( 2, to.getContent() );
			pstmt.setString( 3, to.getPseq() );
			
			int result = pstmt.executeUpdate();
			if( result == 0 ) {
				// 비밀번호가 틀린경우
				flag = 1;
			} else if( result == 1 ) {
				// 정상
				flag = 0;
			}
			
		} catch ( SQLException e ) {
			System.out.println( "[에러]" + e.getMessage() + e );
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
		}
		return flag;
	}
	
	// 공지사항 게시판( board_notice.jsp )
	public ArrayList<BoardTO> boardList4() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<BoardTO> boardLists = new ArrayList<BoardTO>();
		
		try {
			conn = this.dataSource.getConnection();
			
			// n_board에서 공지사항만을 가져오므로 type='n' 조건을 준다.
			// 게시판 type 은 항상 가지고 간다.
			String sql = 
			"select nseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from n_board where type = 'n' order by nseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				BoardTO to = new BoardTO();
				
				to.setNseq( rs.getString( "nseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setType( rs.getString( "type" ) );
				to.setWdate( rs.getString( "wdate" ) );
				
				boardLists.add( to );
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
		if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
		if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
		if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		
		}
		
		return boardLists;
	}
	
	// 페이지네이션을 위한 BoardList4 ( 공지사항 )
	public BoardListTO boardList4( BoardListTO listTO ) {
			
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		int cpage = listTO.getCpage();
		int recordPerPage = listTO.getRecordPerPage();
		int blockPerPage = listTO.getBlockPerPage();
			
		try {
			conn = this.dataSource.getConnection();
				
			String sql = 
			"select nseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from n_board where type = 'n' order by nseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
						
			rs = pstmt.executeQuery();
				
			// 읽을 위치를 맨 아래로
			rs.last();
				
			// 전체 데이터 개수
			listTO.setTotalRecord( rs.getRow() );
			rs.beforeFirst();
				
			listTO.setTotalPage( ( ( listTO.getTotalRecord() - 1 ) / recordPerPage ) + 1 );
				
			// 읽을 위치 지정
			int skip = (cpage - 1) * recordPerPage;
			if(skip != 0) rs.absolute( skip );

			ArrayList<BoardTO> boardLists4 = new ArrayList<BoardTO>();
			// 마지막 데이터까지 읽기
			for( int i=0; i<recordPerPage && rs.next(); i++ ) {
				BoardTO to = new BoardTO();
				to.setNseq( rs.getString( "nseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setWdate( rs.getString( "wdate" ) );
				to.setType( rs.getString( "type" ) );
						
				boardLists4.add( to );
			}
				
			// ArrayList를 인자로 받아 ListTO 객체에 저장
			listTO.setBoardLists( boardLists4 );
				
			// startBlock과 endBlock 설정 ( -endBlock의 경우 포함 )
			listTO.setStartBlock( cpage - (cpage-1) % blockPerPage );
			listTO.setEndBlock( cpage - (cpage-1) % blockPerPage + blockPerPage - 1 );
			if( listTO.getEndBlock() >= listTO.getTotalPage() ) {
				listTO.setEndBlock( listTO.getTotalPage() );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		}
			
		return listTO;
		
	}
	
	// FAQ 게시판 ( board_faq.jsp )
	public ArrayList<BoardTO> boardList5() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<BoardTO> boardLists = new ArrayList<BoardTO>();
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = "select nseq, title, nick, content, date_format(wdate, '%Y-%m-%d' ) wdate  from n_board where type = 'f' order by nseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				BoardTO to = new BoardTO();
				
				to.setNseq( rs.getString( "nseq" ) );
				to.setTitle( rs.getString( "Title" ) );
				to.setContent( rs.getString( "content" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setWdate( rs.getString( "wdate" ) );
				
				boardLists.add( to );
			}
			
		} catch( SQLException e ) {
			System.out.println( "[에러] : " + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		}
		
		return boardLists;
	}
			
}
