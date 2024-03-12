package test.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import test.beans.UserBean;
import test.property.DBConnection;

public class UserRegisterServletDAO {
	Integer k = 0;

	public Integer insert(UserBean ub) {

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into UserRegistration values(?,?,?,?,?,?,?)");
			ps.setString(1, ub.getName());
			ps.setString(2, ub.getfName());
			ps.setString(3, ub.getlName());
			ps.setString(4, ub.getAddress());
			ps.setString(5, ub.getEmail());
			ps.setString(6, ub.getPassword());
			ps.setLong(7, ub.getPhNo());

			k = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;

	}
}
