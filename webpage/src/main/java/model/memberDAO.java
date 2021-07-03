package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

public class memberDAO {
   
   private Connection conn = null;
   private PreparedStatement psmt = null;
   private ResultSet rs = null;
   
   public void connection() {
      
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         
         String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
         String user = "hr";
         String pass = "hr";
         
      
         conn = DriverManager.getConnection(url, user, pass);
         
      } catch (ClassNotFoundException e) {
         System.out.println("ojdbc6.jar파일 또는 driver 경로 확인!");
         e.printStackTrace();
      } catch (SQLException e) {
         System.out.println("DB연결 실패");
         e.printStackTrace();
      }
   }
   
   public void close() {
      
      try {
         if(rs != null) { rs.close(); }
         if(psmt != null) { psmt.close(); }
         if(conn != null) { conn.close(); }
         
      }catch(SQLException e) {
         e.printStackTrace();
      }
   }

   
   public int join(memberDTO member) {
      
      int cnt = 0;
      
      try {
         connection();
         
         String sql = "insert into member values (?,?,?,?)";
               
         psmt = conn.prepareStatement(sql);
         psmt.setString(1,member.getEmail());
         psmt.setString(2,member.getPw());
         psmt.setString(3,member.getName());
         psmt.setString(4,member.getTel());
      
         cnt = psmt.executeUpdate();
               
      } catch (SQLException e) {   
         System.out.println("sql문 오류");
         e.printStackTrace();
      }
      finally {
         close();
      }
      
      return cnt;
   }

   public memberDTO loginCheck(String email, String pw) {

	      
	      memberDTO member = null;
	      
	      try {
	         
	         connection();
	         
	         String sql = "select * from member where email=? and pw=?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1,email);
	         psmt.setString(2,pw);
	         
	         rs = psmt.executeQuery();
	         
	         if(rs.next()) {
	            String getEmail = rs.getString(1);
	            String getName = rs.getString(3);
	            String getTel = rs.getString(4);
	         
	            member = new memberDTO(getEmail, null, getName, getTel);                     
	         }
	         
	      } catch (SQLException e) {         
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      return member;
	      
	   }


   public Boolean idCheck(String email) {
	      
	      boolean check = false;
	   
	      try {
	         
	         connection();
	         
	         String sql = "select * from member where email=?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1,email);
	         
	         rs = psmt.executeQuery();
	         
	         if(rs.next()) {
	            check = true;
	         }
	         else {
	            check = false;
	         }
	         
	      } catch (SQLException e) {         
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      return check;
	      
	   }

}
