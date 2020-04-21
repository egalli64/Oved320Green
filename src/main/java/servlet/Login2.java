package servlet;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import Dao.ClientDao;

@WebServlet("/Login2")
public class Login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// private static final Logger logger = LoggerFactory.getLogger(Login2.class);

	@Resource(name = "jdbc/green")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String password = request.getParameter("psw");
		String userName = request.getParameter("userName");

		if (this.getServletContext().getInitParameter("userName").equals(userName)
				&& this.getServletContext().getInitParameter("psw").contentEquals(password)) {

			try (ClientDao dao = new ClientDao(ds)) {
				request.setAttribute("coders", dao.getAll());
				request.getRequestDispatcher("/example/result.jsp").forward(request, response);
			}

	
			// per passare da servet a jsp se ho inserito le credenziali corrette
			request.setAttribute("userName", userName);
			RequestDispatcher rd = request.getRequestDispatcher("LogIn.jsp");
			rd.forward(request, response);

		} else {
			// per passare da servet a html se ho sbagliato qualcosa
			RequestDispatcher rd = request.getRequestDispatcher("FailedLogIn.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
