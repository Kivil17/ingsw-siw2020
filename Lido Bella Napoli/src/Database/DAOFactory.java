package Database;


public abstract class DAOFactory {

	public static final int HSQLDB = 1;
	
	public static final int POSTGRESQL = 2;

	public static DAOFactory getDAOFactory(int whichFactory) {
		switch ( whichFactory ) {
		
		case HSQLDB:
			return null;//new HsqldbDAOFactory();
		case POSTGRESQL:
			return new PostgresDAOfactory();
		default:
			return null;
		}
	}
	
	/*public abstract UtenteDAO getUtenteDAO();
	
	public abstract BranoDAO getBranoDAO();

	public abstract UtilDao getUtilDAO();

	public abstract BranoPlaylistDAO getBranoPlaylistDAO();
	public abstract NewsDAO getNewsDAO();
	public abstract RicercaDAO getRicercaDAO();
	public abstract RecensioneDAO getRecensioneDAO();
	public abstract BranoAscoltatoDAO getBranoAscoltatoDAO();*/
}