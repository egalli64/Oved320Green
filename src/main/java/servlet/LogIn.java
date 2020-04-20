package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaBeans.Clients;
import s08.Coder;

/**
 * Servlet implementation class LogIn
 */
@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LogIn() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
   
    
    
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		
		
		
		
		 private static final String URL = "jdbc:mysql://localhost:3306/me?serverTimezone=Europe/Rome";
		    private static final String USER = "me";
		    private static final String PASSWORD = "password";

		    private static final String CLIENTS = "SELECT username, psw FROM clients ";

		    public List<Clients> getClients() throws SQLException {
		        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
		                PreparedStatement prepStmt = conn.prepareStatement(CLIENTS)) {
		           		
		        	
		        	try (ResultSet rs = prepStmt.executeQuery()) {
		        		boolean found = false;
		        	
		                   while (rs.next() && !found) {
		                       
							if (userName.equals(rs.next()) && password.contentEquals( "")) {
								found = true;
								RequestDispatcher rd = request.getRequestDispatcher("LogIn.jsp");
								rd.forward(request, response);
							}else {
								RequestDispatcher rd = request.getRequestDispatcher("FailedLogIn.jsp");
								rd.forward(request, response);
							}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
