package com.nf.servlets;

import java.io.IOException;

import com.nf.bean.PaymentDetailsBean;
import com.nf.dao.PaymentDAO_Operations;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class PaymentSuccessServlet
 */
@WebServlet("/paymentsuccess")
public class PaymentSuccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PaymentSuccessServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs = request.getSession(false);
		if (hs != null) {

			PaymentDetailsBean pdb = (PaymentDetailsBean) hs.getAttribute("paymentdetails");
			if (pdb != null) {
				hs.removeAttribute("paymentdetails");
				hs.invalidate();
				
				int n = PaymentDAO_Operations.addSubscription(pdb.getPlan(), pdb.getMail(),pdb.getPurchase_date());
				if (n > 0) {
					
					RequestDispatcher rd = request.getRequestDispatcher("paymentdone.jsp");
					rd.forward(request, response);

				}

			} else {

				response.sendRedirect("SessionExpired.jsp");
			}

		} else {

			response.sendRedirect("SessionExpired.jsp");
		}

	}

}
