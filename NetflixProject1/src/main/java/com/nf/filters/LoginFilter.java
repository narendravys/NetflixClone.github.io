package com.nf.filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nf.bean.SignUpBean;
import com.nf.dao.DBCon;
import com.nf.dao.NetflixDaoOperations;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
@SuppressWarnings("serial")
public class LoginFilter extends HttpFilter {

	/**
	 * @see HttpFilter#HttpFilter()
	 */
	public LoginFilter() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		// TODO Auto-generated method stub
		try {
			Connection con = DBCon.getCon();
			boolean b = NetflixDaoOperations.verifyUser(request.getParameter("mail"), request.getParameter("pwd"));
			if (b) {

				PreparedStatement pstm = con.prepareStatement("select subscription,plan,purchase_date from netflixuser where mail=?");
				pstm.setString(1, request.getParameter("mail"));
				ResultSet rs = pstm.executeQuery();
				if (rs.next()) {
					if (rs.getBoolean(1)) {
						// pass the request along the filter chain
						chain.doFilter(request, response);
					} else {
						HttpSession hs = request.getSession();
						SignUpBean sb = new SignUpBean();
						sb.setMail(request.getParameter("mail"));
						sb.setPwd(request.getParameter("pwd"));
						hs.setAttribute("usersignup", sb);
						request.setAttribute("msg", " There is no active plan please purchase a plan");
						RequestDispatcher rd = request.getRequestDispatcher("netflixsubscription.jsp");
						rd.forward(request, response);
					}
				}
			} else {

				RequestDispatcher rd = request.getRequestDispatcher("Invalid.jsp");
				rd.forward(request, response);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
