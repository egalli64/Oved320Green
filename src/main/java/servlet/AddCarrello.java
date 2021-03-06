package servlet;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import Dao.Order;
import Dao.OrderDao;
import Dao.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Servlet implementation class AddCarrello
 */
@WebServlet("/AddCarrello")
public class AddCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/green")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("userName") == null) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/NoLogin.jsp");
			request.setAttribute("error", "Non hai ancora effettuato il login!");
			rd.forward(request, response);
		} else {
			try {
//				@SuppressWarnings("unchecked")
//				// creiamo una lista con i prodotti
//				List<Product> lista = (List<Product>) session.getAttribute("Product");
//				if (lista == null) {
//					lista = new ArrayList<Product>();
//				}
//				Order ord = new Order( session.getAttribute("Product").toString(), 0) ;
//				lista.add(ord);
//				session.setAttribute("carrello", lista);
//				RequestDispatcher rdv = getServletContext().getRequestDispatcher("/Aggiunto.jsp");
//				request.setAttribute("message", "Il tuo articolo è stato aggiunto con successo!");
//				rdv.forward(request, response);
				
				
				
				@SuppressWarnings("unchecked")
                List<Order> lista = (List<Order>) session.getAttribute("Product");
                if (lista == null) {
                    lista = new ArrayList<Order>();
                }
//                int quantity = (int) request.getAttribute("quantity");
                //Order item = new Order( request.getParameter("Product").toString());
                try (OrderDao dao = new OrderDao(ds)) {
        				Order item = new Order( request.getParameter("Product").toString());
        				dao.newOrder(item);
                lista.add(item);
                session.setAttribute("ProductList", lista);
                RequestDispatcher rdv = getServletContext().getRequestDispatcher("/Aggiunto.jsp");
                request.setAttribute("message", "Prodotto aggiunto al carrello");
                request.setAttribute("Product", item.getProductName());
                rdv.forward(request, response);

			} catch (Exception e) {
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/Aggiunto.jsp");
				request.setAttribute("message", "Spiacente, qualcosa è andato storto nel tuo carrello!");
				rd.forward(request, response);
			}
		 } finally {
			 }
		 }
	}

	// try (OrderDao dao = new OrderDao(ds)) {
	// Order or = new Order( request.getParameter("Product").toString());
	// dao.newOrder(or);
	//
	// RequestDispatcher rs = request.getRequestDispatcher("/Registrazione.jsp");
	// rs.forward(request, response);
	// }

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCarrello() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
