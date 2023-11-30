
package A3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    
    public String URL = "jdbc:mysql://localhost:3306/gastosdb?Timezone=true&serverTimezone=UTC";
    public String usuario = "root";
    public String senha = "Tome9233!";
    
    public Connection obtemConexao() throws SQLException{
        
        try{ 
            Connection con = DriverManager.getConnection(URL,usuario,senha);
            System.out.println(con);
            return con;
        } catch(SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
}
