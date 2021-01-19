package Database;

import ObjectDao.CarrelloDao;
import ObjectDao.OmbrelloneDao;
import ObjectDao.ProdottoDao;
import ObjectDao.RecensioneDao;
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
	
	public abstract UtilDao getUtilDAO();
	
	public abstract UtenteDAO getUtenteDAO();
	public abstract CarrelloDao getCarrelloDao();
	public abstract OmbrelloneDao getOmbrelloneDAO();
	public abstract TavoloDao getTavoloDAO();
	public abstract ProdottoDao getProdottoDao();
	public abstract RecensioneDao getRecensioneDAO();
	
}