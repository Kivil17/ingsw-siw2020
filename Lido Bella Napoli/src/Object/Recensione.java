package Object;

public class Recensione {
	
	private String idTipo="";
	private int oneStar=0;
	private int twoStars=0;
	private int threeStars=0;
	private int fourStars=0;
	private int fiveStars=0;
	public float rating=0;
	public int reviewTot=0;
	
	public Recensione() {}
	
	public Recensione(String idTipo) {
		this.idTipo = idTipo;
	}
	
	public Recensione(String idTipo, int oneStar, int twoStars, int threeStars, int fourStars, int fiveStars) {
		this.idTipo = idTipo;
		this.oneStar = oneStar;
		this.twoStars = twoStars;
		this.threeStars = threeStars;
		this.fourStars = fourStars;
		this.fiveStars = fiveStars;
		this.rating = getRating();
		this.reviewTot = getReviewTot();
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
		return idTipo;
	}
	
	public void setIdTipo(String idTipo) {
		this.idTipo = idTipo;
	}
	
	public int getOneStar() {
		return oneStar;
	}
	
	public void setOneStar(int oneStar) {
		this.oneStar = oneStar;
		this.rating = getRating();
		this.reviewTot = getReviewTot();
	}
	
	public int getTwoStars() {
		return twoStars;
	}
	
	public void setTwoStars(int twoStars) {
		this.twoStars = twoStars;
		this.rating = getRating();
		this.reviewTot = getReviewTot();
	}
	public int getThreeStars() {
		return threeStars;
	}
	public void setThreeStars(int threeStars) {
		this.threeStars = threeStars;
		this.rating = getRating();
		this.reviewTot = getReviewTot();
	}
	public int getFourStars() {
		return fourStars;
	}
	public void setFourStars(int fourStars) {
		this.fourStars = fourStars;
		this.rating = getRating();
		this.reviewTot = getReviewTot();
	}
	public int getFiveStars() {
		return fiveStars;
	}
	public void setFiveStars(int fiveStars) {
		this.fiveStars = fiveStars;
		this.rating = getRating();
		this.reviewTot = getReviewTot();
	}
}
