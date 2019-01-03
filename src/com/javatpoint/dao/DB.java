package com.javatpoint.dao;

import java.sql.*;

public class DB {
	static Connection con;

	public static Connection getCon() {
		// Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elms", "elms", "password");

		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
