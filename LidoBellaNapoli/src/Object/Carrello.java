package Object;

public class Carrello {
	
	private String idprodotto;
	private String nomeutente;
	private int quantita;
	private int idordine;
	private double totaleordine;
	
	public Carrello(String idprodotto, String nomeutente, int quantita, int idordine, double totaleordine) {
		this.idprodotto = idprodotto;
		this.nomeutente = nomeutente;
		this.quantita = quantita;
		this.idordine = idordine;
		this.totaleordine = totaleordine;
	}

	public Carrello() {
		this.idprodotto = "";
		this.nomeutente = "";
		this.quantita = 0;
		this.idordine = -1;
		this.totaleordine = 0;
	}

	public String getIdProdotto() {
		return idprodotto;
	}

	public void setIdProdotto(String idprodotto) {
		this.idprodotto = idprodotto;
	}

	public String getNomeUtente() {
		return nomeutente;
	}

	public void setNomeUtente(String nomeUtente) {
		this.nomeutente = nomeUtente;
	}

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	public int getIdOrdine() {
		return idordine;
	}

	public void setIdOrdine(int idordine) {
		this.idordine = idordine;
	}

	public double getTotaleOrdine() {
		return totaleordine;
	}

	public void setTotaleOrdine(double totaleordine) {
		this.totaleordine = totaleordine;
	}
	
	
}






