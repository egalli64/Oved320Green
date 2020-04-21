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


@WebServlet("/Login")
public class LogIn extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(LogIn.class);

    @Resource(name = "jdbc/green")
    private DataSource ds;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        logger.trace("called");
        try (ClientDao dao = new ClientDao(ds)) {
            request.setAttribute("clients", dao.getAll());
            request.getRequestDispatcher("LogIn.jsp").forward(request, response);
        }
    }
    
    
/*    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("psw");

       // ClientDao dao = new ClientDao();
        if (dao.exists (userName, password)) {
            // TODO: setAttribute() per userName
        	request.setAttribute("userName", userName);
            RequestDispatcher rd = request.getRequestDispatcher("LogIn.jsp");
            rd.forward(request, response);
        } else {
        	request.setAttribute("userName", userName);
            RequestDispatcher rd = request.getRequestDispatcher("FailedLogIn.jsp");
            rd.forward(request, response);
        }
    }*/

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
