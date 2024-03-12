package test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.DAO.VerifyDAO;

@SuppressWarnings("serial")
@WebServlet("/Verify")
public class VerifyServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = new VerifyDAO().verify(req.getParameter("email"));
		if (email != null) {
			req.getSession().setAttribute("email", email);
			req.getRequestDispatcher("SetPassword.jsp").forward(req, res);
		} else {
			req.setAttribute("message", "Invalid Email id<br>");
			req.getRequestDispatcher("Message.jsp").forward(req, res);
		}

	}
}
