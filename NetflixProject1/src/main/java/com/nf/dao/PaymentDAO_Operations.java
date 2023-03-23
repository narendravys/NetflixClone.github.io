package com.nf.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nf.bean.PaymentDetailsBean;

public class PaymentDAO_Operations {
	private static Connection con = DBCon.getCon();

	private static boolean b;

	public static boolean verifyPaymentDetails(PaymentDetailsBean pdb) {
		try {

			String table = pdb.getBankName();
			PreparedStatement pstm = con
					.prepareStatement("select * from " + table + " where credit_cardno=? and cvv=? ");
			// pstm.setString(1, );
			pstm.setLong(1, pdb.getCreditCardNo());
			pstm.setInt(2, pdb.getCvv());
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				b = true;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return b;

	}

	private static int n;

	public static int addSubscription(int plan, String mail, Date purchase_date) {
		try {
			PreparedStatement pstm = con
					.prepareStatement("update netflixuser set subscription=?,plan=?,purchase_date=? where mail=?");
			pstm.setBoolean(1, true);
			pstm.setInt(2, plan);
			pstm.setDate(3, purchase_date);
			pstm.setString(4, mail);

			n = pstm.executeUpdate();

		} catch (SQLException se) {
			se.printStackTrace();
		}
		return n;
	}
}