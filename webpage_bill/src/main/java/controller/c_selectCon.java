package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bookDAO;
import model.bookDTO;

@WebServlet("/c_selectCon")
public class c_selectCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String tel = request.getParameter("tel");

		bookDAO dao = new bookDAO();
		ArrayList<bookDTO> dto = dao.select_c(tel);
		
		if(dto != null)
		{			
			HttpSession Session = request.getSession();
			Session.setAttribute("dto", dto);
		}else {
					
		}
		
		response.sendRedirect("customerbooklist.jsp");

	}

}
