package ObjectDao;

import java.util.List;

import Object.Recensione;
import Object.Tavolo;
import Object.Utente;

public interface TavoloDao {
	public void save(Tavolo tavolo);
	public Tavolo findByPrimaryKey(int id);
	public void update(Tavolo tavolo);
	public void delete(Tavolo tavolo);
	public int sizeTavolo();
	public List<Tavolo> findAll();
	
}
