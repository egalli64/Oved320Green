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

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


/**
 * Servlet implementation class AddCarrello
 */
@WebServlet("/green/AddCarrello")
public class AddCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name = "jdbc/green")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("userName") == null) {
			//da che pagina? non è login...
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/NoLogin.jsp");
			request.setAttribute("error", "Non hai ancora effettuato il login!");
			rd.forward(request, response);
		} else {
			try {
				@SuppressWarnings("unchecked")
				//creiamo una lista con i prodotti
				List<Product> lista = (List<Product>) session.getAttribute("carrello");
				if (lista == null) {
					lista = new ArrayList<Product>();
				}	
				Product prod = (Product) session.getAttribute("Product");
				lista.add(prod);
				session.setAttribute("carrello", lista);
				RequestDispatcher rdv = getServletContext().getRequestDispatcher("/Aggiunto.jsp");
				request.setAttribute("message", "Il tuo articolo è stato aggiunto con successo!");
				rdv.forward(request, response);
				
			} catch (Exception e) {
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/Aggiunto.jsp");
				request.setAttribute("message", "Spiacente, qualcosa è andato storto nel tuo carrello!");
				rd.forward(request, response);
			}
		}
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCarrello() {
        super();
        // TODO Auto-generated constructor stub
    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
	
	
}




