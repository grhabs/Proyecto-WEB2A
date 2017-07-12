package controladores;
import modelos.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings({ "serial", "unused" })
public class Registrar extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		String rol = req.getParameter("roles");
		String nombre = req.getParameter("nombre");
		String apel = req.getParameter("apellido");
		String email = req.getParameter("email");
		String gen = req.getParameter("genero");
		String tel = req.getParameter("teleono");
		String fe = req.getParameter("fechaN");
		String dir = req.getParameter("direccion");
		String dni= req.getParameter("dni");
		String password= req.getParameter("pass");
		
		String mensaje="";
		
		Usuario nuevo = new Usuario(new Long(dni), nombre, apel, email,password, fe, gen, dir, tel,rol);

		if (req.getSession().getAttribute("nombre") == null) {
			if (getServletContext().getAttribute("cuentas") != null) {
				@SuppressWarnings("unchecked")
				ArrayList<Usuario> cuentas = (ArrayList<Usuario>) getServletContext().getAttribute("cuentas");
				boolean encontre = false;
				for (Usuario v : cuentas) {
					if (v.getCuenta().equals(email) || v.getIdUsuario().equals(new Long(req.getParameter("dni")))) {
						encontre = true;
						break;
					}
				}
				if (encontre) {
					resp.getWriter().println("<p>El usuario con Correo e email ya fue ingresado:" +dni+" -> " +email + "</p>");
				} else {
					if(rol=="Alumno"){
						nuevo.setNota1(0);
						nuevo.setNota2(0);
						nuevo.setNota3(0);
						nuevo.setNota4(0);
						nuevo.setNota5(0);
						nuevo.setPromedio(0);
					}
					pm.makePersistent(nuevo);
					cuentas.add(nuevo);
					getServletContext().setAttribute("cuentas", cuentas);
					
				}
			} else {
				ArrayList<Usuario> cuentas = new ArrayList<Usuario>();
				if(rol=="Alumno"){
					nuevo.setNota1(0);
					nuevo.setNota2(0);
					nuevo.setNota3(0);
					nuevo.setNota4(0);
					nuevo.setNota5(0);
					nuevo.setPromedio(0);
				}
				cuentas.add(nuevo);
				pm.makePersistent(nuevo);
				getServletContext().setAttribute("cuentas", cuentas);
			}
			mensaje="Felicidades se registro correctamente";
			req.setAttribute("mensaje",mensaje);
			RequestDispatcher rd = req.getRequestDispatcher("/sesion.jsp");
			rd.forward(req, resp);
		} 
		else{
			resp.getWriter().println("<p>Ya hay una sesion abierta salga y podra registrarse nuevamente:</p>");
		}
	}

}
