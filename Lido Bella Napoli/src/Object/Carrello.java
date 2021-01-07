package Object;

public class Carrello {
	
	private int idProdotto;
	private String nomeUtente;
	private int quantita;
	private int idOrdine;
	
	public Carrello(int idProdotto, String nomeUtente, int quantita, int idOrdine) {
		this.idProdotto = idProdotto;
		this.nomeUtente = nomeUtente;
		this.quantita = quantita;
		this.idOrdine = idOrdine;
	}

	public Carrello() {
		this.idProdotto = -1;
		this.nomeUtente = "";
		this.quantita = 0;
		this.idOrdine = -1;
	}

	public int getIdProdotto() {
		return idProdotto;
	}

	public void setIdProdotto(int idProdotto) {
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
	
}






