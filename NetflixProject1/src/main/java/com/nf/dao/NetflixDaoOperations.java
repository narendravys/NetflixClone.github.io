package com.nf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.nf.bean.SignUpBean;

import jakarta.servlet.http.HttpServletRequest;

public class NetflixDaoOperations {

	private static Connection con = DBCon.getCon();;
	private static int n;

	// for new User signup

	public static int signUp(SignUpBean sb) {
		try {
			PreparedStatement pstm = con
					.prepareStatement("insert into NetflixUser(mail,pwd,phone,uname) values(?,?,?,?)");

			pstm.setString(1, sb.getMail());
			pstm.setString(2, sb.getPwd());
			pstm.setLong(3, sb.getPh());
			pstm.setString(4, sb.getName());
			n = pstm.executeUpdate();

		} catch (SQLException se) {
			se.printStackTrace();
		}

		return n;
	}

	// for checking new User

	public static SignUpBean getUserInfo(HttpServletRequest req) {
		SignUpBean sb = null;
		try {
			PreparedStatement pstm = con.prepareStatement("select * from NetflixUser where mail=? and pwd=?");
			pstm.setString(1, req.getParameter("mail"));
			pstm.setString(2, req.getParameter("pwd"));

			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {

				sb = new SignUpBean();
				sb.setName(rs.getString("uname"));
				sb.setMail(rs.getString(1));
				sb.setPwd(rs.getString(2));
				sb.setPh(rs.getLong(3));

			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		return sb;
	}

	// for checking existing user
	public static boolean verifyUser(String mail, String pwd) {
		boolean b = false;
		try {

			Statement stm = con.createStatement();
			// int count=0;
			ResultSet rs = stm.executeQuery("select * from NetflixUser");
			while (rs.next()) {
				if (mail.equals(rs.getString(1)) && pwd.equals(rs.getString(2)))
					b = true;
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		return b;
	}

	// for homepage checking
	public static SignUpBean verifyUserAtHome(String mail) {
		SignUpBean sb = null;
		try {

			PreparedStatement pstm = con.prepareStatement("select * from NetflixUser where mail=?");
			pstm.setString(1, mail);
			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {
				sb = new SignUpBean();
				sb.setName(rs.getString("uname"));
				sb.setMail(rs.getString("mail"));
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}

		return sb;
	}

	private static boolean b = false;

	public static boolean checkExistingUser(String mail) {

		try {
			PreparedStatement pstm = con.prepareStatement("select * from netflixuser where mail=?");
			pstm.setString(1, mail);
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

}
