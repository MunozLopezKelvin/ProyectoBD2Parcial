package db;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
//postgres  
public class consql {
    Connection conexion=null;
    String url="jdbc:postgresql://localhost/proyectobd2p";
    String usuario="postgres";
    String clave="adm";
    
    public Connection conectar(){
        try {
            Class.forName("org.postgresql.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Conexión fallida "+e,"Error",JOptionPane.ERROR_MESSAGE);
        }
    return conexion;
    } 
}



