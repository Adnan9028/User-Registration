package test.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import test.beans.UserBean;
import test.property.DBConnection;

public class UserLoginDAO
{
	public UserBean ub = null;

	public UserBean fetch(String email, String password)
	{
		try 
		{
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from UserRegistration where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next())
			{
				ub=new UserBean();
				ub.setName(rs.getString(1));
				ub.setfName(rs.getString(2));
				ub.setlName(rs.getString(3));
				ub.setAddress(rs.getString(4));
				ub.setEmail(rs.getString(5));
				ub.setPassword(rs.getString(6));
				ub.setPhNo(rs.getLong(7));
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return ub;
	}
}
