package Dao;

import java.io.Closeable;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Logger;

import javax.sql.DataSource;


public class OrderDao implements Closeable{

	static final String NEWORDER = "INSERT INTO oredrs (product_name, price, quantity) values (?,?,?)";
	//private static final Logger logger = LoggerFactory.getLogger(ClientDao.class);
	private Connection conn;
	
	public OrderDao(DataSource ds) {
		//logger.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
	
	public void newOrder(Order order) {
        try (Statement stmt = conn.createStatement();
                PreparedStatement rs = conn.prepareStatement(NEWORDER)) {
        	rs.setString(1, order.getProductName());
        	rs.setDouble(1, order.getPrice());
        	rs.setInt(1, order.getQuantity());
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

}
