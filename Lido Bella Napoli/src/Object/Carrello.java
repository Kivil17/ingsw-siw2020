package Object;

import java.util.ArrayList;

public class Carrello {
	private ArrayList<Pizza> pizze;
	private int idOrdine;
	
	public Carrello(ArrayList<Pizza> pizze, int idOrdine) {
		this.pizze = pizze;
		this.idOrdine = idOrdine;
	}

	public Carrello() {
		this.pizze = new ArrayList<Pizza>();
		this.idOrdine = -1;
	}

	public ArrayList<Pizza> getPizze() {
		return pizze;
	}

	public void setPizze(ArrayList<Pizza> pizze) {
		this.pizze = pizze;
	}

	public int getIdOrdine() {
		return idOrdine;
	}

	public void setIdOrdine(int idOrdine) {
		this.idOrdine = idOrdine;
	}
	
	public void add(Pizza pizza) {
		pizze.add(pizza);
	}
	
	public void remove(Pizza pizza) {
		pizze.remove(pizza);
	}
}






