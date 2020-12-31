package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import Object.Pizza;
import Object.Utente;
import ObjectDao.PizzaDao;
import Database.PersistenceException;

public class PizzaDaoJDBC implements PizzaDao{
	
	private DataSource dataSource;

	public PizzaDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void save(Pizza pizza) {
		Connection connection = this.dataSource.getConnection();
		try {
			
			String insert = "insert into pizza(nome,prezzo) values (?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, pizza.getNome());
			statement.setDouble(2, pizza.getPrezzo());
			
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
	public Pizza findByPrimaryKey(String nome) {
		Connection connection = this.dataSource.getConnection();
		Pizza pizza = null;
		try {
			PreparedStatement statement;
			String query = "select * from pizza where nome = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, nome);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				pizza = new Pizza();
				pizza.setNome(result.getString("nome"));				
				pizza.setPrezzo(result.getDouble("prezzo"));
				
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
		return pizza;
	}

	@Override
	public List<Pizza> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Pizza> pizze = new LinkedList<>();
		try {
			Pizza pizza;
			PreparedStatement statement;
			String query = "select * from pizza";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				pizza = new Pizza();
				pizza.setNome(result.getString("nome"));	
				pizza.setPrezzo(result.getDouble("prezzo"));
				pizze.add(pizza);
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
		return pizze;
	}

	@Override
	public void update(Pizza pizza) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update pizza SET nome = ?,prezzo = ? WHERE nome=?";
			PreparedStatement statement = connection.prepareStatement(update);
			
			statement.setString(1, pizza.getNome());
			statement.setDouble(2, pizza.getPrezzo());
			
			
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
	public void delete(Pizza pizza) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM pizza WHERE nome= ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, pizza.getNome());
			
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
	public int sizePizze(String nomePizza) {
		Connection connection = this.dataSource.getConnection();		
		try {
				Class.forName("org.postgresql.Driver");
				String select = "SELECT count(*) FROM pizza where nome = ?";
				PreparedStatement statement = connection.prepareStatement(select);
				statement.setString(1, nomePizza);
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


	@Override
	public List<Pizza> findAllByPizza(String nomePizza) {
		Connection connection = this.dataSource.getConnection();
		List<Pizza> temp = new ArrayList<Pizza>();
		try {
			Class.forName("org.postgresql.Driver");

			String select = "select * from pizza where nome ='"+nomePizza+"'";
			
			PreparedStatement statement = connection.prepareStatement(select);

			ResultSet rs = statement.executeQuery();
			
            while ( rs.next() ) {
               Pizza p = new Pizza();
                
                 p.setNome(rs.getString(1));
	       	     p.setPrezzo(rs.getDouble(2));
	       	     temp.add(p);
            }
            

            return temp;
			
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
		
		return null;
	}

}
