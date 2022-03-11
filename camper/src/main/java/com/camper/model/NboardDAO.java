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
public class NboardDAO {
	
	@Autowired
	private DataSource dataSource;
	
	// 고객지원 List, a_notice.jsp 조건절 'n'
		public ArrayList<NboardTO> boardList() {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			ArrayList<NboardTO> boardLists = new ArrayList<NboardTO>();
			
			try {
				conn = this.dataSource.getConnection();
				
				String sql = "select nseq, title, nick, type, date_format( wdate, '%Y-%m-%d' ) wdate from n_board where type ='n' order by nseq desc";
				pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
				rs = pstmt.executeQuery();
				
				while( rs.next() ) {
					
					NboardTO to = new NboardTO();
					
					to.setNseq( rs.getString( "nseq" ) );
					to.setTitle( rs.getString( "title" ) );
					to.setNick( rs.getString( "nick" ) );
					to.setType( rs.getString( "type" ) );
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
		
		
		// view ( a_view.jsp )
		
		public NboardTO boardView( NboardTO to ) {
				
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
				
			try {
				conn = this.dataSource.getConnection();
					
				String sql = 
				"select title, date_format( wdate, '%Y-%m-%d' ) wdate, nick, content, type from n_board where nseq=?";
				
				pstmt = conn.prepareStatement( sql );
				pstmt.setString( 1 , to.getNseq() );
				
				rs = pstmt.executeQuery();
					
				if( rs.next() ) {
					to.setTitle( rs.getString( "title" ) );
					to.setWdate( rs.getString( "wdate" ) );
					to.setNick( rs.getString( "nick" ) );
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
	
		
		// 글수정 
				public NboardTO boardModify(NboardTO to) {
					
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					try {

						conn = this.dataSource.getConnection();
						
						String sql = "select title, nick, content from n_board where nseq=?";
						pstmt = conn.prepareStatement( sql );
						pstmt.setString( 1, to.getNseq() );
						
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
				
				// 글수정 ( board_modfiy_ok.jsp )
				public int boardMoidfyOk(NboardTO to) {
					
					Connection conn = null;
					PreparedStatement pstmt = null;
					
					int flag = 1;
					try{
						
						conn = this.dataSource.getConnection();
						
						String sql = "update n_board set title=?, content=? where nseq=? ";
						pstmt = conn.prepareStatement( sql );
						pstmt.setString( 1, to.getTitle() );
						pstmt.setString( 2, to.getContent() );
						pstmt.setString( 3, to.getNseq() );
						
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
		
				// 글삭제( board_delete_ok.jsp )
				public int boardDeleteOk(NboardTO to) {
					
					Connection conn = null;
					PreparedStatement pstmt = null;
					
					int flag = 1;
					
					try{

						conn = this.dataSource.getConnection();
						
						String sql = "delete from n_board where nseq=? ";
						pstmt = conn.prepareStatement( sql );
						pstmt.setString( 1, to.getNseq() );
						
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
