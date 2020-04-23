package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.activation.DataSource;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.Client;
import Dao.ClientDao;
import Dao.Order;
import Dao.ProductDao;
import antlr.collections.List;

/**
 * Servlet implementation class Ordina
 */
@WebServlet("/Ordina")
public class Ordina extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Resource(name = "jdbc/green")
	private javax.sql.DataSource ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ordina() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		if (session.getAttribute("userName") == null) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/NoLogin.jsp");
			request.setAttribute("error", "Effettua il login prima di procedere all'acquisto.");
			rd.forward(request, response);
		} else {
			try (ProductDao dao = new ProductDao(ds)) {
				@SuppressWarnings("unchecked")
				ArrayList<Order> lista = (ArrayList<Order>) session.getAttribute("ProductList");
				if (lista == null) {
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/Ordina.jsp");
					request.setAttribute("message", "Non hai ancora scelto nessun prodotto!");
					rd.forward(request, response);
				} else {
					
					String [] array =new String [lista.size()];
					 int i=0;
					 
					 for (Order elem : lista) {
					 
					 array[i]=elem.getProductName();
					 i++;
					 }
					
					request.setAttribute("acquisti", array.toString());
					request.setAttribute("message", "Complimenti! il tuo ordine è stato inoltrato correttamente. ");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/Ordina.jsp");
					rd.forward(request, response);
					
				}

				

			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}




