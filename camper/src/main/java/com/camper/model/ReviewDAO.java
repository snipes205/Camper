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
public class ReviewDAO {

	
	@Autowired
	private DataSource dataSource;
	
	
	public ArrayList<ReviewTO> ReviewLists(ReviewTO to) {
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ReviewTO> reviewLists = new ArrayList<ReviewTO>();
		try {
			conn = this.dataSource.getConnection();
			
			
			String sql = 
			"select rvseq, content, nick, date_format( wdate, '%y-%m-%d' ) wdate from review where contentid=?";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
			
			pstmt.setString(1, to.getContentId());
			rs = pstmt.executeQuery();
	
			while( rs.next() ) {
				ReviewTO tos = new ReviewTO();
				
				tos.setNick(rs.getString( "nick" ));
				tos.setContent(rs.getString( "content" ));
				tos.setWdate(rs.getString( "wdate" ));
				tos.setRvseq(rs.getString("rvseq"));
				
				reviewLists.add( tos );
			}
		
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
		if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
		if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
		if( conn != null ) try { conn.close(); } catch( SQLException e ) {}
		
		}

		return reviewLists;
	}
	public int ReviewWrite(ReviewTO to) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int flag = 1;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"insert into review values(0,?,?,?,now(),?)";
			
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getNick() );
			pstmt.setString( 2, to.getPwd()  );
			pstmt.setString( 3, to.getContent() );
			pstmt.setString( 4, to.getContentId() );

			
			if( pstmt.executeUpdate() == 1 ) {
				flag = 0;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
		}
		
		return flag;
	}
	public int ReviewDelete(ReviewTO to) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int flag = 2;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"delete from review where nick=? and rvseq=? and pwd=? ";
			
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getNick());
			pstmt.setString( 2, to.getRvseq() );
			pstmt.setString( 3, to.getPwd()  );

			
			if( pstmt.executeUpdate() == 1 ) {
				flag = 0;
			}else {
				flag=1;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
		}
		
		return flag;
	
	}

	public int ReviewModyfy(ReviewTO to) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int flag = 2;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = 
			"update review set content=? where nick=? and rvseq=? and pwd=? ";
			
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, to.getContent() );
			pstmt.setString( 2, to.getNick());
			pstmt.setString( 3, to.getRvseq() );
			pstmt.setString( 4, to.getPwd()  );


			if( pstmt.executeUpdate() == 1 ) {
				flag = 0;
			}else {
				flag=1;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러]" + e.getMessage() );
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try{ conn.close(); } catch( SQLException e ) {}
		}
		
		
		return flag;
	
	}
}
