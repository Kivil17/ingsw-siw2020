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
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AggiungiCarrello() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
		
		 String paramNome= request.getParameter("nome");
		 String paramPrezzo = request.getParameter("prezzo");
		 String paramQuantita = request.getParameter("numeroProdotti");
		 String username= request.getParameter("username");
		 
		 int idOrdine= ++cont;
		
		 CarrelloDao carrelloDao = DatabaseManager.getInstance().getDaoFactory().getCarrelloDao();
		 
		 Carrello carrello = carrelloDao.findByPrimaryKey(idOrdine);
		
		 session.setAttribute("nomeProdotto", paramNome);
		 session.setAttribute("quantitaProdotto", paramQuantita);
		 session.setAttribute("prezzoProdotto", paramPrezzo);
			    
		 RequestDispatcher disp;
		
		 carrello.setIdOrdine(idOrdine);
		 carrello.setIdProdotto(paramNome);
		 carrello.setNomeUtente(username);
		 carrello.setQuantita(10);
		
		 carrelloDao.save(carrello);
			    
		 disp = request.getRequestDispatcher("cart.jsp");
		 disp.forward(request, response);
		 return;
		
	}

}
