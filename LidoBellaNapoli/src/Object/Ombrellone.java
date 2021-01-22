package Object;

public class Ombrellone {
	private int id;
	private String utenteprenotato;
	private String email;
	private boolean occupato;
	
	public Ombrellone(int id, String utenteprenotato, String email) {
		this.id = id;
		this.utenteprenotato = utenteprenotato;
		this.email = email;
		
		this.occupato = true;
	}
	
	public Ombrellone() {
		this.id = -1;
		this.utenteprenotato = "";
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
