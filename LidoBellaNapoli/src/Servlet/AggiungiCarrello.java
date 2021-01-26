package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.DAOFactory;
import Database.DatabaseManager;
import Object.Carrello;
import Object.Recensione;
import Object.Utente;
import ObjectDao.CarrelloDao;
import ObjectDao.RecensioneDao;
import ObjectDao.UtenteDAO;

/**
 * Servlet implementation class AggiungiCarrello
 */
@WebServlet("/AggiungiCarrello")
public class AggiungiCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private int cont=0;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
		
			
		 
		 String paramNome= request.getParameter("nome");
		 String paramPrezzo = request.getParameter("prezzo");
		 String paramQuantita = request.getParameter("quantita");
		 String username= request.getParameter("username");
		 
		 int q= Integer.parseInt(paramQuantita);
		 double p= Double.parseDouble(paramPrezzo);
		 
		 int idOrdine= ++cont;
		 double totalePrezzo=0.0;
		 
		 CarrelloDao carrelloDao = DatabaseManager.getInstance().getDaoFactory().getCarrelloDao();
		 
		 Carrello carrello = carrelloDao.findByPrimaryKey(idOrdine);
		
		 if (carrello != null) {
				carrelloDao.delete(carrello);
			} else {
				carrello= new Carrello();			
			}
		 
		 totalePrezzo=q*p;
		 
		 //String totPrezzo= Double.toString(totalePrezzo);
		 
		 session.setAttribute("nomeProdotto", paramNome);
		 session.setAttribute("quantitaProdotto", paramQuantita);
		 session.setAttribute("prezzoProdotto", totalePrezzo);
		 
		 System.out.println(paramNome+" "+paramPrezzo);
		 
		 RequestDispatcher disp;
		
		 carrello.setIdOrdine(idOrdine);
		 carrello.setIdProdotto(paramNome);
		 carrello.setNomeUtente(username);
		 carrello.setQuantita(q);
		 carrello.setTotaleOrdine(totalePrezzo);
		 
		 carrelloDao.save(carrello);
			    
		 disp = request.getRequestDispatcher("cart.jsp");
		 disp.forward(request, response);
		 return;
		
	}

}
