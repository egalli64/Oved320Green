package connection;

//faccio una connessione al mio db di MySql
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverManagerConnector {
 private static final String URL = "jdbc:mysql://localhost:3306/me?serverTimezone=Europe/Rome";
 private static final String USER = "me";
 private static final String PASSWORD = "password";

 /**
  * The following static initializer should not be required anymore
  */
// static {
//     try {
//         Class.forName("com.mysql.cj.jdbc.Driver");
//     } catch (ClassNotFoundException cnfe) {
//         cnfe.printStackTrace();
//         throw new IllegalStateException("Can't load JDBC driver " + cnfe.getMessage());
//     }
// }

 public static void main(String[] args) {
     try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
     	// sembra try with resources, la mia connection  
         String user = conn.getCatalog();
         if (user == null) {
             user = conn.getSchema();
         }

         System.out.println("Connected as " + user);
     } catch (SQLException e) {
         e.printStackTrace();
     }
 }
}
