package test.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import test.property.DBConnection;

public class SetPasswordDAO {
	Integer k = 0;

	public Integer setPassword(String email, String password) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("Update UserRegistration set password=? where email=?");
			ps.setString(1, password);
			ps.setString(2, email);
			k = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}
}
