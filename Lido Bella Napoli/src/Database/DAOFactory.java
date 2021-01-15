package Database;

import ObjectDao.TavoloDao;
import ObjectDao.UtenteDAO;

public abstract class DAOFactory {
	
	public static final int POSTGRESQL = 2;

	public static DAOFactory getDAOFactory(int whichFactory) {
		switch ( whichFactory ) {
		
		case POSTGRESQL:
			return new PostgresDAOfactory();
		default:
			return null;
		}
	}
	
	public abstract UtenteDAO getUtenteDAO();
	
	//public abstract OmbrelloneDAO getOmbrelloneDAO();

	public abstract UtilDao getUtilDAO();

	public abstract TavoloDao getTavoloDAO();
	//public abstract PizzaDAO getNewsDAO();
	//public abstract RecensioneDAO getRecensioneDAO();
}