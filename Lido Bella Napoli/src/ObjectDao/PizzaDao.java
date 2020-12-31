package ObjectDao;

import java.util.List;

import Object.Pizza;
import Object.Utente;

public interface PizzaDao {

	public void save(Pizza pizza);
	public Pizza findByPrimaryKey(String nome);
	public List<Pizza> findAll();
	public void update(Pizza pizza);
	public void delete(Pizza pizza);
	public int sizePizze(String nomePizza);
	public List<Pizza> findAllByPizza(String nomePizza);
}
