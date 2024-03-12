package test.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import test.beans.UserBean;
import test.property.DBConnection;

public class UpdateProfileDAO 
{
	Integer k = 0;

	public Integer Update(UserBean ub) 
	{
		try 
		{
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update UserRegistration set name=?,FirstName=?,LastName=?,Address=?,phno=? where Email=? and password=?");
			ps.setString(1, ub.getName());
			ps.setString(2, ub.getfName());
			ps.setString(3, ub.getlName());
			ps.setString(4, ub.getAddress());
			ps.setLong(5, ub.getPhNo());
			ps.setString(6, ub.getEmail());
			ps.setString(7, ub.getPassword());
			
			k = ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}
}
