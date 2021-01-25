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
			
			String insert = "insert into recensione(idrecensione, idtipo, onestar, twostars, threestars, fourstars, fivestars, message) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, recensione.getIdrecensione());
			statement.setString(2, recensione.getIdTipo());
			statement.setInt(3, recensione.getOneStar());
			statement.setInt(4, recensione.getTwoStars());
			statement.setInt(5, recensione.getThreeStars());
			statement.setInt(6, recensione.getFourStars());
			statement.setInt(7, recensione.getFiveStars());
			statement.setString(8, recensione.getMessage());
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
	public Recensione findByPrimaryKey(int idrecensione) {
		// TODO Auto-generated method stub
		Connection connection = this.dataSource.getConnection();
		Recensione recensione = null;
		try {
			PreparedStatement statement;
			String query = "select * from recensione where idrecensione = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, idrecensione);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				recensione = new Recensione();
				recensione.setIdrecensione(result.getInt("idrecensione"));
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
				recensione.setIdrecensione(result.getInt("idrecensione"));
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
			String delete = "delete FROM recensione WHERE idrecensione = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, recensione.getIdrecensione());
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
