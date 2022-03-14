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
	
	// 커뮤니티 List
	public ArrayList<PtableTO> boardList() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<PtableTO> boardLists = new ArrayList<PtableTO>();
		
		try {
			conn = this.dataSource.getConnection();

			String sql = 
			"select pseq, title, nick, date_format( wdate, '%Y-%m-%d' ) wdate from p_table order by pseq desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				PtableTO to = new PtableTO();
				
				to.setPseq( rs.getString( "pseq" ) );
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
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
	
	// 캠핑로그 List
		public ArrayList<PtableTO> boardListL() {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			ArrayList<PtableTO> boardLists = new ArrayList<PtableTO>();
			
			try {
				conn = this.dataSource.getConnection();

				String sql = 
				"select pseq, title, nick, date_format( wdate, '%Y-%m-%d' ) wdate from p_table where type = 'l' order by pseq desc";
				pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
				rs = pstmt.executeQuery();
				
				while( rs.next() ) {
					PtableTO to = new PtableTO();
					
					to.setPseq( rs.getString( "pseq" ) );
					to.setTitle( rs.getString( "title" ) );
					to.setNick( rs.getString( "nick" ) );
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
		
		// 캠핑꿀팁 List
			public ArrayList<PtableTO> boardListH() {
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
					
				ArrayList<PtableTO> boardLists = new ArrayList<PtableTO>();
				
				try {
					conn = this.dataSource.getConnection();

					String sql = 
					"select pseq, title, nick, date_format( wdate, '%Y-%m-%d' ) wdate from p_table where type = 't' order by pseq desc";
					pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
						
					rs = pstmt.executeQuery();
						
					while( rs.next() ) {
						PtableTO to = new PtableTO();
							
						to.setPseq( rs.getString( "pseq" ) );
						to.setTitle( rs.getString( "title" ) );
						to.setNick( rs.getString( "nick" ) );
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
		
			// 캠핑가자 List
			public ArrayList<PtableTO> boardListG() {
					
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
					
				ArrayList<PtableTO> boardLists = new ArrayList<PtableTO>();
					
				try {
					conn = this.dataSource.getConnection();

					String sql = 
					"select pseq, title, nick, date_format( wdate, '%Y-%m-%d' ) wdate from p_table where type = 'g' order by pseq desc";
					pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
						
					rs = pstmt.executeQuery();
						
					while( rs.next() ) {
						PtableTO to = new PtableTO();
							
						to.setPseq( rs.getString( "pseq" ) );
						to.setTitle( rs.getString( "title" ) );
						to.setNick( rs.getString( "nick" ) );
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
	
			
	// View
	public PtableTO boardView( PtableTO to ) {
			
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		try {
			conn = this.dataSource.getConnection();
				
			String sql = 
			"select title, nick, date_format( wdate, '%Y-%m-%d' ) wdate, content from p_table where pseq=?";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getPseq() );
				
			rs = pstmt.executeQuery();
				
			if( rs.next() ) {
				to.setTitle( rs.getString( "title" ) );
				to.setNick( rs.getString( "nick" ) );
				to.setWdate( rs.getString( "wdate" ) );
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
	
	
	// 글삭제 ok
		public int boardDeleteOk( PtableTO to ) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			int flag = 1;
			
			try{

				conn = this.dataSource.getConnection();
				
				String sql = "delete from p_table where pseq=? ";
				pstmt = conn.prepareStatement( sql );
				pstmt.setString( 1, to.getPseq() );
				
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
		
}

