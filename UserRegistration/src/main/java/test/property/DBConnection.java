package test.property;

import java.sql.Connection;
import java.sql.DriverManager;

import static test.property.DBInfo.*;

public class DBConnection {
	public static Connection con;

	static {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		return con;
	}
}
