package controladores;

import java.io.IOException;
import javax.servlet.http.*;
import java.util.Date;
import java.util.*;
import java.text.DateFormat;
import javax.servlet.*;
import javax.jdo.PersistenceManager;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
@SuppressWarnings("serial")
public class ComprobarSesion extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		
		if (req.getParameter("action").equals("administrador")) {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/vistas/administrador.jsp");
		rd.forward(req, resp);
	} else if (req.getParameter("action").equals("profesor")) {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/vistas/profesor.jsp");
		rd.forward(req, resp);
	} else if (req.getParameter("action").equals("alumno")) {
		
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/vistas/alumno.jsp");
		rd.forward(req, resp);
	} else{
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/vistas/apoderado.jsp");
		rd.forward(req, resp);
	}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse resp)throws ServletException, IOException {
		doGet(request, resp);
	}
}
