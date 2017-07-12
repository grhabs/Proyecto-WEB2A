package labs;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings("serial")
public class IniciarSesion extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html");
		PersistenceManager pm = PMF.get().getPersistenceManager();

		

		ArrayList<Usuario> cuentas = (ArrayList<Usuario>) getServletContext().getAttribute("cuentas");
		if (cuentas != null) {
			if (req.getSession().getAttribute("nombre") == null) {
				String correo = req.getParameter("usuario");
				String password = req.getParameter("password");
				HttpSession ses = req.getSession();
				if (req.getSession().isNew() == false) {
					boolean encontre = false;
					Usuario ok = new Usuario();
					for (int i = 0; i < cuentas.size(); i++) {
						if (cuentas.get(i).getCuenta().equals(correo) && cuentas.get(i).getPassword().equals(password)) {
							encontre = true;
							ok = cuentas.get(i);
							break;
						}
					}
					if (encontre) {
						if (ok.getRoles().getNombre().equals("Administrador")) {
							HttpSession misesion = req.getSession(true);
							misesion.setAttribute("nombre", ok.getNombre());
							misesion.setAttribute("email", ok.getCuenta());
							misesion.setAttribute("rol", ok.getRoles().getNombre());
							req.setAttribute("cuentas", cuentas);
							RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/administrador.jsp");
							rd.forward(req, resp);
						} else if (ok.getRoles().getNombre().equals("Profesor")) {
							HttpSession misesion = req.getSession(true);
							misesion.setAttribute("nombre", ok.getNombre());
							misesion.setAttribute("email", ok.getCuenta());
							misesion.setAttribute("rol", ok.getRoles().getNombre());
							req.setAttribute("cuentas", cuentas);
							RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/profesor.jsp");
							rd.forward(req, resp);
						} else if (ok.getRoles().getNombre().equals("Alumno")) {
							HttpSession misesion = req.getSession(true);
							misesion.setAttribute("nombre", ok.getNombre());
							misesion.setAttribute("email", ok.getCuenta());
							misesion.setAttribute("rol", ok.getRoles().getNombre());
							req.setAttribute("cuentas", cuentas);
							RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/alumno.jsp");
							rd.forward(req, resp);
						} else if (ok.getRoles().getNombre().equals("Apoderado")) {
							HttpSession misesion = req.getSession(true);
							misesion.setAttribute("nombre", ok.getNombre());
							misesion.setAttribute("email", ok.getCuenta());
							misesion.setAttribute("rol", ok.getRoles().getNombre());
							req.setAttribute("cuentas", cuentas);
							RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/apoderado.jsp");
							rd.forward(req, resp);
						} else {
							HttpSession misesion = req.getSession(true);
							misesion.setAttribute("nombre", ok.getNombre());
							misesion.setAttribute("email", ok.getCuenta());
							misesion.setAttribute("rol", ok.getRoles().getNombre());
							req.setAttribute("cuentas", cuentas);
							RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/servicios.jsp");
							rd.forward(req, resp);
						}

					} else {
						resp.sendRedirect("/registrar.jsp");
					}
				} else {
					resp.getWriter().print("No inicio Sesion");
				}
			}else{
				resp.getWriter().print("Ya inicio sesion vuelva a iniciar");
			}
		} else
			resp.getWriter().print("No se detecto ningun usuario<p><a href='registrar.jsp'>Registrese</a></p>");
	}
}