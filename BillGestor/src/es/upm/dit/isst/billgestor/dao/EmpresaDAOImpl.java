package es.upm.dit.isst.billgestor.dao;

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
		Query q = em.createQuery("select e from Empresa e where e.email = :em and e.password = :pass");
		q.setParameter("em", email);
		q.setParameter("pass", password);
		if(!q.getResultList().isEmpty()) return true;
		return false;
	}
	
	@Override
	public Empresa getEnterprise(String email){
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em.createQuery("select e from Empresa e where e.email = :em");
		q.setParameter("em", email);
		Empresa e = (Empresa) q.getResultList().get(0);
		return e;
	}
	
	public void increaseRequests(int newRequests, String email){
		EntityManager em = EMFService.get().createEntityManager();
		Query q = em.createQuery("select e from Empresa e where e.email = :em");
		q.setParameter("em", email);
		Empresa e = (Empresa) q.getResultList().get(0);	
		em.getTransaction().begin();
		e.setRemainingRequest(e.getRemainingRequest() + newRequests);
		em.getTransaction().commit();
		
	}
	
	public void decreaseOneRequest(String domain){
		
	}


}
