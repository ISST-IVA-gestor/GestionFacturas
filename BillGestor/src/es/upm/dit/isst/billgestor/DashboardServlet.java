package es.upm.dit.isst.billgestor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.iist.billgestor.dao.EmpresaDAO;
import es.upm.dit.iist.billgestor.dao.EmpresaDAOImpl;
import es.upm.dit.isst.billgestor.model.Empresa;


public class DashboardServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String email = checkNull(req.getParameter("email"));
		EmpresaDAO dao = EmpresaDAOImpl.getInstance();
		Empresa e = dao.getEnterprise(email);
		String name = e.getName();
		String domain =e.getDomain();
		String product =e.getProduct();
		String plan = e.getPlan().name();
		int nreq= e.getRemainingRequest();
		
		req.getSession().setAttribute("name", name);
		req.getSession().setAttribute("domain", domain);
		req.getSession().setAttribute("product", product);
		req.getSession().setAttribute("plan", plan);
		req.getSession().setAttribute("nreq", nreq);
		RequestDispatcher view = req.getRequestDispatcher("Dashboard.jsp");
		try {
			view.forward(req, resp);
		} catch (ServletException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
	}

	private String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
}
