package controladores;
import modelos.*;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class VerNotas extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		ArrayList<Usuario> cuentas = (ArrayList<Usuario>) getServletContext().getAttribute("cuentas");
		req.setAttribute("cuentas", cuentas);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/vistas/Notas.jsp");
		dispatcher.forward(req, resp);
	}
}
