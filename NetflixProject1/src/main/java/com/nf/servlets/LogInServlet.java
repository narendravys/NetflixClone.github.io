package com.nf.servlets;

import java.io.IOException;
import com.nf.bean.SignUpBean;
import com.nf.dao.NetflixDaoOperations;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SignInServlet
 */
@WebServlet("/login")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see GenericServlet#GenericServlet()
	 */
	public LogInServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#service(ServletRequest request, ServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SignUpBean sb = NetflixDaoOperations.getUserInfo(request);
		if (sb != null) {

			HttpSession hs=request.getSession();
			hs.setAttribute("netflixuser", sb);
			RequestDispatcher rd=request.getRequestDispatcher("/premiumhome");
			rd.forward(request, response);
			

		} else {
			request.getRequestDispatcher("Invalid.jsp").forward(request, response);
		      	}

	}

}
