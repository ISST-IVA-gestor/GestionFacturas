package es.upm.dit.isst.billgestor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.upm.dit.isst.billgestor.dao.EmpresaDAO;
import es.upm.dit.isst.billgestor.dao.EmpresaDAOImpl;
import es.upm.dit.isst.billgestor.model.Empresa;


public class ConfigurationServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession session = req.getSession();
		
		String logout = checkNull(req.getParameter("logout"));
		
		/*
		 * Compruebo si se ha llamado al logout
		 */
		if(logout.equals("yes")){
			session.invalidate();
			resp.sendRedirect("/");
			return;
		}
		/*
		 * Compruebo si existe sesión.
		 */
		if(session.getAttribute("user") == null ){
			resp.sendRedirect("/");
			return;
		}
		
		RequestDispatcher view = req.getRequestDispatcher("Configuration.jsp");
		try {
			view.forward(req, resp);
		} catch (ServletException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession session = req.getSession();
		
			if(session.getAttribute("user") == null ){
				resp.sendRedirect("/");
				return;
			}
			
			String email = session.getAttribute("user").toString();
			if(req.getParameter("delete")!=null){
				EmpresaDAO dao = EmpresaDAOImpl.getInstance();
				Empresa e = dao.getEnterprise(email);
				dao.remove(e.getId());
				resp.sendRedirect("/");
				session.invalidate();
			}
		
		
	}

	private String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
}
