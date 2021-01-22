package ObjectDao;
import Object.Prodotto;

public interface ProdottoDao {

	public void save(Prodotto prodotto);
	public Prodotto findByPrimaryKey(String nome);
	public void update(Prodotto prodotto);
	public void delete(Prodotto prodotto);
	public int sizeProdotto(String nomeprodotto);
}
