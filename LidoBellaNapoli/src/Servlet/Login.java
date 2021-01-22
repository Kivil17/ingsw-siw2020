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
 * Servlet implementation class Login
 */
@SuppressWarnings("serial")
@WebServlet("/Login")
public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
		 System.out.println("chiamata");
		 String paramEmail= request.getParameter("email");
		 String paramPassword = request.getParameter("password");
		 
		 
		 String admin="bellanapoli198717@gmail.com";
		 
		 session.setAttribute("loggato", false);
		 
		 System.out.println(paramEmail+" "+paramPassword);
		 DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		 UtenteDAO utenteDao = factory.getUtenteDAO();
		 Utente utente = utenteDao.findByCredential(paramEmail, paramPassword);
		 
		 if(utente!=null && utente.isRegistrato()) { 
			 
			   if(utente.getEmail().equals(admin))
			   {
			    
			    session.setAttribute("password", paramPassword);
			    session.setAttribute("username", utente.getUsername());
			    session.setAttribute("loggato", true);
			    session.setAttribute("loggatoAdmin", true);
			    session.setAttribute("email", utente.getEmail());
			    
			    RequestDispatcher disp;
			    
			    
			    disp = request.getRequestDispatcher("index.jsp");
			    disp.forward(request, response);
			    return;
			   }
			   
			  session.setAttribute("password", paramPassword);
			  session.setAttribute("email", utente.getEmail());
			  session.setAttribute("loggato", true);
			  session.setAttribute("username", utente.getUsername());
			  
			  RequestDispatcher disp;
			  
			  disp = request.getRequestDispatcher("index.jsp");
			  disp.forward(request, response);
			  
			  }else {
			  
				  response.sendRedirect("Log.jsp");
			  }
		}		 
}
