package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
    static final String URL = "jdbc:mysql://localhost:3306/me?serverTimezone=Europe/Rome";
    static final String USER = "me";
    static final String PASSWORD = "password";
    static final String CLIENTS = "SELECT username, psw FROM clients WHERE username=? and psw=?";

	private boolean exists(final String name, final String password) {
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

}
