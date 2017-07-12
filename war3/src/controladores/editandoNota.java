package controladores;
import modelos.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class editandoNota extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long dni = Long.parseLong(req.getParameter("dni"));
		PersistenceManager pm = PMF.get().getPersistenceManager();
		ArrayList<Usuario> cuentas = (ArrayList<Usuario>) getServletContext().getAttribute("cuentas");
		boolean encontre = false;
		Usuario alumno = null;
		for (int i = 0; i < cuentas.size(); i++) {
			if (cuentas.get(i).getIdUsuario().equals(dni)) {
				encontre=true;
				alumno=cuentas.get(i);
				break;
			}
		
		}if(encontre){
			alumno.setNota1(Double.parseDouble(req.getParameter("nota1")));
			alumno.setNota2(Double.parseDouble(req.getParameter("nota2")));
			alumno.setNota3(Double.parseDouble(req.getParameter("nota3")));
			alumno.setNota4(Double.parseDouble(req.getParameter("nota4")));
			alumno.setNota5(Double.parseDouble(req.getParameter("nota5")));
			alumno.setPromedio(alumno.getNota1()+alumno.getNota2()+alumno.getNota3()+alumno.getNota4()+alumno.getNota5());
			req.setAttribute("alumno", alumno);
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/vistas/Notas.jsp");
			dispatcher.forward(req, resp);
		}
		
		/*getServletContext().setAttribute("cuentas", cuentas);
		String query3 = "select from " + Usuario.class.getName();
		List<Usuario> cuentas3 = (List<Usuario>) pm.newQuery(query3).execute();

		req.setAttribute("cuentas", cuentas3);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Cuentas.jsp");
		dispatcher.forward(req, resp);*/

	}
}
