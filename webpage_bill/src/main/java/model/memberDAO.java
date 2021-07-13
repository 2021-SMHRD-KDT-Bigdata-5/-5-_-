package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class memberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	public void connection() {
		// 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// localhost : Oracle DB가 설치된 PC의 ip 주소 설정
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "bossam";
			String pass = "123";

			// 데이터베이스 연결
			conn = DriverManager.getConnection(url, user, pass);
		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar 파일 또는 driver 경로 확인");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public memberDTO loginCheck(String email, String pw) {

		memberDTO member = null;

		try {
			connection();
			// 쿼리 실행
			String sql = "select * from member where email=? and pw=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			if (rs.next()) {
				// 컬럼인덱스는 1부터 시작
				String getEmail = rs.getString(1);
				String getFarm_name = rs.getString(3);
				String getTel = rs.getString(4);
				String getProduct = rs.getString(5);
				
				member = new memberDTO(getEmail, null, getFarm_name, getTel, getProduct);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return member;
	}

	public int join(memberDTO member) {

		int cnt = 0;
		// 데이터베이스 연동
		try {
			connection();
			// 쿼리 실행
			String sql = "insert into member values(?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getEmail());
			psmt.setString(2, member.getPw());
			psmt.setString(3, member.getFarm_name());
			psmt.setString(4, member.getTel());
			psmt.setString(5, member.getProduct());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	


}
