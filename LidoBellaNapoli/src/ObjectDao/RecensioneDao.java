package ObjectDao;

import java.util.List;

import Object.Recensione;

public interface RecensioneDao {
	
	public void save(Recensione recensione);
	public Recensione findByPrimaryKey(String idtipo);
	public List<Recensione> findByUtente(String username);
	public List<Recensione> findAll();
	public void update(Recensione recensione);
	public void delete(Recensione recensione);
}
