package ObjectDao;

import java.util.ArrayList;
import java.util.List;

import Object.Carrello;
import Object.Prodotto;
import Object.Recensione;

public interface CarrelloDao {

	public void save(Carrello carrello);
	public Carrello findByPrimaryKey(int idordine);
	public void update(Carrello carrello);
	public void delete(Carrello carrello);
	public int sizeProdotti(int idordine);
	public List<Carrello> findAll();
	
}
