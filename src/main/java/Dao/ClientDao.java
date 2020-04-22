package Dao;

//
import java.io.Closeable;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import Dao.Clients;

public class ClientDao implements Closeable {

	static final String CLIENTS = "SELECT username, psw FROM clients WHERE username=? and psw=?";
	static final String NEWCLIENT = "INSERT INTO clients (username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('?','?','?','?','?','?','?','?','?','?')";
	
	private static final Logger logger = LoggerFactory.getLogger(ClientDao.class);
	private Connection conn;

	public ClientDao(DataSource ds) {
		logger.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<Clients> getAll() {
		logger.trace("called");
		List<Clients> results = new ArrayList<>();

		try (Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select username, psw from clients")) {
			while (rs.next()) {
				results.add(new Clients(rs.getString("username"), rs.getString("psw")));
			}
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return results;
	}
	
	//REGISTRAZIONE nuovo cliente 
	 public void NewClient(Clients client) {
	        try (Statement stmt = conn.createStatement();
	                PreparedStatement rs = conn.prepareStatement(NEWCLIENT)) {
	            rs.setString(1, client.getUserName());
	            rs.setString(2, client.getPassword());
	            rs.setString(3, client.getFirstName());
	            rs.setString(4, client.getLastName());
	            rs.setString(5, client.getMail());
	            rs.setString(6, client.getNumber());
	            rs.setString(7, client.getIndirizzo());
	            rs.setString(8, client.getNumIndirizzo());
	            rs.setString(9, client.getCap());
	            rs.setString(10, client.getCity());
	            rs.executeUpdate();
	        } catch (SQLException se) {
	            se.printStackTrace();
	        }
	    }

	@Override
	public void close() throws IOException {
		try {
			conn.close();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public boolean exists(final String name, final String password) {
		try (PreparedStatement prepStmt = conn.prepareStatement(CLIENTS)) {
			prepStmt.setString(1, name);
			prepStmt.setString(2, password);

			try (ResultSet rs = prepStmt.executeQuery()) {
				return rs.next();
			}
		} catch (Exception e) {
			return false;
		}
	}

	public Optional<Clients> get(String userName, String password) {
		try (Statement stmt = conn.createStatement(); //
				PreparedStatement ps = conn.prepareStatement(CLIENTS)) {
			ps.setString(1, userName);
			ps.setString(2, password);
			try (ResultSet rs = ps.executeQuery()) {
				if (rs.next()) {
					Clients my = new Clients(rs.getString(1), rs.getString(2));
					return Optional.of(my);
				}
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}

		return Optional.empty();
	}
}
