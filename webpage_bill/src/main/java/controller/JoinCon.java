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

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// POST����� �� ���ڵ� ����!
		request.setCharacterEncoding("EUC-KR");

		// �̸���, ��й�ȣ, ��ȣ, �ּҸ� ������ ����
		String email = request.getParameter("Join_email");
		String pw = request.getParameter("Join_password");
		String farm_name = request.getParameter("Join_name");
		String tel = request.getParameter("Join_phone");
		String product = request.getParameter("produce");

		memberDTO dto = new memberDTO(email, pw, farm_name, tel, product);
		memberDAO dao = new memberDAO();

		int cnt = dao.join(dto);

		if (cnt > 0) {
			// request������ email������ ����
			request.setAttribute("email", email);

			// forward���
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("main.jsp");
		}

	}

}
