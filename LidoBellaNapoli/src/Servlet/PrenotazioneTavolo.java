package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DAOFactory;
import Object.Recensione;
import Object.Tavolo;
import ObjectDao.RecensioneDao;
import ObjectDao.TavoloDao;

/**
 * Servlet implementation class PrenotazioneTavolo
 */
@WebServlet("/PrenotazioneTavolo")
public class PrenotazioneTavolo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String paramIdTavolo= req.getParameter("selezionato");
		String paramUtentePrenotato = req.getParameter("username");
	 	String paramEmail = req.getParameter("email");
	 	
	 	String richiestaPagamento= req.getParameter("prenota");
	 	
	 	String richiesta = req.getParameter("pagina");
	 	
	 	System.out.println(paramIdTavolo);
	 	int idTavolo=0;
	 	
		switch (paramIdTavolo) {
		 	case "1":
		 		idTavolo=1;
		 		break;
		 	case "2":
		 		idTavolo=2;
		 		break;
		 	case "3":
		 		idTavolo=3;
		 		break;
		 	case "4":
		 		idTavolo=4;
		 		break;
		 	case "5":
		 		idTavolo=5;
		 		break;
		 	case "6":
		 		idTavolo=6;
		 		break;
		 	case "7":
		 		idTavolo=7;
		 		break;
		 	case "8":
		 		idTavolo=8;
		 		break;
		 	case "9":
		 		idTavolo=9;
		 		break;
		 	case "10":
		 		idTavolo=10;
		 		break;
		}
		 	
	 	DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
	 	TavoloDao tavoloDao = factory.getTavoloDAO();
		Tavolo tavolo = tavoloDao.findByPrimaryKey(idTavolo);
				
		if (tavolo != null) {
			tavoloDao.delete(tavolo);
		} else {
			tavolo = new Tavolo();			
		}
		
		tavolo.setId(idTavolo);
		tavolo.setEmail(paramEmail);
		tavolo.setOccupato(true);
		tavolo.setUtentePrenotato(paramUtentePrenotato);
		
		tavoloDao.save(tavolo);
		
		if(richiesta.equals("Prenotazione"))
			resp.sendRedirect("Prenotazione.jsp");
		else if(richiesta.equals("Disco") )
			resp.sendRedirect("PrenotazioneDisco.jsp");
		else if(richiesta.equals("Ombrellone"))
			resp.sendRedirect("PrenotazioneOmbrellone.jsp");
		
		
	}

	

}
