package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Object.Tavolo;
import Object.Utente;
import ObjectDao.TavoloDao;

public class TavoloDaoJDBC implements TavoloDao{

	private DataSource dataSource;

	public TavoloDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public void save(Tavolo tavolo) {
		Connection connection = this.dataSource.getConnection();
		try {
			
			String insert = "insert into tavolo(id,utenteprenotato,email,occupato) values (?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, tavolo.getId());
			statement.setString(2, tavolo.getUtentePrenotato());
			statement.setString(3, tavolo.getEmail());
			statement.setBoolean(4, tavolo.isOccupato());
			
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
	public Tavolo findByPrimaryKey(int id) {
		Connection connection = this.dataSource.getConnection();
		Tavolo tavolo = null;
		try {
			PreparedStatement statement;
			String query = "select * from tavolo where id = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				tavolo = new Tavolo();
				tavolo.setId(result.getInt("id"));				
				tavolo.setUtentePrenotato(result.getString("utenteprenotato"));
				tavolo.setEmail(result.getString("email"));
				tavolo.setOccupato(result.getBoolean("occupato"));
				
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
		return tavolo;
	}

	@Override
	public void update(Tavolo tavolo) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update tavolo SET id = ?, utenteprenotato = ?,email = ? occupato=? WHERE id=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setInt(1, tavolo.getId());
			statement.setString(2, tavolo.getUtentePrenotato());
			statement.setString(3, tavolo.getEmail());
			statement.setBoolean(4, tavolo.isOccupato());
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
	public void delete(Tavolo tavolo) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM tavolo WHERE id = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, tavolo.getId());
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
	public int sizeTavolo() {
		Connection connection = this.dataSource.getConnection();		
		try {
				Class.forName("org.postgresql.Driver");
				String select = "SELECT count(*) FROM tavolo";
				PreparedStatement statement = connection.prepareStatement(select);

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
