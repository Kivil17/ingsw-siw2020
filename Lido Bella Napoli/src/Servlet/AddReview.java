package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;

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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response, Recensione review) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String json = new Gson().toJson(review);
		response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		JsonArray data = new Gson().fromJson(request.getReader(),JsonElement.class).getAsJsonArray();
		String idTipo = data.get(0).getAsString();
		int valore = data.get(1).getAsInt();
		RecensioneDao reviewDao = DatabaseManager.getInstance().getDaoFactory().getRecensioneDAO();
		Recensione review = reviewDao.findByPrimaryKey(idTipo); 
		int newReview;
		if (review != null) {
			reviewDao.delete(review);
		} else {
			review = new Recensione(idTipo);			
		}
		switch (valore) {
		 	case 1:
		 		newReview = review.getOneStar() + 1;
		 		review.setOneStar(newReview);
		 		break;
		 	case 2:
		 		newReview = review.getTwoStars() + 1;
		 		review.setTwoStars(newReview);
		 		break;
		 	case 3:
		 		newReview = review.getThreeStars() + 1;
		 		review.setThreeStars(newReview);
		 		break;
		 	case 4:
		 		newReview = review.getFourStars() + 1;
		 		review.setFourStars(newReview);
		 		break;
		 	case 5:
		 		newReview = review.getFiveStars() + 1;
		 		review.setFiveStars(newReview);
		 		break;
		}
		reviewDao.save(review);
		
		doGet(request, response, review);
	}

}
