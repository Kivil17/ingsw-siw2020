package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UtilDao {

	private DataSource dataSource;
	
	public UtilDao(DataSource dataSource) {
		this.dataSource=dataSource;
	}

	
	
	public void dropDatabase() {
		Connection connection = dataSource.getConnection();
		try {
			String delete = "drop SEQUENCE if EXISTS sequenza_id;"
					+ "drop table if exists utente;"
				    + "drop table if exists ombrellone;"
				    + "drop table if exists pizza;"
				    + "drop table if exists tavolo;"
				    + "drop table if exists recensione;"
				    + "drop table if exists carrello;";
			PreparedStatement statement = connection.prepareStatement(delete);
		
			statement.executeUpdate();
			System.out.println("Drop database eseguito");
		
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


	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void createDatabase(){
	
		Connection connection = dataSource.getConnection();
		try {
		
			String create = "create SEQUENCE sequenza_id;"
					+ "create table utente(\"username\" varchar(255) primary key, password varchar(255),email varchar(255),registrato boolean);"
					+ "create table tavolo(\"id\" int primary key, utentePrenotato varchar(255), email varchar(255), occupato boolean);"
					+ "create table ombrellone(\"id\" int primary key, utentePrenotato varchar(255),email varchar(255),occupato boolean);"
					+ "create table pizza(nome varchar(255), prezzo double precision);"
					+ "create table recensione(\"idTipo\" varchar(255) primary key, oneStar int, twoStars int, threeStars int, fourStars int, fiveStars int);"
					+ "create table carrello(\"idOrdine\" int primary key, nomeUtente varchar(255), quantita int, idProdotto int);";
			PreparedStatement statement = connection.prepareStatement(create);
		
			statement.executeUpdate();
			System.out.println("Creazione database eseguita");
		
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


	public  void resetDatabase() {
		
		Connection connection = dataSource.getConnection();
		try {
			
			String delete;
			PreparedStatement statement;
			
			delete = "delete FROM utente";
			statement = connection.prepareStatement(delete);
			
			delete = "delete FROM tavolo";
			statement = connection.prepareStatement(delete);
			
			delete = "delete FROM pizza";
			statement = connection.prepareStatement(delete);
			
			delete = "delete FROM ombrellone";
			statement = connection.prepareStatement(delete);
			
			delete = "delete FROM recensione";
			statement = connection.prepareStatement(delete);
			
			delete = "delete FROM carrello";
			statement = connection.prepareStatement(delete);
			
			statement.executeUpdate();
			System.out.println("Reset database eseguito");

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
}