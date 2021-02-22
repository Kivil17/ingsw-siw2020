package Object;

public class Tavolo {
	private int id;
	private String utenteprenotato;
	private String email;
	private String data;
	private boolean occupato;
	
	public Tavolo(int id, String utenteprenotato, String email, String data) {
		this.id = id;
		this.utenteprenotato = utenteprenotato;
		this.email = email;
		this.data= data;
		this.occupato = true;
	}
	
	public Tavolo() {
		this.id = -1;
		this.utenteprenotato = "";
		this.email = "";
		this.data= null;
	}

	
	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUtentePrenotato() {
		return utenteprenotato;
	}

	public void setUtentePrenotato(String utenteprenotato) {
		this.utenteprenotato = utenteprenotato;
	}

	public boolean isOccupato() {
		return occupato;
	}

	public void setOccupato(boolean occupato) {
		this.occupato = occupato;
	}
	
	
}

