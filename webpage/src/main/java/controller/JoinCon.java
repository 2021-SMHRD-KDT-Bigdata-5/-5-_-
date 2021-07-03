package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.memberDAO;
import model.memberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		
		memberDAO dao = new memberDAO();
		memberDTO member = new memberDTO(email,name,pw,tel);
		
		int cnt = dao.join(member);
		
		if(cnt > 0) {
			request.setAttribute("email", email);
			RequestDispatcher dispatcher = request.getRequestDispatcher("JoinSuccess.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("Join.jsp");
		}
	}

}
