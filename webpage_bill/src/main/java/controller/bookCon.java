package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bookDAO;
import model.bookDTO;

@WebServlet("/bookCon")
public class bookCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String name = request.getParameter("book_name");
		String tel = request.getParameter("book_tel");
		String b_date = request.getParameter("b_date");
		String b_time = request.getParameter("b_time");
		String farm = request.getParameter("farm");
		
		System.out.println(b_date);
		System.out.println(b_time);
		
		bookDAO dao = new bookDAO();
		bookDTO dto = new bookDTO(name,tel,b_date,b_time,farm);
		
		int cnt = dao.insert(dto);
		
		if(cnt>0)
		{
			response.sendRedirect("main.jsp");
		}
		else
		{
			response.sendRedirect("book.jsp");
		}
		

	}

}
