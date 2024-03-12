package test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.DAO.SetPasswordDAO;

@SuppressWarnings("serial")
@WebServlet("/SetPassword")
public class SetPasswordServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = (String) req.getSession(false).getAttribute("email");
		String password1 = req.getParameter("password1");
		String password2 = req.getParameter("password2");

		if (password1.equals(password2))
		{
			Integer k = new SetPasswordDAO().setPassword(email, password2);
			if (k > 0) {
				req.setAttribute("message", "Password updated successfully");
			req.getRequestDispatcher("Message.jsp").forward(req, res);
			}
		}
		
	}
}
