package com.nf.servlets;

import java.io.IOException;

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
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpServlet() {
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

		boolean b = NetflixDaoOperations.checkExistingUser(request.getParameter("mail"));

		if (!b) {
			SignUpBean sb = new SignUpBean();

			sb.setMail(request.getParameter("mail"));
			sb.setPh(Long.parseLong(request.getParameter("ph")));
			sb.setPwd(request.getParameter("pwd"));
			sb.setName(request.getParameter("uname"));
			int n = NetflixDaoOperations.signUp(sb);
			if (n > 0) {
				HttpSession hs = request.getSession();
				hs.setAttribute("usersignup", sb);
				RequestDispatcher rd = request.getRequestDispatcher("netflixsubscription.jsp");
				request.setAttribute("msg", "sign up successfull please purchase a plan");
				rd.forward(request, response);

			}

		} else {
		       
             request.setAttribute("nfuser", "This Email is Already Registered");
			RequestDispatcher rd = request.getRequestDispatcher("netflixlogin.jsp");
			rd.forward(request, response);
			

		}
	}

}
