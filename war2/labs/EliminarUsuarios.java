package labs;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class EliminarUsuarios extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		try{
			try{
				pm.deletePersistentAll();
				resp.sendRedirect("/WEB-INF/Cuentas.jsp");
			}
			catch(Exception e){
				System.out.println(e);
			}
		}
		catch(Exception e){
			resp.sendRedirect("/WEB-INF/Cuentas.jsp");
		}
		finally{
			
            	pm.close();
		}	
	}
}
