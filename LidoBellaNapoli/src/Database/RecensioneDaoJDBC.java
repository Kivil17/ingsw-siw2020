package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import Object.Recensione;
import ObjectDao.RecensioneDao;

public class RecensioneDaoJDBC implements RecensioneDao {
	
	private DataSource dataSource;

	public RecensioneDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public void save(Recensione recensione) {
		// TODO Auto-generated method stub
		Connection connection = this.dataSource.getConnection();
		try {
			
			String insert = "insert into recensione(idtipo, onestar, twostars, threestars, fourstars, fivestars, message) values (?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, recensione.getIdTipo());
			statement.setInt(2, recensione.getOneStar());
			statement.setInt(3, recensione.getTwoStars());
			statement.setInt(4, recensione.getThreeStars());
			statement.setInt(5, recensione.getFourStars());
			statement.setInt(6, recensione.getFiveStars());
			statement.setString(7, recensione.getMessage());
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
	public Recensione findByPrimaryKey(String idtipo) {
		// TODO Auto-generated method stub
		Connection connection = this.dataSource.getConnection();
		Recensione recensione = null;
		try {
			PreparedStatement statement;
			String query = "select * from recensione where idtipo = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, idtipo);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				recensione = new Recensione();
				recensione.setIdTipo(result.getString("idtipo"));				
				recensione.setOneStar(result.getInt("onestar"));
				recensione.setTwoStars(result.getInt("twostars"));
				recensione.setThreeStars(result.getInt("threestars"));
				recensione.setFourStars(result.getInt("fourstars"));
				recensione.setFiveStars(result.getInt("fivestars"));
				recensione.setMessage(result.getString("message"));
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
		return recensione;
	}

	@Override
	public List<Recensione> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Recensione> recensioni = new LinkedList<>();
		try {
			Recensione recensione;
			PreparedStatement statement;
			String query = "select * from recensione";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				recensione = new Recensione();
				recensione.setIdTipo(result.getString("idtipo"));				
				recensione.setOneStar(result.getInt("onestar"));
				recensione.setTwoStars(result.getInt("twostars"));
				recensione.setThreeStars(result.getInt("threestars"));
				recensione.setFourStars(result.getInt("fourstars"));
				recensione.setFiveStars(result.getInt("fivestars"));
				recensione.setMessage(result.getString("message"));
		        recensioni.add(recensione);
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		}	 finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		return recensioni;
	}

	@Override
	public void update(Recensione recensione) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Recensione recensione) {
		// TODO Auto-generated method stub
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM recensione WHERE idtipo = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, recensione.getIdTipo());
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
	public List<Recensione> findByUtente(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
