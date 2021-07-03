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

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		memberDAO dao = new memberDAO();
		memberDTO member = dao.loginCheck(id, pw);

		// member객체에 값 판단
		if (member != null) { // member정보가 DB에 있다면

			// 세션에 저장하기!
			HttpSession session = request.getSession();
			session.setAttribute("member", member);

			System.out.println("로그인 성공");
			response.sendRedirect("BMain.jsp");
		} else {
			System.out.println("로그인 실패..");
			response.sendRedirect("Login.jsp");
		}
	}

}
