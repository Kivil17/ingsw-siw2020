package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.DAOFactory;
import Object.Utente;
import ObjectDao.UtenteDAO;

/**
 * Servlet implementation class EliminaUtente
 */
@WebServlet("/EliminaUtente")
public class EliminaUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("chiamata elimina");
		
		String paramUser = request.getParameter("usernameProfilo");
		 
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDAO utenteDao = factory.getUtenteDAO();
		Utente utente = utenteDao.findByPrimaryKey(paramUser);
		
		System.out.println(paramUser);
		
		utenteDao.delete(utente);
		
		response.sendRedirect("Log.jsp");
	}

	

}
