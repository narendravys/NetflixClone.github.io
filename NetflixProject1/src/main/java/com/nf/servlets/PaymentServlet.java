package com.nf.servlets;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

import com.nf.bean.PaymentDetailsBean;
import com.nf.bean.SignUpBean;
import com.nf.dao.PaymentDAO_Operations;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PaymentServlet() {
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

		// PrintWriter pw = response.getWriter();
		HttpSession hs1 = request.getSession(false);

		if (hs1 != null) {
			SignUpBean sb = (SignUpBean) hs1.getAttribute("usersignup");
			if (sb != null) {

				int plan = Integer.parseInt(request.getParameter("plan"));
				String mail = request.getParameter("mail");
				String bank = request.getParameter("bank_name");
				long creditCardNo = Long.parseLong(request.getParameter("credit_c_no"));
				int cvv = Integer.parseInt(request.getParameter("cvv"));
				Date purchase_date=Date.valueOf(LocalDate.now());
				PaymentDetailsBean pdb = new PaymentDetailsBean();
				pdb.setBankName(bank);
				pdb.setCreditCardNo(creditCardNo);
				pdb.setCvv(cvv);
				pdb.setPlan(plan);
				pdb.setMail(mail);
				pdb.setPlan(plan);
				pdb.setPurchase_date(purchase_date);

				SignUpBean sb1 = new SignUpBean();
				sb1.setMail(mail);

				Boolean b = PaymentDAO_Operations.verifyPaymentDetails(pdb);
				if (b) {
                          HttpSession hs=request.getSession();
                          hs.setAttribute("paymentdetails", pdb);
					RequestDispatcher rd = request.getRequestDispatcher("paymentprocess.jsp");
					rd.forward(request, response);

				} else {
					request.setAttribute("msg", "*Invalid Payment Details");

					RequestDispatcher rd = request
							.getRequestDispatcher("Payment.jsp?plan=" + request.getParameter("plan"));
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
