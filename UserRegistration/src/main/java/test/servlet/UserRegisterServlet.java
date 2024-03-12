package test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.DAO.UserRegisterServletDAO;
import test.beans.UserBean;

@SuppressWarnings("serial")
@WebServlet("/Register")
public class UserRegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		UserBean ub = new UserBean();
		ub.setName(req.getParameter("name"));
		ub.setfName(req.getParameter("fname"));
		ub.setlName(req.getParameter("lname"));
		ub.setAddress(req.getParameter("address"));
		ub.setEmail(req.getParameter("email"));
		ub.setPassword(req.getParameter("password"));
		ub.setPhNo(Long.parseLong(req.getParameter("phno")));

		Integer k = new UserRegisterServletDAO().insert(ub);

		if (k > 0) {
			req.setAttribute("message", "User Registered Successfully<br>");
			req.getRequestDispatcher("RegisterSuccess.jsp").forward(req, res);
		} else {
			req.setAttribute("message", "Sorry, Please Try Again<br>");
			req.getRequestDispatcher("Message.jsp").forward(req, res);
		}
	}
}
