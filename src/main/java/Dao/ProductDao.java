package Dao;


import java.io.Closeable;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProductDao implements Closeable{

	//static final String CLIENTS = "SELECT username, psw FROM clients WHERE username=? and psw=?";
	//static final String NEWCLIENT = "INSERT INTO clients (username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values (?,?,?,?,?,?,?,?,?,?)";
	static final String INSERT_ORDER = "INSERT into orders(product_name, price)";
	
	private static final Logger logger = LoggerFactory.getLogger(ClientDao.class);
	private Connection conn;
	

	
	public ProductDao(DataSource ds) {
		logger.trace("called");

		try {
			this.conn =  ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
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
	
	
	
	public void insertData(String product_name, double price) {
		try (Statement stmt = conn.createStatement(); //
				PreparedStatement ps = conn.prepareStatement(INSERT_ORDER)) {
			ps.setString(1, product_name);
			ps.setDouble(2, price);

		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

}
