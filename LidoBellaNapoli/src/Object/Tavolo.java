package Object;

import java.util.Date;

public class Tavolo {
	private int id;
	private String utenteprenotato;
	private String email;
	private Date data;
	private boolean occupato;
	
	public Tavolo(int id, String utenteprenotato, String email, Date data) {
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

	
	public Date getData() {
		return data;
	}

	public void setData(Date data) {
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

