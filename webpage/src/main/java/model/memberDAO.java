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
         System.out.println("sql문 오류");
         e.printStackTrace();
      }
      finally {
         close();
      }
      
      return cnt;
   }

}