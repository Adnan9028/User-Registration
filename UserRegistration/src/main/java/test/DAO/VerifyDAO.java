package test.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import test.property.DBConnection;

public class VerifyDAO {
	String email = null;

	public String verify(String str) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from UserRegistration where email=?");
			ps.setString(1, str);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				email = rs.getString(5);
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return email;
	}
}
