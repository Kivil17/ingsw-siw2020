package ObjectDao;

import java.util.ArrayList;

import Object.Carrello;
import Object.Prodotto;

public interface CarrelloDao {

	public void save(Carrello carrello);
	public Carrello findByPrimaryKey(int idordine);
	public void update(Carrello carrello);
	public void delete(Carrello carrello);
	public int sizeProdotti(int idordine);
	
}
