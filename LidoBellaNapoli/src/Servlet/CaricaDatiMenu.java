package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;

import Database.DatabaseManager;
import Object.Carrello;
import ObjectDao.CarrelloDao;

/**
 * Servlet implementation class CaricaDatiMenu
 */
@WebServlet("/CaricaDatiMenu")
public class CaricaDatiMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	
	public CaricaDatiMenu() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response, Carrello carrello) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String json = new Gson().toJson(carrello);
		response.setContentType("application/json");
	    ((ServletRequest) response).setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		JsonArray data = new Gson().fromJson(request.getReader(),JsonElement.class).getAsJsonArray();
		int idordine = data.get(0).getAsInt();
		String nomeUtente = data.get(1).getAsString();
		double prezzo = data.get(2).getAsDouble();
		CarrelloDao carrelloDao = DatabaseManager.getInstance().getDaoFactory().getCarrelloDao();
		Carrello carrello = carrelloDao.findByPrimaryKey(idordine); 
		
		
		
		doGet(request, response, carrello);
	}

}
