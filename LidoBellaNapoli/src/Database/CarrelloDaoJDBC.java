package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Object.Carrello;
import ObjectDao.CarrelloDao;

public class CarrelloDaoJDBC implements CarrelloDao{

	private DataSource dataSource;

	public CarrelloDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public void save(Carrello carrello) {
		Connection connection = this.dataSource.getConnection();
		try {
			
			String insert = "insert into carrello(idProdotto,nomeUtente,quantita,idOrdine,totaleOrdine) values (?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, carrello.getIdProdotto());
			statement.setString(2, carrello.getNomeUtente());
			statement.setInt(3, carrello.getQuantita());
			statement.setInt(4, carrello.getIdOrdine());
			statement.setDouble(4, carrello.getIdOrdine());
			
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				
				throw new PersistenceException(e.getMessage());
			}
		}
	}

	@Override
	public Carrello findByPrimaryKey(int idOrdine) {
		Connection connection = this.dataSource.getConnection();
		Carrello carrello = null;
		try {
			PreparedStatement statement;
			String query = "select * from carrello where idOrdine = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, idOrdine);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				carrello = new Carrello();
				carrello.setIdProdotto(result.getString("idProdotto"));				
				carrello.setNomeUtente(result.getString("nomeUtente"));
				carrello.setQuantita(result.getInt("quantita"));
				carrello.setIdOrdine(result.getInt("idOrdine"));
				carrello.setIdOrdine(result.getInt("totaleOrdine"));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}	
		return carrello;
	}

	@Override
	public void update(Carrello carrello) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update carrello SET idProdotto = ?, nomeUtente = ?, quantita = ? idOrdine=? totaleOrdine = ? WHERE idOrdine=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, carrello.getIdProdotto());
			statement.setString(2, carrello.getNomeUtente());
			statement.setInt(3, carrello.getQuantita());
			statement.setInt(4, carrello.getIdOrdine());
			statement.setDouble(5, carrello.getTotaleOrdine());
			System.out.println("aggiorno");
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}

	@Override
	public void delete(Carrello carrello) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM carrello WHERE idOrdine = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, carrello.getIdOrdine());
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		
	}

	@Override
	public int sizeProdotti(int idOrdine) {
		Connection connection = this.dataSource.getConnection();		
		try {
				Class.forName("org.postgresql.Driver");
				String select = "SELECT count(*) FROM carrello where idProdotti = ?";
				PreparedStatement statement = connection.prepareStatement(select);
				statement.setInt(1, idOrdine);
				statement.executeUpdate();
				
				ResultSet rs = statement.executeQuery();
				
	            while ( rs.next() ) {
	                 return rs.getInt(1);
	            }
			}
		catch (SQLException e) {
				e.printStackTrace();
		} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		finally {
				try {
					connection.close();
				} 
				catch (SQLException e) {
						e.printStackTrace();
				}
			}
		return 0;
	}

}
