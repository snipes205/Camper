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
public class LeaveUserDAO {
	
	@Autowired
	private DataSource dataSource;
	
	// 탈퇴회원 리스트
	public ArrayList<LeaveUserTO> boardList() {
			
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		ArrayList<LeaveUserTO> boardLists = new ArrayList<LeaveUserTO>();
			
		try {
			conn = this.dataSource.getConnection();
				
			String sql = "select id, msg, wdate from leaveUser order by id desc";
			pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
			rs = pstmt.executeQuery();
				
			while( rs.next() ) {
					
			LeaveUserTO to = new LeaveUserTO();
					
			to.setId( rs.getString( "id" ) );
			to.setMsg( rs.getString( "msg" ) );
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
