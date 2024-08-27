package com.company.util;

import java.sql.*;
import oracle.jdbc.OracleDriver;
import java.util.Scanner;

public class DBUtil {
	 private static final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	 private static final String USERNAME = "hr";
	 private static final String PASSWORD = "hr";
    static {
        try {
        	DriverManager.registerDriver(new OracleDriver());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}