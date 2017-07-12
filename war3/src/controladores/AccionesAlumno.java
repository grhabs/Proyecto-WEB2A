package controladores;

import java.io.IOException;
import java.util.ArrayList;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class AccionesAlumno extends HttpServlet {
@SuppressWarnings("unchecked")
public void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		
	if (req.getParameter("action").equals("publicar")) {
		
		String a4 = req.getParameter("identidad");
		String publicacion= req.getParameter("postear");
		if (getServletContext().getAttribute("publicar3") != null) {
		ArrayList<String> post = (ArrayList<String>) getServletContext().getAttribute("publicar3");
			post.add(publicacion);
			getServletContext().setAttribute("publicar3", post);
			getServletContext().setAttribute("coment3", a4);
			
		} else {
		ArrayList<String> post = new ArrayList<String>();
		post.add(publicacion);
		getServletContext().setAttribute("publicar3", post);
		getServletContext().setAttribute("coment3", a4);
		}
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/vistas/alumno.jsp");
		rd.forward(req, resp);
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse resp)throws ServletException, IOException {
		doGet(request, resp);
	}
}