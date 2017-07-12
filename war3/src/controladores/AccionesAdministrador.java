package controladores;

import java.io.IOException;
import java.util.ArrayList;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class AccionesAdministrador extends HttpServlet {
@SuppressWarnings("unchecked")
public void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		
	if (req.getParameter("action").equals("verCuentas")) {
		RequestDispatcher rd = req.getRequestDispatcher("mostrarCuentas");
		rd.forward(req, resp);
	} else if (req.getParameter("action").equals("eliminar")) {
		PersistenceManager pm = PMF.get().getPersistenceManager();

		try{
			try{
				pm.deletePersistentAll();
				new Cerrar();
			}
			catch(Exception e){
				System.out.println(e);
			}
		}
		catch(Exception e){
			new Cerrar();
		}
		finally{
			
            	pm.close();
		}	
	} else if (req.getParameter("action").equals("inhabilitar")) {
		
		RequestDispatcher rd = req.getRequestDispatcher("inhabilitarUsuarios");
		rd.forward(req, resp);
	}else if (req.getParameter("action").equals("registrar")) {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/vistas/registrar.jsp");
		rd.forward(req, resp);
	}
	else {
		String a1 = req.getParameter("identidad");
		String publicacion= req.getParameter("postear");
		if (getServletContext().getAttribute("publicar") != null) {
		ArrayList<String> post = (ArrayList<String>) getServletContext().getAttribute("publicar");
			post.add(publicacion);
			getServletContext().setAttribute("publicar", post);
			getServletContext().setAttribute("coment", a1);
			
		} else {
		ArrayList<String> post = new ArrayList<String>();
		post.add(publicacion);
		getServletContext().setAttribute("publicar", post);
		getServletContext().setAttribute("coment", a1);
		}
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/vistas/administrador.jsp");
		rd.forward(req, resp);
	}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse resp)throws ServletException, IOException {
		doGet(request, resp);
	}
}
