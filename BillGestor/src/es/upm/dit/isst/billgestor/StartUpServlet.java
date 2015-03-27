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



public class StartUpServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		RequestDispatcher view = req.getRequestDispatcher("ChoosePlan.jsp");
		HttpSession session = req.getSession();
		String email = session.getAttribute("user").toString();
		req.getSession().setAttribute("email", email);
		try {
			view.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		EmpresaDAO dao = EmpresaDAOImpl.getInstance();
		HttpSession session = req.getSession();
		String email = session.getAttribute("user").toString();
		dao.increaseRequests(100, email);
		req.getSession().setAttribute("email", email);
		resp.sendRedirect("/chooseplan");
		
	}
	
	
	
	private String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
}
