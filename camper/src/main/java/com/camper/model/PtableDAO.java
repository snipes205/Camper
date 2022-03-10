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
public class PtableDAO {
	
	@Autowired
	private DataSource dataSource;
	
	// 캠핑로그 List( board_list1.jsp )
	public ArrayList<PtableTO> boardList() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<PtableTO> boardLists = new ArrayList<PtableTO>();
		
		try {
			conn = this.dataSource.getConnection();
			
			// 캠핑로그이므로 조건절에 'l' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 't' order by pseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				PtableTO to = new PtableTO();
				
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
	public ArrayList<PtableTO> boardList2() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<PtableTO> boardLists = new ArrayList<PtableTO>();
		
		try {
			conn = this.dataSource.getConnection();
			
			// 캠핑꿀팁이므로 조건절에 't' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 't' order by pseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				PtableTO to = new PtableTO();
				
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
	public ArrayList<PtableTO> boardList3() {
			
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		ArrayList<PtableTO> boardLists = new ArrayList<PtableTO>();
			
		try {
			conn = this.dataSource.getConnection();
				
			// 캠핑가자이므로 조건절에 'g' 를 준다.
			// 캠핑 type 은 항상 가지고 간다.
			String sql = 
			"select pseq, title, nick, type, date_format( wdate, '%y-%m-%d' ) wdate from p_table where type = 'g' order by pseq desc";	
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
			rs = pstmt.executeQuery();
				
			while( rs.next() ) {
				PtableTO to = new PtableTO();
					
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
		
	// 글보기 ( board_view.jsp )
	public PtableTO boardView( PtableTO to ) {
			
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
	
	
}

