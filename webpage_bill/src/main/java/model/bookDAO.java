package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class bookDAO 
{
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
	
	public int insert(bookDTO book)
	{
		int cnt=0;
		
		try {
			connection();
			String sql = "insert into book values(?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,book.getName());
			psmt.setString(2,book.getTel());
			psmt.setString(3,book.getB_date());
			psmt.setString(4,book.getB_time());
			psmt.setString(5,book.getFarm_name());
			
			cnt = psmt.executeUpdate();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return cnt;
	}
	
	public ArrayList<bookDTO> select_c(String num)
	{
		ArrayList<bookDTO> list = new ArrayList<bookDTO>();
		bookDTO book = null;
		
		try {
			connection();
			String sql = "select* from book where TEL=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			
			rs = psmt.executeQuery();
			
			while (rs.next())
			{
				String getName = rs.getString(1);
				String getTel = rs.getString(2);
				String getB_date = rs.getString(3);
				String getB_time = rs.getString(4);
				String getFarm_name = rs.getString(5);
				
				book = new bookDTO(getName,getTel,getB_date,getB_time,getFarm_name);
				list.add(book);
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return list;
	}
	public ArrayList<bookDTO> select_first(String Farm_name)
	{
		ArrayList<bookDTO> list = new ArrayList<bookDTO>();
		bookDTO book = null;
		
		try {
			connection();
			String sql = "select * from book where FARM_NAME=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, Farm_name);
			
			rs = psmt.executeQuery();
			
			while (rs.next())
			{
				String getName = rs.getString(1);
				String getTel = rs.getString(2);
				String getB_date = rs.getString(3);
				String getB_time = rs.getString(4);
				
				book = new bookDTO(getName,getTel,getB_date,getB_time,null);
				list.add(book);
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return list;
	}
	
	public ArrayList<bookDTO> select_p(String B_date,String B_time,String Farm_name)
	{
		ArrayList<bookDTO> list = new ArrayList<bookDTO>();
		bookDTO book = null;
		
		try {
			connection();
			String sql = "select * from book where B_DATE=? and B_time=? and FARM_NAME=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, B_date);
			psmt.setString(2, B_time);
			psmt.setString(3, Farm_name);
			
			rs = psmt.executeQuery();
			
			while (rs.next())
			{
				String getName = rs.getString(1);
				String getTel = rs.getString(2);
				String getB_date = rs.getString(3);
				String getB_time = rs.getString(4);
				
				book = new bookDTO(getName,getTel,getB_date,getB_time,null);
				list.add(book);
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return list;
	}

	
	
}
