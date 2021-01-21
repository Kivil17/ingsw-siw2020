package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.DatabaseManager;
import Object.Recensione;
import ObjectDao.RecensioneDao;

/**
 * Servlet implementation class AddReview
 */
@WebServlet("/AddReview")
public class AddReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReview() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		RecensioneDao reviewDao = DatabaseManager.getInstance().getDaoFactory().getRecensioneDAO();
		String idTipo="";
		Recensione review = reviewDao.findByPrimaryKey(idTipo);
		review.setIdTipo("Ristorante");
		String valore =  (String) session.getAttribute("valore");
		int newReview;
		
		review = new Recensione("Ristorante");			
		switch (valore) {
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
		String message = (String) session.getAttribute("message");
		review.setMessage(message);
		reviewDao.save(review);
		doGet(request, response);
	}

}
