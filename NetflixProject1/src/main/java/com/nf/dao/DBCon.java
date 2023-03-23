package com.nf.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
	static Connection con;

	public static Connection getCon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "Narendra2023");

		} catch (Exception e) {
			System.err.println("Connetion with DB failed");
		}

		return con;
	}

}
