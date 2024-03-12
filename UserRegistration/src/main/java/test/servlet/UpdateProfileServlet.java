package test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.DAO.UpdateProfileDAO;
import test.beans.UserBean;

@SuppressWarnings("serial")
@WebServlet("/UpdateProfile")
public class UpdateProfileServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		HttpSession hs = req.getSession(false);
		
		if(hs!=null)
		{
			UserBean ub=new UserBean();
			ub.setName(req.getParameter("name"));
			ub.setfName(req.getParameter("fname"));
			ub.setlName(req.getParameter("lname"));
			ub.setAddress(req.getParameter("address"));
			ub.setEmail(req.getParameter("email"));
			ub.setPassword(req.getParameter("password"));
			ub.setPhNo(Long.parseLong(req.getParameter("phno")));
			
			Integer k=new UpdateProfileDAO().Update(ub);
			
			if(k>0)
			{
				req.setAttribute("message", "Profile Updated Successfully<br>");
				req.getRequestDispatcher("UpdatedProfile.jsp").forward(req, res);
			}
		}
		else
		{
			req.setAttribute("message", "Session Expired,Please Login<br>");
			req.getRequestDispatcher("Message.jsp").forward(req, res);
		}
	}
}
