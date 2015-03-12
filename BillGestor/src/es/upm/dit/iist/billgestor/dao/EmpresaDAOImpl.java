package es.upm.dit.iist.billgestor.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import es.upm.dit.isst.billgestor.model.Empresa;

public class EmpresaDAOImpl implements EmpresaDAO {

	private static EmpresaDAOImpl instance;

	public EmpresaDAOImpl() {

	}

	public static EmpresaDAOImpl getInstance() {
		if (instance == null)
			instance = new EmpresaDAOImpl();
		return instance;
	}

	@Override
	public void add(String name, String email, String domain, String password,
			String product) {
		synchronized (this) {
			EntityManager em = EMFService.get().createEntityManager();
			Empresa empresa = new Empresa(name, email, domain, password,
					product);
			em.persist(empresa);
			em.close();
		}

	}

	@Override
	public void remove(long id) {
		EntityManager em = EMFService.get().createEntityManager();
		try {
			Empresa empresa = em.find(Empresa.class, id);
			em.remove(empresa);
		} finally {
			em.close();
		}
	}

	@Override
	public boolean isDomainRegistered(String domain) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean areEnoughRequestLeft(String domain) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public boolean correctLogin(String email, String password){
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em.createQuery("select e from Empresa e where e.email = :email and e.password = :password");
		q.setParameter("email", email);
		q.setParameter("password", password);
		if(!q.getResultList().isEmpty()) return true;
		return false;
	}

}
