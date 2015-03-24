package es.upm.dit.isst.billgestor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.iist.billgestor.dao.EmpresaDAO;
import es.upm.dit.iist.billgestor.dao.EmpresaDAOImpl;

public class LoginServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		RequestDispatcher view = req.getRequestDispatcher("Login.jsp");
		try {
			view.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		String email = checkNull(req.getParameter("email"));
		String password = checkNull(req.getParameter("password"));
		EmpresaDAO dao = EmpresaDAOImpl.getInstance();
		if(dao.correctLogin(email, password)){
			resp.sendRedirect("/dashboard?email=" + email);
		}else{
			resp.sendRedirect("/");
		}
		
		
	}

	private String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
	
}
