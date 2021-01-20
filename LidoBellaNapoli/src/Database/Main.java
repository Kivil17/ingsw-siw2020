package Database;

import java.io.FileNotFoundException;

	
public class Main {

		public static void main(String args[]) throws FileNotFoundException {
			
			DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
			UtilDao util = factory.getUtilDAO();

			util.dropDatabase();
			util.createDatabase();
			System.out.println("Reset Database Eseguito");
		}		
}
