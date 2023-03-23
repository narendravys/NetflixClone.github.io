package com.nf.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.nf.bean.SignUpBean;
import com.nf.dao.NetflixDaoOperations;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SubscriptionServlet
 */
@WebServlet("/subscription")
public class SubscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubscriptionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter pw = response.getWriter();
		HttpSession hs = request.getSession(false);
		if (hs != null) {
			SignUpBean sb = (SignUpBean) hs.getAttribute("usersignup");
			if (sb != null) {

				boolean b = NetflixDaoOperations.verifyUser(request.getParameter("mail"), request.getParameter("pwd"));
				if (b) {

					request.setAttribute("plan", request.getParameter("plan"));
					RequestDispatcher rd = request.getRequestDispatcher("Payment.jsp");
					rd.forward(request, response);
				} else {

					RequestDispatcher rd = request.getRequestDispatcher("netflixsubscription.jsp");

					rd.include(request, response);
					pw.println("<header><h2 style=font-family:verdana;font-size:22px;color:red;text-align:center>");
					pw.println("Invalid Username/Password</h2>");
					pw.println("</header>");
				}

			} else {

				RequestDispatcher rd = request.getRequestDispatcher("SessionExpired.jsp");
				rd.forward(request, response);

			}
		} else {

			RequestDispatcher rd = request.getRequestDispatcher("SessionExpired.jsp");
			rd.forward(request, response);
		}

	}
}
