package servlet;

import java.io.IOException;

import javax.activation.DataSource;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ProductDao;
import antlr.collections.List;

/**
 * Servlet implementation class Ordina
 */
@WebServlet("/Ordina")
public class Ordina extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Resource(name = "jdbc/green")
	private DataSource ds;
	
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
				List<Integer> lista = (List<Integer>) session.getAttribute("carrello");
				if (lista == null) {
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/Carrello.jsp");
					request.setAttribute("error", "Non ci sono vini nel carrello");
					rd.forward(request, response);
				} else {
//					List<Vino> carrello = new ArrayList<>();
//					for (int item : lista) {
//						carrello.add(dao.get(item).get());
//					}
					request.setAttribute("acquisti", lista);
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/Carrello.jsp");
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




