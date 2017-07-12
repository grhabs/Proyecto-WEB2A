package controladores;
import modelos.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class MostrarCuentas extends HttpServlet {
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		 resp.setContentType("text/html");
		String email = (String) req.getSession().getAttribute("email");
		PersistenceManager pm = PMF.get().getPersistenceManager();
		ArrayList<Usuario> cuentas = (ArrayList<Usuario>) getServletContext().getAttribute("cuentas");
		boolean encontre = false;
		Usuario ok = new Usuario();
		
		if(cuentas!=null){
		for (int i = 0; i < cuentas.size(); i++) {
			if (cuentas.get(i).getCuenta().equals(email)) {
				encontre = true;
				ok = cuentas.get(i);
				break;
			}
		}
		if (encontre) {
			String query3 = null;
			if (ok.getRoles().getNombre().equals("Administrador")) {
				query3 = "select from " + Usuario.class.getName();
				List<Usuario> cuentas3 = (List<Usuario>) pm.newQuery(query3).execute();

				req.setAttribute("cuentas", cuentas3);
				
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/vistas/Cuentas.jsp");
				dispatcher.forward(req, resp);

			}
			else
				resp.getWriter().print("Acceso Denegado: solo Administrador");
		}
		else 
			resp.getWriter().print("no se inicio sesion");
		}
		else
			resp.getWriter().print("No se detecto ningun usuario<p><a href='registrar.jsp'>Registrese</a></p>");
	}
}
