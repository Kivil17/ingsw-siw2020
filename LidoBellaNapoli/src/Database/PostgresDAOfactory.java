package Database;

import ObjectDao.CarrelloDao;
import ObjectDao.OmbrelloneDao;
import ObjectDao.ProdottoDao;
import ObjectDao.RecensioneDao;
import ObjectDao.TavoloDao;
import ObjectDao.UtenteDAO;

//@SuppressWarnings("deprecation")
public class PostgresDAOfactory extends DAOFactory {
	
	private static DataSource dataSource;
	private static PostgresDAOfactory factory;

	static {
		try {
			Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
			
			
			dataSource = new DataSource("jdbc:postgresql://rogue.db.elephantsql.com:5432/tsqupsrd", "tsqupsrd", "Pe9L5sV2M3qiSfYwr-117QLIgPyzsYZX");
			
		} catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load MySQL JDBC driver\n" + e);
			e.printStackTrace();
		}
	}
	
	public static PostgresDAOfactory getInstance(){
		if (factory == null){
			factory = new PostgresDAOfactory();
		}
		return factory;
	}

	@Override
	public UtenteDAO getUtenteDAO() {
		return new UtenteDaoJDBC(dataSource);
	}
	
	@Override
	public UtilDao getUtilDAO() {
		return new UtilDao(dataSource);
	}

	@Override
	public TavoloDao getTavoloDAO() {
		return new TavoloDaoJDBC(dataSource);
	}

	@Override
	public RecensioneDao getRecensioneDAO() {
		return new RecensioneDaoJDBC(dataSource);
	}

	@Override
	public CarrelloDao getCarrelloDao() {
		return new CarrelloDaoJDBC(dataSource);
	}

	@Override
	public OmbrelloneDao getOmbrelloneDAO() {
		return new OmbrelloneDaoJDBC(dataSource);
	}

	@Override
	public ProdottoDao getProdottoDao() {
		return new ProdottoDaoJDBC(dataSource);
	}


}

