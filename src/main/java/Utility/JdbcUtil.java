package Utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtil {
	public static Connection getConnection() throws SQLException {
		Connection con = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","Samarth@123");
			System.out.println("Connection Established");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error");
			System.out.println(e);
		}
		
		return con;
		
	}
}
