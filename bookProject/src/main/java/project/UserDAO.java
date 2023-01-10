package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DBManager;

public class UserDAO {
	private static UserDAO instance = new UserDAO();
	public static UserDAO getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private ResultSet rs = null;
	private PreparedStatement pstmt = null;
	
	// 회원가입
	public boolean addUser(UserDTO userDto) {
		conn = DBManager.getConnection("bookproject");
		
		try {
			String sql = String.format("insert into users(userId, userPw, `name`, mobile) values('%s','%s','%s','%s')", userDto.getUserId(), userDto.getUserPw(), userDto.getName(), userDto.getMobile());
			pstmt = conn.prepareStatement(sql);
			pstmt.execute();
			
			System.out.println("insert success");
			return true;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("insert fail");
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return false;
	}
	
	// 로그인
	public boolean loginCheck(UserDTO userDto) {
		conn = DBManager.getConnection("bookproject");
		
		try {
			String sql = String.format("select count(*) from users where userId='%s' and userPw='%s';", userDto.getUserId(), userDto.getUserPw());
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				if(rs.getInt(1) > 0)
					return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return true;
	}
	
	// 로그인 log 가져오기
	public int getId(String id) {
		conn = DBManager.getConnection("bookproject");
		
		int log = -1;
		try {
			String sql = String.format("select userNo from users where userId='%s';", id);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				log = rs.getInt(1);
			}
			
			System.out.println("log 입력 성공 : " + log);
			return log;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		System.out.println("로그인 실패");
		return log;
	}
	
	// 로그인 유저 이름 가져오기
	public String getName(int log) {
		conn = DBManager.getConnection("bookproject");
		
		String userName = "";
		try {
			String sql = String.format("select name from users where userNo='%d';", log);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				userName = rs.getString(1);
			}
			
			return userName;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		System.out.println("Name 로드 실패");
		return userName;
	}
	
	//////// log가 *인 사람의 모든 정보 가져오기
	// https://webfirewood.tistory.com/11

}
