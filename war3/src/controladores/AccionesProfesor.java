package controladores;

import java.io.IOException;
import java.util.ArrayList;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class AccionesProfesor extends HttpServlet {
@SuppressWarnings("unchecked")
public void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		
	if (req.getParameter("action").equals("publicar")) {
		String a3 = req.getParameter("identidad");
		String publicacion= req.getParameter("postear");
		if (getServletContext().getAttribute("publicar2") != null) {
		ArrayList<String> post = (ArrayList<String>) getServletContext().getAttribute("publicar2");
			post.add(publicacion);
			getServletContext().setAttribute("publicar2", post);
			getServletContext().setAttribute("coment2", a3);
			
		} else {
		ArrayList<String> post = new ArrayList<String>();
		post.add(publicacion);
		getServletContext().setAttribute("publicar2", post);
		getServletContext().setAttribute("coment2", a3);
		}
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/vistas/profesor.jsp");
		rd.forward(req, resp);
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse resp)throws ServletException, IOException {
		doGet(request, resp);
	}
}