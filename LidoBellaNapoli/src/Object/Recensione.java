package Object;

public class Recensione {
	
	private String idtipo="";
	private int onestar=0;
	private int twostars=0;
	private int threestars=0;
	private int fourstars=0;
	private int fivestars=0;
	private String message="";
	public float rating=0;
	public int reviewtot=0;
	
	
	public Recensione() {}
	
	public Recensione(String idtipo) {
		this.idtipo = idtipo;
	}
	
	public Recensione(String idtipo, int onestar, int twostars, int threestars, int fourstars, int fivestars, String message) {
		this.idtipo = idtipo;
		this.onestar = onestar;
		this.twostars = twostars;
		this.threestars = threestars;
		this.fourstars = fourstars;
		this.fivestars = fivestars;
		this.message = message;
		this.rating = getRating();
		this.reviewtot = getReviewTot();
	}
	
	public int getReviewTot() {
		return this.getOneStar()+this.getTwoStars()+this.getThreeStars()+this.getFourStars()+this.getFiveStars();
	}
	
	public float getRating() {
		int votiPonderati = (this.getOneStar()*1)+(this.getTwoStars()*2)+(this.getThreeStars()*3)+(this.getFourStars()*4)+(this.getFiveStars()*5);
		if (getReviewTot()!=0)
			return votiPonderati/getReviewTot();
		return 0;
	}
	
	public String getIdTipo() {
		return idtipo;
	}
	
	public void setIdTipo(String idtipo) {
		this.idtipo = idtipo;
	}
	
	public int getOneStar() {
		return onestar;
	}
	
	public void setOneStar(int onestar) {
		this.onestar = onestar;
		this.rating = getRating();
		this.reviewtot = getReviewTot();
	}
	
	public int getTwoStars() {
		return twostars;
	}
	
	public void setTwoStars(int twostars) {
		this.twostars = twostars;
		this.rating = getRating();
		this.reviewtot = getReviewTot();
	}
	public int getThreeStars() {
		return threestars;
	}
	public void setThreeStars(int threestars) {
		this.threestars = threestars;
		this.rating = getRating();
		this.reviewtot = getReviewTot();
	}
	public int getFourStars() {
		return fourstars;
	}
	public void setFourStars(int fourstars) {
		this.fourstars = fourstars;
		this.rating = getRating();
		this.reviewtot = getReviewTot();
	}
	public int getFiveStars() {
		return fivestars;
	}
	public void setFiveStars(int fivestars) {
		this.fivestars = fivestars;
		this.rating = getRating();
		this.reviewtot = getReviewTot();
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}
