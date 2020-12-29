package Object;

public class Ombrellone {
	private int id;
	private String utentePrenotato;
	private String email;
	private boolean occupato;
	
	public Ombrellone(int id, String utentePrenotato, String email) {
		this.id = id;
		this.utentePrenotato = utentePrenotato;
		this.email = email;
		
		this.occupato = true;
	}
	
	public Ombrellone() {
		this.id = -1;
		this.utentePrenotato = "";
		this.email = "";
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
		return utentePrenotato;
	}

	public void setUtentePrenotato(String utentePrenotato) {
		this.utentePrenotato = utentePrenotato;
	}

	public boolean isOccupato() {
		return occupato;
	}

	public void setOccupato(boolean occupato) {
		this.occupato = occupato;
	}
	
	
}
