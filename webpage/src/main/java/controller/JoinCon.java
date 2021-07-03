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
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String num = request.getParameter("num");
		String add = request.getParameter("add");
		String a = request.getParameter("a");
		
		memberDAO dao = new memberDAO();
		memberDTO member = new memberDTO(id,pw,name,num,add,a);
		
		int cnt = dao.join(member);
		
		if(cnt > 0) {
			request.setAttribute("id", id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("JoinSuccess.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("join.jsp");
		}
	}

}
