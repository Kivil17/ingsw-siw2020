package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.DAOFactory;
import Object.Recensione;
import Object.Utente;
import ObjectDao.RecensioneDao;
import ObjectDao.UtenteDAO;

/**
 * Servlet implementation class ScaricareRecensoni
 */
@WebServlet("/ScaricareRecensoni")
public class ScaricareRecensioni extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RecensioneDao recensioneDao = factory.getRecensioneDAO();
		List<Recensione> recensione = recensioneDao.findAll();
		
		List<String> tipoRecensione = null;
		List<Integer> valutazione = null;
		List<String> messaggio = null;
		
		for (int i = 0; i < recensione.size(); i++) {
			tipoRecensione.add(recensione.get(i).getIdTipo());
			valutazione.add(recensione.get(i).getReviewTot());
			messaggio.add(recensione.get(i).getMessage());
		}
		
		session.setAttribute("listTipoReview", tipoRecensione);
		session.setAttribute("listValutazioneReview", valutazione);
		session.setAttribute("listMessaggioReview", messaggio);
		
		 RequestDispatcher disp;
		  
		 disp = request.getRequestDispatcher("ReviewAdmin.jsp");
		 disp.forward(request, response);
	}

}
