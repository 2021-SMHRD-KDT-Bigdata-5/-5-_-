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
         System.out.println("ojdbc6.jar���� �Ǵ� driver ��� Ȯ��!");
         e.printStackTrace();
      } catch (SQLException e) {
         System.out.println("DB���� ����");
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
         
         String sql = "insert into member values (?,?,?,?,?,?)";
               
         psmt = conn.prepareStatement(sql);
         psmt.setString(1,member.getId());
         psmt.setString(2,member.getPw());
         psmt.setString(3,member.getName());
         psmt.setString(4,member.getNum());
         psmt.setString(5,member.getAdd());
         psmt.setString(6,member.getA());
      
         cnt = psmt.executeUpdate();
               
      } catch (SQLException e) {   
         System.out.println("sql�� ����");
         e.printStackTrace();
      }
      finally {
         close();
      }
      
      return cnt;
   }

   public memberDTO loginCheck(String id, String pw) {

	      
	      memberDTO member = null;
	      
	      try {
	         
	         connection();
	         
	         String sql = "select * from member where id=? and pw=?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1,id);
	         psmt.setString(2,pw);
	         
	         rs = psmt.executeQuery();
	         
	         if(rs.next()) {
	            String getId = rs.getString(1);
	            String getName = rs.getString(3);
	            String getNum = rs.getString(4);
	            String getAdd = rs.getString(5);
	            String getA = rs.getString(6);
	         
	            member = new memberDTO(getId, null, getName, getNum,getAdd,getA);                     
	         }
	         
	      } catch (SQLException e) {         
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      return member;
	      
	   }


   public Boolean idCheck(String id) {
	      
	      boolean check = false;
	   
	      try {
	         
	         connection();
	         
	         String sql = "select * from member where id=?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1,id);
	         
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