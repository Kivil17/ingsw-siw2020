package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseManager;
import Object.Recensione;
import ObjectDao.RecensioneDao;

/**
 * Servlet implementation class AddReview
 */
@WebServlet("/AddReview")
public class AddReview extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String paramIdTipo= "Ristorante";
	 	String paramStella= req.getParameter("valore");
	 	String paramMessage = req.getParameter("message");
	 	
	 	RecensioneDao reviewDao = DatabaseManager.getInstance().getDaoFactory().getRecensioneDAO();
		Recensione review = reviewDao.findByPrimaryKey(paramIdTipo);
		
		int newReview=0;
		if (review != null) {
			reviewDao.delete(review);
		} else {
			review = new Recensione(paramIdTipo);			
		}
		switch (paramStella) {
		 	case "1":
		 		newReview = review.getOneStar() + 1;
		 		review.setOneStar(newReview);
		 		break;
		 	case "2":
		 		newReview = review.getTwoStars() + 1;
		 		review.setTwoStars(newReview);
		 		break;
		 	case "3":
		 		newReview = review.getThreeStars() + 1;
		 		review.setThreeStars(newReview);
		 		break;
		 	case "4":
		 		newReview = review.getFourStars() + 1;
		 		review.setFourStars(newReview);
		 		break;
		 	case "5":
		 		newReview = review.getFiveStars() + 1;
		 		review.setFiveStars(newReview);
		 		break;
		}
		
		review.setMessage(paramMessage);
		
		reviewDao.save(review);
	 	
	 	resp.sendRedirect("Ristorante.jsp"); 
	 	
	}
}
