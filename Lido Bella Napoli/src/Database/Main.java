package Database;

import java.io.FileNotFoundException;

import ObjectDao.UtenteDAO;

public class Main {

		public static void main(String args[]) throws FileNotFoundException {
			
			DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
			UtilDao util = factory.getUtilDao();

			util.dropDatabase();
			util.createDatabase();
			System.out.println("Reset Database Eseguito");
		}		
}

