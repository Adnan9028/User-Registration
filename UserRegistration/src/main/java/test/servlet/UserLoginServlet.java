package test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.DAO.UserLoginDAO;
import test.beans.UserBean;

@SuppressWarnings("serial")
@WebServlet("/Login")
public class UserLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		UserBean ub=new UserLoginDAO().fetch(req.getParameter("email"), req.getParameter("password"));
		req.getSession(true).setAttribute("user", ub);
		req.getRequestDispatcher("LoginSuccess.jsp").forward(req, res);
	}
}
