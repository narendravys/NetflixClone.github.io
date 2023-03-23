package com.nf.servlets;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class PremiumHome
 */
@WebServlet("/premiumhome")
public class PremiumHome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PremiumHome() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		doPost(req, resp);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// PrintWriter pw = response.getWriter();
		HttpSession hs = request.getSession(false);
		if (hs != null) {
			hs.removeAttribute("usersignup");
			RequestDispatcher rd = request.getRequestDispatcher("premiumhome.jsp");
			rd.include(request, response);
		} else {

			response.sendRedirect("SessionExpired.jsp");
			

		}

	}

}
