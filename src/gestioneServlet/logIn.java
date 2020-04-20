package gestioneServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.Duration;
import java.time.LocalTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/gestioneServlet/logIn")
public class Greeter extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        LocalTime start = (LocalTime) session.getAttribute("start");

        Duration duration;
        if (start == null) {
            duration = Duration.ZERO;
            session.setAttribute("start", LocalTime.now());
        } else {
            duration = Duration.between(start, LocalTime.now());
        }

        if (request.getParameter("done") == null) {
            request.setAttribute("duration", duration);
            RequestDispatcher rd = request.getRequestDispatcher("/s09/greeter.jsp");
            rd.forward(request, response);
        } else {
            session.invalidate();

            response.setContentType("text/html");
            response.setCharacterEncoding("utf-8");
            try (PrintWriter writer = response.getWriter()) {
                writer.println("<!DOCTYPE html><html>");
                writer.println("<head><meta charset=\"utf-8\">");
                writer.println("<title>...</title></head>");
                writer.println("<body><h1>Complimenti!</h1>");
                writer.println("<p>Registrazione completata!</p>");
                writer.println("</body></html>");
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
