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
import Object.Utente;
import ObjectDao.UtenteDAO;

/**
 * Servlet implementation class SalvaDatiProfilo
 */
@WebServlet("/SalvaDatiProfilo")
public class SalvaDatiProfilo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String paramEmail = request.getParameter("emailProfilo");
		String paramPassword = request.getParameter("passwordProfilo");
		String paramUser = request.getParameter("usernameProfilo");
		String paramUserOld = request.getParameter("usernameProfiloOld");
		
		System.out.println(paramEmail + " " + paramPassword + " " + paramUser);
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDAO utenteDao = factory.getUtenteDAO();
		Utente utente = utenteDao.findByPrimaryKey(paramUserOld);
	 	utenteDao.delete(utente);
	 	
	 	Utente nuovoUtente = new Utente(paramUser, paramPassword, paramEmail);
		 
		session.setAttribute("password", paramPassword);
		session.setAttribute("username", paramUser);
		session.setAttribute("email", paramEmail);
			    
		utenteDao.save(nuovoUtente);
		
		response.sendRedirect("Profilo.jsp");
		
	}

}
