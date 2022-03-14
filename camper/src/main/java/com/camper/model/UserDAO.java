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
public class UserDAO {
	
	@Autowired
	private DataSource dataSource;
	
	// USER list
		public ArrayList<UserTO> boardList() {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			ArrayList<UserTO> boardLists = new ArrayList<UserTO>();
			
			try {
				conn = this.dataSource.getConnection();
				
				String sql = "select name, id, phone, email from user order by name desc";
				pstmt = conn.prepareStatement( sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				
				rs = pstmt.executeQuery();
				
				while( rs.next() ) {
					
					UserTO to = new UserTO();
					
					to.setName( rs.getString( "name" ) );
					to.setId( rs.getString( "id" ) );
					to.setPhone( rs.getString( "phone" ) );
					to.setEmail( rs.getString( "email" ) );
				
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
		
		
		// 회원삭제( delete_ok.jsp )
		public int boardDeleteOk(UserTO to) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			int flag = 1;
			
			try{

				conn = this.dataSource.getConnection();
				
				String sql = "delete from user where name ";
				pstmt = conn.prepareStatement( sql );
				pstmt.setString( 1, to.getName() );
				
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

		// view 회원정보상세
		
				public UserTO boardView( UserTO to ) {
						
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
						
					try {
						conn = this.dataSource.getConnection();
							
						String sql = 
						"select id, pwd, name, nick, birth, phone, email, gen, area, profile, greet  from user";
						
						pstmt = conn.prepareStatement( sql );
						pstmt.setString( 1 , to.getId() );
						
						rs = pstmt.executeQuery();
							
						if( rs.next() ) {
							to.setId( rs.getString( "id" ) );
							to.setPwd( rs.getString( "pwd" ) );
							to.setName( rs.getString( "name" ) );
							to.setNick( rs.getString( "nick" ) );
							to.setBirth( rs.getString( "birth" ) );
							to.setPhone( rs.getString( "phone" ) );
							to.setEmail( rs.getString( "email" ) );
							to.setGen( rs.getString( "gen" ) );
							to.setArea( rs.getString( "area" ) );
							to.setGreet( rs.getString( "greet" ) );
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
