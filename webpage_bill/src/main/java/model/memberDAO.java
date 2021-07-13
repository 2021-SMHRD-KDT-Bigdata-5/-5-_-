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
		// �����ͺ��̽��� �����ϱ� ���� Ŭ���������� �����ε�
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// localhost : Oracle DB�� ��ġ�� PC�� ip �ּ� ����
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "bossam";
			String pass = "123";

			// �����ͺ��̽� ����
			conn = DriverManager.getConnection(url, user, pass);
		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar ���� �Ǵ� driver ��� Ȯ��");
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
			// ���� ����
			String sql = "select * from member where email=? and pw=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			if (rs.next()) {
				// �÷��ε����� 1���� ����
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
		// �����ͺ��̽� ����
		try {
			connection();
			// ���� ����
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
