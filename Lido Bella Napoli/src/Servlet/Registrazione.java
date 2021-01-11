package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ObjectDao.UtenteDAO;
import Object.Utente;
import Database.DAOFactory;


/**
 * Servlet implementation class RegistrazioneServlet
 */
@SuppressWarnings("serial")
@WebServlet("/Registrazione")
public class Registrazione extends HttpServlet {	
	 @Override
	 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 	String paramUsername = req.getParameter("username");
	 	String paramPassword = req.getParameter("password");
	 	String paramPassword2 = req.getParameter("password2");
	 	String paramEmail= req.getParameter("email");

	 	if(paramEmail=="" || paramUsername=="" || paramPassword=="" ) {
	 		resp.sendRedirect("Log.jsp");
	 	} 
	 	else {
		 	DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		 	UtenteDAO utenteDao = factory.getUtenteDAO();
		 	Utente utente = utenteDao.findByUsername(paramUsername);
		 	
		 
		 	if(utente.getUsername().equals("") && paramPassword.equals(paramPassword2)) {
		 	
		 		
		 		Utente nuovoUtente=new Utente(paramUsername,paramPassword,paramEmail);
		 		utenteDao.save(nuovoUtente);
		 		System.out.println("Registrato");
		 		resp.sendRedirect("Log.jsp");
		 		
		 	}else {
		 		resp.sendRedirect("Log.jsp");
		 	}
		}	
	 }
}
