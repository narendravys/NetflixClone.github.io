package com.nf.servlets;

import java.io.IOException;

import com.nf.bean.SignUpBean;
import com.nf.dao.NetflixDaoOperations;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see GenericServlet#GenericServlet()
	 */
	public HomeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#service(ServletRequest request, ServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SignUpBean sb = NetflixDaoOperations.verifyUserAtHome(request.getParameter("mail"));
		if (sb != null) {
			//request.setAttribute("mail", sb.getMail());
			request.setAttribute("nfuser", "Welcome " + sb.getName() + " Login to Your Account");
			request.getRequestDispatcher("netflixlogin.jsp").forward(request, response);

		} else {
			request.setAttribute("new", "First you Need to Sign Up");
			request.getRequestDispatcher("netflixsignup.jsp").forward(request, response);

		}

	}

}
