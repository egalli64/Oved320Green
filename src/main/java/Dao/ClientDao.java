package Dao;

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

public class ClientDao implements Closeable{
    //static final String URL = "jdbc:mysql://localhost:3306/green?serverTimezone=Europe/Rome";
    //static final String USER = "green";
    //static final String PASSWORD = "password";
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
                ResultSet rs = stmt.executeQuery("select username, psw from clients")) {
            while (rs.next()) {
                results.add(new Clients(rs.getString("username"), rs.getString("psw")));
            }
        } catch (SQLException se) {
            throw new IllegalStateException("Database issue " + se.getMessage());
        }

        return results;
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
            prepStmt.setString(1, password);

            try (ResultSet rs = prepStmt.executeQuery()) {
                return rs.next();
            }
        } catch (Exception e) {
            return false;
        }
    }
	
	public Optional<Clients> get(String nome, String password) {
        try (Statement stmt = conn.createStatement(); //
                PreparedStatement ps = conn.prepareStatement(CLIENTS)) {
            ps.setString(1, nome);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                   Clients my = new Clients(rs.getString(2), rs.getString(3));
                    return Optional.of(my);
                }
            }
        } catch (SQLException se) {
            se.printStackTrace();
        }

        return Optional.empty();
    }
}



