package ObjectDao;

import java.util.ArrayList;

import Object.Carrello;
import Object.Pizza;

public interface CarrelloDao {

	public void save(Carrello carrello);
	public Carrello findByPrimaryKey(int idOrdine);
	public void update(Carrello carrello);
	public void delete(Carrello carrello);
	public int sizeProdotti(int idOrdine);
	
}
