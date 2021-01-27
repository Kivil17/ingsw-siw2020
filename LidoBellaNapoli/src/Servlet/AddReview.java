package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DAOFactory;
import Database.DatabaseManager;
import Object.Recensione;
import Object.Utente;
import ObjectDao.RecensioneDao;
import ObjectDao.UtenteDAO;

/**
 * Servlet implementation class AddReview
 */
@WebServlet("/AddReview")
public class AddReview extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idRecensione=0;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		idRecensione++;
		String paramIdTipo= "Ristorante";
		String paramStella = req.getParameter("valore");
	 	String paramMessage = req.getParameter("message");
	 	
	 	String richiesta = req.getParameter("pagina");
	 	
	 	DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
	 	RecensioneDao reviewDao = factory.getRecensioneDAO();
		Recensione review = reviewDao.findByPrimaryKey(idRecensione);
		
		int newReview=0;
		
				
		if (review != null) {
			reviewDao.delete(review);
		} else {
			review = new Recensione(idRecensione);			
		}
		
		if(richiesta.equals("Lido") || richiesta.equals("PrenotazioneOmbrellone"))
			review.setIdTipo("Lido");
		else if(richiesta.equals("Disco") || richiesta.equals("PrenotazioneDisco"))
			review.setIdTipo("Disco");
		else		
			review.setIdTipo(paramIdTipo);
		
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
	 	
		if(richiesta.equals("Ristorante"))
			resp.sendRedirect("Ristorante.jsp");
		else if(richiesta.equals("Menu"))
			resp.sendRedirect("Menu.jsp");
		else if(richiesta.equals("Prenotazione"))
			resp.sendRedirect("Prenotazione.jsp");
		else if(richiesta.equals("Disco"))
			resp.sendRedirect("Disco.jsp");
		else if(richiesta.equals("Lido"))
			resp.sendRedirect("Lido.jsp");
		else if(richiesta.equals("PrenotazioneDisco"))
			resp.sendRedirect("PrenotazioneDisco.jsp");
		else if(richiesta.equals("PrenotazioneOmbrellone"))
			resp.sendRedirect("PrenotazioneOmbrellone.jsp");
		
	 	
	}
}
