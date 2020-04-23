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
	static final String INSERT_DATA_SQL = "";
	
	private static final Logger logger = LoggerFactory.getLogger(ClientDao.class);
	private Connection conn;
	

	
	public ProductDao(javax.activation.DataSource ds) {
		logger.trace("called");

		try {
			this.conn = ds.getConnection();
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
	
	
	
	public void insertData(int acquisto_id, int utente_id, int prodotto_id, double data_e_ora) {
		try (Statement stmt = conn.createStatement(); //
				PreparedStatement ps = conn.prepareStatement(INSERT_DATA_SQL)) {
			ps.setInt(1, acquisto_id);
			ps.setInt(2, utente_id);
			ps.setInt(3, prodotto_id);
			ps.setDouble(4, data_e_ora);

		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

}
