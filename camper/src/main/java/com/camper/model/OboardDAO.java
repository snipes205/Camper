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
		
		
		// view ( a_view_o).jsp )
		
		public OboardTO boardView( OboardTO to ) {
				
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
				
			try {
				conn = this.dataSource.getConnection();
					
				String sql = 
				"select title, date_format( wdate, '%y-%m-%d' ) wdate, nick, content from o_board where oseq=?";
				
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
	
		
}
