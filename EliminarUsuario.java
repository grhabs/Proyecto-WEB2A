package labs;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class EliminarUsuario extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException{
	Long dni = Long.parseLong(req.getParameter("dni"));
	PersistenceManager pm = PMF.get().getPersistenceManager();
	System.out.println(dni);
	ArrayList<Usuario> cuentas = (ArrayList<Usuario>) getServletContext().getAttribute("cuentas");
	boolean encontre = false;
	Usuario ok = new Usuario();
	for (int i = 0; i < cuentas.size(); i++) {
		if (cuentas.get(i).getIdUsuario().equals(dni)) {
			cuentas.remove(i);
			break;
		}
	}
	getServletContext().setAttribute("cuentas", cuentas);
	String query3 = "select from " + Usuario.class.getName();
	List<Usuario> cuentas3 = (List<Usuario>) pm.newQuery(query3).execute();

	req.setAttribute("cuentas", cuentas3);
	
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Cuentas.jsp");
	dispatcher.forward(req, resp);
	}
	
}
