package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import Object.Ombrellone;
import Object.Tavolo;
import ObjectDao.OmbrelloneDao;

public class OmbrelloneDaoJDBC implements OmbrelloneDao{
	
	private DataSource dataSource;

	public OmbrelloneDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void save(Ombrellone ombrellone) {
		Connection connection = this.dataSource.getConnection();
		try {
			
			String insert = "insert into ombrellone(id,utenteprenotato,email,occupato) values (?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, ombrellone.getId());
			statement.setString(2, ombrellone.getUtentePrenotato());
			statement.setString(3, ombrellone.getEmail());
			statement.setBoolean(4, ombrellone.isOccupato());
			
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
	public Ombrellone findByPrimaryKey(int id) {
		Connection connection = this.dataSource.getConnection();
		Ombrellone ombrellone = null;
		try {
			PreparedStatement statement;
			String query = "select * from ombrellone where id = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				ombrellone = new Ombrellone();
				ombrellone.setId(result.getInt("id"));				
				ombrellone.setUtentePrenotato(result.getString("utenteprenotato"));
				ombrellone.setEmail(result.getString("email"));
				ombrellone.setOccupato(result.getBoolean("occupato"));
				
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
		return ombrellone;
	}

	@Override
	public void update(Ombrellone ombrellone) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update ombrellone SET id = ?, utenteprenotato = ?,email = ? occupato=? WHERE id=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setInt(1, ombrellone.getId());
			statement.setString(2, ombrellone.getUtentePrenotato());
			statement.setString(3, ombrellone.getEmail());
			statement.setBoolean(4, ombrellone.isOccupato());
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
	public void delete(Ombrellone ombrellone) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM ombrellone WHERE id = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, ombrellone.getId());
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
	public int sizeOmbrelloni() {
		Connection connection = this.dataSource.getConnection();		
		try {
				Class.forName("org.postgresql.Driver");
				String select = "SELECT count(*) FROM ombrellone";
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
