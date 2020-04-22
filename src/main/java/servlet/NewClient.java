package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import Dao.ClientDao;
import Dao.Clients;

@WebServlet("/NewClient")
public class NewClient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/green")
	private DataSource ds;

	public NewClient() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("psw");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String mail = request.getParameter("mail");
		String numeroCell = request.getParameter("numeroCell");
		String indirizzo = request.getParameter("indirizzo");
		String num_indirizzo = request.getParameter("num_indirizzo");
		String cap = request.getParameter("cap");
		String city = request.getParameter("city");

		try (ClientDao dao = new ClientDao(ds)) {
			Clients us = new Clients(userName,password,firstName, lastName, mail, numeroCell, indirizzo, num_indirizzo, cap, city);
			dao.NewClient(us);

			RequestDispatcher rs = request.getRequestDispatcher("Registrazione.jsp");
			rs.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}