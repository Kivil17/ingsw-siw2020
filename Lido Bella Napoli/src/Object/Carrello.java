package Object;

public class Carrello {
	
	private String idProdotto;
	private String nomeUtente;
	private int quantita;
	private int idOrdine;
	private double totaleOrdine;
	
	public Carrello(String idProdotto, String nomeUtente, int quantita, int idOrdine, double totaleOrdine) {
		this.idProdotto = idProdotto;
		this.nomeUtente = nomeUtente;
		this.quantita = quantita;
		this.idOrdine = idOrdine;
		this.totaleOrdine = totaleOrdine;
	}

	public Carrello() {
		this.idProdotto = "";
		this.nomeUtente = "";
		this.quantita = 0;
		this.idOrdine = -1;
		this.totaleOrdine = 0;
	}

	public String getIdProdotto() {
		return idProdotto;
	}

	public void setIdProdotto(String idProdotto) {
		this.idProdotto = idProdotto;
	}

	public String getNomeUtente() {
		return nomeUtente;
	}

	public void setNomeUtente(String nomeUtente) {
		this.nomeUtente = nomeUtente;
	}

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	public int getIdOrdine() {
		return idOrdine;
	}

	public void setIdOrdine(int idOrdine) {
		this.idOrdine = idOrdine;
	}

	public double getTotaleOrdine() {
		return totaleOrdine;
	}

	public void setTotaleOrdine(double totaleOrdine) {
		this.totaleOrdine = totaleOrdine;
	}
	
	
}






