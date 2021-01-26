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
				    + "drop table if exists prodotto;"
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
					+ "create table tavolo(\"id\" int primary key, utenteprenotato varchar(255), email varchar(255), occupato boolean);"
					+ "create table ombrellone(\"id\" int primary key, utenteprenotato varchar(255),email varchar(255),occupato boolean);"
					+ "create table prodotto(nome varchar(255), prezzo double precision);"
					+ "create table recensione(\"idrecensione\" int primary key, idtipo varchar(255), onestar int, twostars int, threestars int, fourstars int, fivestars int, message varchar(255));"
					+ "create table carrello(\"idordine\" int primary key, nomeutente varchar(255), quantita int, idprodotto varchar(255), totaleordine double precision);";
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
			
			delete = "delete FROM prodotto";
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