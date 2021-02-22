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
import Object.Carrello;
import Object.Recensione;
import ObjectDao.CarrelloDao;
import ObjectDao.RecensioneDao;

/**
 * Servlet implementation class MenuAdmin
 */
@WebServlet("/MenuAdmin")
public class MenuAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private int idOrdine = 0;
	private double totaleOrdine = 0.0;
	private String nomeUtente = null;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		CarrelloDao carrelloDao = factory.getCarrelloDao();
		List<Carrello> carrello = carrelloDao.findAll();
		
		idOrdine = carrello.get(carrello.size()-1).getIdOrdine();
		totaleOrdine = carrello.get(carrello.size()-1).getTotaleOrdine();
		nomeUtente = carrello.get(carrello.size()-1).getNomeUtente();
		
		
		session.setAttribute("listIdOrdine", idOrdine);
		session.setAttribute("listNomeUtente", nomeUtente);
		session.setAttribute("listPrezzo", totaleOrdine);
		
		 RequestDispatcher disp;
		  
		 disp = request.getRequestDispatcher("MenuAdmin.jsp");
		 disp.forward(request, response);
	}


}
