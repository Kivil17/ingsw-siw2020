package Database;

//@SuppressWarnings("deprecation")
public class PostgresDAOfactory extends DAOFactory {
	
	private static DataSource dataSource;
	private static PostgresDAOfactory factory;

	static {
		try {
			Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
			
			//remoto
			dataSource = new DataSource("jdbc:postgresql://tsqupsrd:Pe9L5sV2M3qiSfYwr-117QLIgPyzsYZX@rogue.db.elephantsql.com:5432/tsqupsrd", "tsqupsrd", "Pe9L5sV2M3qiSfYwr-117QLIgPyzsYZX");
			
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

	/*@Override
	public UtenteDAO getUtenteDAO() {
		return new UtenteDaoJDBC(dataSource);
	}

	@Override
	public BranoDAO getBranoDAO() {
		return new BranoDaoJDBC(dataSource);
	}

	@Override
	public BranoPlaylistDAO getBranoPlaylistDAO() {
		return new BranoPlaylistDaoJDBC(dataSource);
	}
	
	
	@Override
	public UtilDao getUtilDAO() {
		return new UtilDao(dataSource);
	}
	@Override
	public NewsDAO getNewsDAO() {
		return new NewsDaoJDBC(dataSource);
	}

	@Override
	public RicercaDAO getRicercaDAO() {
		return new RicercaDaoJDBC(dataSource);
	}


	@Override
	public RecensioneDAO getRecensioneDAO() {
		// TODO Auto-generated method stub
	return new RecensioneDaoJDBC(dataSource);
	}
	public BranoAscoltatoDAO getBranoAscoltatoDAO() {
		return new BranoAscoltatoDaoJDBC(dataSource);

	}*/
	

}
