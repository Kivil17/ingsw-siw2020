package Servlet;

import java.io.IOException;
import java.sql.Array;
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
import ObjectDao.RecensioneDao;

/**
 * Servlet implementation class RecensioniAdmin
 */
@WebServlet("/RecensioniAdmin")
public class RecensioniAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private String tipoRecensione = null;
	private Float valutazione = null;
	private String messaggio = null;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println("entra recensoni admin");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RecensioneDao recensioneDao = factory.getRecensioneDAO();
		List<Recensione> recensione = recensioneDao.findAll();
		
		tipoRecensione = recensione.get(recensione.size()-1).getIdTipo();
		valutazione = recensione.get(recensione.size()-1).getRating();
		messaggio = recensione.get(recensione.size()-1).getMessage();
		
		
		session.setAttribute("listTipoReview", tipoRecensione);
		session.setAttribute("listValutazioneReview", valutazione);
		session.setAttribute("listMessaggioReview", messaggio);
		
		 RequestDispatcher disp;
		  
		 disp = request.getRequestDispatcher("ReviewAdmin.jsp");
		 disp.forward(request, response);
	}

}
