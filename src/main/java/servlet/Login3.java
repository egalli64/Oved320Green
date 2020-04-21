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


@WebServlet("/Login3")
public class Login3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name = "jdbc/green")
    private DataSource ds;
    

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	String password = request.getParameter("psw");
        String userName = request.getParameter("userName");
        
        try (ClientDao dao = new ClientDao(ds)) {		
    		

    		if (dao.get(userName, password).isPresent()) {
    			HttpSession session = request.getSession();
    			
    			session.setAttribute("userName", userName);
    			session.setAttribute("password", password);
    			request.setAttribute("userName", userName);
    			request.setAttribute("password", password);

    			
                RequestDispatcher rd = request.getRequestDispatcher("LogIn.jsp");
                rd.forward(request, response);
    		} else {
    			request.setAttribute("userName", userName);
                RequestDispatcher rd = request.getRequestDispatcher("FailedLogIn.jsp"); 
                rd.forward(request, response);
    		}
    		
        }
    }}
