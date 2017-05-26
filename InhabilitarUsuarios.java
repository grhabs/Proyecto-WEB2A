package labs;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class InhabilitarUsuarios extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		ArrayList<Usuario> cuentas = (ArrayList<Usuario>) getServletContext().getAttribute("cuentas");
		try{
			for (Usuario a : cuentas) {
				a.setEstado(false);
			}
			
		}
		catch(Exception e){
			System.out.println("no se encontro a Usuario");
			resp.sendRedirect("/WEB-INF/Cuentas.jsp");
		}
		finally{
			
            	pm.close();
		}	
	}
}
