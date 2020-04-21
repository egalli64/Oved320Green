package Dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import Dao.Clients;

public class ClientDao {
    static final String URL = "jdbc:mysql://localhost:3306/me?serverTimezone=Europe/Rome";
    static final String USER = "green";
    static final String PASSWORD = "password";
    static final String CLIENTS = "SELECT username, psw FROM clients WHERE username=? and psw=?";

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

        try (Statement stmt = conn.createStatement(); //
                ResultSet rs = stmt.executeQuery("select * from clients")) {
            while (rs.next()) {
                results.add(new Clients(rs.getString("username"), rs.getString("psw")));
            }
        } catch (SQLException se) {
            throw new IllegalStateException("Database issue " + se.getMessage());
        }

        return results;
    }

  
    public void close() throws IOException {
        try {
            conn.close();
        } catch (SQLException e) {
            throw new IllegalStateException("Database issue " + e.getMessage());
        }
    }
    
/*
	public boolean exists(final String name, final String password) {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
                PreparedStatement prepStmt = conn.prepareStatement(CLIENTS)) {
            prepStmt.setString(1, name);
            prepStmt.setString(1, password);

            try (ResultSet rs = prepStmt.executeQuery()) {
                return rs.next();
            }
        } catch (Exception e) {
            return false;
        }
    }
*/
}

