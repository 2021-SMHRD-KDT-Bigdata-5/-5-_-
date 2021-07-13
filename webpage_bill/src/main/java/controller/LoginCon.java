package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.memberDAO;
import model.memberDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("login_email");
		String pw = request.getParameter("login_password");

		memberDAO dao = new memberDAO();
		memberDTO member = dao.loginCheck(email, pw);

		// member객체에 값 이 있는지 판단
		if (member != null) { // member 정보가 DB에 있다면
			HttpSession session = request.getSession();
			session.setAttribute("member", member);

			response.sendRedirect("main.jsp");
		} else {
			response.sendRedirect("main.jsp");
		}

	}

}
