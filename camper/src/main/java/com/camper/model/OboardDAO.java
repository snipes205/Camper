package com.camper.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OboardDAO {
	
	@Autowired
	private DataSource dataSource;
	
	// 1:1 Oboard List
		public ArrayList<OboardTO> boardList() {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			ArrayList<OboardTO> boardLists = new ArrayList<OboardTO>();
			
			try {
				conn = this.dataSource.getConnection();
				
				String sql = "select oseq, title, nick, date_format( wdate, '%Y-%m-%d' ) wdate from o_board order by oseq desc";
				pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
				rs = pstmt.executeQuery();
				
				while( rs.next() ) {
					
					OboardTO to = new OboardTO();
					
					to.setOseq( rs.getString( "oseq" ) );
					to.setTitle( rs.getString( "title" ) );
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
		
		
		// view ( a_view_o.jsp )	
		public OboardTO boardView( OboardTO to ) {
				
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
				
			try {
				conn = this.dataSource.getConnection();
					
				String sql = 
				"select title, date_format( wdate, '%Y-%m-%d' ) wdate, nick, content from o_board where oseq=?";
				
				pstmt = conn.prepareStatement( sql );
				pstmt.setString( 1 , to.getOseq() );
				
				rs = pstmt.executeQuery();
					
				if( rs.next() ) {
					to.setTitle( rs.getString( "title" ) );
					to.setWdate( rs.getString( "wdate" ) );
					to.setNick( rs.getString( "nick" ) );
					to.setContent( rs.getString( "content" ) );
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
	
		
		// 글삭제
		public int boardDeleteOk(OboardTO to) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			int flag = 1;
			
			try{

				conn = this.dataSource.getConnection();
				
				String sql = "delete from o_board where oseq=? ";
				pstmt = conn.prepareStatement( sql );
				pstmt.setString( 1, to.getOseq() );
				
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
		
		// 글수정 
		public OboardTO boardModify(OboardTO to) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {

				conn = this.dataSource.getConnection();
				
				String sql = "select title, nick, content from o_board where oseq=?";
				pstmt = conn.prepareStatement( sql );
				pstmt.setString( 1, to.getOseq() );
				
				rs = pstmt.executeQuery();
				
				if( rs.next() ) {
					to.setTitle( rs.getString( "title" ) );
					to.setNick( rs.getString( "nick" ) );
					to.setContent( rs.getString( "content" ) );

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
		
		// 글수정 
		public int boardMoidfyOk(OboardTO to) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			int flag = 1;
			try{
				
				conn = this.dataSource.getConnection();
				
				String sql = "update o_board set title=?, content=? where oseq=? ";
				pstmt = conn.prepareStatement( sql );
				pstmt.setString( 1, to.getTitle() );
				pstmt.setString( 2, to.getContent() );
				pstmt.setString( 3, to.getOseq() );
				
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
				if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
			}
			return flag;
		}
		
		// 글작성
		public int boardWriteOk(OboardTO to) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			int flag = 1;
			try{
				
				conn = this.dataSource.getConnection();
				
				String sql = "insert into o_board values( 0, ?, ? , ? , 0, now(), 0 );  ";
					
				pstmt = conn.prepareStatement( sql );
				pstmt.setString( 1, to.getTitle() );
				pstmt.setString( 2, to.getNick() );
				pstmt.setString( 3, to.getContent() );
				
				if( pstmt.executeUpdate() == 1 ) { 
					flag=0; 
					}
				
			} catch ( SQLException e ) {
				System.out.println( "[에러]" + e.getMessage() );
			} finally {
				if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
				if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
			}
			return flag;
		}
		
}
