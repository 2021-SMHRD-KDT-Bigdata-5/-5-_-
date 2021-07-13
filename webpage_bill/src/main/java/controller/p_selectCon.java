package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bookDAO;
import model.bookDTO;
import model.memberDTO;

@WebServlet("/p_selectCon")
public class p_selectCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{		
		HttpSession session = request.getSession();
		memberDTO member = (memberDTO) session.getAttribute("member");
		
		request.setCharacterEncoding("EUC-KR");
		String B_date = request.getParameter("B_date");
		String B_time = request.getParameter("B_time");
		String Farm_name = member.getFarm_name();
		
		System.out.println(B_date);
		System.out.println(B_time);
		System.out.println(Farm_name);
		
		bookDAO dao = new bookDAO();
		ArrayList<bookDTO> dto = dao.select_p(B_date, B_time, Farm_name);
		
		System.out.println("servlet : " + dto.size());
		
		if(dto != null)
		{
			session.setAttribute("bookdto", dto);
		}
		
		response.sendRedirect("providerbooklist.jsp");
		
		
	}

}
