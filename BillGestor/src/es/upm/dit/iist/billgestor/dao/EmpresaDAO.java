package es.upm.dit.iist.billgestor.dao;

public interface EmpresaDAO {

	// public List<Empresa> listTodos();
	
	public void add (String name, String email, String domain, String password, String product);
	
	public void remove (long id);
	
	public boolean isDomainRegistered(String domain);
	
	public boolean areEnoughRequestLeft(String domain);
	
	public boolean correctLogin(String email, String password);
	// public List<String> getUsers();

}
