package es.upm.dit.isst.billgestor;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.iist.billgestor.dao.EmpresaDAO;
import es.upm.dit.iist.billgestor.dao.EmpresaDAOImpl;
import es.upm.dit.isst.billgestor.model.Empresa;


public class DashboardServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String email = checkNull(req.getParameter("email"));
		EmpresaDAO dao = EmpresaDAOImpl.getInstance();
		Empresa e = dao.getEnterprise(email);
		String name = e.getName();
		req.getSession().setAttribute("name", name);
	}

	private String checkNull(String s) {
		if (s == null) {
			return "";
		}
		return s;
	}
}
