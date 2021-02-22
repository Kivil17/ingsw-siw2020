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
import Object.Tavolo;
import ObjectDao.TavoloDao;

/**
 * Servlet implementation class TavoloAdmin
 */
@WebServlet("/TavoloAdmin")
public class TavoloAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private int tavoloPrenotato = 0;
	private String nomeUtente = null;
	private String data = null;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		TavoloDao tavoloDao = factory.getTavoloDAO();
		List<Tavolo> tavolo = tavoloDao.findAll();
		
		tavoloPrenotato = tavolo.get(tavolo.size()-1).getId();
		nomeUtente = tavolo.get(tavolo.size()-1).getUtentePrenotato();
		data = tavolo.get(tavolo.size()-1).getData();
		
		
		session.setAttribute("listNumeroTavolo", tavoloPrenotato);
		session.setAttribute("listNomeUtente", nomeUtente);
		session.setAttribute("listData", data);
		
		 RequestDispatcher disp;
		  
		 disp = request.getRequestDispatcher("PrenotazioneAdmin.jsp");
		 disp.forward(request, response);
	}


}
